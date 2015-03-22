SET client_encoding='utf-8';

-- definicje tabel odpowiadających zbiorom encji nauczyciel i student
CREATE TABLE nauczyciel
(
    nr_leg           char(6)       PRIMARY KEY,
    imie             varchar(32)   not null,
    nazwisko         varchar(32)   not null
);

CREATE TABLE student
(
    nr_ind           char(6)       PRIMARY KEY,
    imie             varchar(32)   not null,
    nazwisko         varchar(32)   not null
);
/*
   łączymy encje przedmiot i termin w jedną tabelę
   -- w diagramie był to związek jednojednoznaczny
   pomiędzy dwoma zbiorami encji
*/
CREATE TABLE przedmiot_termin
(
    kod              serial        PRIMARY KEY,
    rodzaj           varchar(20)   not null,
    nazwa            varchar(50)   not null,
    godziny          int           not null,
    -- nr legitymacji nauczyciela prowadzącego
    nr_leg           char(6)     ,  
    -- teraz atrybuty terminu (byc moze jeszcze nie przypisany)
    dzien_tyg        int         ,
    godzina          int         ,
    sala             varchar(7)  ,
    -- atrybuty encji termin muszą być unikatowe w ramach tej tabeli
    CONSTRAINT       przedmiot_un UNIQUE(dzien_tyg,godzina,sala),
    -- klucz obcy - powiązanie przedmiotu z nauczycielem
    CONSTRAINT       przedmiot_fk FOREIGN KEY(nr_leg)
                        REFERENCES nauczyciel(nr_leg)
                        ON UPDATE CASCADE ON DELETE SET NULL
);

-- poniższa tabela jest realizacją związku między 
-- zbiorami encji przedmiot i student

CREATE TABLE jest_sluchaczem
(
    nr_ind           char(6)     ,
    kod              int         ,
    data             date,
    oceny            float,
    UNIQUE (nr_ind,kod,data),
    CONSTRAINT       jest_sluchaczem_nr_ind_fk FOREIGN KEY(nr_ind)
                        REFERENCES student(nr_ind)
                        ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT       jest_sluchaczem_kod_fk FOREIGN KEY(kod)
                        REFERENCES przedmiot_termin(kod)
                        ON UPDATE CASCADE ON DELETE CASCADE
);

