# Check URLs in a document
# https://gist.github.com/leeper/4e706b8396386b78a3fe7abb22f154ca

## This code will extract URLs from a text document using regex,
## then execute an HTTP HEAD request on each and report whether
## the request failed, whether a redirect occurred, etc. It might
## be useful for cleaning up linkrot.

if (!require("httr")) {
  install.packages("httr", repos = "https://cran.rstudio.com/")
}

extract_urls <- function(file, ...) {
  f <- rawToChar(readBin(file, what = "raw", n = 1e7L))
  x <- "(http|ftp|https)://([\\w_-]+(?:(?:\\.[\\w_-]+)+))([\\w.,@?^=%&:/~+#-]*[\\w@?^=%&/~+#-])?"
  # Credit: https://stackoverflow.com/questions/6038061/regular-expression-to-find-urls-within-a-string
  # Visualised: https://regexper.com/#%28http|ftp|https%29%3A\%2F\%2F%28[\\w_-]%2B%28%3F%3A%28%3F%3A\\.[\\w_-]%2B%29%2B%29%29%28[\\w.%2C%40%3F^%3D%25%26%3A%2F~%2B%23-]*[\\w%40%3F^%3D%25%26%2F~%2B%23-]%29%3F
  m <- regmatches(f, gregexpr(x, f, perl=TRUE))[[1]]
  m
}

check_one <- function(url, ...) {
  r <- try(httr::HEAD(url, ...), silent = TRUE)
  if (inherits(r, "try-error")) {
    list(url1 = url,
         url2 = NA_character_,
         redirect = NA,
         error = NA,
         status = NA_real_
    )
  } else {
    list(url1 = url,
         url2 = r$url,
         redirect = !identical(url, r$url),
         error = http_error(r),
         status = status_code(r)
    )
  }
}

check_urls <- function(urls, ...) {
  check <- lapply(urls, check_one, ...)
  out <- do.call("rbind.data.frame", c(check, stringsAsFactors = FALSE, make.row.names = FALSE))
  return(structure(out, class = c("url_check", "data.frame")))
}

print.url_check <- function(x, ...) {
  f <- is.na(x[["url2"]])
  r <- x[["redirect"]]
  e <- x[["error"]]
  s <- x[["status"]] != 200
  print.data.frame(x[ (f | r | e | s) ,, drop = FALSE])
  invisible(x)
}

u <- extract_urls("thesis.tex") # extract urls
checked <- check_urls(u) # check the URLs

investigate <- subset(checked, (error == T & redirect == F) | error == NA)
write.csv(investigate$url2, "helper-checkedURLs-investigate.txt", row.names = F, quote = F)
