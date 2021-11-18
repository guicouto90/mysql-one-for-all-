CREATE VIEW top_3_artistas
AS
  SELECT 
    ar.artist_name AS 'artista',
    COUNT(fv.artist_id) AS 'seguidores'
  FROM SpotifyClone.ARTISTS AS ar
  INNER JOIN SpotifyClone.FAVORITE_ARTISTS AS fv
  ON ar.artist_id = fv.artist_id
  GROUP BY ar.artist_name
  ORDER BY COUNT(fv.artist_id) DESC, ar.artist_name ASC
  LIMIT 3;