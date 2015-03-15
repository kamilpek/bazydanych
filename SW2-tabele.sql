SET client_encoding='utf-8';

CREATE TABLE nauczyciel
(
    nr_leg           char(6)       not null,
    imie             varchar(32)   not null,
    nazwisko         varchar(32)   not null,
    CONSTRAINT       nauczyciel_pk PRIMARY KEY(nr_leg)
);

CREATE TABLE student
(
    nr_ind           char(6)       not null,
    imie             varchar(32)   not null,
    nazwisko         varchar(32)   not null,
    CONSTRAINT       student_pk PRIMARY KEY(nr_ind)
);

CREATE TABLE przedmiot
(
   kod              serial,
   rodzaj           varchar(20)   not null,
   nazwa            varchar(50)   not null,
   godziny	        int           not null,
   -- nr legitymacji nauczyciela prowadzacego
   nr_leg           char(7)       ,
   CONSTRAINT       przedmiot_pk PRIMARY KEY(kod),
   -- klucz obcy - powiazanie przedmiotu z nauczycielem
   CONSTRAINT       przedmiot_fk FOREIGN KEY(nr_leg)
                       REFERENCES nauczyciel(nr_leg)
                        ON UPDATE CASCADE ON DELETE SET NULL
);

CREATE TABLE termin
(
   dzien_tyg        int       not null,
   godzina          int       not null,
   sala             char(5)   not null,
   CONSTRAINT       termin_un UNIQUE(dzien_tyg,godzina,sala),
   -- klucz obcy - zwiazek jednojednoznaczny z przedmiotem
   kod              int,
   CONSTRAINT       termin_przedmiot_fk FOREIGN KEY(kod)
                       REFERENCES przedmiot(kod)
                       ON UPDATE CASCADE ON DELETE SET NULL,
   CONSTRAINT       kod_pk PRIMARY KEY(kod)
);


-- poniższa tabela jest realizacją związku między 
-- zbiorami encji przedmiot i student

CREATE TABLE jest_sluchaczem
(
    nr_ind           char(6)     not null,
    kod              int         not null,
    CONSTRAINT       jest_sluchaczem_nr_ind_fk FOREIGN KEY(nr_ind)
                        REFERENCES student(nr_ind)
                        ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT       jest_sluchaczem_kod_fk FOREIGN KEY(kod)
                        REFERENCES przedmiot(kod)
                        ON UPDATE CASCADE ON DELETE CASCADE
);

