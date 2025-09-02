create database loja;



create table encomenda (
    id_encomenda serial primary key,
    dataa varchar(30)
);

create table fornecedor(
    id_fornecedor serial primary key,
    nome_fornecedor varchar(40)
);

create table produto(
    id_produto serial primary key,
    nome_produto varchar(30),
    quantidade numeric (50)
);

create table cidade(
    id_cidade serial primary key,
    nome_cidade varchar(30)
);

create table mercado (
    id_mercado serial primary key,
    id_encomendafk bigint unsigned not null,
    dataafk varchar(30),
    id_fornecedorfk bigint unsigned not null,
    nome_fornecedorfk varchar(40),
    id_cidadefk bigint unsigned not null,
    nome_cidadefk varchar(30),
    id_produtofk bigint unsigned not null,
    nome_produtofk varchar(30),
    quantidadefk numeric(50),

    foreign key (id_encomendafk) references encomenda(id_encomenda),
    foreign key (id_fornecedorfk) references fornecedor(id_fornecedor),
    foreign key (id_cidadefk) references cidade(id_cidade),
    foreign key (id_produtofk) references produto(id_produto)
);


INSERT INTO encomenda (dataa) VALUES
('2025-09-01'), ('2025-09-02'), ('2025-09-03'), ('2025-09-04'), ('2025-09-05'),
('2025-09-06'), ('2025-09-07'), ('2025-09-08'), ('2025-09-09'), ('2025-09-10'),
('2025-09-11'), ('2025-09-12'), ('2025-09-13'), ('2025-09-14'), ('2025-09-15');


INSERT INTO fornecedor (nome_fornecedor) VALUES
('Fornecedor A'), ('Fornecedor B'), ('Fornecedor C'), ('Fornecedor D'), ('Fornecedor E'),
('Fornecedor F'), ('Fornecedor G'), ('Fornecedor H'), ('Fornecedor I'), ('Fornecedor J'),
('Fornecedor K'), ('Fornecedor L'), ('Fornecedor M'), ('Fornecedor N'), ('Fornecedor O');


INSERT INTO cidade (nome_cidade) VALUES
('São Paulo'), ('Rio de Janeiro'), ('Belo Horizonte'), ('Curitiba'), ('Porto Alegre'),
('Salvador'), ('Recife'), ('Fortaleza'), ('Manaus'), ('Goiânia'),
('Belém'), ('Natal'), ('Florianópolis'), ('Vitória'), ('Campo Grande');


INSERT INTO produto (nome_produto) VALUES
('Arroz'), ('Feijão'), ('Macarrão'), ('Açúcar'), ('Café'),
('Leite'), ('Óleo'), ('Farinha'), ('Carne'), ('Frango'),
('Peixe'), ('Queijo'), ('Tomate'), ('Batata'), ('Cebola');


INSERT INTO mercado (
    id_encomendafk, id_fornecedorfk, id_cidadefk, id_produtofk,
    dataafk, nome_fornecedorfk, nome_cidadefk, nome_produtofk, quantidadefk
) VALUES
(1, 1, 1, 1,  '2025-09-01', 'Fornecedor A', 'São Paulo', 'Arroz', 100),
(2, 2, 2, 2,  '2025-09-02', 'Fornecedor B', 'Rio de Janeiro', 'Feijão', 200),
(3, 3, 3, 3,  '2025-09-03', 'Fornecedor C', 'Belo Horizonte', 'Macarrão', 150),
(4, 4, 4, 4,  '2025-09-04', 'Fornecedor D', 'Curitiba', 'Açúcar', 180),
(5, 5, 5, 5,  '2025-09-05', 'Fornecedor E', 'Porto Alegre', 'Café', 120),
(6, 6, 6, 6,  '2025-09-06', 'Fornecedor F', 'Salvador', 'Leite', 300),
(7, 7, 7, 7,  '2025-09-07', 'Fornecedor G', 'Recife', 'Óleo', 250),
(8, 8, 8, 8,  '2025-09-08', 'Fornecedor H', 'Fortaleza', 'Farinha', 400),
(9, 9, 9, 9,  '2025-09-09', 'Fornecedor I', 'Manaus', 'Carne', 220),
(10, 10, 10, 10, '2025-09-10', 'Fornecedor J', 'Goiânia', 'Frango', 500),
(11, 11, 11, 11, '2025-09-11', 'Fornecedor K', 'Belém', 'Peixe', 130),
(12, 12, 12, 12, '2025-09-12', 'Fornecedor L', 'Natal', 'Queijo', 90),
(13, 13, 13, 13, '2025-09-13', 'Fornecedor M', 'Florianópolis', 'Tomate', 350),
(14, 14, 14, 14, '2025-09-14', 'Fornecedor N', 'Vitória', 'Batata', 280),
(15, 15, 15, 15, '2025-09-15', 'Fornecedor O', 'Campo Grande', 'Cebola', 170);


 
select * from cidade;
select * from produto;
select * from fornecedor;
select * from encomenda;
select * from mercado;

drop table cidade;
drop table produto;
drop table fornecedor;
drop table encomenda;
drop table mercado;
