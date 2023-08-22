create database empresa_rh;
USE empresa_rh;
create table colaboradores (
id int auto_increment primary key,
nome varchar(150) not null,
cargo varchar(50),
departamento varchar(70),
salario decimal(10,2),
telefone varchar(15)
);

insert into colaboradores (nome, cargo, departamento, salario, telefone)
values
('Hotinael Sousa', 'Analista de BI', 'Análise de Dados', '6000.00', '1191234-4569'),
('Andreza Barreto', 'Atendente de Suporte', 'Atendimento', '3000.00', '1197894-4785'),
('Thayná Barreto', 'Atendente de Suporte', 'Atendimento', '3000.00', '1191452-3654'),
('Aline Freitas', 'Designer', 'Comunicação', '4500.00', '1197852-1414'),
('Luan Gimenez', 'Social Media', 'Comunicação', '3200.00', '1197474-5896');

select * from colaboradores where salario > 2000.00;
select * from colaboradores where salario < 2000.00;
update colaboradores set salario = salario * 1.10 where id = 1; 
update colaboradores set salario = '1500.00' where id = 5; 