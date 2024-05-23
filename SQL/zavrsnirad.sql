use master;
go
drop database if exists ZavrsniRad;
go
create database ZavrsniRad;
go

use ZavrsniRad;

create table Dobavljaci(
Sifra int not null primary key identity(1,1),
Naziv varchar(50) not null,
Grad varchar(20) not null,
Adresa varchar(50) not null,
Oib char(11) not null
);


create table Nabava(
Sifra int not null primary key identity(1,1),
Broj_nabave int not null,
Datum_nabave datetime not null,
Dobavljac int not null
);


create table Stavka(
Sifra_nabave int not null,
Sifra_artikla int not null,
Kolicina_artikla int not null,
Cijena decimal(18,2) not null
);


create table Artikl(
Sifra int not null primary key identity(1,1),
Naziv_artikla varchar(50) not null,
Cijena decimal(18,2) not null
);


alter table Nabava add foreign key (Dobavljac) references Dobavljaci(Sifra);
alter table Stavka add foreign key (Sifra_nabave) references Nabava(Sifra);
alter table Stavka add foreign key (Sifra_artikla) references Artikl(Sifra);

-- INSERT NAREDBE

--select * from dobavljaci;
insert into Dobavljaci (Naziv, Grad, Adresa, Oib)values
('Bijelic.doo','Osijek','Sv.Roka1',96752332364),
('Atlantic.doo','Osijek','M.Gupca1',48037484195),
('Roto.doo','Osijek','Gunduliceva1',82770989192);

--select * from artikl;
insert into Artikl (Naziv_artikla, Cijena)values
('Coca-Cola 0.25 l', 01.27),
('Coca-ColaZero 0.25 l', 01.27),
('Fanta 0.25 l', 01.19),
('Sprite 0.25 l', 01.18),
('Schweppes 0.25 l', 01.15),
('Pan 0.5 l', 01.37),
('Tuborg 0.5 l', 01.35),
('Kozel 0.5 l', 01.36),
('Budweiser 0.5 l', 01.39),
('Osjecko 0.5 l', 01.50),
('Cedevita naranca 19 g', 00.85),
('Cedevita limun 19 g', 00.85),
('Cedevita grejp 19 g', 00.85);