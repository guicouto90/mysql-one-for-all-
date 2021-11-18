CREATE VIEW estatisticas_musicais
AS
  SELECT
    MAX(m.music_id) AS 'cancoes',
    MAX(ar.artist_id) AS 'artistas',
    MAX(al.album_id) AS 'albuns'
  FROM SpotifyClone.MUSICS AS m, 
  SpotifyClone.ARTISTS AS ar, 
  SpotifyClone.ALBUMS AS al;