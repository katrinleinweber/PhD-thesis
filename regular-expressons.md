Some regular expressions that I used for proof-reading.

- `[^( G|\*A|Suppl|conc|approx|Prof|\d|esp|Ltd)](\. )[^\r]`: Find periods that aren't associated with abbreviation. Useful for ensuring that sentences begin in new line, thus keeping small changes easier distinguishable in git commit preview.
- `\!\[(?!\*{2})`: Find Markdown figures without bold 1st sentence; learned from http://stackoverflow.com/a/5900601/4341322
- `\ \[.{2,}]\ `: finds [@...] citations within sentence, but not `- [ ]`
- `[a-z]{3,}[^s][^\W]s\ `: finds 3rd-person singular, but also plural words
- `[^\s]\ \ `: finds double whitespace within text, not in tables or indents
- `\n.+\(.+\)\n- Your \w+ on Page \d+ \| .+ \| Added on \w+, \d+ \w+ \w+ \d+:\d+:\d+\n`: remove meta-info from Kindle clippings
- `(\b\S+\b)\s+\b\1\b` or `\b(\w+)\s+\1\b`: find consecutive, duplicate words; learned from https://stackoverflow.com/questions/2823016/
- `\n[^#|\}|\\]\w[^\.|\>|\:\?]*\n[A-Z]`: find open sentences, except for Markdown headers, LaTeX commands & HTML comments
- `\,[^\ |\d|\n|\\]`: find commas with directly following letter
