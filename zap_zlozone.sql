-- dane pracowników oddziałów gdyńskich
select * from pracownik 
where id_oddzial in (select id from oddzial where miasto='Gdynia')
;
-- j.w. inaczej
select pracownik.* from pracownik, oddzial
where id_oddzial=oddzial.id and miasto='Gdynia'
;
-- pensje pracowników gdyńskich
select pracownik.*, pensja from pracownik, oddzial, stanowisko
where id_oddzial=oddzial.id 
and id_stanowisko=stanowisko.id
and miasto='Gdynia'
;
-- suma pensji pracowników gdyńskich
select sum(pensja) from pracownik, oddzial, stanowisko
where id_oddzial=oddzial.id 
and id_stanowisko=stanowisko.id
and miasto='Gdynia'
;
-- pracownicy i ich specjalności
select imie, nazwisko, nazwa as specjalnosc
from pracownik, specjalnosc, prac_spec
where id_pracownik=pracownik.id 
and id_specjalnosc=specjalnosc.id
;
-- oddziały bez pracowników
select * from oddzial 
where id not in (select id_oddzial from pracownik)
;
-- pracownicy bez specjalnosci
select * from pracownik
where id not in (select id_pracownik from prac_spec)
;
