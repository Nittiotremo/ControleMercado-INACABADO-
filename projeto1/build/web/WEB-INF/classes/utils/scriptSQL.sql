CREATE TABLE Marca(
codigomarca serial not null primary key,
nomemarca varchar(80)
);
CREATE TABLE Produto(
codigoproduto serial not null primary key,
nomeproduto varchar(80)
);

select * from Marca
