test:
	pandoc \
		--from markdown+table_captions+pandoc_title_block \
		--to latex \
		--variable documentclass=book \
		--variable papersize=a4paper \
		--variable fontsize=11pt \
		--include-in-header header.tex \
		--bibliography thesis.bib \
		--csl references.csl \
		--variable citecolor=blue \
		--variable linkcolor=blue \
		--variable toccolor=blue \
		--variable urlcolor=blue \
		--output thesis-test.tex \
		--standalone \
		--toc \
		--toc-depth=3 \
		author.md core-15-abstract.md test-*.md core-95-acknowledgements.md core-99-bibliography.md
	latexmk -pdflatex="xelatex --shell-escape %O %S" -pdf -cd -recorder- -auxdir="temp/" thesis-test.tex
	
epub:
	pandoc \
		--from markdown+table_captions \
		--output 'C:\Users\USER\Kindle\import\folder\thesis.epub' \
		core-*.md 

print:
	pandoc \
		--from markdown+table_captions \
		--to latex \
		--variable documentclass=book \
		--variable papersize=a4paper \
		--variable fontsize=11pt \
		--include-in-header header.tex \
		--bibliography thesis.bib \
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
	latexmk -pdflatex="xelatex --shell-escape %O %S" -pdf -cd -recorder- -auxdir="temp/" thesis.tex
	pdftk core-10-title.pdf core-13-empty.pdf thesis.pdf cat output thesis-print.pdf # learned from https://www.linux.com/learn/tutorials/442414

pdf:
	# [x] after printing: \textattachfile[color=black]{ => \textattachfile[color=blue]{
	# [ ] try natbib
		# [ ] needs latexmk without -cd -recorder- -auxdir="temp/"
		# [ ] convert {[} to \cite{}
		# [ ] ignore Extra field or remove in Zotero

	pandoc \
		--from markdown+table_captions+pandoc_title_block \
		--to latex \
		--variable documentclass=book \
		--variable papersize=a4paper \
		--variable fontsize=11pt \
		--include-in-header header.tex \
		--bibliography thesis.bib \
		--csl references.csl \
		--variable citecolor=blue \
		--variable linkcolor=blue \
		--variable toccolor=blue \
		--variable urlcolor=blue \
		--output thesis.tex \
		--standalone \
		--toc \
		--toc-depth=3 \
		author.md core-*.md
	latexmk -pdflatex="xelatex --shell-escape %O %S" -pdf -cd -recorder- -auxdir="temp/" thesis.tex
	pdftk thesis.pdf dump_data output thesis.txt
	pdftk A=core-10-title.pdf B=thesis.pdf cat A B2-end output thesis-pd.pdf # learned from https://www.linux.com/learn/tutorials/442414
	pdftk thesis-pd.pdf update_info thesis.txt output thesis-pdf.pdf # learned from https://sejh.wordpress.com/2014/11/26/changing-pdf-titles-with-pdftk/
	rm thesis-pd.pdf
