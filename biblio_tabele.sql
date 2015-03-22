SET client_encoding='utf-8';

CREATE TABLE ksiazka
(
	kod			char(8)			not null,
    imie		varchar(32)   	not null,
    nazwisko    varchar(32)   	not null,
    tytul		varchar(32)		not null,
    CONSTRAINT	ksiazka_pk		PRIMARY KEY(kod)
);

CREATE TABLE wydanie
(
	ID			char(8)			not null,
	wydawnictwo	varchar(32)		not null,
	rok			char(4)			not null,
	cena		float(8)		,
	kod			char(8)			,
	CONSTRAINT	wydanie_pk		PRIMARY KEY(ID),
	CONSTRAINT  wydanie_fk FOREIGN KEY(kod)
                       REFERENCES ksiazka(kod)
                        ON UPDATE CASCADE ON DELETE SET NULL
);

CREATE TABLE egzemplarz
(
	nr_inw		char(8)			not null,
	CONSTRAINT	egzemplarz_pk	PRIMARY KEY(nr_inw),
	CONSTRAINT  egzemplarz_fk 	FOREIGN KEY(nr_inw)
                       REFERENCES wydanie(ID)
                        ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE czytelnik
(
	nr_karty	char(8)			not null,
	imie		varchar(32)		not null,
	nazwisko	varchar(32)		not null,
	nr_inw		char(8)			,
	CONSTRAINT	czytelnik_pk	PRIMARY KEY(nr_karty),
	CONSTRAINT  czytelnik_fk 	FOREIGN KEY(nr_karty)
                       REFERENCES egzemplarz(nr_inw)
                        ON UPDATE CASCADE ON DELETE CASCADE
);	
