USE SpotifyClone;

DELIMITER $$
CREATE PROCEDURE albuns_do_artista(IN artist VARCHAR(45))
BEGIN
  SELECT
    a.artist_name AS 'artista',
    al.album_name AS 'album'
  FROM SpotifyClone.ARTISTS AS a
  INNER JOIN SpotifyClone.ALBUMS AS al
  ON a.artist_id = al.artist_id AND a.artist_name = artist;
END $$
DELIMITER ;