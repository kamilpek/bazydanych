SET client_encoding='utf-8';

-- wyświetl zawartość każdej z tabel, uporządkuj w/g atrybutu
SELECT * FROM klient;

SELECT * FROM klient ORDER BY nazwisko;

SELECT * FROM towar;

SELECT * FROM towar ORDER BY cena DESC;

-- zadanie P1: wyświetl zawartość powyższych tabel uporządkowanych
-- odpowiednio według miast, opisów;
SELECT * FROM klient ORDER BY miasto;
SELECT * FROM towar ORDER BY opis;

-- wyświetl zawartość tabel zamówień i kodów kreskowych uporządkowanych
-- odpowiednio według kosztów i kodów.
SELECT * FROM zamowienia ORDER BY koszt_wysylki;
SELECT * FROM kod_kreskowy ORDER BY kod;
