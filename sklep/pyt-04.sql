SET client_encoding='utf-8';
-- użycie różnych warunków, IS NOT NULL, dopasowanie wzorców tekstowych, warunki dotyczące dat:
-- wyświetl klientów z Sopotu,
SELECT * FROM klient WHERE miasto='Sopot'
;
-- towary z podaną ceną, 
SELECT * FROM towar WHERE cena IS NOT NULL
;
-- dane o donicach, które mają podaną cenę, 
SELECT * FROM towar WHERE opis LIKE '%donica%' AND cena IS NOT NULL
;
-- zamówienia złożone w marcu 2015
SELECT * FROM zamowienie WHERE data_zlozenia BETWEEN '2015/03/01' AND '2015/03/31'
;
-- wyświetl dane o zysku dla towarów, ale tylko wtedy, gdy zysk da się określić
SELECT *,cena-koszt AS zysk FROM towar WHERE cena is NOT NULL
;

-- zad P4: wyświetl w kolejnych zapytaniach:
-- dane klientów spoza Gdańska,
SELECT * FROM klient WHERE miasto<>'Gdańsk' ORDER BY miasto;

-- klientów bez telefonu,
SELECT * FROM klient WHERE telefon IS NULL;

-- klientów spoza Gdańska i bez telefonu,
SELECT * FROM klient WHERE miasto<>'Gdańsk' AND telefon IS NULL;

-- dane o układankach,
SELECT * FROM towar WHERE opis LIKE '%układanka%';

-- zamówienia niezrealizowane (bez daty wysyłki),
SELECT * FROM zamowienie WHERE data_wysylki IS NULL;

-- zrealizowane w lutym 2015,
SELECT * FROM zamowienie WHERE data_wysylki LIKE '**-02-2015'

-- wyświetl dane o czasie realizacji zamówień już zrealizowanych
SELECT *,data_wysylki-data_zlozenia AS czas_realizacji FROM zamowienie;
