use master;
go
drop database if exists IspitniRok;
go
create database IspitniRok;
go

use IspitniRok;

create table IspitniRok(
Sifra int not null primary key identity(1,1),
Predmet varchar(50) not null,
VrstaIspita varchar(50) not null,
Datum datetime null,
Pristupio bit not null
);

create table Pristupnici(
IspitniRok int not null,
Student varchar(50) not null,
BrojBodova decimal(18,2) not null,
Ocjena decimal(18,2)not null
);

alter table Pristupnici add foreign key (IspitniRok) references IspitniRok(Sifra);