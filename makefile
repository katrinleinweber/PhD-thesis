clean:
  # smaller set of test files for quickly build checks
	pandoc \
		--from markdown+table_captions \
		--to latex \
		--variable documentclass=book \
		--variable papersize=a4paper \
		--variable fontsize=11pt \
		--include-in-header header.tex \
		--include-after-body footer.tex \
		--bibliography references \
		--natbib \
		--output thesis.tex \
		--standalone \
		--toc \
		--toc-depth=3 \
		test-*.md
	latexmk -pdflatex="pdflatex --shell-escape %O %S" -pdf thesis.tex
	cp thesis.pdf thesis-test.pdf

core:
	
	# copy Zotero export to working directory on Win & Mac; learned from http://stackoverflow.com/a/5553659
	if [ -a 'B:\Zotero\thesis.bib' ] ; \
		then \
			cp 'B:\Zotero\thesis.bib' 'C:\path\to\thesis\references.bib' ; \
		else [ -a /path/to/Backup/Zotero/thesis.bib ] ; \
			cp /path/to/Backup/Zotero/thesis.bib /Users/path/to/thesis/references.bib ; \
	fi;

	# - [ ] restyle natbib: fewer authors, last names only, short doi linked to URL
	# 		--variable biblio-style= \

	pandoc \
		--from markdown+table_captions \
		--to latex \
		--variable documentclass=book \
		--variable papersize=a4paper \
		--variable fontsize=11pt \
		--include-in-header header.tex \
		--include-after-body footer.tex \
		--bibliography references \
		--natbib \
		--output thesis.tex \
		--standalone \
		--toc \
		--toc-depth=3 \
		core-*.md
	latexmk -pdflatex="pdflatex --shell-escape %O %S" -pdf thesis.tex
	cp thesis.pdf thesis-core.pdf

print:
  # shorter bibliography & all black links
	pandoc \
		--from markdown+table_captions \
		--to latex \
		--variable documentclass=book \
		--variable papersize=a4paper \
		--variable fontsize=11pt \
		--include-in-header header.tex \
		--include-after-body footer.tex \
		--bibliography references.bib \
		--csl references.csl \
		--variable citecolor=black \
		--variable linkcolor=black \
		--variable toccolor=black \
		--variable urlcolor=black \
		--output thesis.tex \
		--standalone \
		--toc \
		--toc-depth=3 \
		core-*.md
	latexmk -pdflatex="pdflatex --shell-escape %O %S" -pdf thesis.tex
	cp thesis.pdf thesis-print.pdf
