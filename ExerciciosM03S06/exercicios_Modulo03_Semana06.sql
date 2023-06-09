-- Exerc�cio 01
CREATE TABLE Produto(
    Id NUMBER PRIMARY KEY, 
    Descricao VARCHAR2(50), 
    Status NUMBER(1),
    Cadastro TIMESTAMP,
    QuantidadeEmEstoque NUMBER
);

INSERT INTO Produto(Id, Descricao, Status, Cadastro, QuantidadeEmEstoque) VALUES(1, 'PRODUTO A', 1, TO_TIMESTAMP('2023-05-01 06:14:00', 'YYYY-MM-DD HH24:MI:SS'), 10);
INSERT INTO Produto(Id, Descricao, Status, Cadastro, QuantidadeEmEstoque) VALUES(2, 'PRODUTO B', 1, CURRENT_TIMESTAMP, 10);
INSERT INTO Produto(Id, Descricao, Status, Cadastro, QuantidadeEmEstoque) VALUES(3, 'PRODUTO C', 1, CURRENT_TIMESTAMP, 10);
INSERT INTO Produto(Id, Descricao, Status, Cadastro, QuantidadeEmEstoque) VALUES(4, 'PRODUTO D', 1, CURRENT_TIMESTAMP, 10);
INSERT INTO Produto(Id, Descricao, Status, Cadastro, QuantidadeEmEstoque) VALUES(5, 'PRODUTO E', 1, CURRENT_TIMESTAMP, 10);
INSERT INTO Produto(Id, Descricao, Status, Cadastro, QuantidadeEmEstoque) VALUES(6, 'PRODUTO F', 1, CURRENT_TIMESTAMP, 10);
INSERT INTO Produto(Id, Descricao, Status, Cadastro, QuantidadeEmEstoque) VALUES(7, 'PRODUTO G', 1, CURRENT_TIMESTAMP, 10);
INSERT INTO Produto(Id, Descricao, Status, Cadastro, QuantidadeEmEstoque) VALUES(8, 'PRODUTO H', 1, CURRENT_TIMESTAMP, 10);
INSERT INTO Produto(Id, Descricao, Status, Cadastro, QuantidadeEmEstoque) VALUES(9, 'PRODUTO I', 1, CURRENT_TIMESTAMP, 10);
INSERT INTO Produto(Id, Descricao, Status, Cadastro, QuantidadeEmEstoque) VALUES(10, 'PRODUTO J', 1, CURRENT_TIMESTAMP, 10);
INSERT INTO Produto(Id, Descricao, Status, Cadastro, QuantidadeEmEstoque) VALUES(11, 'PRODUTO K', 1, CURRENT_TIMESTAMP, 10);
INSERT INTO Produto(Id, Descricao, Status, Cadastro, QuantidadeEmEstoque) VALUES(12, 'PRODUTO L', 1, CURRENT_TIMESTAMP, 10);
INSERT INTO Produto(Id, Descricao, Status, Cadastro, QuantidadeEmEstoque) VALUES(13, 'PRODUTO M', 1, CURRENT_TIMESTAMP, 10);
INSERT INTO Produto(Id, Descricao, Status, Cadastro, QuantidadeEmEstoque) VALUES(14, 'PRODUTO N', 1, CURRENT_TIMESTAMP, 10);
INSERT INTO Produto(Id, Descricao, Status, Cadastro, QuantidadeEmEstoque) VALUES(15, 'PRODUTO O', 1, CURRENT_TIMESTAMP, 10);

-- Exerc�cio 02
CREATE TABLE ProdutoPreco(
    ID NUMBER GENERATED BY DEFAULT AS IDENTITY, 
    Id_Produto NUMBER, 
    Valor NUMBER(10, 2),
    Status NUMBER(1),
    Cadastro TIMESTAMP,
    PRIMARY KEY(ID),
    FOREIGN KEY(Id_Produto) REFERENCES Produto(Id)  
);

