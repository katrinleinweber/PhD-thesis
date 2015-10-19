# Read me

These are supplemental files for Katrin Leinweber's PhD thesis __Characterisation of biotic interactions between a *Dyadobacter* strain and the diatom *Achnanthidium minutissimum*__. Sources and figures will follow after official publication. 

## A mixed Markdown/LaTeX toolchain for thesis and manuscript writing

> All based on [Jens Erat's Scientific Markdown](https://github.com/JensErat/scientific-markdown). Huge thanks!

### Text

1. Write Markdown in [Sublime Text 3 beta](https://www.sublimetext.com/3) as [explained by Christopher Grainger](http://blog.cigrainger.com/2014/07/pandoc-markdown.html).
    - with [PackageControl](https://packagecontrol.io/), [MarkdownEditing](https://packagecontrol.io/packages/MarkdownEditing), [AcademicMarkdown](https://packagecontrol.io/packages/AcademicMarkdown), [All Autocomplete](https://packagecontrol.io/packages/All%20Autocomplete) and [Citer](https://packagecontrol.io/packages/Citer).
1. Separate `.md` file per chapter; number in filename determines order.
1. Figures as mixed MD & LaTeX: `![**Caption.** Some more legend.\label{label}](images/image.pdf)`
1. Conversion to LaTeX by [pandoc](http://johnmacfarlane.net/pandoc/) and to PDF by [latexmk](http://users.phys.psu.edu/~collins/software/latexmk-jcc/) via [makefile](makefile)

### References

> Easier version: Don't use collections, but let entire library be exported into thesis directory

1. Manage in [Zotero](https://www.zotero.org/) collection "thesis".
    - keep selected, so that new items are automatically collected there
1. [Zotero autoexporting addon](http://rokdd.de/b/zotero-autoexport/versions) set to:
	- `Autoexport mode`
	- timer triggered every few hours (trying to avoid temptation of `make`-ing PDF every few paragraphs)
	- `BibTeX` fileformat & `thesis.bib` into some backup directory
	- `only custom` collection/saved searches activated & `thesis` ticket
	- `postprocess` deactivated
	- simpler alternative, but with notable freezing of Zotero for few seconds & no ability to export different collections to different files: `Autoexport mode`, `Trigger by events`, `C:\path\to\thesis\references.bib` & `[...] whole library`
1. Cite by letting [Citer](https://github.com/mangecoeur/Citer) expand known BibTeX key from `thesis.bib` & `references.bib` followed by auto-pasting it into text with [PhraseExpress](http://www.phraseexpress.com/index.html) rule for `[@{#insertclipboard}]` (Win) and `[@%clipboard]` in [TextExpander](http://smilesoftware.com/TextExpander/index.html) (Mac).
1. Let [`makefile`](makefile) copy `thesis.bib` from backup to working directory.

### Git

1. GitHub apps for [Win](https://windows.github.com/) & [Mac](https://mac.github.com/).
1. Track whole working dir, [except TeX, R, Windows temp files](https://github.com/github/gitignore/) & final PDFs.
1. Create `doctor` branch from default `master` & delete default ;->
1. Try working on logical chunks, eg.
    - sentence about goal of study in introduction *plus* figure & paragraph about that goal in results *plus* raw data & R script of figure in supplementary section *plus* discussion with literature reference about that result
    - proof-reading of a chapter => highlight advantages of Markdown+Git workflow to supervisor at this point ;-)
    - adjusting all diagram styles (`ggplot2 | theme()`)
    - rearranging chapters, sections or files
1. Summarise logically connected edits in single commit to branch `doctor`.
1. Experiment (technically and content-wise) by branching:
    - merge successes back into `doctor`
    - simply leave unsatisfactory experiments be => "stale" branch accessible later
    - remember to always switch the GitHub app to the right branch before `4. Try working on logical chunks`

> An alternative I want to try: work on `content` branch most of the time, only rarely on `format`. Merge both into `doctor`  only for review & printing. Add revisions to `content` and `format` separately. Should help avoid tinkering too much & often with citation style, makefile etc.

### Other

- [Cygwin shortcut for working directories](http://stackoverflow.com/a/12010346)
