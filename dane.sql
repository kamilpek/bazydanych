INSERT INTO oddzial VALUES 
(1, 'I Oddział', 'Sopot'),
(2, 'I Oddział', 'Gdynia'),
(3, 'II Oddział', 'Sopot'),
(4, 'I Oddział', 'Elblag'),
(5, 'II Oddział', 'Gdynia'),
(6, 'I Oddział', 'Tczew')
;

INSERT INTO stanowisko VALUES
(11, 'kierownik', '3000'),
(12, 'asystent', '2350'),
(13, 'dyrektor', '5500'),
(14, 'prezes', '15000'),
(15, 'referent', '2200')
;

INSERT INTO specjalnosc VALUES
(21, 'klient indywidualny'),
(22, 'mała firma'),
(23, 'duża firma')
;

INSERT INTO pracownik VALUES
(31, 15, 1, 'Jan', 'Kowalski', '1955-01-10'),
(32, 15, 1, 'Anna', 'Nowak', '1985-05-20'),
(33, 12, 1, 'Magdalena', 'Lisecka', '1980-04-24'),
(34, 15, 1, 'Patrycja', 'Kowalska', '1975-03-12'),
(35, 15, 2, 'Bartosz', 'Żak', '1987-07-10'),
(36, 11, 2, 'Bartosz', 'Babecki', '1968-11-09'),
(37, 13, 2, 'Anna', 'Nehrebecka', '1969-03-23'),
(38, 12, 4, 'Jerzy', 'Zieliński', '1966-12-24'),
(39, 14, 4, 'Renata', 'Kowalska', '1958-03-23'),
(40, 15, 4, 'Krzysztof', 'Jedliński', '1985-11-24')
;

INSERT INTO prac_spec VALUES
(31, 21),
(31, 22),
(32, 21),
(34, 22),
(34, 23),
(35, 23),
(36, 23),
(37, 21),
(37, 22),
(37, 23),
(40, 21),
(40, 22)
;

