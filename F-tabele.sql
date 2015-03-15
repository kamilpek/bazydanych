SET client_encoding='utf-8';

-- W taki sposób piszemy komentarz

-- a teraz definicje tabel
CREATE TABLE naglowek
(
    numer            int           PRIMARY KEY,
    imie             varchar(32)   not null,
    nazwisko         varchar(32)   not null,
    adres            varchar(100)  not null,
    data             date
);

CREATE TABLE pozycja
(
    numer            int   not null,
    nazwa            varchar(32)   not null,
    cena             int   not null,
    ilosc            int   not null,
    nr_fakt          int   REFERENCES naglowek(numer)
                           ON DELETE NO ACTION,
    UNIQUE(numer,nr_fakt)
);
