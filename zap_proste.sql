-- informacje o wszystkich oddziałach
select * from oddzial
;
-- informacje o możliwych stanowiskach
select * from stanowisko
;
-- informacje o wszystkich pracownikach
select * from pracownik
;
-- tylko imiona i nazwiska pracowników
select imie, nazwisko from pracownik
;
-- informacje o odziałach Sopockich
select * from oddzial where miasto='Sopot'
;
-- nazwy dobrze płatnych stanowisk
select nazwa from stanowisko where pensja > 10000
;
-- imie i nazwisko pracownikow o nazwisku 'Kowalski'/'Kowalska'
select imie, nazwisko from pracownik where nazwisko LIKE 'Kowalsk%'
;
-- pensja prezesa
select pensja as pensja_prezesa from stanowisko where nazwa='prezes'
;

