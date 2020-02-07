USE Gufi_Manha;
GO

INSERT INTO TipoUsuario(TituloTipoUsuario) VALUES ('Administrador'), ('Comum');
INSERT INTO Instituicao(CNPJ, NomeFantasia, Endereco) VALUES ('82827909173892', 'SENAI INFO', 'Alameda Barão de Limeira, 538');
INSERT INTO TipoEvento(TituloTipoEvento) VALUES ('C#'), ('React'), ('SQL');

INSERT INTO Usuario(Nome, Email, Senha, DataCadastro, Genero, IdTipousuario) 
	VALUES 
		('Administrador', 'adm@adm.com', 'adm123', '2020-02-06', 'Não Informado', 2), 
		('Carol', 'carol@email.com', 'carol123', '2020-02-06', 'Feminino', 2), 
		('Saulo', 'saulo2email.com', 'saulo123', '2020-06-02', 'Masculino', 2);

INSERT INTO Evento(NomeEvento, AcessoLivre, DataEvento, Descricao, IdTipoEvento, IdInstituicao) 
	VALUES 
		('POO', 1, '2020-02-07', 'Conceitos Sobre os Pilares da Programação Orientada a Objetos', 1, 1), 
		('Ciclo de Vida', 0, '2020-02-08', 'Como Utilizar os Ciclos de Vida com a Biblioteca ReactJs', 2, 1), 
		('Introdução SQL', 1, '2020-02-09', 'Comandos Básicos Utilizando SQL Server', 3, 1);

INSERT INTO Presenca(Situacao, IdUsuario, IdEvento) 
	VALUES 
		('Confirmado', 2, 2), 
		('Não Confirmado', 2, 3), 
		('Confirmado', 3, 1);

	