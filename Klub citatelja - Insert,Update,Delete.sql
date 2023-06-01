use klubcitatelja;

select * from knjiga;

insert into knjiga (naziv,broj_stranica,nakladnik)
values ('Var',132,'Zagreb'),
('Char',120,'Osijke'),
('Int',80,'Koprivnica');

insert into citatelj (knjiga,ime,prezime)
values (1,'Domagoj','Domagojevic'),
(2,'Sanja','Sanjic'),
(3,'Katarina','Katarinic');

insert into citateljknjiga (citatelj,knjiga)
values (2,3),
(2,1),
(3,1);

update knjiga set naziv='Crvenkapica'
where id=2;

update citatelj set ime='Petar'
where id=3;

update knjiga set broj_stranica=34
where id=2;

delete knjiga set naziv where id=1;

delete citatelj set prezime where id=2;

delete citateljknjiga set citatelj id=3;
