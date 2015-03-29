SET client_encoding='utf-8';
-- funkcje agregujące

-- wypisz zamówienia klientów o więcej niż jednej pozycji
SELECT imie, nazwisko, zamowienie.nr as zamowienie_nr, count(*) as "ile pozycji"
   FROM (( klient INNER JOIN zamowienie
             ON klient.nr = zamowienie.klient_nr
         ) INNER JOIN pozycja
             ON zamowienie.nr = pozycja.zamowienie_nr
        )
   GROUP BY imie, nazwisko, zamowienie.nr
   HAVING count(*)>1
;

-- zad P10: z tabel klientów i zamówień oblicz minimalny, maksymalny
-- i średni czas oczekiwania przez poszczególnych klientów (zamówienia
-- niezrealizowane nie liczą się do średniej).
SELECT
	klient.nr, klient.imie, klient.nazwisko,
	MIN(zamowienie.data_wysylki - zamowienie.data_zlozenia) AS min_czas_oczek,
	MAX(zamowienie.data_wysylki - zamowienie.data_zlozenia) AS max_czas_oczek,
	AVG(zamowienie.data_wysylki - zamowienie.data_zlozenia) AS sr_czas_oczek
FROM klient
	INNER JOIN zamowienie ON zamowienie.klient_nr = klient.nr
WHERE zamowienie.data_wysylki IS NOT NULL
GROUP BY klient.nr;
