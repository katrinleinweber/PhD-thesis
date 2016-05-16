.PHONY: test cleaner clean doc pdf print check epub docx cd repo

test: clean
	pandoc \
		--from markdown+table_captions+yaml_metadata_block \
		--to latex \
		--variable documentclass=book \
		--variable classoption=openany \
		--variable fontsize=11pt \
		--include-in-header header.tex \
		--bibliography thesis.bib \
		--csl references.csl \
		--variable citecolor=red \
		--variable linkcolor=red \
		--variable toccolor=red \
		--variable urlcolor=red \
		--output thesis-test.tex \
		--standalone \
		--toc \
		--toc-depth=3 \
		core-5*.md core-9*.md
	sed -i -n -E 's/color=(black|blue)/color=red/g' thesis-test.tex
	latexmk -pdflatex="xelatex --shell-escape %O %S" -pdf thesis-test.tex
	pandoc -D latex > pandoc.tex

cleaner: clean
	rm *.atfi *.tex-n *-to.txt

clean:
	latexmk -c

doc: clean pdf print epub

pdf: 
	# [x] natbib needs latexmk without -cd -recorder- -auxdir="temp/"
	# [x] no way to auto-convert .bst <=> .csl, see http://tex.stackexchange.com/a/69284 & https://forums.zotero.org/discussion/6878/

	pandoc \
		--from markdown+table_captions+yaml_metadata_block \
		--to latex \
		--variable documentclass=book \
		--variable classoption=openany \
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
		core-*.md
	sed -i -n 's/color=black/color=blue/g' thesis.tex
	latexmk -pdflatex="xelatex --shell-escape %O %S" -pdf thesis.tex
	pdftk thesis.pdf dump_data output thesis-data.txt
	pdftk A=core-10-title.pdf B=thesis.pdf cat A B2-end output thesis-pd.pdf # learned from https://www.linux.com/learn/tutorials/442414 & El Capitan problem fixed by http://stackoverflow.com/a/33248310
	pdftk thesis-pd.pdf update_info thesis-data.txt output thesis-pdf.pdf # learned from https://sejh.wordpress.com/2014/11/26/changing-pdf-titles-with-pdftk/
	rm thesis-pd.pdf thesis-data.txt

print:
	pandoc \
		--from markdown+table_captions \
		--to latex \
		--variable documentclass=book \
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
	sed -i -n 's/color=blue/color=black/g' thesis.tex
	latexmk -pdflatex="xelatex --shell-escape %O %S" -pdf thesis.tex
	pdftk core-10-title.pdf core-11-empty.pdf thesis.pdf cat output thesis-print.pdf # learned from https://www.linux.com/learn/tutorials/442414

check: # learned from http://stackoverflow.com/a/694125
	# [ ] find correct syntax for --regexp (here or in CHECKS), see https://www.gnu.org/software/grep/manual/grep.html#Matching-Control
	# [ ] call after make pdf & print or before doc
	pdftotext thesis-test.pdf thesis-test-to.txt
	pdftotext thesis.pdf thesis-to.txt
	cat *-to.txt | \
	grep \
		--ignore-case \
		--color \
		--extended-regexp \
		--file=CHECKS

epub:
	pandoc \
		--from markdown+table_captions+yaml_metadata_block \
		--bibliography thesis.bib \
		--csl references.csl \
		--output thesis.epub \
		core-*.md

docx:
	pandoc \
		--from markdown+table_captions+yaml_metadata_block \
		--bibliography thesis.bib \
		--csl references.csl \
		--output thesis.docx \
		--standalone \
		--toc \
		--toc-depth=3 \
		core-*.md