INSERT INTO ProdutoPreco(Id_Produto, Valor, Status, Cadastro) VALUES(1, 10.99, 1, CURRENT_TIMESTAMP);
INSERT INTO ProdutoPreco(Id_Produto, Valor, Status, Cadastro) VALUES(2, 20.99, 1, CURRENT_TIMESTAMP);
INSERT INTO ProdutoPreco(Id_Produto, Valor, Status, Cadastro) VALUES(3, 30.99, 1, CURRENT_TIMESTAMP);
INSERT INTO ProdutoPreco(Id_Produto, Valor, Status, Cadastro) VALUES(4, 40.99, 1, CURRENT_TIMESTAMP);
INSERT INTO ProdutoPreco(Id_Produto, Valor, Status, Cadastro) VALUES(5, 50.99, 1, CURRENT_TIMESTAMP);
INSERT INTO ProdutoPreco(Id_Produto, Valor, Status, Cadastro) VALUES(6, 60.99, 1, CURRENT_TIMESTAMP);
INSERT INTO ProdutoPreco(Id_Produto, Valor, Status, Cadastro) VALUES(7, 70.99, 1, CURRENT_TIMESTAMP);
INSERT INTO ProdutoPreco(Id_Produto, Valor, Status, Cadastro) VALUES(8, 80.99, 1, CURRENT_TIMESTAMP);
INSERT INTO ProdutoPreco(Id_Produto, Valor, Status, Cadastro) VALUES(9, 90.99, 1, CURRENT_TIMESTAMP);
INSERT INTO ProdutoPreco(Id_Produto, Valor, Status, Cadastro) VALUES(10, 100.99, 1, CURRENT_TIMESTAMP);
INSERT INTO ProdutoPreco(Id_Produto, Valor, Status, Cadastro) VALUES(11, 110.99, 1, CURRENT_TIMESTAMP);
INSERT INTO ProdutoPreco(Id_Produto, Valor, Status, Cadastro) VALUES(12, 120.99, 1, CURRENT_TIMESTAMP);
INSERT INTO ProdutoPreco(Id_Produto, Valor, Status, Cadastro) VALUES(13, 130.99, 1, CURRENT_TIMESTAMP);
INSERT INTO ProdutoPreco(Id_Produto, Valor, Status, Cadastro) VALUES(14, 140.99, 1, CURRENT_TIMESTAMP);
INSERT INTO ProdutoPreco(Id_Produto, Valor, Status, Cadastro) VALUES(15, 150.99, 1, CURRENT_TIMESTAMP);

-- Exerc�cio 03
SELECT * FROM Produto INNER JOIN ProdutoPreco ON Produto.Id = ProdutoPreco.Id_Produto;

-- Exercicio 4
DECLARE
    valorTotal NUMBER;
BEGIN
    SELECT SUM(Valor) INTO valorTotal FROM ProdutoPreco;
    DBMS_OUTPUT.PUT_LINE('Valor total da v�riavel valorTotal: ' || valorTotal);
    CASE
        WHEN valorTotal < 150.00 THEN DBMS_OUTPUT.PUT_LINE('Soma do produto menor que 150.00');
        WHEN valorTotal < 500.00 THEN DBMS_OUTPUT.PUT_LINE('Soma do produto est� entre 150 e 500');
        ELSE DBMS_OUTPUT.PUT_LINE('Soma dos produtos est� acima de 500,00');
    END CASE;
END;
-- exercicio 4 outra forma de fazer
BEGIN
    FOR valorTotal IN (SELECT SUM(Valor) as total FROM ProdutoPreco) LOOP
        DBMS_OUTPUT.PUT_LINE('Valor total da v�riavel valorTotal: ' || valorTotal.total);
        CASE
            WHEN valorTotal.total < 150.00 THEN DBMS_OUTPUT.PUT_LINE('Soma do produto menor que 150.00');
            WHEN valorTotal.total < 500.00 THEN DBMS_OUTPUT.PUT_LINE('Soma do produto est� entre 150 e 500');
            ELSE DBMS_OUTPUT.PUT_LINE('Soma dos produtos est� acima de 500,00');
        END CASE;
    END LOOP;
END;
-- exercicio 4 outra forma de fazer
BEGIN
    FOR valorTotal IN (SELECT SUM(Valor) as total FROM ProdutoPreco GROUP BY Id_Produto) LOOP
        DBMS_OUTPUT.PUT_LINE('Valor total da v�riavel valorTotal: ' || valorTotal.total);
        CASE
            WHEN valorTotal.total < 150.00 THEN DBMS_OUTPUT.PUT_LINE('Soma do produto menor que 150.00');
            WHEN valorTotal.total < 500.00 THEN DBMS_OUTPUT.PUT_LINE('Soma do produto est� entre 150 e 500');
            ELSE DBMS_OUTPUT.PUT_LINE('Soma dos produtos est� acima de 500,00');
        END CASE;
    END LOOP;
END;

-- Exercicio 05
SELECT * FROM Produto LEFT JOIN ProdutoPreco ON Produto.Id = ProdutoPreco.Id_Produto;

-- Exercicio 06
DECLARE 
    valorAtualizado NUMBER(10, 2);
BEGIN
    FOR produto IN (SELECT Valor FROM ProdutoPreco WHERE Valor > 100 FETCH FIRST 3 ROWS ONLY) LOOP
        valorAtualizado := produto.Valor + (produto.Valor * 0.15);
        DBMS_OUTPUT.PUT_LINE(valorAtualizado);
    END LOOP;
END;

-- Exercicio 07
BEGIN
    FOR produto IN (SELECT Status FROM Produto) LOOP
        IF produto.status = 1 THEN 
            DBMS_OUTPUT.PUT_LINE('Status Ativo');
        ELSE
            DBMS_OUTPUT.PUT_LINE('Status Desativado');
        END IF;
    END LOOP;    
END;
              
-----------------------------
DROP TABLE ProdutoPreco;
DROP TABLE Produto;
COMMIT;

-- Selecionando o que queremos e apertando F9, executamos apenas o que est� selecionado.