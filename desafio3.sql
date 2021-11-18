CREATE VIEW historico_reproducao_usuarios
AS
  SELECT 
    u.user_name AS 'usuario',
    m.music_name AS 'nome'
  FROM SpotifyClone.MUSICS_HISTORY AS mh
  INNER JOIN SpotifyClone.USERS AS u
  ON u.user_id = mh.user_id
  INNER JOIN SpotifyClone.MUSICS AS m
  ON m.music_id = mh.music_id
  ORDER BY u.user_name ASC, m.music_name ASC;