#import "../lib.typ": paper, nneq, caption-note, caption-with-note, table-note, theorem, proof, prop, lem, asp

#show: doc => paper(
  title: [Your Paper Title],
  subtitle: [A Subtitle],
  authors: (
    (name: [Author One], affiliation: [University A]),
    (name: [Author Two], affiliation: [University B]),
  ),
  date: datetime.today().display("[month repr:long] [day], [year]"),
  abstract: [
    This is a template for academic papers using the r2 Typst style.
    It includes numbered equations, theorem environments, APSA-style
    bibliography, and sensible defaults for social science manuscripts.
  ],
  doc,
)

= Introduction

Start writing here. Equations are numbered automatically:

$ y_(i t) = alpha_i + delta_t + beta D_(i t) + epsilon_(i t) $ <eq:did>

Reference them with `@eq:did`: see @eq:did.

Unnumbered equations use `nneq`:

#nneq[$E[y | D = 1] - E[y | D = 0] = "ATT" + "bias"$]

= Theory

Use theorem environments for formal results:

#asp[
  Players are risk-neutral and share a common discount factor $delta in (0, 1)$.
]

#prop[
  Under Assumption 1, there exists a unique equilibrium in which the
  challenger mobilizes if and only if $theta > theta^*$.
]

#proof[
  The proof follows from backward induction. $square$
]

= Results

Tables use `caption-with-note` for titles with footnotes:

#figure(
  table(
    columns: 3,
    table.header[Variable][Coefficient][Std. Error],
    [Treatment], [0.234\*\*\*], [(0.045)],
    [Control], [0.012], [(0.033)],
  ),
  caption: caption-with-note(
    [Treatment Effects on Organizational Growth],
    [Standard errors clustered at the unit level. \*\*\* p < 0.01.]
  ),
)

= Conclusion

Wrap up here.

#heading(outlined: false, numbering: none, level: 1)[References]

#bibliography(
  "ref.bib",
  style: "american-political-science-association",
  title: none
)
