CREATE DATABASE db_farmacia_bem_estar;
USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias (
id INT PRIMARY KEY,
nome VARCHAR(75) NOT NULL,
descricao VARCHAR(300)
);

CREATE TABLE tb_produtos (
id INT PRIMARY KEY,
nome VARCHAR(150) NOT NULL,
descricao VARCHAR(300),
valor DECIMAL(10,2),
id_categoria INT,
FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (id,nome,descricao) VALUES
(1, 'Medicamentos', 'Desenvolvidos em laboratórios, testados e aprovados pela Anvisa.'),
(2, 'Beleza', 'Produtos que limpam, tratam e embelezam cabelos, pele e unhas'), 
(3, 'Mamãe e Bebê', 'Tudo para mamães e bebês'),
(4, 'Skincare', 'As melhores marcas de skincare, nacionais e importadas'),
(5, 'Higiene', 'A maior variedade de produtos com os melhores precos');

INSERT INTO tb_produtos (id,nome,descricao,valor,id_categoria) VALUES
(1,'Loratadina','Antialérigo',6.00,1),
(2,'Lamotrigina','Antiepiléptico',40.79,1),
(3,'Hidratante Labial Carmed Fini Dentaduras 10g','Hidratante Labial',25.90,2),
(4,'Lenço Umedecido Huggies Puro & Natural 4 Unidades','Lenços Umedecidos',47.90,3),
(5,'Gel de Limpeza Profunda Vichy Normaderm 300g','Limpeza',77.49,4),
(6,'Refil de Gel de Limpeza Facial La Roche Posay Effaclar 240g','Limpeza',64.19,4),
(7,'Creme Dental Colgate Tripla Ação Menta 90g','Bucal',4.89,5),
(8,'Divena','Reduz a Quantidade de Ácido Produzido pelo Estômago',59.39,1);

SELECT * FROM tb_produtos WHERE valor > 50.00;
SELECT * FROM tb_produtos WHERE valor BETWEEN 5.00 AND 60.00;
SELECT * FROM tb_produtos WHERE nome LIKE '%C%';
SELECT nome, descricao, valor FROM tb_produtos
INNER JOIN tb_categorias ON tb_produtos.id_categoria = tb_categorias.id;

ALTER TABLE tb_categorias CHANGE nome nomecategoria VARCHAR(75) NOT NULL;
ALTER TABLE tb_categorias CHANGE descricao descricaocategoria VARCHAR(300);

SELECT * FROM tb_produtos 
INNER JOIN tb_categorias ON tb_produtos.id_categoria = tb_categorias.id 
WHERE tb_categorias.nomecategoria = 'Higiene';





