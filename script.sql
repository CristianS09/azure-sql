-- Criação da tabela de Motorista no Microsoft Azure SQL.
CREATE TABLE Drivers(DriverID INT IDENTITY(1,1) PRIMARY KEY, Nome VARCHAR(100) NOT NULL, CNH VARCHAR(100) NOT NULL, Endereco VARCHAR(200) NOT NULL, Contato VARCHAR(50) NOT NULL);
GO

-- inserindo dados na tabela Drivers.
INSERT INTO Drivers(Nome, CNH, ENDERECO, CONTATO) VALUES ('Caio', '99999999','Rua Sandra 201', '99999999');
GO

--Atualizando um registro na tabela Drivers.
UPDATE Drivers SET Nome='David' where DriverID=1;
GO

-- Lendo os dados da Tabela Drivers.
SELECT * FROM Drivers;
GO

-- Criação da tabela de Clients no Microsoft Azure SQL.
CREATE TABLE Clients(ClientID INT IDENTITY(1,1) PRIMARY KEY, Nome VARCHAR(100) NOT NULL, Empresa VARCHAR(100) NOT NULL, Endereco VARCHAR(200) NOT NULL, Contato VARCHAR(50) NOT NULL);
GO

-- Inserindo dados na tabela Clients.
INSERT INTO Clients(Nome, Empresa, Endereco, Contato) VALUES ('Marcos', 'Enterprise', 'Rua Santos 29','99999999');
GO

-- Lendo os dados da Tabela Clients.
SELECT * FROM Clients;
GO

-- Criação da tabela de Orders no Microsoft Azure SQL.
CREATE TABLE Orders (OrderID INT PRIMARY KEY,ClientID INT,DriverID INT,DetalhesPedido TEXT,DataEntrega DATE,Status VARCHAR(50),FOREIGN KEY (ClientID) REFERENCES Clients(ClientID),FOREIGN KEY (DriverID) REFERENCES Drivers(DriverID));
GO

--Inserindo dados na tabela de Orders.
INSERT INTO Orders(CLientID, DriverId, DetalhesPedido, DataEntrega, Status) VALUES (1,1,'Produtos Eletronicos',GETDATE(),'COMPLETO');
GO

-- Deletando um registro na tabela Orders;
DELETE FROM Orders WHERE OrderId=1;
GO

--Lendo os dados da tabela Orders.
SELECT * FROM Orders;
GO