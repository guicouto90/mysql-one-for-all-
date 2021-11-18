CREATE VIEW perfil_artistas
AS
  SELECT
    a.artist_name AS 'artista',
    al.album_name AS 'album',
    COUNT(fv.artist_id) AS 'seguidores'
  FROM SpotifyClone.ARTISTS AS a
  INNER JOIN SpotifyClone.ALBUMS AS al
  ON a.artist_id = al.artist_id
  INNER JOIN SpotifyClone.FAVORITE_ARTISTS AS fv
  ON fv.artist_id = a.artist_id
  GROUP BY a.artist_name, al.album_name
  ORDER BY COUNT(fv.artist_id) DESC, a.artist_name ASC, al.album_name ASC;