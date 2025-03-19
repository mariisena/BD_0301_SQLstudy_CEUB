create database bd_livro;
 
use bd_livro;

create table tb_editora
(cd_editora int not null primary key,
editora char(30)) ;
 
create table tb_genero
(cd_genero int not null primary key,
genero char(30)) ;
 
create table tb_livro 
(isbn int not null primary key,
titulo char(50),
cd_editora int,
cd_genero int,
dt_livro date,
preco decimal(12,2)); 

alter table tb_livro
add constraint fk_genero foreign key (cd_genero) 
references tb_genero (cd_genero);
 
alter table tb_livro 
add constraint fk_editora foreign key (cd_editora) 
references tb_editora (cd_editora);

insert into tb_genero 
(cd_genero, genero) 
values
(1, 'Computacao'),
(2, 'Medicina'),
(3, 'Engenharia'),
(4, 'Juridico'),
(5 , 'Arquitetura'), 
(6, 'Biologia'), 
(7, 'Mecatronica'); 

insert into tb_editora 
(cd_editora, editora) 
values
(1, 'novatec'),
(2, 'amazon'), 
(3, 'coopmed'), 
(4, 'livraria florence'), 
(5 , 'blucher'), 
(6,'Mundial'), 
(7,'saraiva'), 
(8,'Editora Forum'),
(9, 'Dickens');

insert into tb_livro 
(isbn, titulo, cd_editora, cd_genero, preco, dt_livro) 
values
(1,'banco de dados',1,1, 300, '2019-10-02'), 
(2,'Engenharia de Software',1,1, 350, '2019-10-03'), 
(3,'Ortopedia',3,2, 310, '2019-10-04'), 
(4,'Cardiologia',4,2, 320, '2019-10-05'), 
(5,'Estrutura Predial',5,3, 200, '2019-10-06'), 
(6,'Estrutura Hidraulica',6,3, 300, '2019-10-07'), 
(7,'Direito Penal',7,4, 150, '2019-10-08'), 
(8,'Direito Civil',8,4, 200, '2019-10-09'), 
(9,'Cores ',7,5, 200, '2019-10-10'), 
(10, 'Paisagismo ',8,5, 250, '2019-10-11'), 
(11,'Virus',9,6, 300, '2019-10-12'), 
(12,'Bacteria',9,6, 300, '2019-10-20');

-- exercicio de banco de dados - DML e DDL 
-- usar o banco de dados bd_livro_0301

use bd_livro; 
select * from tb_livro; 

-- 1)  Listar  a cd_genero = 2  na tabela tb_livro
select * from tb_livro
where cd_genero = 2;

-- 2)  Excluir cd_genero  = 1 na tabela tb_gênero
delete from tb_genero
where cd_genero = 1;
-- Erro de integridade referencial
-- para não ficar inconsistencia

-- 3) Incluir na tb_gênero o gênero publicidade
select * from tb_genero;
-- c_genero 8 e genero publicidade
insert into tb_genero
(cd_genero, genero)
values
(8, 'Publicidade');

-- 4)  Alterar na tabela tb_livro  isbn = 1  preco (500)
select * from tb_livro;

update tb_livro
set preco = 500
where isbn = 1; 

-- 5)  Alterar – aumentar os preços da tb_livro em 20%
update tb_livro
set preco = preco * 1.2
where isbn < 20;

-- 6)  Listar a tabela (tb_livro)  preco > 300
select * from tb_livro
where preco > 300;



