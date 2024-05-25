use master;
go
drop database if exists Racun;
go
create database Racun;
go

use Racun;

create table Racun(
Sifra int not null primary key identity(1,1),
RedniBroj int not null,
Datum datetime null,
Kupac varchar(50) not null,
Placeno bit not null
);

create table StavkeRacuna(
Racun int not null,
Artikl varchar(50),
Cijena decimal(18,2) not null,
Kolicina int not null,
Popust decimal(18,2) not null
);

alter table StavkeRacuna add foreign key (Racun) references Racun(Sifra);