// Import ilm template
#import "@preview/ilm:1.4.2": ilm

// Apply ilm template
// Note: table-of-contents: none - let Quarto handle TOC
// appendix.enabled: false - Quarto handles appendix chapters directly
#show: ilm.with(
  title: "Book Title",
  author: "Author",
  table-of-contents: none,
  appendix: (enabled: false),
  bibliography: none,
  chapter-pagebreak: true,
)
