#import "@preview/polylux:0.4.0": *
#import "../lib.typ": slides-style, title-slide

#show: slides-style

#title-slide(
  title: [Your Paper Title],
  subtitle: [Conference Presentation],
  author: [Author Name],
  affiliation: [University],
  date: [March 2026],
)

#slide[
  = Motivation

  #set align(horizon)

  Existing theories predict X, but we observe Y.

  - Gap one in the literature
  - Gap two in the literature
]

#slide[
  = Theory

  #set align(horizon)

  The key mechanism is Z.

  - Prediction 1: when A increases, B decreases
  - Prediction 2: the effect is stronger under C
]

#slide[
  = Data and Design

  #set align(horizon)

  Panel data covering N units over T periods.

  - Treatment: policy change in year $t_0$
  - Outcome: organizational count per region-year
  - Design: difference-in-differences with unit and year FE
]

#slide[
  = Main Results

  #set align(horizon)

  #figure(
    table(
      columns: 3,
      table.header[Variable][Coefficient][Std. Error],
      [Treatment], [0.234\*\*\*], [(0.045)],
    ),
  )
]

#slide[
  = Conclusion

  #set align(horizon)

  This paper shows that X causes Y through mechanism Z.

  - Implication for theory
  - Implication for policy
  - Next steps
]
