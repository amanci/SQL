USE DbOptus;
GO

INSERT INTO TblTipoUsuario (Titulo) VALUES ('ROOT1'), ('ROOT2'), ('USER DEFAULT1'), ('USER DEFAULT2'), ('USER DEFAULT3');
INSERT INTO TblArtista (NomeArtista) VALUES ('ARTIST1'), ('ARTIST2'), ('ARTIST3'), ('ARTIST4'), ('ARTIST5');
INSERT INTO TblEstilo (Nome) VALUES ('STYLE1'), ('STYLE2'), ('STYLE3'), ('STYLE4'), ('STYLE5');
INSERT INTO TblUsuario (Nome, FKIdTipoUsuario) VALUES ('USER1', 1), ('USER2',2), ('USER3', 3), ('USER4', 4), ('USER5', 5);

INSERT INTO TblAlbum (Nome, DataLancamento, QtdMinutos, Visualizacao, FKIdArtista, FKIdEstilo) VALUES ('ALBUM1', '2020-01-30', '00:45:30', 102342, 1, 1);
INSERT INTO TblAlbum (Nome, DataLancamento, QtdMinutos, Visualizacao, FKIdArtista, FKIdEstilo) VALUES ('ALBUM2', '2020-01-30', '00:40:25', 300131, 2, 2);
INSERT INTO TblAlbum (Nome, DataLancamento, QtdMinutos, Visualizacao, FKIdArtista, FKIdEstilo) VALUES ('ALBUM3', '2020-01-28', '00:30:20', 201200, 3, 3);
INSERT INTO TblAlbum (Nome, DataLancamento, QtdMinutos, Visualizacao, FKIdArtista, FKIdEstilo) VALUES ('ALBUM4', '2020-01-28', '00:25:15', 513439, 3, 3);
INSERT INTO TblAlbum (Nome, DataLancamento, QtdMinutos, Visualizacao, FKIdArtista, FKIdEstilo) VALUES ('ALBUM5', '2020-01-28', '00:20:10', 421311, 5, 3);

UPDATE TblArtista SET NomeArtista = 'ARTIST6' WHERE IdArtista = 1;
UPDATE TblUsuario SET FKIdTipoUsuario = 5 WHERE IdUsuario = 1;
UPDATE TblAlbum SET Visualizacao = 0 WHERE IdAlbum = 5;

DELETE FROM TblAlbum WHERE IdAlbum = 2;