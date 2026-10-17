# Doctoral thesis

LaTeX thesis built with LuaLaTeX, biber and latexmk. Setup a person does once
by hand, such as installing TeX or exporting Unigrafia's title pages, is in
`README.md`.

## Build and verify

Build in Docker when there is no local TeX:

```sh
make DOCKER=1
```

Build the overview alone:

```sh
make summary DOCKER=1
```

A build passes when latexmk exits 0 and this prints nothing:

```sh
grep -i "undefined" build/thesis.log
```

`\DocumentMetadata` turns on LaTeX's new list code, which rejects enumitem's
keys, so the PDF language is set through hyperref instead.

## Rules

- `publications/list.tex` is the only list of publications. The front matter
  and the appended part both read it.
- Sizes, fonts and margins in `preamble/layout.tex` follow Unigrafia's spec for
  Aalto doctoral theses. Check the spec before changing them.
- British English in the text.
- Prose is CC BY-SA 4.0 and everything else AGPL-3.0-or-later. A new prose
  file outside the paths the README's License section names gets added there.
