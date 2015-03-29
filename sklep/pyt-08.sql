SET client_encoding='utf-8';
-- zapytania zagnieżdżone (zagnieżdżenia skorelowane)

-- sprawdź jacy klienci nie zamówili niczego
SELECT imie, nazwisko FROM klient K
   WHERE NOT EXISTS (
   SELECT *
     FROM zamowienie Z INNER JOIN pozycja P 
     ON  K.nr=Z.klient_nr
     AND P.zamowienie_nr=Z.nr 
)
;

-- zad P8: użyj INNER JOIN szukając klientów, którzy złożyli zamówienia, 
-- znajdź klientów, którzy złożyli puste zamówienia (tzn. bez pozycji).

