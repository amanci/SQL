USE DB_Locadora;
GO

INSERT INTO TBL_Empresa(NomeEmpresa) VALUES ('EMPRESA MASTER');

INSERT INTO TBL_Cliente(NomeCliente, CPF) VALUES ('ADILSON FERREIRA', '45434323453'), ('ALLAN MANCILHA', '45895580940');

INSERT INTO TBL_Marca(NomeMarca) VALUES ('GM'), ('FORD'), ('FIAT');

INSERT INTO TBL_Modelo(NomeModelo, FK_IdMarca) VALUES ('UNO', 3), ('FIESTA', 2), ('CORSA', 1), ('KADET', 1);

INSERT INTO TBL_Veiculo(Placa, FK_IdEmpresa, FK_IdModelo) VALUES ('ASD4721', 1, 3), ('AWS3233', 1, 4);

INSERT INTO 
	TBL_Aluguel(FK_IdCliente, FK_IdVeiculo, DataInicio, DataFim) 
		VALUES 
			(2, 1, '2020-02-03 13:20:00', '2020-02-04 13:20:00'),
			(1, 2, '2020-02-02 13:29:00', '2020-02-05 13:29:00');


