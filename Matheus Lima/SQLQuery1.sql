create database dev_db_tarde
go

use dev_db_tarde
go

create table Professor(
 ProfessorId int primary key identity,
 Nome varchar(255),
 Email varchar(255)unique,
 Senha varchar(255)
)
go

create table Turma(
 TurmaId int primary key identity,
 Nome varchar(255),
 ProfessorId int foreign key references Professor(ProfessorId)
)
go

create table Atividade(
 AtividadeId int primary key identity,
 Descricao varchar(255),
 TurmaId int foreign key references Turma(TurmaId)
)
go

--Inserção de dados nas tabelas
 insert into Professor(Nome,Email,Senha) values('Matheus','matheus@email.com', 'admin1234'),
 ('Lima','lima@email.com', 'admin1234'),
 ('Guilherme','guilherme@email.com', 'admin1234')
 go

  insert into Turma(Nome, ProfessorId) values
 ('DEV 2025',1),
	('MUltimidia',2),
	('redes',3)
 go

 insert into Atividade(Descricao, turmaId) values
 ('API',1)
 go