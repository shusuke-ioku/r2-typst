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

  - Why does this question matter?
  - What gap does this paper fill?
  - What is the main finding?
]

#slide[
  = Theory

  #set align(horizon)

  - Key mechanism
  - Main prediction
  - How it differs from alternatives
]

#slide[
  = Data and Design

  #set align(horizon)

  - Unit of analysis
  - Treatment and outcome variables
  - Identification strategy
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

  - Main takeaway
  - Implications
  - Next steps
]
