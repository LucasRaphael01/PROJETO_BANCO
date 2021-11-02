CREATE DATABASE PROJETO_VISIO

USE PROJETO_VISIO

CREATE TABLE FUNCIONARIO(

COD_FUNC INT PRIMARY KEY IDENTITY,
NOME_FUNC VARCHAR(50),
TEL_FUNC INT,
EMAIL_FUNC VARCHAR(75)
)

CREATE TABLE CLIENTE(

COD_CLI INT PRIMARY KEY IDENTITY,
NOME_CLI VARCHAR(80),
TEL_CLI INT,
EMAIL_CLI VARCHAR(60)
)

CREATE TABLE PRODUTO(

COD_PROD INT PRIMARY KEY IDENTITY,
NOME_PROD VARCHAR(50),
QUANT_PROD INT,
VALOR_PROD FLOAT

) CREATE TABLE PEDIDO(
FK_COD_PROD INT,
FK_COD_CLI INT,
FOREIGN KEY(C0D_PROD) REFERENCES PRODUTO(COD_PROD),
FOREIGN KEY(C0D_CLI) REFERENCES PRODUTO(COD_CLI),

)CREATE TABLE VENDA(

COD_VEN INT PRIMARY KEY IDENTITY,
DESC_VEN VARCHAR(100),
COD_PED INT,
FORMA_VEN VARCHAR(20),
VALOR_VEN FLOAT,
FK_COD_PED INT


)
SELECT * FROM FUNCIONARIO
SELECT * FROM CLIENTE
SELECT * FROM PRODUTO
SELECT * FROM PEDIDO
SELECT * FROM VENDA

INSERT INTO FUNCIONARIO(NOME_FUNC) VALUES('LUCAS R')

INSERT INTO CLIENTE(NOME_CLI,TELEFONE_CLI) VALUES ('CIDADE', 957432134)

INSERT INTO PRODUTO(NOME_PROD,DESCRICAO_PROD) VALUES ('MOUSE PAD', 'HAVIT CONTROL, EXTRA GRANDE')
INSERT INTO PRODUTO(NOME_PROD,DESCRICAO_PROD) VALUES ('SSD', '240 GB')
INSERT INTO PRODUTO(NOME_PROD,DESCRICAO_PROD) VALUES ('HD EXTERNO', '1T')

INSERT INTO PEDIDO(DESCRICAO_PEDIDO,COD_PEDIDO,FK_COD_PROD) VALUES ('DOIS MOUSES PAD GRANDES', 2468649, 56)
INSERT INTO PEDIDO(DESCRICAO_PEDIDO,COD_PEDIDO,FK_COD_PROD) VALUES ('UM SDD DE 240GB' , 9586029, 56)
INSERT INTO PEDIDO(DESCRICAO_PEDIDO,COD_PEDIDO,FK_COD_PROD) VALUES ('QUATRO HD EXTERNO DE 1T' , 4520981 , 56)

INSERT INTO VENDA(FORMA_VEN,VALOR_VEN) VALUES ('CARTÃO DE CRÉDITO', 70.00)
INSERT INTO VENDA(FORMA_VEN,VALOR_VEN) VALUES ('CARTÃO DE DÉBITO', 240.00)
INSERT INTO VENDA(FORMA_VEN,VALOR_VEN) VALUES ('DINHEIRO', 600.00)