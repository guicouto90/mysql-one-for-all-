DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE PLANS(
    plan_id INT PRIMARY KEY AUTO_INCREMENT,
    plan_name VARCHAR(45) NOT NULL,
    price DECIMAL(5, 2) NOT NULL
) engine = InnoDB;

CREATE TABLE USERS(
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    user_name VARCHAR(45) NOT NULL,
    age INT NOT NULL,
    plan_id INT NOT NULL,
    FOREIGN KEY (plan_id) REFERENCES PLANS (plan_id)
) engine = InnoDB;

CREATE TABLE ARTISTS(
    artist_id INT PRIMARY KEY AUTO_INCREMENT,
    artist_name VARCHAR(45) NOT NULL
) engine = InnoDB;

CREATE TABLE ALBUMS(
    album_id INT PRIMARY KEY AUTO_INCREMENT,
    album_name VARCHAR(45) NOT NULL,
    artist_id INT NOT NULL,
    FOREIGN KEY (artist_id) REFERENCES ARTISTS (artist_id)
) engine = InnoDB;

CREATE TABLE MUSICS(
    music_id INT PRIMARY KEY AUTO_INCREMENT,
    music_name VARCHAR(45) NOT NULL,
    album_id INT NOT NULL,
    FOREIGN KEY (album_id) REFERENCES ALBUMS (album_id)
) engine = InnoDB;

CREATE TABLE MUSICS_HISTORY(
    -- history_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT NOT NULL,
    music_id INT NOT NULL,
    CONSTRAINT PRIMARY KEY(user_id, music_id),
    FOREIGN KEY (user_id) REFERENCES USERS (user_id),
    FOREIGN KEY (music_id) REFERENCES MUSICS (music_id)
) engine = InnoDB;

CREATE TABLE FAVORITE_ARTISTS(
    -- favorite_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT NOT NULL,
    artist_id INT NOT NULL,
    CONSTRAINT PRIMARY KEY(user_id, artist_id),
    FOREIGN KEY (user_id) REFERENCES USERS (user_id),
    FOREIGN KEY (artist_id) REFERENCES ARTISTS (artist_id)
) engine = InnoDB;

INSERT INTO PLANS (plan_id, plan_name, price)
VALUES
  (1, 'gratuito', 0.00),
  ('2', 'familiar', 7.99),
  ('3', 'universitário', 5.99);

INSERT INTO USERS (user_id, user_name, age, plan_id)
VALUES
  (1, 'Thati', 23, 1),
  (2, 'Cintia', 35, 2),
  (3, 'Bill', 20, 3),
  (4, 'Roger', 45, 1);
  
INSERT INTO ARTISTS (artist_id, artist_name)
VALUES
  (1, 'Walter Phoenix'),
  (2, 'Peter Strong'),
  (3, 'Lance Day'),
  (4, 'Freedie Shannon');
  
INSERT INTO ALBUMS (album_id, album_name, artist_id)
VALUES
  (1, 'Envious', 1),
  (2, 'Exuberant', 1),
  (3, 'Hallowed Steam', 2),
  (4, 'Incandescent', 3),
  (5, 'Temporary Culture', 4);

INSERT INTO MUSICS (music_id, music_name, album_id)
VALUES
  (1, 'Soul For Us', 1),
  (2, 'Reflections Of Magic', 1),
  (3, 'Dance With Her Own', 1),
  (4, 'Troubles Of My Inner Fire', 2),
  (5, 'Time Fireworks', 2),
  (6, 'Magic Circus', 3),
  (7, 'Honey So Do I', 3),
  (8, "Sweetie, Let's Go Wild", 3),
  (9, 'She Knows', 3),
  (10, 'Fantasy For Me', 4),
  (11, 'Celebration Of More', 4),
  (12, 'Rock his Everything', 4),
  (13, 'Home Forever', 4),
  (14, 'Diamond Power', 4),
  (15, "Honey, Let's Be Silly", 4),
  (16, 'Thang Of Thunder', 5),
  (17, 'Words Of Her Life', 5),
  (18, 'Without My Streets', 5);

INSERT INTO MUSICS_HISTORY (user_id, music_id)
VALUES
  (1, 1),
  (1, 6),
  (1, 14),
  (1, 16),
  (2, 13),
  (2, 17),
  (2, 2),
  (2, 15),
  (3, 4),
  (3, 16),
  (3, 6),
  (4, 3),
  (4, 18),
  (4, 11);
  
INSERT INTO FAVORITE_ARTISTS (user_id, artist_id)
VALUES
  (1, 1),
  (1, 3),
  (1, 4),
  (2, 3),
  (2, 1),
  (3, 2),
  (3, 1),
  (4, 4);
 