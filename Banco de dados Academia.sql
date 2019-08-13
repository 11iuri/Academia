create database academia;

use academia;

create table Aluno 
(
id_aluno int not null primary key,
id_plano int,
nome varchar (50),
idade int,
sexo varchar (10),
senha varchar (15),
CPF varchar (11),
data_de_nascimento date,
Telefone varchar (20),
endereço varchar (50),
foreign key (id_plano) references plano(id_plano)
);

create table plano 
(
id_plano int not null primary key,
plano_descrição varchar (100),
Quantidade_meses int
);

create table pagamento
(
id_pagamento int not null primary key,
id_plano int,
id_aluno int,
foreign key (id_aluno) references aluno(id_aluno),
foreign key (id_plano) references plano(id_plano)
);  

create table Aluno_modalidade
(
id_aluno int,
id_horario int,
id_modalidade int,
data_cadastro date,
foreign key (id_horario) references horario(id_horario),
foreign key (id_aluno) references aluno(id_aluno),
foreign key (id_modalidade) references modalidade(id_modalidade)
);

create table avaliacao
(
id_avaliacao int not null primary key,
id_aluno int,
id_modalidade int,
avaliacao_peso float,
avaliacao_massa_muscular float,
avaliacao_data date,
avaliacao_tricps float,
avaliacao_peito float,
avaliacao_costa float,
avaliacao_bicipsE float,
avaliacao_bicipsD float,
avaliacao_quadril float,
avaliacao_pernaE float,
avaliacao_pernaD float,
foreign key (id_aluno) references aluno(id_aluno),
foreign key (id_modalidade) references modalidade(id_modalidade)
);

create table Horario
(
id_horario int not null primary key,
id_modalidade int,
horario_inicio varchar (10),
horario_fim varchar (10),
foreign key (id_modalidade) references modalidade(id_modalidade)
);

create table modalidade 
(
id_modalidade int not null primary key,
modalidade_nome varchar (50),
modalidade_descrição varchar (50),
modalidade_preco float
);

create table pagamento_modalidade
(
id_modalidade int,
id_pagamento int,
foreign key (id_modalidade) references modalidade(id_modalidade),
foreign key (id_pagamento) references pagamento(id_pagamento)
);

show tables from academia;
select * from aluno;
select * from aluno_modalidade;
select * from avaliacao;
select * from horario;
select * from modalidade;
select * from pagamento;
select * from pagamento_modalidade;
select * from plano;

