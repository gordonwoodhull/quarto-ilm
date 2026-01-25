// Import ilm template
#import "@preview/ilm:1.4.2": ilm

// Apply ilm template
// Note: table-of-contents: none - let Quarto handle TOC
// appendix.enabled: false - Quarto handles appendix chapters directly
#show: ilm.with(
$if(title)$
  title: [$title$],
$endif$
$if(by-author)$
  author: "$for(by-author)$$it.name.literal$$sep$, $endfor$",
$endif$
  table-of-contents: none,
  appendix: (enabled: false),
  bibliography: none,
  chapter-pagebreak: true,
)

// Apply chapter-based numbering to all figures
// ILM may not number Quarto's custom figure kinds (quarto-float-fig, etc.)
#set figure(numbering: quarto-figure-numbering)
