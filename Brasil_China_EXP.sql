USE exportacao;
CREATE TABLE exportacao_a_china (
ID INT PRIMARY KEY NOT NULL AUTO_INCREMENT, 
Ano INT NOT NULL,
Paises VARCHAR(50) NOT NULL,
Codigo_CUCI_Divisao INT NOT NULL, 
Descricao_CUCI_Divisao varchar(220) NOT NULL, 
UF_do_Produto VARCHAR(200) NOT NULL,
Valor_FOB_US$ FLOAT NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET = latin1;

LOAD DATA INFILE "C:\\Projetos\\Projetos Python\\Projeto_EXP\\Refatorando\\EXP_2013_2022_20230316.csv" INTO TABLE exportacao_a_china
FIELDS TERMINATED BY ';' OPTIONALLY ENCLOSED BY '"' LINES TERMINATED BY "\n" IGNORE 1 ROWS
(Ano, Paises, Codigo_CUCI_Divisao, Descricao_CUCI_Divisao, UF_do_Produto, Valor_FOB_US$);

SELECT * FROM exportacao_a_china;
