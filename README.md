# CV — Seungmin Woo

LaTeX source for my curriculum vitae, built on the
[AltaCV](https://github.com/liantze/AltaCV) class (v1.1.5) by LianTze Lim.
Edited on Overleaf and mirrored to GitHub.

## Structure

```
.
├── main.tex                    # Entry point: header, education, publications, projects, services
├── sections/
│   ├── sidebar-page1.tex       # Page 1 sidebar: technical focus, experience, awards
│   └── sidebar-page2.tex       # Page 2 sidebar: skills, coursework
├── altacv.cls                  # AltaCV class file (LPPL 1.3)
├── .latexmkrc                  # latexmk config (pdflatex, output to build/)
└── .gitignore
```

Sidebars are attached to a section with the optional argument of `\cvsection`,
e.g. `\cvsection[sections/sidebar-page1]{EDUCATION}`.

## Build

```sh
latexmk            # writes build/main.pdf (see .latexmkrc)
latexmk -C         # clean
```

Or by hand:

```sh
pdflatex main.tex
pdflatex main.tex   # second pass for cross-references
```

XeLaTeX and LuaLaTeX also work (Carlito font is used under those engines,
Lato under pdflatex). No bibliography step is needed; publications are typed
inline.

## Notes

- Set `main.tex` as the main document in Overleaf if it does not auto-detect.
- `altacv.cls` requires `fontawesome`; `academicons` is only needed if the
  `academicons` class option is enabled.
