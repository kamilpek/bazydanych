SET client_encoding='utf-8';

INSERT INTO przedmiot_termin (rodzaj, nazwa, godziny, nr_leg, 
                              dzien_tyg, godzina, sala)
       VALUES ('wykład', 'Socjologia', 2, 'L 004', 1, 10, 'aula 2');

INSERT INTO przedmiot_termin (rodzaj, nazwa, godziny, nr_leg, 
                              dzien_tyg, godzina, sala)
       VALUES ('wykład', 'Prawo', 2, 'L 006', 5, 11, 's.116');

INSERT INTO jest_sluchaczem (nr_ind, kod) VALUES ('S 001', 6);

INSERT INTO jest_sluchaczem (nr_ind, kod) VALUES ('S 001', 4);

DROP TABLE student;

DROP TABLE nauczyciel;

DELETE FROM nauczyciel WHERE nr_leg='L 001';

DROP TABLE jest_sluchaczem;
