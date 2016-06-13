# Characterisation of biotic interactions between a *Dyadobacter* strain and the diatom *Achnanthidium minutissimum* (Katrin Leinweber, PhD thesis, 2012-2015)

This repository stores both the content of my thesis (sources, data, figures and supplemental files), and the software toolchain used to compile it into the final printed and [electronic](http://kops.uni-konstanz.de/handle/123456789/34342) versions. **Please note:** The latter version is official! This repository is just an experimental tech-demo & backup.

## Toolchain: mixed Markdown & LaTeX

### Text

1. Write in AcademicMarkdown in [Sublime](https://www.sublimetext.com/3) with Citer, as [explained by Christopher Grainger](http://blog.cigrainger.com/2014/07/pandoc-markdown.html).
1. Separate `.md` file per chapter; number in filename determines order.
1. Figures as mixed MD & LaTeX: `![**Caption.** Some more legend.\label{label}](images/image.pdf)`
1. Conversion to LaTeX, then PDF with [pandoc](http://johnmacfarlane.net/pandoc/) via a `makefile` adapted from [Jens Erat's "Scientific Markdown"](https://github.com/JensErat/scientific-markdown/).

### References

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
1. Let `makefile` copy `thesis.bib` from backup to working directory.
1. Let `makefile` call [natbib](http://ctan.org/pkg/natbib) for PDF version, but custom citation style `references.csl` with black links & shorter bibliography entries for print.

### Git

1. GitHub apps for [Win](https://windows.github.com/) & [Mac](https://mac.github.com/), or [Tower](https://www.git-tower.com/).
1. Track whole working dir, [except TeX, R, Windows temp files](https://github.com/github/gitignore/) & final PDFs.
1. Create `doctor` branch from default `master` & delete default ;->
1. Try working on logical chunks, eg.
    - sentence about goal of study in introduction *plus* figure & paragraph about that goal in results *plus* raw data & R script of figure in supplemental section *plus* discussion with literature reference about that result
    - proof-reading of a chapter => highlight advantages of Markdown+Git workflow to supervisor at this point ;-)
    - adjusting all diagram styles (`ggplot2 | theme()`)
    - rearranging chapters, sections or files
1. Summarise logically connected edits in single commit to branch `doctor`.
1. Experiment (technically and content-wise) by branching:
    - merge successes back into `doctor`
    - simply leave unsatisfactory experiments be => "stale" branch accessible later
    - remember to always switch the GitHub app to the right branch before `4. Try working on logical chunks`

## Helper tools

- `helper-ansi2html.sh`: exports changesets/diffs for review by non-Git user. Usage: `make diff`. See [makefile](https://github.com/katrinleinweber/PhD-thesis/blob/doctor/makefile) for details. Credit: [Paige Lo](http://stackoverflow.com/a/23481387), [yingted](http://stackoverflow.com/a/7870727/4341322), [Pádraig Brady & Brendan O'Connor](https://github.com/pixelb/scripts/blob/master/scripts/ansi2html.sh)
    - In case of error `-bash: ./helper-ansi2html.sh: Permission denied`, try running the command `chmod +x helper-ansi2html.sh`. Credit: [pedro3005](http://ubuntuforums.org/showthread.php?t=1258327)
- `helper-checkurls.R`: help to investigate broken or expired URLs. Usage: run in the [R](https://www.r-project.org/) console or [RStudio](https://www.rstudio.com/products/rstudio/). Credit: [Thomas Leeper](https://twitter.com/thosjleeper/status/725723310223417345).

## Known issues & miscellaneous advice

- [Cygwin shortcut for working directories](http://stackoverflow.com/a/12010346)
- Try to avoid tinkering too much & often with citation style, makefile etc. by working on a `content` branch most of the time, only rarely on `format`. Merge both into `doctor` only for review (maybe weekly) & final printing.
- Be prepared for newly introduced incompatibilities when updating [LaTeX packages](https://www.ctan.org/) or [pandoc](http://pandoc.org/). Automate the testing of the final PDF for control characters like `~`, `{`, `_`, etc.
