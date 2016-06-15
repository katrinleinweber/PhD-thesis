# Definitely helpful regular expressions

- `_\d{4}; [^@]`: finds broken multi-citation keys 
Useful for ensuring that sentences begin in new line, thus keeping small changes easier distinguishable in git commit preview.
- `[^;] @\w*_.*_\d{4}\]`: finds in-line citation keys that end with an unnecessary `]`.
- `\!\[(?!\*{2})`: finds Markdown figures without bold 1st sentence; learned from http://stackoverflow.com/a/5900601/4341322
- `\ \[.{2,}]\ `: finds in-line [@...] citations, but not tasks `- [ ]`
- `\w\ {2,}\w`: finds duplicate whitespaces within text
- `\ {2,}\n`: finds [line-breaking](http://pandoc.org/README.html#paragraphs) double whitespaces on line end
- `\n.+\(.+\)\n- Your \w+ on Page \d+ \| .+ \| Added on \w+, \d+ \w+ \w+ \d+:\d+:\d+\n`: finds meta-info in Kindle clippings
- `/(\b\S+\b)\s+\b\1\b/i`: find duplicate, consecutive words; learned from http://stackoverflow.com/a/12309899/4341322
- `\.\w+\ `: finds unformatted file extensions and numbers without non-breaking space before unit
- [ ] find ways to add such searches to the makefile => "unit-test" like approach to eliminate repetition of errors

# Possibly helpful regular expressions

- rearrange converted .docx: `[^ca|e\.g\sp|Ltd]\.\ ` => `. 
\n` & `` 
- `\n[^#|\}|\\]\w[^\.|\>|\:\?]*\n[^MeOH|S32|LM|\*A|\(Fig][A-Z]` finds open sentences 
- `[a-z]{3,}[^s][^\W]s\ `: finds 3rd-person singular, but also plural words
- `[^(\*A|Suppl|conc|approx|Prof|\d|esp|Ltd|z.B|Fig|e.g|www|\\\w*{)]\.[^\n|\r]`: finds periods that aren't associated with abbreviations. 
