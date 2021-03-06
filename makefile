.PHONY: test cleaner clean doc thesis pdf print check epub docx cd repo

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
		core-2*.md core-9*.md
	sed -i -n -E 's/color=(black|blue)/color=red/g' thesis-test.tex
	latexmk -pdflatex="xelatex --shell-escape %O %S" -pdf thesis-test.tex
	pandoc -D latex > pandoc.tex

cleaner: clean
	rm *.atfi *.tex-n *-to.txt thesis.pdf thesis-pdf.pdf thesis-print.pdf 

clean:
	latexmk -c

doc: thesis

thesis: cleaner pdf print epub

pdf: 
	# [x] natbib needs latexmk without -cd -recorder- -auxdir="temp/"
	# [x] no way to auto-convert .bst <=> .csl, see http://tex.stackexchange.com/a/69284 & https://forums.zotero.org/discussion/6878/

	pandoc \
		--from markdown+table_captions \
		--to latex \
		--variable documentclass=book \
		--variable fontsize=11pt \
		--include-in-header header.tex \
		--bibliography thesis.bib \
		--csl references.csl \
		--variable citecolor=blue \
		--variable linkcolor=blue \
		--variable toccolor=blue \
		--variable urlcolor=blue \
		--metadata link-citations \
		--output thesis.tex \
		--standalone \
		--toc \
		--toc-depth=3 \
		core-*.md
	sed -i -n 's/color=black/color=blue/g' thesis.tex
	latexmk -pdflatex="xelatex --shell-escape %O %S" -pdf thesis.tex
	pdftk thesis.pdf dump_data output thesis-data.txt
	pdftk core-10-title.pdf thesis.pdf cat output thesis-pd.pdf # learned from https://www.linux.com/learn/tutorials/442414 & El Capitan problem fixed by http://stackoverflow.com/a/33248310
	pdftk thesis-pd.pdf update_info thesis-data.txt output thesis-pdf.pdf # learned from https://sejh.wordpress.com/2014/11/26/changing-pdf-titles-with-pdftk/
	rm thesis-pd.pdf thesis-data.txt
	exiftool \
	    -Author="Katrin Leinweber" \
	    -Keywords="Achnanthidium, bioassay, biofilm, capsule, diatom, diatom-bacteria interactions, energy-dispersive x-ray spectroscopy, EPS , KNIME, medium throughput, scanning electron microscopy" \
	    -Title="Characterisation of biotic interactions between a Dyadobacter strain and the diatom Achnanthidium minutissimum" \
		-Subject="570 Biosciences, Biology" \
	thesis-pdf.pdf
	cp thesis-pdf.pdf thesis-PhD-Katrin-Leinweber-Characterisation-of-biotic-interactions-between-a-Dyadobacter-strain-and-the-diatom-Achnanthidium-minutissimum.pdf
	$(MAKE) check


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
	$(MAKE) check

check: # learned from http://stackoverflow.com/a/694125
	# [x] call after make pdf & print or before doc; learned from http://stackoverflow.com/a/33245795/4341322
	pdftotext thesis.pdf - | \
	grep \
		--ignore-case \
		--color \
		--extended-regexp \
		--file=CHECKS-PDF

check-md:
	cat core-*.md | \
	grep \
		--ignore-case \
		--color \
		--extended-regexp \
		--file=CHECKS-MD

diff: # learned from http://unix.stackexchange.com/a/104534 & http://stackoverflow.com/a/12170504
	@while [ -z "$$EARLIER" ] || [ -z "$$LATER" ]; do \
        read -r -p "Paste the hash of the earlier commit: " EARLIER; \
        read -r -p "...which will be compared to the later commit: " LATER; \
    done ; \
    git diff \
    	$$EARLIER \
    	$$LATER \
    	--color-words=. \
    	--ignore-all-space \
    	--unified=0 \
    	core-*.md | \
    ./helper-ansi2html.sh > \
    helper-ansi2html-thesis-changes.html
    # docu: https://git-scm.com/docs/git-diff
    # credits: https://github.com/katrinleinweber/PhD-thesis/#helper-tools

epub:
	pandoc \
		--from markdown+table_captions+yaml_metadata_block \
		--bibliography thesis.bib \
		--csl references.csl \
		--metadata link-citations \
		--output thesis.epub \
		epub-meta.md core-*.md

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

