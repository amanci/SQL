USE DB_PClinics;
GO

INSERT INTO TBL_Clinica(CNPJ, Endereco) VALUES ('32144314612345', 'RUA BOM ALEGRE, 12');

INSERT INTO TBL_Cliente(NomeCliente) VALUES ('ALLAN M.'), ('HELOISA .D'), ('CAROLINE F.');

INSERT INTO TBL_TipoPet(TituloPet) VALUES ('CACHORRO'), ('GATO'), ('PASSARO');

INSERT INTO TBL_Raca(TituloRaca, FK_IdTipoPet) VALUES ('LABRADOR',1), ('SIAMES',2), ('CANARIO',3);

INSERT INTO TBL_Veterinario(NomeVeterinario, CRMV, FK_IdClinica) VALUES ('OSEIAS D.', '32442', 1), ('ANA C.', '42452', 1), ('CARLA B.', '34252', 1);

INSERT INTO TBL_Pet(NomePet, Telefone, FK_IdCliente, FK_IdRaca) VALUES ('CHICAO', '11922345664', 2, 1), ('CHICO', '11933445664', 1, 2), ('CHIQUINHO', '11932445664',3, 3)

INSERT INTO TBL_Atendimento(DataAtendimento, Descricao, FK_IdVeterinario, FK_IdPet)
	VALUES
		('2020-02-04', 'HEMORRAGIA INTERNA', 1,  1), ('2020-02-03', 'REA��O AL�RGICA', 2,  2), ('2020-02-02', 'ENVENENAMENTO', 3,  3);

