-- Criar uma tabela para Pessoas
CREATE TABLE Pessoas (
    ID INTEGER PRIMARY KEY,
    Nome TEXT NOT NULL,
    Idade INTEGER
);

-- Criar uma tabela para Documentos
CREATE TABLE Documentos (
    ID INTEGER,
    Tipo TEXT NOT NULL,
    Numero TEXT NOT NULL,
    Descricao TEXT,
    FOREIGN KEY (ID) REFERENCES Pessoas(ID)
);

-- Inserir dados na tabela Pessoas
INSERT INTO Pessoas (ID, Nome, Idade) VALUES
(1, 'Luiz Roberto', 33),
(2, 'Raimundo Soares', 51),
(3, 'Ana Tavares', 24),
(4, 'Janete Niehuea', 28),
(5, 'Paulo da Rosa', 74),
(6, 'Wesley Soares', 60),
(7, 'Tamires Souza', 12);

-- Inserir documentos para Luiz Roberto
INSERT INTO Documentos (ID, Tipo, Numero, Descricao) VALUES
(1, 'CNH', '74591035698445', 'Carteira de Motorista'),
(1, 'RG', '5200789', 'Carteira de Identidade'),
(1, 'CTPS', '4567898', 'Carteira de Trabalho');

-- Inserir documentos para Raimundo Soares
INSERT INTO Documentos (ID, Tipo, Numero, Descricao) VALUES
(2, 'CNH', '45963548565769', 'Carteira de Motorista'),
(2, 'RG', '5200785', 'Carteira de Identidade'),
(2, 'CTPS', '7891237', 'Carteira de Trabalho');

-- Inserir documentos para Ana Tavares
INSERT INTO Documentos (ID, Tipo, Numero, Descricao) VALUES
(3, 'CNH', '65236525662159', 'Carteira de Motorista'),
(3, 'CPF', '41254125147', 'Cadastro de Pessoa Física');

-- Inserir documentos para Janete Niehuea
INSERT INTO Documentos (ID, Tipo, Numero, Descricao) VALUES
(4, 'CPF', '65236525662', 'Cadastro de Pessoa Física'),
(4, 'RG', '3300785', 'Carteira de Identidade'),
(4, 'SUS', '784512', 'Sistema Único de Saúde');

-- Inserir documentos para Paulo da Rosa
INSERT INTO Documentos (ID, Tipo, Numero, Descricao) VALUES
(5, 'RG', '5200785', 'Carteira de Identidade'),
(5, 'CPF', '45621581254', 'Cadastro de Pessoa Física');

-- Inserir documentos para Wesley Soares
INSERT INTO Documentos (ID, Tipo, Numero, Descricao) VALUES
(6, 'CNH', '91035698445963', 'Carteira de Motorista'),
(6, 'RG', '7415595', 'Carteira de Identidade'),
(6, 'CPF', '45618452136', 'Cadastro de Pessoa Física'),
(6, 'SUS', '2200789', NULL);

-- Inserir documentos para Tamires Souza
INSERT INTO Documentos (ID, Tipo, Numero, Descricao) VALUES
(7, 'RG', '7852123', 'Carteira de Identidade');