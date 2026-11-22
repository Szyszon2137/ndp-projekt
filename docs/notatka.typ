
#import "makra.typ": wyroznij, ramka, krok
#set page(paper: "a4", margin: 22mm)
#set text(lang: "pl", size: 11pt)
#set heading(numbering: "1.")
#set document(title: [Projekt SSH - dokumentacja], author: "Szyszon", date: datetime(year: 2024, month: 6, day: 1))
#show heading.where(level: 2): set text(fill: navy, weight: "bold")

= Projekt SSH - dokumentacja

Autor: IDENTYFIKATOR (wpisz wybrany identyfikator)

== Cel

Uzywamy #wyroznij[Typst] do opisu projektu wykonanego w Bash i SSH.

== Dzialanie

Proces ma cztery etapy: SSH, SCP, Bash, SCP.

#ramka[Oczekiwany rezultat: `Liczba_wierszy=4`.]

== Przyklad matematyczny

$ sum_(i=1)^n i = (n(n+1)) / 2 $

$ sum_(n=1)^oo n(n+1) / (n+2) $

#table(
    columns: (1fr, 2fr),
    table.header([*Etap*], [*Wynik*]),
    [Test], [Liczba_wierszy=4],
    [Wdrożenie], [Plik wynikowy]
)

#figure(
    rect(width: 70%, height:12mm, fill: luma(220)),
    caption: [Schemat zdalnego przetwarzania]
)

#wyroznij([tresc 1])

#wyroznij([tresc1.1])

#wyroznij([tresc 2], kolor: red)

#krok(1, [Wysylanie pliku na serwer SSH])
#krok(2, [Przesylanie danych przez SCP])
#krok(3, [Wykonywanie skryptu Bash])
#krok(4, [Wysylanie wynikow z powrotem na serwer])
#krok(5, [Odbieranie wynikow z serwera SCP])