DROP TABLE prac_spec;
DROP TABLE pracownik;
DROP TABLE specjalnosc;
DROP TABLE stanowisko;
DROP TABLE oddzial;


CREATE TABLE oddzial (
  id     INT PRIMARY KEY,
  nazwa  VARCHAR(25) NOT NULL,
  miasto VARCHAR(10) NOT NULL
);

CREATE TABLE stanowisko (
  id     INT PRIMARY KEY,
  nazwa  VARCHAR(15) NOT NULL,
  pensja INT -- MONEY
);

CREATE TABLE specjalnosc (
  id     INT PRIMARY KEY,
  nazwa  VARCHAR(45) NOT NULL
);

CREATE TABLE pracownik (
  id            INT PRIMARY KEY,
  id_stanowisko INT REFERENCES stanowisko (id) ON DELETE SET NULL,
  id_oddzial    INT REFERENCES oddzial (id) ON DELETE CASCADE,
  imie          VARCHAR(10) NOT NULL,
  nazwisko      VARCHAR(20) NOT NULL,
  data_ur       DATE CHECK(data_ur <'1994-01-01')
);

CREATE TABLE prac_spec (
  id_pracownik   INT REFERENCES pracownik (id),
  id_specjalnosc INT REFERENCES specjalnosc (id)
);

