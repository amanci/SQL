USE Gufi_Manha;
GO

SELECT Nome, Email, DataCadastro, Genero, TituloTipoUsuario FROM Usuario
INNER JOIN  TipoUsuario ON Usuario.IdTipoUsuario = TipoUsuario.IdTipoUsuario;

SELECT NomeFantasia, CNPJ, Endereco FROM Instituicao;

SELECT TituloTipoEvento FROM TipoEvento;

SELECT NomeEvento, TituloTipoEvento, DataEvento, AcessoLivre, Descricao, NomeFantasia, CNPJ, Endereco FROM Evento
INNER JOIN TipoEvento ON Evento.IdTipoEvento = TipoEvento.IdTipoEvento
INNER JOIN Instituicao ON Evento.IdInstituicao = Instituicao.IdInstituicao;

SELECT NomeEvento, TituloTipoEvento, DataEvento, AcessoLivre, Descricao, NomeFantasia, CNPJ, Endereco FROM Evento
INNER JOIN TipoEvento ON Evento.IdTipoEvento = TipoEvento.IdTipoEvento
INNER JOIN Instituicao ON Evento.IdInstituicao = Instituicao.IdInstituicao
WHERE Evento.AcessoLivre = 0;

SELECT NomeEvento, TituloTipoEvento, DataEvento, AcessoLivre, Descricao, NomeFantasia, CNPJ, Endereco, Nome, Email, DataCadastro, Genero FROM Evento
INNER JOIN TipoEvento ON Evento.IdTipoEvento = TipoEvento.IdTipoEvento
INNER JOIN Instituicao ON Evento.IdInstituicao = Instituicao.IdInstituicao
INNER JOIN Presenca ON Evento.IdEvento = Presenca.IdEvento
INNER JOIN Usuario ON Presenca.IdUsuario = Usuario.IdUsuario
WHERE Usuario.IdUsuario = 2 ;

SELECT NomeEvento, TituloTipoEvento, DataEvento, REPLACE(REPLACE(AcessoLivre, '1', 'PÚBLICO'), '0', 'PRIVADO'), Descricao, NomeFantasia, CNPJ, Endereco, Nome, Email, DataCadastro, Genero FROM Evento
INNER JOIN TipoEvento ON Evento.IdTipoEvento = TipoEvento.IdTipoEvento
INNER JOIN Instituicao ON Evento.IdInstituicao = Instituicao.IdInstituicao
INNER JOIN Presenca ON Evento.IdEvento = Presenca.IdEvento
INNER JOIN Usuario ON Presenca.IdUsuario = Usuario.IdUsuario

SELECT NomeEvento, TituloTipoEvento, DataEvento, REPLACE(REPLACE(AcessoLivre, '1', 'PÚBLICO'), '0', 'PRIVADO'), Descricao, NomeFantasia, CNPJ, Endereco, Nome, Email, DataCadastro, Genero FROM Evento
INNER JOIN TipoEvento ON Evento.IdTipoEvento = TipoEvento.IdTipoEvento
INNER JOIN Instituicao ON Evento.IdInstituicao = Instituicao.IdInstituicao
INNER JOIN Presenca ON Evento.IdEvento = Presenca.IdEvento
INNER JOIN Usuario ON Presenca.IdUsuario = Usuario.IdUsuario
WHERE Usuario.IdUsuario = 2 AND Presenca.Situacao = 'Confirmado';
