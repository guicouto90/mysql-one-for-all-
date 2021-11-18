CREATE VIEW top_2_hits_do_momento
AS
  SELECT
    m.music_name AS 'cancao',
    COUNT(mh.music_id) AS 'reproducoes'
  FROM SpotifyClone.MUSICS AS m
  INNER JOIN SpotifyClone.MUSICS_HISTORY AS mh
  ON m.music_id = mh.music_id
  GROUP BY m.music_name
  ORDER BY COUNT(mh.music_id) DESC, m.music_name ASC
  LIMIT 2;