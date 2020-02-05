USE DB_Locadora;
GO

SELECT DataInicio, DataFim, NomeEmpresa, NomeCliente, CPF, Placa, NomeModelo FROM TBL_Aluguel 
INNER JOIN TBL_Cliente ON TBL_Aluguel.FK_IdCliente = TBL_Cliente.IdCliente
INNER JOIN TBL_Veiculo ON TBL_Veiculo.IdVeiculo = TBL_Aluguel.FK_IdVeiculo
INNER JOIN TBL_Empresa ON TBL_Empresa.IdEmpresa = TBL_Veiculo.FK_IdEmpresa
INNER JOIN TBL_Modelo ON TBL_Modelo.IdModelo = TBL_Veiculo.FK_IdModelo
