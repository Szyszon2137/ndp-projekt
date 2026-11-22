#import "@preview/touying:0.8.0": *
#import themes.simple: *
#show: simple-theme.with(aspect-ratio: "16-9")
#import "makra.typ": metryka
#import "metryki.typ": raport


= Projekt SSH

== Cel

Zdalne przetwarzanie pliku przez SSH i Bash.

== Etapy

- SSH: polaczenie - Ustalenie polączenia między klientem a serwerem SSH.
#pause
- SCP: przeslanie danych - Wysylanie pliku na serwer przez SCP.
#pause
- Bash: obliczenie wyniku - Wykonywanie skryptu Bash.
#pause
- SCP: Odbieranie wyniku - Wysylanie wynikow z powrotem na serwer i odbieranie ich z serwera SCP.

== Wynik

- Faza testowa: #metryka("Liczba_wierszy", raport.liczba_wierszy)
#pause
- Faza wdrożeniowa: Plik wynikowy

== Zastosowanie deploy.sh

- W ramach automatyzacji, dodajemy plik deploy.sh
#pause
- Wykonanie deploy.sh powoduje automatyczne przeslanie pliku na serwer, wykonanie skryptu Bash i pobranie wynikow z serwera SCP.

#slide[Wyniki i bezpieczeństwo:

#table(
  columns: (1fr, 2fr),
  table.header([*Etap*], [*Wynik*]),  
  [Test], metryka("Liczba_wierszy", raport.liczba_wierszy),
  [Bezpieczenstwo], metryka("Tryb", raport.tryb)
)]

#focus-slide[Wyniki przetwarzania: #metryka("Liczba_wierszy", raport.liczba_wierszy)
]
