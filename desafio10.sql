USE SpotifyClone;

DELIMITER $$
CREATE FUNCTION quantidade_musicas_no_historico(id INT)
RETURNS INT READS SQL DATA
BEGIN 
  DECLARE total INT;
  SELECT
    COUNT(mh.user_id)
  FROM SpotifyClone.MUSICS_HISTORY AS mh
  WHERE mh.user_id = id
  INTO total;
  RETURN total;
END$$
DELIMITER ;