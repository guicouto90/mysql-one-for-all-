CREATE VIEW cancoes_premium
AS
  SELECT
    m.music_name AS 'nome',
    COUNT(mh.music_id) AS 'reproducoes'
  FROM SpotifyClone.MUSICS AS m
  INNER JOIN SpotifyClone.MUSICS_HISTORY AS mh
  ON mh.music_id = m.music_id
  INNER JOIN SpotifyClone.USERS AS u
  ON mh.user_id = u.user_id
  WHERE u.plan_id IN (2,3)
  GROUP BY m.music_name
  ORDER BY m.music_name ASC;