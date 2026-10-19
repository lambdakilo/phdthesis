# Doctoral thesis

Akira Taguchi, Aalto University, School of Science, Department of Computer
Science. Supervising professor: Vili Lehdonvirta. The research plan is in
[`PLAN.md`](PLAN.md).

The latest draft is at
[lambdakilo.github.io/phdthesis/thesis.pdf](https://lambdakilo.github.io/phdthesis/thesis.pdf),
served by GitHub Pages from the `thesis.pdf` committed on `main`.

## Format

An article-based thesis: an overview of six chapters followed by Publications
I to III. The Aalto Doctoral Programme in Science accepts this form, a
monograph, or a research-paper-based thesis, and sets no fixed number of
articles; that is agreed with the supervising professor
([programme rules](https://www.aalto.fi/en/programmes/aalto-doctoral-programme-in-science/doctoral-thesis)).

Three studies tied together by an integrating argument is also the shape of
the two doctorates completed under Lehdonvirta at Oxford:
[Albert 2023](https://ora.ox.ac.uk/objects/uuid:09c05a29-30c4-4158-90b2-10a13ec6c144)
and [Ramizo 2021](https://ora.ox.ac.uk/objects/uuid:22af3f3d-6c4e-4297-968d-10f0ccbc4247).

The overview must state the research problem, goals, methods and key findings,
assess the significance for the discipline, list the publications, describe
the author's own contribution to each, and state the thesis's specific
scientific contribution. Chapters 1 to 6 and the front matter cover these.

## Build

Needs TeX Live with LuaLaTeX, biber and latexmk (MacTeX on macOS), or Docker.

Full thesis with the publications appended, to `build/thesis.pdf`, copied to
`thesis.pdf` at the root for GitHub Pages:

```sh
make
```

The same in Docker, with no local TeX:

```sh
make DOCKER=1
```

The overview alone, to `build/summary.pdf`:

```sh
make summary
```

The files Unigrafia takes, numbered, to `dist/`:

```sh
make print
```

Rebuild on every save (local TeX only):

```sh
make watch
```

## Files

| Path | Content |
|---|---|
| `metadata.tex` | Title, author, school, supervisor, series number |
| `preamble/layout.tex` | Fonts, sizes and margins from Unigrafia's spec |
| `frontmatter/` | Draft title and abstract pages, preface, list of publications, author's contribution, abbreviations |
| `chapters/` | The overview |
| `publications/list.tex` | The publications, once: feeds the list and the appended part |
| `publications/I.pdf` ... | The articles; a placeholder page stands in until each exists |
| `initials/initials.pdf` | Aalto's uniform title and abstract pages, once exported |
| `references.bib` | Bibliography, author-year style |
| `thesis.pdf` | The latest full build, committed for GitHub Pages |
| `PROMPTS.md` | Every prompt behind the commits, with its commit, generated from the commit messages |

## Before printing

- **Title and abstract pages.** Aalto requires its uniform pages. Fill in
  Unigrafia's English "initials" Word template from the
  [Unigrafia Aalto page](https://unigrafia.fi/en/services/support-services/dissertations-aalto-university/),
  export it to PDF as `initials/initials.pdf`, and it replaces the draft pages.
  Unigrafia offers this template for theses written in LaTeX.
- **Series number and ISBNs.** Order them through Unigrafia, then add them to
  the title pages and to `\SeriesNumber` in `metadata.tex`. The series is Aalto
  University publication series Doctoral Theses, ISSN 1799-4934 (printed) and
  1799-4942 (electronic).
- **Published articles.** Check each publisher's terms for including the
  article in the thesis.
- **Print files.** Unigrafia takes print-ready PDFs with fonts embedded, the
  overview and each article as separate files; `make print` names them as
  Unigrafia asks. Order printing at least 24 days before the defence
  ([publishing steps](https://www.aalto.fi/en/doctoral-education/publishing-your-doctoral-thesis)).
- **Accessibility.** Unigrafia requires an accessible electronic version, and
  its guidance is written for the Word template. This build makes an untagged
  PDF, so ask Unigrafia early whether it is accepted.

## Why LaTeX

Aalto's publishing instructions accept theses written in LaTeX, and Aalto
keeps a LaTeX class for its publication series, `aaltoseries`, in
[Aalto's GitLab](https://version.aalto.fi/gitlab/latex/aaltoseries) behind an
Aalto login. Aalto says its LaTeX template is not identical to the Word
template, so this repository takes the mandatory pages from Unigrafia's
template instead. There is no Aalto template for Typst.

## License

Prose, meaning the thesis text in `chapters/`, `frontmatter/` apart from
`frontmatter/initials.tex`, `metadata.tex`, `publications/list.tex` and
`references.bib`, the figures in `figures/`, the built `thesis.pdf`,
`PLAN.md`, `PROMPTS.md`, `CLAUDE.md` and this README, is licensed under
Creative Commons Attribution-ShareAlike 4.0 International. See
[`LICENSE-CC-BY-SA-4.0`](LICENSE-CC-BY-SA-4.0).

Everything else is licensed under the GNU Affero General Public License,
version 3 or (at your option) any later version. See [`LICENSE`](LICENSE).

The articles in `publications/` and the title and abstract pages in
`initials/` keep the terms of their publishers and of Aalto University, also
where they appear in `thesis.pdf`.
