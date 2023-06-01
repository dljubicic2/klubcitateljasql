drop database klubcitatelja;
create database klubcitatelja;
use klubcitatelja;

create table citatelj(
	id int not null primary key identity (1,1),
	knjiga int not null,
	ime varchar(50) null,
	prezime varchar(50) null
);
create table knjiga (
	id int not null primary key identity (1,1),
	naziv varchar(50) null,
	broj_stranica int null,
	nakladnik varchar(50) null
);
create table citateljknjiga (
	citatelj int not null,
	knjiga int not null
);

-- veze izme?u ?lanova

alter table citatelj add foreign key (knjiga) references knjiga (id);
alter table citateljknjiga add foreign key (citatelj) references citatelj (id);
alter table citateljknjiga add foreign key (knjiga) references knjiga (id);

-- insert u tablicu

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

-- update tablice

update knjiga set naziv='Crvenkapica'
where id=2;

update citatelj set ime='Petar'
where id=3;

update knjiga set broj_stranica=34
where id=2;

-- delete tablice

delete knjiga set naziv where id=1;

delete citatelj set prezime where id=2;

delete citateljknjiga set citatelj id=3;