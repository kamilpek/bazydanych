SET client_encoding='utf-8';
-- zapytania zagnieżdżone (zagnieżdżenia nieskorelowane)
-- vs. złączenia:

-- sprawdź jacy klienci złożyli zamówienia
-- rozwiązanie ze złączeniem
SELECT imie, nazwisko
   FROM klient K, zamowienie Z
   WHERE K.nr=Z.klient_nr
   GROUP BY K.nr, imie, nazwisko
;
-- rozwiązanie z zagnieżdżeniem
SELECT imie, nazwisko FROM klient 
  WHERE nr IN (
    SELECT klient_nr FROM zamowienie Z 
    )
      ORDER BY nazwisko
;
-- znajdź klientów którzy nie złożyli zamówień
SELECT imie, nazwisko FROM klient 
  WHERE nr NOT IN (
    SELECT klient_nr FROM zamowienie Z
    )
      ORDER BY nazwisko
;
-- uwaga pierwsze rozwiązanie nie daje możliwości adaptacji do kolejnego pytania

-- zad P7: wypisz 
-- daty złożenia zamówień nie mających żadnych pozycji,
SELECT data_zlozenia FROM zamowienie 
  WHERE zamowienie_nr IN (
    SELECT zamowienie_nr FROM pozycja
    )
;
 
-- opisy towarów niezamawianych, 

-- opisy towarów z nieokreślonym kodem kreskowym
SELECT kod, towar_nr FROM kod_kreskowy WHERE towar_nr is NULL;

SELECT opis FROM towar 
  WHERE towar is NULL (
    SELECT kod FROM kod_kreskowy Z
    )
      ORDER BY opis
;      
-- (uwaga: są takie towary, to zapytanie może dawać nieoczekiwany wynik, 
-- należy zachować ostrożność)

