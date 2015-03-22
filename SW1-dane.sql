SET client_encoding='utf-8';
-- wypełnienie tabeli nauczyciel

INSERT INTO nauczyciel (nr_leg, imie, nazwisko)
       VALUES ('L 001', 'Jan', 'Kowalski');
INSERT INTO nauczyciel (nr_leg, imie, nazwisko)
       VALUES ('L 002', 'Michał', 'Michalski');
INSERT INTO nauczyciel (nr_leg, imie, nazwisko)
       VALUES ('L 003', 'Anna', 'Nowak');
INSERT INTO nauczyciel (nr_leg, imie, nazwisko)
       VALUES ('L 004', 'Zuzanna', 'Przepiórkowska');
INSERT INTO nauczyciel (nr_leg, imie, nazwisko)
       VALUES ('L 005', 'Eleonora', 'Plichta');

-- wypełnienie tabeli student
 
INSERT INTO student (nr_ind, imie, nazwisko)
       VALUES ('215001', 'Aleksander', 'Cyra');
INSERT INTO student (nr_ind, imie, nazwisko)
       VALUES ('215002', 'Hermenegilda', 'Kociubińska');
INSERT INTO student (nr_ind, imie, nazwisko)
       VALUES ('215003', 'Krzysztof', 'Kulikowski');
INSERT INTO student (nr_ind, imie, nazwisko)
       VALUES ('215004', 'Jerzy', 'Samp');
INSERT INTO student (nr_ind, imie, nazwisko)
       VALUES ('215005', 'Bronisław', 'Wstęp');

-- wypełnienie tabeli przedmiot_termin

INSERT INTO przedmiot_termin (rodzaj, nazwa, godziny, nr_leg, dzien_tyg, godzina, sala)
       VALUES ('wykład', 'Matematyka dyskretna', 2, 'L 004', 1, 10, 'a.2');
INSERT INTO przedmiot_termin (rodzaj, nazwa, godziny, nr_leg, dzien_tyg, godzina, sala)
       VALUES ('wykład', 'Programowanie w C', 2, 'L 002', 2, 8, 's.116');
INSERT INTO przedmiot_termin (rodzaj, nazwa, godziny, nr_leg, dzien_tyg, godzina, sala)
       VALUES ('laboratorium', 'Programowanie w C', 2, 'L 001', 3, 12, 'l.109');
INSERT INTO przedmiot_termin (rodzaj, nazwa, godziny, nr_leg, dzien_tyg, godzina, sala)
       VALUES ('ćwiczenia', 'Matematyka dyskretna', 2, 'L 004', 2, 12, 's.47');
INSERT INTO przedmiot_termin (rodzaj, nazwa, godziny, nr_leg, dzien_tyg, godzina, sala)
       VALUES ('wykład', 'Filozofia', 2, 'L 003', 4, 13, 'a.2');


-- wypełnienie tabeli jest_sluchaczem kodującej związek studenta i przedmiotu

INSERT INTO jest_sluchaczem (nr_ind, kod) VALUES ('215001', 1);
INSERT INTO jest_sluchaczem (nr_ind, kod) VALUES ('215001', 4);
INSERT INTO jest_sluchaczem (nr_ind, kod) VALUES ('215001', 2);
INSERT INTO jest_sluchaczem (nr_ind, kod) VALUES ('215001', 3);
INSERT INTO jest_sluchaczem (nr_ind, kod) VALUES ('215002', 5);
INSERT INTO jest_sluchaczem (nr_ind, kod) VALUES ('215003', 3);
INSERT INTO jest_sluchaczem (nr_ind, kod) VALUES ('215003', 4);
INSERT INTO jest_sluchaczem (nr_ind, kod) VALUES ('215004', 1);
INSERT INTO jest_sluchaczem (nr_ind, kod) VALUES ('215004', 5);
INSERT INTO jest_sluchaczem (nr_ind, kod) VALUES ('215005', 3);

