USE DBOptus;
GO

SELECT * FROM TblAlbum WHERE FKIdArtista = 3;
SELECT * FROM TblAlbum WHERE DataLancamento = '2020-01-28';
SELECT * FROM TblAlbum WHERE FKIdEstilo = 3;

SELECT IdAlbum, Nome, DataLancamento FROM TblAlbum ORDER BY DataLancamento DESC;