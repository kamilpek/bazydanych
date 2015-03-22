CREATE TABLE wydanie
(
	kod			char(8)			not null,
	wydawnictwo	varchar(32)		not null,
	rok			char(4)			not null,
	cena		float(8)		,
	kod			char(8)			,
	CONSTRAINT	wydanie.pk		PRIMARY KEY(kod)	
);
