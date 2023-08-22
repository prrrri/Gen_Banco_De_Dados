create database ecommerce;
USE ecommerce;
create table produtos (
id int auto_increment primary key,
nome varchar(150),
tamanho varchar(15),
cor varchar(50),
valor decimal(10,2),
categoria varchar(20),
estoque int
);

insert into produtos (nome, tamanho, cor, valor, categoria, estoque)
values
('Camiseta', 'M', 'Branco', '80.00', 'Tops','5'),
('Camisa', 'M', 'Preto', '150.00', 'Tops', '20'),
('Jaqueta', 'M', 'Azul', '300.00', 'Outono', '20'),
('Suéter', 'M', 'Cinza', '250.00', 'Inverno', '10'),
('Vestido', 'P', 'Amarelo', '299.00', 'Primavera', '15'),
('Short', 'M', 'Preto', '150.00', 'Bottoms', '20'),
('Calça', 'M', 'Azul', '300.00', 'Bottoms', '10'),
('Macacão', 'M', 'Preto', '300.00', 'Especiais', '5');

select * from produtos where valor > 500.00;
select * from produtos where valor < 500.00;
update produtos
set estoque = 10
where id = 2;