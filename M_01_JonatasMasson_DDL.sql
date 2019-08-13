create database M_Opflix

use M_Opflix;

create table Genero (
	IdGenero int primary key identity
	,Nome Varchar(255) not null unique
);

create table TipoMetragem (
	IdTipoMetragem int primary key identity
	,Nome Varchar(255) not null unique
);

create table Lancamento(
	IdLancamento int primary key identity
	,Nome Varchar(255) not null unique
	,TempoDuracao Time  
	,DataLancamento Date 
	,Sinopse varchar(1500) not null unique
	,IdGenero int foreign key references Genero (IdGenero)
	,IdTipoMetragem int foreign key references TipoMetragem (IdTipoMetragem)
);

create table TipoUsuario (
	IdTipoUsuario int primary key identity
	,Nome Varchar(255) not null unique
);

create table Usuario(
	IdUsuario	int primary key identity
	,Nome Varchar(255) not null unique
	,Email Varchar(255) not null unique
	,Senha Varchar(255) not Null unique
	,IdTipoUsuario int foreign key references TipoUsuario (IdTipoUsuario)
);

