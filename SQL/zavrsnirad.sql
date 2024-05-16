use master;
go
drop database if exists zavrsnirad;
go
create database zavrsnirad;
go

use zavrsnirad;

create table dobavljaci(
sifra int not null primary key identity(1,1),
naziv varchar(50) not null,
grad varchar(20) not null,
mjesto varchar(50) not null,
oib char(11) not null
);


create table nabava(
sifra int not null primary key identity(1,1),
brojnabave int not null,
datumnabave datetime not null,
dobavljac int not null
);


create table stavka(
sifranabave int not null primary key identity(1,1),
sifraartikla int not null,
kolicinaartikla int not null,
cijena decimal(18,2) not null
);


create table artikl(
sifra int not null primary key identity(1,1),
nazivartikla varchar(50) not null,
kolicina int not null
);


alter table nabava add foreign key (dobavljac) references dobavljaci(sifra);
alter table stavka add foreign key (sifraartikla) references nabava(sifra);
alter table stavka add foreign key (kolicinaartikla) references artikl(sifra);