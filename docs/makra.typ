// Cwiczenie 9: uzupelnij plik o krok(numer, opis).
#let wyroznij(tekst, kolor: blue) = text(fill: kolor, weight: "bold")[#tekst]

#let ramka(tresc) = block(fill: luma(240), inset: 8pt, radius: 4pt)[
  #tresc
]

#let krok(numer, opis) = text(fill: navy)[#numer] + text(fill: luma(0))[. #opis] + text(fill: luma(0))[→]

#let metryka(nazwa, wartosc) = text(fill: luma(0))[#nazwa] + text(fill: navy)[=#wartosc]
