use master;
go
drop database if exists Radnik;
go
create database Radnik;
go

use Radnik;

create table Radnik(
Sifra int not null primary key identity(1,1),
Ime varchar(25) not null,
Prezime varchar(25) not null,
Nadredeni int not null
);

alter table Radnik add foreign key (Nadredeni) references Radnik(Sifra);