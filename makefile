test:
	pandoc \
		--from markdown+table_captions \
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
		test-*.md
	latexmk -pdflatex="pdflatex --shell-escape %O %S" -pdf -cd -recorder- -auxdir="temp" thesis-test.tex # learned from http://tex.stackexchange.com/a/11125
	# pdftk core-10-title.pdf thesis.pdf cat output thesis-print.pdf # learned from https://www.linux.com/learn/tutorials/442414

pdf:
	# [ ] after printing: \textattachfile[color=black]{ => \textattachfile[color=blue]{
	# [ ] ask Ansgar for natbib style or create own: 
	
	#if [ -a 'B:\Zotero\thesis.bib' ] ; \
	#	then \
	#		cp 'B:\Zotero\thesis.bib' 'C:\Users\Katrin\1209 - Doktor\writing\thesis\references.bib' ; \
	#	else [ -a /Users/katrinleinweber/Backup/Zotero/thesis.bib ] ; \
	#		cp /Users/katrinleinweber/Backup/Zotero/thesis.bib /Users/katrinleinweber/Documents/1209\ -\ Doktor/writing/thesis/references.bib ; \
	#fi; # learned from http://stackoverflow.com/a/5553659

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
	latexmk -pdflatex="pdflatex --shell-escape %O %S" -pdf -cd -recorder- -auxdir="temp" thesis.tex

epub:
	pandoc \
		--from markdown+table_captions \
		--output 'C:\Users\USER\Kindle\import\folder\thesis.epub' \
		core-*.md 

doc:
	pandoc \
		--from markdown+table_captions \
		--bibliography references.bib \
		--csl references.csl \
		--output thesis.docx \
		--standalone \
		--toc \
		--toc-depth=3 \
		core-*.md
