/**
* Projeto 1: Agenda de contatos
* @author Jonathan
*/

-- Listar bancos disponíveis no servidor
show databases;
-- Criar um novo banco de dados
create database dbagenda;
-- Excluir um banco de dados
drop database teste;
-- Selecionar o banco de dados
use dbagenda;
/* Tabelas
int (Tipo de dados: números inteiros)
primary key (chave primária)
auto_increment (númeração automática)
varchar (tipo de dados: String de caracteres)
not null (campo com preenchimento obrigatório)
 */
 
create table contatos (
	idcon int primary key auto_increment,
    nome varchar(20) not null,
    fone varchar(12) not null,
    email varchar(50),
    apelido varchar(25)
);

-- Descrever a estrutura da tabela
describe contatos;
-- Excluir uma tabela
-- drop table contatos;

/* CRUD (Create Read Update Delet) 
CRUD Creat */
-- Insetir um novo contato
insert into contatos (nome,fone,email)
values('J','11212121','j@email.com');
insert into contatos(nome,fone)
values('Bill Gates','98765-4321');
insert into contatos(nome,fone,email)
values('P','78958-5454','p@email.com');
insert into contatos(nome,fone)
values('Y','12155-5555');
insert into contatos(nome,fone,email)
values('Old','90000-0001','old@email.com');

/* CRUD Read*/
-- listar todos contatos da tabela 
select * from contatos;
-- listar os contatos por ordem alfabética
select * from contatos order by nome;
-- listar campos espcíficos da tabela
select nome,fone from contatos order by nome;
-- criar um apelido par aos campo das tabela
select nome as Contato, fone as Telefone, email as Email
from contatos order by nome;
-- selecionar um contato especifíco
select * from contatos where nome='J';

/* CRUD Update*/
update contatos set nome='Willian Gates', fone='2989-9090',
email='bill@outlook.com' where idcon=2;
update contatos set fone='91111-1111' where idcon=1;
update contatos set email='' where idcon=5;
update contatos set email='p@email.com' where idcon='3';

/* CRUD Delete */
delete from contatos where idcon=5;