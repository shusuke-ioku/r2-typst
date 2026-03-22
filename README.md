# r2-typst

LaTeX-like minimalist Typst template for academic papers and presentation slides.

One style file powers both your manuscript and your talk — change the design tokens once, and everything updates.

## Screenshots

| Paper | Slides |
|-------|--------|
| ![Paper](screenshots/paper-1.png) | ![Slides](screenshots/slides-title-1.png) |

## Features

- **Paper layout**: title block, abstract, numbered sections, bibliography
- **Slides layout**: 4:3 Polylux slides with matching title slide
- **Theorem environments**: Proposition, Lemma, Assumption, Theorem, Proof (via ctheorems)
- **Table helpers**: `caption-with-note`, `table-note` for publication-ready tables
- **Design tokens**: one dictionary controls fonts, colors, spacing, and sizes everywhere
- **Equation tools**: `nneq` for unnumbered display equations, auto-numbered by default

## Quick Start

Copy `lib.typ` into your project, then:

**Paper** ([full example](template/paper.typ)):

```typst
#import "./lib.typ": paper, nneq, caption-note, caption-with-note,
  table-note, theorem, proof, prop, lem, asp

#show: doc => paper(
  title: [My Paper],
  authors: ((name: [Author], affiliation: [University]),),
  date: datetime.today().display("[month repr:long] [day], [year]"),
  abstract: [Your abstract here.],
  doc,
)

= Introduction

Start writing.
```

**Slides** ([full example](template/slides.typ)):

```typst
#import "@preview/polylux:0.4.0": *
#import "./lib.typ": slides-style, title-slide

#show: slides-style

#title-slide(
  title: [My Paper],
  author: [Author Name],
  affiliation: [University],
)

#slide[
  = Motivation
  #set align(horizon)
  - Point one
  - Point two
]
```

Compile with:

```bash
typst compile --root . paper.typ
typst compile --root . slides.typ
```

## Customization

Override any design token by passing a `style` dictionary:

```typst
#show: doc => paper(
  title: [My Paper],
  style: (
    body_font: "Libertinus Serif",
    body_size: 12pt,
    accent_main: rgb(0, 80, 0),
    paragraph_indent: 0em,
  ),
  doc,
)
```

All available tokens are listed in the `default-style` dictionary in `lib.typ`.

## Dependencies

- [ctheorems](https://typst.app/universe/package/ctheorems) (theorem environments)
- [polylux](https://typst.app/universe/package/polylux) (slides only)

## License

MIT
