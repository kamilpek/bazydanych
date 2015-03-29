SET client_encoding='utf-8';
-- sprawdź jacy klienci złożyli zamówienia na układanki
SELECT DISTINCT klient.nr, imie, nazwisko, opis
   FROM ( ( klient INNER JOIN zamowienie 
                ON klient.nr = zamowienie.klient_nr
          ) INNER JOIN pozycja
            ON zamowienie.nr = pozycja.zamowienie_nr
        ) INNER JOIN towar 
          ON pozycja.towar_nr = towar.nr
   WHERE towar.opis LIKE 'układanka%'
;

-- zad P11: sprawdź zamówienia na chusteczki higieniczne, kto
-- zamawiał, ile, jaki jest średni czas oczekiwania na realizację
-- zamówienie na chusteczki.
SELECT
klient.nr, klient.imie, klient.nazwisko,
SUM(pozycja.ilosc) AS "ile",
AVG(zamowienie.data_wysylki - zamowienie.data_zlozenia) AS "średni czas oczekiwania"
FROM (((zamowienie
INNER JOIN klient ON klient.nr = zamowienie.klient_nr )
INNER JOIN pozycja ON pozycja.zamowienie_nr = zamowienie.nr )
INNER JOIN towar ON towar.nr = pozycja.towar_nr)
WHERE towar.opis LIKE 'chusteczki higieniczne'
GROUP BY klient.nr;
