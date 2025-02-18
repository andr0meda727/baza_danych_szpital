/*
 Navicat Premium Dump SQL

 Source Server         : projektBazy
 Source Server Type    : MariaDB
 Source Server Version : 110601 (11.6.1-MariaDB)
 Source Host           : db.it.pk.edu.pl:3306
 Source Schema         : projekt_trzupek_wawrzenczyk_wojtasz

 Target Server Type    : MariaDB
 Target Server Version : 110601 (11.6.1-MariaDB)
 File Encoding         : 65001

 Date: 09/02/2025 19:52:21
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for doktor_specjalizacja
-- ----------------------------
DROP TABLE IF EXISTS `doktor_specjalizacja`;
CREATE TABLE `doktor_specjalizacja`  (
  `id_pracownika` smallint(6) NOT NULL,
  `specjalizacja_id` int(11) NOT NULL,
  PRIMARY KEY (`id_pracownika`, `specjalizacja_id`) USING BTREE,
  INDEX `specjalizacja_id`(`specjalizacja_id` ASC) USING BTREE,
  CONSTRAINT `doktor_specjalizacja_ibfk_1` FOREIGN KEY (`id_pracownika`) REFERENCES `doktorzy` (`id_pracownika`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `doktor_specjalizacja_ibfk_2` FOREIGN KEY (`specjalizacja_id`) REFERENCES `specjalizacja` (`specjalizacja_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_polish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of doktor_specjalizacja
-- ----------------------------
INSERT INTO `doktor_specjalizacja` VALUES (1, 1);
INSERT INTO `doktor_specjalizacja` VALUES (1, 2);
INSERT INTO `doktor_specjalizacja` VALUES (2, 3);
INSERT INTO `doktor_specjalizacja` VALUES (2, 4);
INSERT INTO `doktor_specjalizacja` VALUES (3, 5);
INSERT INTO `doktor_specjalizacja` VALUES (3, 6);
INSERT INTO `doktor_specjalizacja` VALUES (4, 7);
INSERT INTO `doktor_specjalizacja` VALUES (4, 8);
INSERT INTO `doktor_specjalizacja` VALUES (5, 9);
INSERT INTO `doktor_specjalizacja` VALUES (5, 10);
INSERT INTO `doktor_specjalizacja` VALUES (6, 11);
INSERT INTO `doktor_specjalizacja` VALUES (6, 12);
INSERT INTO `doktor_specjalizacja` VALUES (7, 13);
INSERT INTO `doktor_specjalizacja` VALUES (7, 14);
INSERT INTO `doktor_specjalizacja` VALUES (8, 15);
INSERT INTO `doktor_specjalizacja` VALUES (8, 16);
INSERT INTO `doktor_specjalizacja` VALUES (9, 17);
INSERT INTO `doktor_specjalizacja` VALUES (9, 18);
INSERT INTO `doktor_specjalizacja` VALUES (10, 19);
INSERT INTO `doktor_specjalizacja` VALUES (10, 20);

-- ----------------------------
-- Table structure for doktorzy
-- ----------------------------
DROP TABLE IF EXISTS `doktorzy`;
CREATE TABLE `doktorzy`  (
  `id_pracownika` smallint(6) NOT NULL,
  `numer_licencji` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_pracownika`) USING BTREE,
  CONSTRAINT `doktorzy_ibfk_1` FOREIGN KEY (`id_pracownika`) REFERENCES `pracownik` (`id_pracownika`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of doktorzy
-- ----------------------------
INSERT INTO `doktorzy` VALUES (1, 'D-123456');
INSERT INTO `doktorzy` VALUES (2, 'D-234567');
INSERT INTO `doktorzy` VALUES (3, 'D-345678');
INSERT INTO `doktorzy` VALUES (4, 'D-456789');
INSERT INTO `doktorzy` VALUES (5, 'D-567890');
INSERT INTO `doktorzy` VALUES (6, 'D-678901');
INSERT INTO `doktorzy` VALUES (7, 'D-789012');
INSERT INTO `doktorzy` VALUES (8, 'D-890123');
INSERT INTO `doktorzy` VALUES (9, 'D-901234');
INSERT INTO `doktorzy` VALUES (10, 'D-012345');

-- ----------------------------
-- Table structure for grafik
-- ----------------------------
DROP TABLE IF EXISTS `grafik`;
CREATE TABLE `grafik`  (
  `grafik_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `data_rozpoczecia_pracy` datetime NOT NULL,
  `data_zakonczenia_pracy` datetime NOT NULL,
  `uwagi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci NULL DEFAULT NULL,
  `id_pracownika` smallint(5) NOT NULL,
  PRIMARY KEY (`grafik_id`) USING BTREE,
  INDEX `id_pracownika`(`id_pracownika` ASC) USING BTREE,
  CONSTRAINT `grafik_ibfk_1` FOREIGN KEY (`id_pracownika`) REFERENCES `pracownik` (`id_pracownika`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of grafik
-- ----------------------------
INSERT INTO `grafik` VALUES (1, '2024-12-01 08:00:00', '2024-12-01 16:00:00', NULL, 1);
INSERT INTO `grafik` VALUES (2, '2024-12-01 08:00:00', '2024-12-01 16:00:00', NULL, 2);
INSERT INTO `grafik` VALUES (3, '2024-12-01 16:00:00', '2024-12-02 00:00:00', NULL, 11);
INSERT INTO `grafik` VALUES (4, '2024-12-02 00:00:00', '2024-12-02 08:00:00', NULL, 12);
INSERT INTO `grafik` VALUES (5, '2024-12-02 08:00:00', '2024-12-02 16:00:00', NULL, 3);
INSERT INTO `grafik` VALUES (6, '2024-12-02 08:00:00', '2024-12-02 16:00:00', NULL, 4);
INSERT INTO `grafik` VALUES (7, '2024-12-02 16:00:00', '2024-12-03 00:00:00', NULL, 13);
INSERT INTO `grafik` VALUES (8, '2024-12-03 00:00:00', '2024-12-03 08:00:00', NULL, 14);
INSERT INTO `grafik` VALUES (9, '2024-12-03 08:00:00', '2024-12-03 16:00:00', NULL, 5);
INSERT INTO `grafik` VALUES (10, '2024-12-03 08:00:00', '2024-12-03 16:00:00', NULL, 6);
INSERT INTO `grafik` VALUES (11, '2024-12-03 16:00:00', '2024-12-04 00:00:00', NULL, 15);
INSERT INTO `grafik` VALUES (12, '2024-12-04 00:00:00', '2024-12-04 08:00:00', NULL, 16);
INSERT INTO `grafik` VALUES (13, '2024-12-04 08:00:00', '2024-12-04 16:00:00', NULL, 7);
INSERT INTO `grafik` VALUES (14, '2024-12-04 08:00:00', '2024-12-04 16:00:00', NULL, 8);
INSERT INTO `grafik` VALUES (15, '2024-12-04 16:00:00', '2024-12-05 00:00:00', NULL, 17);
INSERT INTO `grafik` VALUES (16, '2024-12-05 00:00:00', '2024-12-05 08:00:00', NULL, 18);
INSERT INTO `grafik` VALUES (17, '2024-12-05 08:00:00', '2024-12-05 16:00:00', NULL, 9);
INSERT INTO `grafik` VALUES (18, '2024-12-05 08:00:00', '2024-12-05 16:00:00', NULL, 10);
INSERT INTO `grafik` VALUES (19, '2024-12-05 16:00:00', '2024-12-06 00:00:00', NULL, 19);
INSERT INTO `grafik` VALUES (20, '2024-12-06 00:00:00', '2024-12-06 08:00:00', NULL, 20);
INSERT INTO `grafik` VALUES (21, '2024-12-05 20:43:32', '2024-12-06 04:43:36', NULL, 2);
INSERT INTO `grafik` VALUES (22, '2024-12-07 20:43:50', '2024-12-08 04:44:03', NULL, 2);

-- ----------------------------
-- Table structure for historia
-- ----------------------------
DROP TABLE IF EXISTS `historia`;
CREATE TABLE `historia`  (
  `id_historii` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `pacjent_id` smallint(5) UNSIGNED NOT NULL,
  `data_diagnozy` datetime NOT NULL,
  `nazwa_choroby` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci NULL DEFAULT NULL,
  `leczenie` text CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci NULL DEFAULT NULL,
  `uwagi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_historii`) USING BTREE,
  INDEX `historia_pacjenta`(`pacjent_id` ASC) USING BTREE,
  CONSTRAINT `historia_pacjenta` FOREIGN KEY (`pacjent_id`) REFERENCES `pacjent` (`pacjent_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_polish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of historia
-- ----------------------------
INSERT INTO `historia` VALUES (1, 1, '2024-11-01 10:00:00', 'Choroba serca', 'Leczenie farmakologiczne', NULL);
INSERT INTO `historia` VALUES (2, 2, '2024-11-02 11:00:00', 'Zapalenie płuc', 'Antybiotykoterapia', NULL);
INSERT INTO `historia` VALUES (3, 3, '2024-11-03 12:00:00', 'Uraz kręgosłupa', 'Rehabilitacja', NULL);
INSERT INTO `historia` VALUES (4, 4, '2024-11-04 13:00:00', 'Cukrzyca', 'Insulinoterapia', NULL);
INSERT INTO `historia` VALUES (5, 5, '2024-11-05 14:00:00', 'Nowotwór', 'Chemioterapia', NULL);
INSERT INTO `historia` VALUES (6, 6, '2024-11-06 15:00:00', 'Choroba nerek', 'Dializa', NULL);
INSERT INTO `historia` VALUES (7, 7, '2024-11-07 16:00:00', 'Depresja', 'Psychoterapia', NULL);
INSERT INTO `historia` VALUES (8, 8, '2024-11-08 17:00:00', 'Astma', 'Inhalacje', NULL);
INSERT INTO `historia` VALUES (9, 9, '2024-11-09 18:00:00', 'Alergia', 'Odczulanie', NULL);
INSERT INTO `historia` VALUES (10, 10, '2024-11-10 09:00:00', 'Migrena', 'Leczenie farmakologiczne', NULL);
INSERT INTO `historia` VALUES (11, 11, '2024-11-11 10:30:00', 'Nadciśnienie', 'Dieta i leki', NULL);
INSERT INTO `historia` VALUES (12, 12, '2024-11-12 11:30:00', 'Choroba wrzodowa', 'Leczenie farmakologiczne', NULL);
INSERT INTO `historia` VALUES (13, 13, '2024-11-13 12:30:00', 'Zapalenie stawów', 'Rehabilitacja', NULL);
INSERT INTO `historia` VALUES (14, 14, '2024-11-14 13:30:00', 'Anemia', 'Suplementacja żelaza', NULL);
INSERT INTO `historia` VALUES (15, 15, '2024-11-15 14:30:00', 'Kamica nerkowa', 'Usunięcie kamieni', NULL);
INSERT INTO `historia` VALUES (16, 16, '2024-11-16 15:30:00', 'Choroba tarczycy', 'Leczenie hormonalne', NULL);
INSERT INTO `historia` VALUES (17, 17, '2024-11-17 16:30:00', 'Grypa', 'Leczenie objawowe', NULL);
INSERT INTO `historia` VALUES (18, 18, '2024-11-18 17:30:00', 'Choroba Parkinsona', 'Leczenie farmakologiczne', NULL);
INSERT INTO `historia` VALUES (19, 19, '2024-11-19 18:30:00', 'Stwardnienie rozsiane', 'Rehabilitacja', NULL);
INSERT INTO `historia` VALUES (20, 20, '2024-11-20 09:30:00', 'Zapalenie oskrzeli', 'Antybiotykoterapia', NULL);
INSERT INTO `historia` VALUES (21, 1, '2024-12-03 18:22:54', 'Złamanie obojczyka', 'Antybiotyk', '');
INSERT INTO `historia` VALUES (22, 1, '2024-11-25 18:23:26', 'Zapalenie oka', 'Krople do oczu', NULL);

-- ----------------------------
-- Table structure for historia_logowania
-- ----------------------------
DROP TABLE IF EXISTS `historia_logowania`;
CREATE TABLE `historia_logowania`  (
  `logowanie_id` int(11) NOT NULL AUTO_INCREMENT,
  `uzytkownik_id` int(11) NOT NULL,
  `data_logowania` datetime NOT NULL DEFAULT current_timestamp(),
  `adres_ip` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`logowanie_id`, `data_logowania`) USING BTREE,
  INDEX `uzytkownik_id`(`uzytkownik_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_polish_ci ROW_FORMAT = Dynamic PARTITION BY RANGE (year(`data_logowania`))
PARTITIONS 5
(PARTITION `p2021` VALUES LESS THAN (2022) ENGINE = InnoDB MAX_ROWS = 0 MIN_ROWS = 0 ,
PARTITION `p2022` VALUES LESS THAN (2023) ENGINE = InnoDB MAX_ROWS = 0 MIN_ROWS = 0 ,
PARTITION `p2023` VALUES LESS THAN (2024) ENGINE = InnoDB MAX_ROWS = 0 MIN_ROWS = 0 ,
PARTITION `p2024` VALUES LESS THAN (2025) ENGINE = InnoDB MAX_ROWS = 0 MIN_ROWS = 0 ,
PARTITION `pMax` VALUES LESS THAN (MAXVALUE) ENGINE = InnoDB MAX_ROWS = 0 MIN_ROWS = 0 )
;

-- ----------------------------
-- Records of historia_logowania
-- ----------------------------
INSERT INTO `historia_logowania` VALUES (1, 1, '2024-12-04 08:00:00', '192.168.1.10');
INSERT INTO `historia_logowania` VALUES (2, 2, '2024-12-04 08:15:00', '192.168.1.20');
INSERT INTO `historia_logowania` VALUES (3, 3, '2024-12-04 09:00:00', '192.168.1.30');
INSERT INTO `historia_logowania` VALUES (4, 4, '2024-12-04 09:30:00', '192.168.1.40');
INSERT INTO `historia_logowania` VALUES (5, 5, '2024-12-04 10:00:00', '192.168.1.50');
INSERT INTO `historia_logowania` VALUES (6, 6, '2024-12-04 10:30:00', '192.168.1.60');
INSERT INTO `historia_logowania` VALUES (7, 7, '2024-12-04 11:00:00', '192.168.1.70');
INSERT INTO `historia_logowania` VALUES (8, 8, '2024-12-04 11:30:00', '192.168.1.80');
INSERT INTO `historia_logowania` VALUES (9, 9, '2024-12-04 12:00:00', '192.168.1.90');
INSERT INTO `historia_logowania` VALUES (10, 10, '2024-12-04 12:30:00', '192.168.1.100');
INSERT INTO `historia_logowania` VALUES (11, 2, '2025-01-01 17:33:19', '192.168.1.11');
INSERT INTO `historia_logowania` VALUES (12, 2, '2025-01-17 17:39:11', '8.8.8.8');

-- ----------------------------
-- Table structure for hospitalizacja
-- ----------------------------
DROP TABLE IF EXISTS `hospitalizacja`;
CREATE TABLE `hospitalizacja`  (
  `id_hospitalizacja` int(11) NOT NULL AUTO_INCREMENT,
  `data_rozpoczecia` datetime NOT NULL,
  `data_zakonczenia` datetime NULL DEFAULT NULL,
  `pacjent_id` smallint(5) UNSIGNED NOT NULL,
  `platnosc_id` int(10) UNSIGNED NOT NULL,
  `id_sali` smallint(5) UNSIGNED NOT NULL,
  PRIMARY KEY (`id_hospitalizacja`) USING BTREE,
  INDEX `pacjent_id`(`pacjent_id` ASC) USING BTREE,
  INDEX `platnosc_id`(`platnosc_id` ASC) USING BTREE,
  INDEX `hospitalizacja_ibfk_4`(`id_sali` ASC) USING BTREE,
  CONSTRAINT `hospitalizacja_ibfk_1` FOREIGN KEY (`pacjent_id`) REFERENCES `pacjent` (`pacjent_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `hospitalizacja_ibfk_2` FOREIGN KEY (`platnosc_id`) REFERENCES `platnosc` (`platnosc_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `hospitalizacja_ibfk_4` FOREIGN KEY (`id_sali`) REFERENCES `sala` (`id_sali`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hospitalizacja
-- ----------------------------
INSERT INTO `hospitalizacja` VALUES (1, '2024-11-01 10:00:00', '2024-11-05 12:00:00', 1, 1, 1);
INSERT INTO `hospitalizacja` VALUES (2, '2024-11-02 11:00:00', '2024-11-06 13:00:00', 2, 2, 2);
INSERT INTO `hospitalizacja` VALUES (3, '2024-11-03 12:00:00', NULL, 3, 3, 3);
INSERT INTO `hospitalizacja` VALUES (4, '2024-11-04 13:00:00', NULL, 4, 4, 4);
INSERT INTO `hospitalizacja` VALUES (5, '2024-11-05 14:00:00', '2024-11-10 15:00:00', 5, 5, 5);
INSERT INTO `hospitalizacja` VALUES (6, '2024-11-06 15:00:00', '2024-11-11 16:00:00', 6, 6, 6);
INSERT INTO `hospitalizacja` VALUES (7, '2024-11-07 16:00:00', NULL, 7, 7, 7);
INSERT INTO `hospitalizacja` VALUES (8, '2024-11-08 17:00:00', NULL, 8, 8, 8);
INSERT INTO `hospitalizacja` VALUES (9, '2024-11-09 18:00:00', '2024-11-14 19:00:00', 9, 9, 9);
INSERT INTO `hospitalizacja` VALUES (10, '2024-11-10 09:00:00', '2024-11-15 10:00:00', 10, 10, 10);
INSERT INTO `hospitalizacja` VALUES (11, '2024-11-11 10:00:00', NULL, 11, 11, 11);
INSERT INTO `hospitalizacja` VALUES (12, '2024-11-12 11:00:00', NULL, 12, 12, 12);
INSERT INTO `hospitalizacja` VALUES (13, '2024-11-13 12:00:00', '2024-11-18 13:00:00', 13, 13, 13);
INSERT INTO `hospitalizacja` VALUES (14, '2024-11-14 13:00:00', '2024-11-19 14:00:00', 14, 14, 14);
INSERT INTO `hospitalizacja` VALUES (15, '2024-11-15 14:00:00', NULL, 15, 15, 15);
INSERT INTO `hospitalizacja` VALUES (16, '2024-11-16 15:00:00', NULL, 16, 16, 16);
INSERT INTO `hospitalizacja` VALUES (17, '2024-11-17 16:00:00', '2024-11-22 17:00:00', 17, 17, 17);
INSERT INTO `hospitalizacja` VALUES (18, '2024-11-18 17:00:00', '2024-11-23 18:00:00', 18, 18, 18);
INSERT INTO `hospitalizacja` VALUES (19, '2024-11-19 18:00:00', NULL, 19, 19, 19);
INSERT INTO `hospitalizacja` VALUES (20, '2024-11-20 09:00:00', NULL, 20, 20, 20);

-- ----------------------------
-- Table structure for hospitalizacja_doktor
-- ----------------------------
DROP TABLE IF EXISTS `hospitalizacja_doktor`;
CREATE TABLE `hospitalizacja_doktor`  (
  `id_hospitalizacja` int(11) NOT NULL,
  `id_pracownika` smallint(6) NOT NULL,
  PRIMARY KEY (`id_hospitalizacja`, `id_pracownika`) USING BTREE,
  INDEX `id_pracownika`(`id_pracownika` ASC) USING BTREE,
  CONSTRAINT `hospitalizacja_doktor_ibfk_1` FOREIGN KEY (`id_hospitalizacja`) REFERENCES `hospitalizacja` (`id_hospitalizacja`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `hospitalizacja_doktor_ibfk_2` FOREIGN KEY (`id_pracownika`) REFERENCES `doktorzy` (`id_pracownika`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hospitalizacja_doktor
-- ----------------------------
INSERT INTO `hospitalizacja_doktor` VALUES (1, 1);
INSERT INTO `hospitalizacja_doktor` VALUES (11, 1);
INSERT INTO `hospitalizacja_doktor` VALUES (2, 2);
INSERT INTO `hospitalizacja_doktor` VALUES (12, 2);
INSERT INTO `hospitalizacja_doktor` VALUES (3, 3);
INSERT INTO `hospitalizacja_doktor` VALUES (13, 3);
INSERT INTO `hospitalizacja_doktor` VALUES (4, 4);
INSERT INTO `hospitalizacja_doktor` VALUES (14, 4);
INSERT INTO `hospitalizacja_doktor` VALUES (5, 5);
INSERT INTO `hospitalizacja_doktor` VALUES (15, 5);
INSERT INTO `hospitalizacja_doktor` VALUES (6, 6);
INSERT INTO `hospitalizacja_doktor` VALUES (16, 6);
INSERT INTO `hospitalizacja_doktor` VALUES (7, 7);
INSERT INTO `hospitalizacja_doktor` VALUES (17, 7);
INSERT INTO `hospitalizacja_doktor` VALUES (8, 8);
INSERT INTO `hospitalizacja_doktor` VALUES (18, 8);
INSERT INTO `hospitalizacja_doktor` VALUES (9, 9);
INSERT INTO `hospitalizacja_doktor` VALUES (19, 9);
INSERT INTO `hospitalizacja_doktor` VALUES (10, 10);
INSERT INTO `hospitalizacja_doktor` VALUES (20, 10);

-- ----------------------------
-- Table structure for kwalifikacja
-- ----------------------------
DROP TABLE IF EXISTS `kwalifikacja`;
CREATE TABLE `kwalifikacja`  (
  `kwalifikacja_id` smallint(6) NOT NULL AUTO_INCREMENT,
  `nazwa` enum('Anestezjologia i intensywna terapia','Pielęgniarstwo operacyjne','Pielęgniarstwo pediatryczne','Pielęgniarstwo neonatologiczne','Pielęgniarstwo geriatryczne','Pielęgniarstwo onkologiczne','Pielęgniarstwo psychiatryczne','Pielęgniarstwo środowiskowo-rodzinne','Pielęgniarstwo ratunkowe','Pielęgniarstwo rehabilitacyjne','Pielęgniarstwo kardiologiczne','Pielęgniarstwo nefrologiczne','Pielęgniarstwo neurologiczne','Pielęgniarstwo diabetologiczne','Pielęgniarstwo w opiece długoterminowej','Pielęgniarstwo w ochronie zdrowia pracujących','Pielęgniarstwo epidemiologiczne','Pielęgniarstwo promocji zdrowia i edukacji zdrowotnej','Pielęgniarstwo endoskopowe','Pielęgniarstwo pulmonologiczne','Pielęgniarstwo w opiece paliatywnej','Pielęgniarstwo chirurgiczne','Pielęgniarstwo urologiczne','Pielęgniarstwo dermatologiczne','Pielęgniarstwo ginekologiczno-położnicze','Pielęgniarstwo otorynolaryngologiczne','Pielęgniarstwo okulistyczne','Pielęgniarstwo ortopedyczne i traumatologiczne','Pielęgniarstwo transplantacyjne','Pielęgniarstwo anestezjologiczne','Pielęgniarstwo medycyny pracy','Pielęgniarstwo leczenia bólu','Pielęgniarstwo alergologiczne','Pielęgniarstwo chorób zakaźnych','Pielęgniarstwo hematologiczne','Pielęgniarstwo reumatologiczne','Pielęgniarstwo gastrologiczne','Pielęgniarstwo immunologiczne','Pielęgniarstwo w opiece nad pacjentem z HIV/AIDS','Pielęgniarstwo leczenia ran i oparzeń') CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci NOT NULL,
  PRIMARY KEY (`kwalifikacja_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_polish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of kwalifikacja
-- ----------------------------
INSERT INTO `kwalifikacja` VALUES (1, 'Anestezjologia i intensywna terapia');
INSERT INTO `kwalifikacja` VALUES (2, 'Pielęgniarstwo operacyjne');
INSERT INTO `kwalifikacja` VALUES (3, 'Pielęgniarstwo pediatryczne');
INSERT INTO `kwalifikacja` VALUES (4, 'Pielęgniarstwo neonatologiczne');
INSERT INTO `kwalifikacja` VALUES (5, 'Pielęgniarstwo geriatryczne');
INSERT INTO `kwalifikacja` VALUES (6, 'Pielęgniarstwo onkologiczne');
INSERT INTO `kwalifikacja` VALUES (7, 'Pielęgniarstwo psychiatryczne');
INSERT INTO `kwalifikacja` VALUES (8, 'Pielęgniarstwo środowiskowo-rodzinne');
INSERT INTO `kwalifikacja` VALUES (9, 'Pielęgniarstwo ratunkowe');
INSERT INTO `kwalifikacja` VALUES (10, 'Pielęgniarstwo rehabilitacyjne');
INSERT INTO `kwalifikacja` VALUES (11, 'Pielęgniarstwo kardiologiczne');
INSERT INTO `kwalifikacja` VALUES (12, 'Pielęgniarstwo nefrologiczne');
INSERT INTO `kwalifikacja` VALUES (13, 'Pielęgniarstwo neurologiczne');
INSERT INTO `kwalifikacja` VALUES (14, 'Pielęgniarstwo diabetologiczne');
INSERT INTO `kwalifikacja` VALUES (15, 'Pielęgniarstwo w opiece długoterminowej');
INSERT INTO `kwalifikacja` VALUES (16, 'Pielęgniarstwo w ochronie zdrowia pracujących');
INSERT INTO `kwalifikacja` VALUES (17, 'Pielęgniarstwo epidemiologiczne');
INSERT INTO `kwalifikacja` VALUES (18, 'Pielęgniarstwo promocji zdrowia i edukacji zdrowotnej');
INSERT INTO `kwalifikacja` VALUES (19, 'Pielęgniarstwo endoskopowe');
INSERT INTO `kwalifikacja` VALUES (20, 'Pielęgniarstwo pulmonologiczne');

-- ----------------------------
-- Table structure for lek
-- ----------------------------
DROP TABLE IF EXISTS `lek`;
CREATE TABLE `lek`  (
  `lek_id` int(11) NOT NULL AUTO_INCREMENT,
  `ilosc` smallint(5) UNSIGNED NOT NULL,
  `nazwa_leku` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci NOT NULL,
  `typ_opakowania_id` int(11) NOT NULL,
  `rozmiar_opakowania` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci NOT NULL,
  `producent` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci NOT NULL,
  `seria` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci NOT NULL,
  `dawkowanie` text CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci NOT NULL,
  PRIMARY KEY (`lek_id`) USING BTREE,
  INDEX `typ_opakowania_id`(`typ_opakowania_id` ASC) USING BTREE,
  FULLTEXT INDEX `fulltext`(`nazwa_leku`, `producent`),
  CONSTRAINT `lek_ibfk_1` FOREIGN KEY (`typ_opakowania_id`) REFERENCES `typ_opakowania` (`typ_opakowania_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lek
-- ----------------------------
INSERT INTO `lek` VALUES (4, 50, 'Paracetamol 500mg', 10, '10 tabletek', 'PharmaCorp', 'P202301', '1 tabletka co 4-6 godzin, maksymalnie 8 tabletek dziennie');
INSERT INTO `lek` VALUES (5, 30, 'Ibuprofen 200mg', 12, '100 ml', 'Medicare Inc.', 'IB202302', '10 ml 3 razy dziennie po posiłkach');
INSERT INTO `lek` VALUES (6, 25, 'Amoksycylina 250mg', 14, '5 ml', 'HealthLife', 'AM202303', '5 ml co 8 godzin przez 7 dni');
INSERT INTO `lek` VALUES (7, 100, 'Metformin 500mg', 10, '20 tabletek', 'GlucoPharm', 'M202304', '1 tabletka 2 razy dziennie podczas posiłków');
INSERT INTO `lek` VALUES (8, 15, 'Omeprazol 20mg', 2, '14 kapsułek', 'AcidControl', 'O202305', '1 kapsułka raz dziennie przed śniadaniem');
INSERT INTO `lek` VALUES (9, 45, 'Ceftriakson 1g', 11, '1 g proszku', 'AntibioTech', 'C202306', '1 g raz dziennie domięśniowo przez 7 dni');
INSERT INTO `lek` VALUES (10, 70, 'Furosemid 40mg', 11, '20 tabletek', 'Diuretica', 'F202307', '1 tabletka rano na czczo');
INSERT INTO `lek` VALUES (11, 50, 'Witamina D3 2000IU', 17, '10 ml', 'VitaPlus', 'D3202308', '1 aplikacja dziennie do jamy ustnej');
INSERT INTO `lek` VALUES (12, 80, 'Magnez + B6', 18, '60 kapsułek', 'NutriWell', 'MB6202309', '2 kapsułki dziennie po posiłkach');
INSERT INTO `lek` VALUES (13, 20, 'Ketoprofen 50mg', 11, '10 tabletek', 'PainRelief', 'K202310', '1 tabletka co 6-8 godzin, maksymalnie 3 tabletki dziennie');
INSERT INTO `lek` VALUES (14, 10, 'Captopril 25mg', 16, '5 ml roztworu', 'CardioCare', 'C202311', '5 ml w przypadku nagłego wzrostu ciśnienia tętniczego');
INSERT INTO `lek` VALUES (15, 40, 'Lorazepam 1mg', 11, '14 tabletek', 'NeuroCalm', 'L202312', '1 tabletka na noc, maksymalnie 2 tabletki dziennie');
INSERT INTO `lek` VALUES (16, 60, 'Salbutamol', 16, '200 dawek', 'AirCare', 'S202313', '1-2 dawki w razie duszności, maksymalnie 8 dawek dziennie');
INSERT INTO `lek` VALUES (17, 35, 'Prednizolon 5mg', 11, '10 tabletek', 'SteroidPharma', 'P202314', '1 tabletka rano po posiłku');
INSERT INTO `lek` VALUES (18, 25, 'Ciprofloxacin 500mg', 11, '10 tabletek', 'AntiInfect', 'C202315', '1 tabletka co 12 godzin przez 7 dni');
INSERT INTO `lek` VALUES (19, 90, 'Aspiryna 75mg', 11, '28 tabletek', 'HeartHealth', 'A202316', '1 tabletka raz dziennie po posiłku');
INSERT INTO `lek` VALUES (20, 50, 'Deksametazon 2mg', 11, '10 tabletek', 'SteroidLife', 'D202317', '1 tabletka rano, dawka zależna od zaleceń lekarza');
INSERT INTO `lek` VALUES (21, 15, 'Acetylocysteina 200mg', 17, '10 saszetek', 'RespiraPharm', 'A202318', '1 saszetka rozpuszczona w wodzie 2-3 razy dziennie');
INSERT INTO `lek` VALUES (22, 55, 'Insulina glargine', 15, '10 ml roztworu', 'DiabetesCare', 'I202319', 'Indywidualnie, zgodnie z zaleceniami lekarza');
INSERT INTO `lek` VALUES (23, 20, 'Atorwastatyna 20mg', 11, '30 tabletek', 'LipidControl', 'A202320', '1 tabletka raz dziennie wieczorem');
INSERT INTO `lek` VALUES (24, 10, 'Paracetamol 200mg', 10, '10 tabletek', 'PharmaCorp', 'P210311', '1 tabletka co 6 godzin');

-- ----------------------------
-- Table structure for lek-oddzial
-- ----------------------------
DROP TABLE IF EXISTS `lek-oddzial`;
CREATE TABLE `lek-oddzial`  (
  `lek_id` int(11) NOT NULL,
  `oddzial_id` tinyint(3) UNSIGNED NOT NULL,
  PRIMARY KEY (`lek_id`, `oddzial_id`) USING BTREE,
  INDEX `oddzial_id`(`oddzial_id` ASC) USING BTREE,
  CONSTRAINT `lek-oddzial_ibfk_1` FOREIGN KEY (`lek_id`) REFERENCES `lek` (`lek_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `lek-oddzial_ibfk_2` FOREIGN KEY (`oddzial_id`) REFERENCES `oddzial` (`oddzial_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lek-oddzial
-- ----------------------------

-- ----------------------------
-- Table structure for nalezy
-- ----------------------------
DROP TABLE IF EXISTS `nalezy`;
CREATE TABLE `nalezy`  (
  `id_pracownika` smallint(5) NOT NULL,
  `oddzial_id` tinyint(3) UNSIGNED NOT NULL,
  PRIMARY KEY (`id_pracownika`, `oddzial_id`) USING BTREE,
  INDEX `oddzial_id`(`oddzial_id` ASC) USING BTREE,
  CONSTRAINT `nalezy_ibfk_1` FOREIGN KEY (`id_pracownika`) REFERENCES `pracownik` (`id_pracownika`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `nalezy_ibfk_2` FOREIGN KEY (`oddzial_id`) REFERENCES `oddzial` (`oddzial_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of nalezy
-- ----------------------------
INSERT INTO `nalezy` VALUES (1, 1);
INSERT INTO `nalezy` VALUES (2, 2);
INSERT INTO `nalezy` VALUES (3, 3);
INSERT INTO `nalezy` VALUES (4, 4);
INSERT INTO `nalezy` VALUES (5, 5);
INSERT INTO `nalezy` VALUES (6, 6);
INSERT INTO `nalezy` VALUES (7, 7);
INSERT INTO `nalezy` VALUES (8, 8);
INSERT INTO `nalezy` VALUES (9, 9);
INSERT INTO `nalezy` VALUES (10, 10);
INSERT INTO `nalezy` VALUES (11, 11);
INSERT INTO `nalezy` VALUES (12, 12);
INSERT INTO `nalezy` VALUES (13, 13);
INSERT INTO `nalezy` VALUES (14, 14);
INSERT INTO `nalezy` VALUES (15, 15);
INSERT INTO `nalezy` VALUES (16, 16);
INSERT INTO `nalezy` VALUES (17, 17);
INSERT INTO `nalezy` VALUES (18, 18);
INSERT INTO `nalezy` VALUES (19, 19);
INSERT INTO `nalezy` VALUES (20, 20);

-- ----------------------------
-- Table structure for oddzial
-- ----------------------------
DROP TABLE IF EXISTS `oddzial`;
CREATE TABLE `oddzial`  (
  `oddzial_id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nazwa_oddzialu` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci NOT NULL,
  `ordynator_id` smallint(6) NOT NULL,
  PRIMARY KEY (`oddzial_id`) USING BTREE,
  INDEX `ordynator_id`(`ordynator_id` ASC) USING BTREE,
  CONSTRAINT `oddzial_ibfk_1` FOREIGN KEY (`ordynator_id`) REFERENCES `doktorzy` (`id_pracownika`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of oddzial
-- ----------------------------
INSERT INTO `oddzial` VALUES (1, 'Oddział Kardiologii', 1);
INSERT INTO `oddzial` VALUES (2, 'Oddział Neurologii', 2);
INSERT INTO `oddzial` VALUES (3, 'Oddział Chirurgii', 3);
INSERT INTO `oddzial` VALUES (4, 'Oddział Pediatrii', 4);
INSERT INTO `oddzial` VALUES (5, 'Oddział Onkologii', 5);
INSERT INTO `oddzial` VALUES (6, 'Oddział Ginekologii', 6);
INSERT INTO `oddzial` VALUES (7, 'Oddział Ortopedii', 7);
INSERT INTO `oddzial` VALUES (8, 'Oddział Dermatologii', 8);
INSERT INTO `oddzial` VALUES (9, 'Oddział Psychiatryczny', 9);
INSERT INTO `oddzial` VALUES (10, 'Oddział Urologii', 10);
INSERT INTO `oddzial` VALUES (11, 'Oddział Endokrynologii', 1);
INSERT INTO `oddzial` VALUES (12, 'Oddział Gastroenterologii', 2);
INSERT INTO `oddzial` VALUES (13, 'Oddział Hematologii', 3);
INSERT INTO `oddzial` VALUES (14, 'Oddział Nefrologii', 4);
INSERT INTO `oddzial` VALUES (15, 'Oddział Reumatologii', 5);
INSERT INTO `oddzial` VALUES (16, 'Oddział Pulmonologii', 6);
INSERT INTO `oddzial` VALUES (17, 'Oddział Radiologii', 7);
INSERT INTO `oddzial` VALUES (18, 'Oddział Immunologii', 8);
INSERT INTO `oddzial` VALUES (19, 'Oddział Chorób Zakaźnych', 9);
INSERT INTO `oddzial` VALUES (20, 'Oddział Medycyny Rodzinnej', 10);

-- ----------------------------
-- Table structure for oddzial-sprzet
-- ----------------------------
DROP TABLE IF EXISTS `oddzial-sprzet`;
CREATE TABLE `oddzial-sprzet`  (
  `sprzet_id` int(11) NOT NULL,
  `oddzial_id` tinyint(3) UNSIGNED NOT NULL,
  PRIMARY KEY (`sprzet_id`, `oddzial_id`) USING BTREE,
  INDEX `oddzial_id`(`oddzial_id` ASC) USING BTREE,
  CONSTRAINT `oddzial-sprzet_ibfk_2` FOREIGN KEY (`oddzial_id`) REFERENCES `oddzial` (`oddzial_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `oddzial-sprzet_ibfk_3` FOREIGN KEY (`sprzet_id`) REFERENCES `sprzet` (`sprzet_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of oddzial-sprzet
-- ----------------------------
INSERT INTO `oddzial-sprzet` VALUES (1, 1);
INSERT INTO `oddzial-sprzet` VALUES (2, 2);
INSERT INTO `oddzial-sprzet` VALUES (3, 3);
INSERT INTO `oddzial-sprzet` VALUES (4, 4);
INSERT INTO `oddzial-sprzet` VALUES (5, 5);
INSERT INTO `oddzial-sprzet` VALUES (6, 6);
INSERT INTO `oddzial-sprzet` VALUES (7, 7);
INSERT INTO `oddzial-sprzet` VALUES (8, 8);
INSERT INTO `oddzial-sprzet` VALUES (9, 9);
INSERT INTO `oddzial-sprzet` VALUES (10, 10);
INSERT INTO `oddzial-sprzet` VALUES (11, 11);
INSERT INTO `oddzial-sprzet` VALUES (12, 12);
INSERT INTO `oddzial-sprzet` VALUES (13, 13);
INSERT INTO `oddzial-sprzet` VALUES (14, 14);
INSERT INTO `oddzial-sprzet` VALUES (15, 15);
INSERT INTO `oddzial-sprzet` VALUES (16, 16);
INSERT INTO `oddzial-sprzet` VALUES (17, 17);
INSERT INTO `oddzial-sprzet` VALUES (18, 18);
INSERT INTO `oddzial-sprzet` VALUES (19, 19);
INSERT INTO `oddzial-sprzet` VALUES (1, 20);

-- ----------------------------
-- Table structure for pacjent
-- ----------------------------
DROP TABLE IF EXISTS `pacjent`;
CREATE TABLE `pacjent`  (
  `pacjent_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `imie` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci NOT NULL,
  `nazwisko` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci NOT NULL,
  `data_urodzenia` date NOT NULL,
  `uwagi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci NULL DEFAULT NULL,
  `pesel` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci NULL DEFAULT NULL,
  `ubezpieczenie` enum('brak','NFZ','EKUZ','prywatne','') CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci NOT NULL,
  PRIMARY KEY (`pacjent_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pacjent
-- ----------------------------
INSERT INTO `pacjent` VALUES (1, 'Karol', 'Nowicki', '1980-05-15', NULL, '12345678901', 'NFZ');
INSERT INTO `pacjent` VALUES (2, 'Ewelina', 'Sikora', '1990-07-20', NULL, '11515484236', 'prywatne');
INSERT INTO `pacjent` VALUES (3, 'Grzegorz', 'Kwiatkowski', '1975-03-30', NULL, '05546188488', 'EKUZ');
INSERT INTO `pacjent` VALUES (4, 'Magdalena', 'Rutkowska', '1985-11-12', NULL, '44889798999', 'NFZ');
INSERT INTO `pacjent` VALUES (5, 'Łukasz', 'Ostrowski', '1995-01-25', NULL, '01551848888', 'brak');
INSERT INTO `pacjent` VALUES (6, 'Izabela', 'Jasińska', '1965-09-08', NULL, '62054848948', 'prywatne');
INSERT INTO `pacjent` VALUES (7, 'Sebastian', 'Pawlak', '1988-12-05', NULL, '10004789450', 'NFZ');
INSERT INTO `pacjent` VALUES (8, 'Agnieszka', 'Sadowska', '1978-06-17', NULL, '51849849879', 'EKUZ');
INSERT INTO `pacjent` VALUES (9, 'Dawid', 'Michalak', '1992-04-22', NULL, '65897963125', 'prywatne');
INSERT INTO `pacjent` VALUES (10, 'Anna', 'Baran', '1982-08-03', NULL, '59878912388', 'NFZ');
INSERT INTO `pacjent` VALUES (11, 'Rafał', 'Szewczyk', '1970-02-14', NULL, '65849840515', 'brak');
INSERT INTO `pacjent` VALUES (12, 'Beata', 'Król', '1987-10-19', NULL, '98562156218', 'NFZ');
INSERT INTO `pacjent` VALUES (13, 'Marek', 'Wieczorek', '1993-12-29', NULL, '54987986128', 'EKUZ');
INSERT INTO `pacjent` VALUES (14, 'Katarzyna', 'Maj', '1983-07-09', NULL, '84652136746', 'prywatne');
INSERT INTO `pacjent` VALUES (15, 'Artur', 'Stępień', '1976-03-16', NULL, '89796215468', 'NFZ');
INSERT INTO `pacjent` VALUES (16, 'Paulina', 'Szulc', '1991-05-27', NULL, '87986123354', 'EKUZ');
INSERT INTO `pacjent` VALUES (17, 'Adam', 'Wróbel', '1984-11-05', NULL, '65548889231', 'brak');
INSERT INTO `pacjent` VALUES (18, 'Dominika', 'Jabłońska', '1979-09-12', NULL, '89448798479', 'NFZ');
INSERT INTO `pacjent` VALUES (19, 'Piotr', 'Malinowski', '1986-06-24', NULL, '58789413458', 'prywatne');
INSERT INTO `pacjent` VALUES (20, 'Joanna', 'Nowakowska', '1994-01-15', NULL, '15789798131', 'NFZ');

-- ----------------------------
-- Table structure for pielegniarka_kwalifikacja
-- ----------------------------
DROP TABLE IF EXISTS `pielegniarka_kwalifikacja`;
CREATE TABLE `pielegniarka_kwalifikacja`  (
  `id_pracownika` smallint(6) NOT NULL,
  `kwalifikacja_id` smallint(6) NOT NULL,
  PRIMARY KEY (`id_pracownika`, `kwalifikacja_id`) USING BTREE,
  INDEX `kwalifikacja_id`(`kwalifikacja_id` ASC) USING BTREE,
  CONSTRAINT `pielegniarka_kwalifikacja_ibfk_1` FOREIGN KEY (`id_pracownika`) REFERENCES `pielegniarki` (`id_pracownika`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `pielegniarka_kwalifikacja_ibfk_2` FOREIGN KEY (`kwalifikacja_id`) REFERENCES `kwalifikacja` (`kwalifikacja_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_polish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pielegniarka_kwalifikacja
-- ----------------------------
INSERT INTO `pielegniarka_kwalifikacja` VALUES (11, 1);
INSERT INTO `pielegniarka_kwalifikacja` VALUES (11, 2);
INSERT INTO `pielegniarka_kwalifikacja` VALUES (12, 3);
INSERT INTO `pielegniarka_kwalifikacja` VALUES (12, 4);
INSERT INTO `pielegniarka_kwalifikacja` VALUES (13, 5);
INSERT INTO `pielegniarka_kwalifikacja` VALUES (13, 6);
INSERT INTO `pielegniarka_kwalifikacja` VALUES (14, 7);
INSERT INTO `pielegniarka_kwalifikacja` VALUES (14, 8);
INSERT INTO `pielegniarka_kwalifikacja` VALUES (15, 9);
INSERT INTO `pielegniarka_kwalifikacja` VALUES (15, 10);
INSERT INTO `pielegniarka_kwalifikacja` VALUES (16, 11);
INSERT INTO `pielegniarka_kwalifikacja` VALUES (16, 12);
INSERT INTO `pielegniarka_kwalifikacja` VALUES (17, 13);
INSERT INTO `pielegniarka_kwalifikacja` VALUES (17, 14);
INSERT INTO `pielegniarka_kwalifikacja` VALUES (18, 15);
INSERT INTO `pielegniarka_kwalifikacja` VALUES (18, 16);
INSERT INTO `pielegniarka_kwalifikacja` VALUES (19, 17);
INSERT INTO `pielegniarka_kwalifikacja` VALUES (19, 18);
INSERT INTO `pielegniarka_kwalifikacja` VALUES (20, 19);
INSERT INTO `pielegniarka_kwalifikacja` VALUES (20, 20);

-- ----------------------------
-- Table structure for pielegniarki
-- ----------------------------
DROP TABLE IF EXISTS `pielegniarki`;
CREATE TABLE `pielegniarki`  (
  `id_pracownika` smallint(6) NOT NULL,
  `wyksztalcenie` enum('Wyższe','Zawodowe','Średnie') CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci NOT NULL,
  PRIMARY KEY (`id_pracownika`) USING BTREE,
  CONSTRAINT `pielegniarki_ibfk_1` FOREIGN KEY (`id_pracownika`) REFERENCES `pracownik` (`id_pracownika`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pielegniarki
-- ----------------------------
INSERT INTO `pielegniarki` VALUES (11, 'Wyższe');
INSERT INTO `pielegniarki` VALUES (12, 'Zawodowe');
INSERT INTO `pielegniarki` VALUES (13, 'Średnie');
INSERT INTO `pielegniarki` VALUES (14, 'Wyższe');
INSERT INTO `pielegniarki` VALUES (15, 'Zawodowe');
INSERT INTO `pielegniarki` VALUES (16, 'Średnie');
INSERT INTO `pielegniarki` VALUES (17, 'Wyższe');
INSERT INTO `pielegniarki` VALUES (18, 'Zawodowe');
INSERT INTO `pielegniarki` VALUES (19, 'Średnie');
INSERT INTO `pielegniarki` VALUES (20, 'Wyższe');

-- ----------------------------
-- Table structure for platnosc
-- ----------------------------
DROP TABLE IF EXISTS `platnosc`;
CREATE TABLE `platnosc`  (
  `platnosc_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `sposob_platnosci` enum('gotówka','karta','przelew','ubezpieczenie') CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci NOT NULL,
  `kwota_netto` decimal(10, 2) UNSIGNED NOT NULL,
  `kwota_brutto` decimal(10, 2) UNSIGNED NOT NULL,
  PRIMARY KEY (`platnosc_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 50 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of platnosc
-- ----------------------------
INSERT INTO `platnosc` VALUES (1, 'gotówka', 100.00, 123.00);
INSERT INTO `platnosc` VALUES (2, 'karta', 200.00, 246.00);
INSERT INTO `platnosc` VALUES (3, 'przelew', 150.00, 184.50);
INSERT INTO `platnosc` VALUES (4, 'ubezpieczenie', 0.00, 0.00);
INSERT INTO `platnosc` VALUES (5, 'gotówka', 300.00, 369.00);
INSERT INTO `platnosc` VALUES (6, 'karta', 250.00, 307.50);
INSERT INTO `platnosc` VALUES (7, 'przelew', 400.00, 492.00);
INSERT INTO `platnosc` VALUES (8, 'ubezpieczenie', 0.00, 0.00);
INSERT INTO `platnosc` VALUES (9, 'gotówka', 120.00, 147.60);
INSERT INTO `platnosc` VALUES (10, 'karta', 220.00, 270.60);
INSERT INTO `platnosc` VALUES (11, 'przelew', 180.00, 221.40);
INSERT INTO `platnosc` VALUES (12, 'ubezpieczenie', 0.00, 0.00);
INSERT INTO `platnosc` VALUES (13, 'gotówka', 130.00, 159.90);
INSERT INTO `platnosc` VALUES (14, 'karta', 210.00, 258.30);
INSERT INTO `platnosc` VALUES (15, 'przelew', 170.00, 209.10);
INSERT INTO `platnosc` VALUES (16, 'ubezpieczenie', 0.00, 0.00);
INSERT INTO `platnosc` VALUES (17, 'gotówka', 140.00, 172.20);
INSERT INTO `platnosc` VALUES (18, 'karta', 230.00, 282.90);
INSERT INTO `platnosc` VALUES (19, 'przelew', 160.00, 196.80);
INSERT INTO `platnosc` VALUES (20, 'ubezpieczenie', 0.00, 0.00);
INSERT INTO `platnosc` VALUES (34, 'ubezpieczenie', 0.00, 0.00);
INSERT INTO `platnosc` VALUES (35, 'ubezpieczenie', 0.00, 0.00);
INSERT INTO `platnosc` VALUES (36, 'ubezpieczenie', 0.00, 0.00);
INSERT INTO `platnosc` VALUES (37, 'ubezpieczenie', 0.00, 0.00);
INSERT INTO `platnosc` VALUES (38, 'ubezpieczenie', 0.00, 0.00);
INSERT INTO `platnosc` VALUES (39, 'ubezpieczenie', 0.00, 0.00);
INSERT INTO `platnosc` VALUES (40, 'ubezpieczenie', 0.00, 0.00);
INSERT INTO `platnosc` VALUES (41, 'ubezpieczenie', 0.00, 0.00);
INSERT INTO `platnosc` VALUES (42, 'ubezpieczenie', 0.00, 0.00);
INSERT INTO `platnosc` VALUES (43, 'ubezpieczenie', 0.00, 0.00);
INSERT INTO `platnosc` VALUES (44, 'ubezpieczenie', 0.00, 0.00);
INSERT INTO `platnosc` VALUES (45, 'ubezpieczenie', 0.00, 0.00);
INSERT INTO `platnosc` VALUES (47, 'ubezpieczenie', 0.00, 0.00);
INSERT INTO `platnosc` VALUES (48, 'ubezpieczenie', 0.00, 0.00);
INSERT INTO `platnosc` VALUES (49, 'ubezpieczenie', 0.00, 0.00);

-- ----------------------------
-- Table structure for pracownik
-- ----------------------------
DROP TABLE IF EXISTS `pracownik`;
CREATE TABLE `pracownik`  (
  `id_pracownika` smallint(6) NOT NULL AUTO_INCREMENT,
  `imie` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci NOT NULL,
  `nazwisko` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci NOT NULL,
  `telefon` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci NULL DEFAULT NULL,
  `numer_konta` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci NULL DEFAULT NULL,
  `typ_pracownika` enum('doktor','pielęgniarka') CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_pracownika`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pracownik
-- ----------------------------
INSERT INTO `pracownik` VALUES (1, 'Jan', 'Kowalski', '123456789', '12345678901234567890123456', 'doktor');
INSERT INTO `pracownik` VALUES (2, 'Anna', 'Nowak', '234567890', '23456789012345678901234567', 'doktor');
INSERT INTO `pracownik` VALUES (3, 'Piotr', 'Wiśniewski', '345678901', '34567890123456789012345678', 'doktor');
INSERT INTO `pracownik` VALUES (4, 'Katarzyna', 'Wójcik', '456789012', '45678901234567890123456789', 'doktor');
INSERT INTO `pracownik` VALUES (5, 'Michał', 'Kowalczyk', '567890123', '56789012345678901234567890', 'doktor');
INSERT INTO `pracownik` VALUES (6, 'Agnieszka', 'Kamińska', '678901234', '67890123456789012345678901', 'doktor');
INSERT INTO `pracownik` VALUES (7, 'Tomasz', 'Lewandowski', '789012345', '78901234567890123456789012', 'doktor');
INSERT INTO `pracownik` VALUES (8, 'Magdalena', 'Zielińska', '890123456', '89012345678901234567890123', 'doktor');
INSERT INTO `pracownik` VALUES (9, 'Paweł', 'Szymański', '901234567', '90123456789012345678901234', 'doktor');
INSERT INTO `pracownik` VALUES (10, 'Monika', 'Woźniak', '012345678', '01234567890123456789012345', 'doktor');
INSERT INTO `pracownik` VALUES (11, 'Ewa', 'Dąbrowska', '112345678', '11234567890123456789012345', 'pielęgniarka');
INSERT INTO `pracownik` VALUES (12, 'Krzysztof', 'Kozłowski', '212345678', '21234567890123456789012345', 'pielęgniarka');
INSERT INTO `pracownik` VALUES (13, 'Joanna', 'Jankowska', '312345678', '31234567890123456789012345', 'pielęgniarka');
INSERT INTO `pracownik` VALUES (14, 'Andrzej', 'Mazur', '412345678', '41234567890123456789012345', 'pielęgniarka');
INSERT INTO `pracownik` VALUES (15, 'Aleksandra', 'Krawczyk', '512345678', '51234567890123456789012345', 'pielęgniarka');
INSERT INTO `pracownik` VALUES (16, 'Marcin', 'Piotrowski', '612345678', '61234567890123456789012345', 'pielęgniarka');
INSERT INTO `pracownik` VALUES (17, 'Barbara', 'Grabowska', '712345678', '71234567890123456789012345', 'pielęgniarka');
INSERT INTO `pracownik` VALUES (18, 'Rafał', 'Pawłowski', '812345678', '81234567890123456789012345', 'pielęgniarka');
INSERT INTO `pracownik` VALUES (19, 'Natalia', 'Zając', '912345678', '91234567890123456789012345', 'pielęgniarka');
INSERT INTO `pracownik` VALUES (20, 'Adam', 'Michalski', '012345679', '01234567901234567890123456', 'pielęgniarka');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
  `rola_id` int(11) NOT NULL AUTO_INCREMENT,
  `nazwa_rola` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci NOT NULL,
  PRIMARY KEY (`rola_id`) USING BTREE,
  UNIQUE INDEX `nazwa_rola`(`nazwa_rola` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_polish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES (14, 'Administrator systemu');
INSERT INTO `role` VALUES (17, 'Farmaceuta');
INSERT INTO `role` VALUES (19, 'Fizjoterapeuta');
INSERT INTO `role` VALUES (11, 'Lekarz');
INSERT INTO `role` VALUES (15, 'Ordynator oddziału');
INSERT INTO `role` VALUES (12, 'Pielęgniarka');
INSERT INTO `role` VALUES (16, 'Ratownik medyczny');
INSERT INTO `role` VALUES (13, 'Recepcjonista');
INSERT INTO `role` VALUES (18, 'Technik laboratoryjny');

-- ----------------------------
-- Table structure for role_uprawnienia
-- ----------------------------
DROP TABLE IF EXISTS `role_uprawnienia`;
CREATE TABLE `role_uprawnienia`  (
  `rola_id` int(11) NOT NULL,
  `uprawnienie_id` int(11) NOT NULL,
  PRIMARY KEY (`rola_id`, `uprawnienie_id`) USING BTREE,
  INDEX `uprawnienie_id`(`uprawnienie_id` ASC) USING BTREE,
  CONSTRAINT `role_uprawnienia_ibfk_1` FOREIGN KEY (`rola_id`) REFERENCES `role` (`rola_id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `role_uprawnienia_ibfk_2` FOREIGN KEY (`uprawnienie_id`) REFERENCES `uprawnienia` (`uprawnienie_id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_polish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role_uprawnienia
-- ----------------------------
INSERT INTO `role_uprawnienia` VALUES (11, 1);
INSERT INTO `role_uprawnienia` VALUES (15, 1);
INSERT INTO `role_uprawnienia` VALUES (16, 1);
INSERT INTO `role_uprawnienia` VALUES (11, 2);
INSERT INTO `role_uprawnienia` VALUES (15, 2);
INSERT INTO `role_uprawnienia` VALUES (12, 3);
INSERT INTO `role_uprawnienia` VALUES (15, 3);
INSERT INTO `role_uprawnienia` VALUES (19, 3);
INSERT INTO `role_uprawnienia` VALUES (13, 4);
INSERT INTO `role_uprawnienia` VALUES (11, 5);
INSERT INTO `role_uprawnienia` VALUES (17, 5);
INSERT INTO `role_uprawnienia` VALUES (11, 6);
INSERT INTO `role_uprawnienia` VALUES (12, 6);
INSERT INTO `role_uprawnienia` VALUES (15, 6);
INSERT INTO `role_uprawnienia` VALUES (17, 6);
INSERT INTO `role_uprawnienia` VALUES (18, 6);
INSERT INTO `role_uprawnienia` VALUES (14, 7);
INSERT INTO `role_uprawnienia` VALUES (15, 7);
INSERT INTO `role_uprawnienia` VALUES (19, 8);
INSERT INTO `role_uprawnienia` VALUES (16, 9);
INSERT INTO `role_uprawnienia` VALUES (18, 9);
INSERT INTO `role_uprawnienia` VALUES (14, 10);

-- ----------------------------
-- Table structure for sala
-- ----------------------------
DROP TABLE IF EXISTS `sala`;
CREATE TABLE `sala`  (
  `id_sali` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nr_sali` smallint(5) UNSIGNED NOT NULL,
  `ilosc_miejsc` tinyint(3) UNSIGNED NOT NULL,
  `ilosc_wolnych_miejsc` tinyint(3) UNSIGNED NOT NULL,
  `oddzial_id` tinyint(3) UNSIGNED NOT NULL,
  PRIMARY KEY (`id_sali`) USING BTREE,
  INDEX `oddzial_id`(`oddzial_id` ASC) USING BTREE,
  CONSTRAINT `sala_ibfk_1` FOREIGN KEY (`oddzial_id`) REFERENCES `oddzial` (`oddzial_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sala
-- ----------------------------
INSERT INTO `sala` VALUES (1, 101, 4, 2, 1);
INSERT INTO `sala` VALUES (2, 102, 3, 1, 2);
INSERT INTO `sala` VALUES (3, 103, 2, 0, 3);
INSERT INTO `sala` VALUES (4, 104, 4, 4, 4);
INSERT INTO `sala` VALUES (5, 105, 1, 0, 5);
INSERT INTO `sala` VALUES (6, 106, 2, 1, 6);
INSERT INTO `sala` VALUES (7, 107, 3, 2, 7);
INSERT INTO `sala` VALUES (8, 108, 2, 0, 8);
INSERT INTO `sala` VALUES (9, 109, 4, 1, 9);
INSERT INTO `sala` VALUES (10, 110, 1, 0, 10);
INSERT INTO `sala` VALUES (11, 201, 2, 1, 11);
INSERT INTO `sala` VALUES (12, 202, 3, 3, 12);
INSERT INTO `sala` VALUES (13, 203, 4, 2, 13);
INSERT INTO `sala` VALUES (14, 204, 1, 0, 14);
INSERT INTO `sala` VALUES (15, 205, 2, 1, 15);
INSERT INTO `sala` VALUES (16, 206, 3, 2, 16);
INSERT INTO `sala` VALUES (17, 207, 4, 3, 17);
INSERT INTO `sala` VALUES (18, 208, 1, 1, 18);
INSERT INTO `sala` VALUES (19, 209, 2, 0, 19);
INSERT INTO `sala` VALUES (20, 210, 3, 2, 20);

-- ----------------------------
-- Table structure for sala_udogodnienie
-- ----------------------------
DROP TABLE IF EXISTS `sala_udogodnienie`;
CREATE TABLE `sala_udogodnienie`  (
  `id_sali` smallint(5) UNSIGNED NOT NULL,
  `udogodnienie_id` int(11) NOT NULL,
  PRIMARY KEY (`id_sali`, `udogodnienie_id`) USING BTREE,
  INDEX `udogodnienie_id`(`udogodnienie_id` ASC) USING BTREE,
  CONSTRAINT `sala_udogodnienie_ibfk_1` FOREIGN KEY (`id_sali`) REFERENCES `sala` (`id_sali`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `sala_udogodnienie_ibfk_2` FOREIGN KEY (`udogodnienie_id`) REFERENCES `udogodnienie` (`udogodnienie_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_polish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sala_udogodnienie
-- ----------------------------
INSERT INTO `sala_udogodnienie` VALUES (1, 1);
INSERT INTO `sala_udogodnienie` VALUES (1, 2);
INSERT INTO `sala_udogodnienie` VALUES (1, 8);

-- ----------------------------
-- Table structure for specjalizacja
-- ----------------------------
DROP TABLE IF EXISTS `specjalizacja`;
CREATE TABLE `specjalizacja`  (
  `specjalizacja_id` int(11) NOT NULL AUTO_INCREMENT,
  `specjalizacja` enum('Anestezjologia','Kardiologia','Neurologia','Chirurgia','Pediatria','Onkologia','Ginekologia','Położnictwo','Ortopedia','Dermatologia','Psychiatria','Otolaryngologia','Urologia','Endokrynologia','Gastroenterologia','Hematologia','Nefrologia','Reumatologia','Pulmonologia','Radiologia','Patomorfologia','Immunologia','Choroby zakaźne','Medycyna rodzinna','Medycyna pracy','Medycyna sportowa','Medycyna ratunkowa','Chirurgia plastyczna','Chirurgia naczyniowa','Chirurgia onkologiczna','Chirurgia dziecięca','Geriatria','Neonatologia','Transplantologia','Toksykologia','Fizjoterapia','Rehabilitacja medyczna','Psychoonkologia','Genetyka kliniczna','Wenerologia','Stomatologia','Chirurgia szczękowo-twarzowa','Audiologia','Logopedia','Allergologia','Mikrobiologia lekarska','Epidemiologia','Medycyna paliatywna','Hipertensjologia','Angiologia','Diabetologia','Perinatologia','Neurochirurgia','Chirurgia klatki piersiowej','Dermatologia i wenerologia','Medycyna nuklearna','Patologia') CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci NOT NULL,
  PRIMARY KEY (`specjalizacja_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_polish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of specjalizacja
-- ----------------------------
INSERT INTO `specjalizacja` VALUES (1, 'Anestezjologia');
INSERT INTO `specjalizacja` VALUES (2, 'Kardiologia');
INSERT INTO `specjalizacja` VALUES (3, 'Neurologia');
INSERT INTO `specjalizacja` VALUES (4, 'Chirurgia');
INSERT INTO `specjalizacja` VALUES (5, 'Pediatria');
INSERT INTO `specjalizacja` VALUES (6, 'Onkologia');
INSERT INTO `specjalizacja` VALUES (7, 'Ginekologia');
INSERT INTO `specjalizacja` VALUES (8, 'Położnictwo');
INSERT INTO `specjalizacja` VALUES (9, 'Ortopedia');
INSERT INTO `specjalizacja` VALUES (10, 'Dermatologia');
INSERT INTO `specjalizacja` VALUES (11, 'Psychiatria');
INSERT INTO `specjalizacja` VALUES (12, 'Otolaryngologia');
INSERT INTO `specjalizacja` VALUES (13, 'Urologia');
INSERT INTO `specjalizacja` VALUES (14, 'Endokrynologia');
INSERT INTO `specjalizacja` VALUES (15, 'Gastroenterologia');
INSERT INTO `specjalizacja` VALUES (16, 'Hematologia');
INSERT INTO `specjalizacja` VALUES (17, 'Nefrologia');
INSERT INTO `specjalizacja` VALUES (18, 'Reumatologia');
INSERT INTO `specjalizacja` VALUES (19, 'Pulmonologia');
INSERT INTO `specjalizacja` VALUES (20, 'Radiologia');

-- ----------------------------
-- Table structure for sprzet
-- ----------------------------
DROP TABLE IF EXISTS `sprzet`;
CREATE TABLE `sprzet`  (
  `sprzet_id` int(11) NOT NULL AUTO_INCREMENT,
  `nazwa_sprzetu` enum('wózek inwalidzki','balkonik','materac przeciwodleżynowy','aparatura do tlenoterapii','podnośnik dla pacjentów','kozetka lekarska','łóżeczko dziecięce szpitalne','przenośny aparat USG','stojak na kroplówki','chłodziarka do leków','krzesło toaletowe','kula ortopedyczna','laska ortopedyczna','pulsoksymetr','aparat EKG','respirator','defibrylator','ssak medyczny','fotel rehabilitacyjny') CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci NOT NULL,
  PRIMARY KEY (`sprzet_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sprzet
-- ----------------------------
INSERT INTO `sprzet` VALUES (1, 'wózek inwalidzki');
INSERT INTO `sprzet` VALUES (2, 'balkonik');
INSERT INTO `sprzet` VALUES (3, 'materac przeciwodleżynowy');
INSERT INTO `sprzet` VALUES (4, 'aparatura do tlenoterapii');
INSERT INTO `sprzet` VALUES (5, 'podnośnik dla pacjentów');
INSERT INTO `sprzet` VALUES (6, 'kozetka lekarska');
INSERT INTO `sprzet` VALUES (7, 'łóżeczko dziecięce szpitalne');
INSERT INTO `sprzet` VALUES (8, 'przenośny aparat USG');
INSERT INTO `sprzet` VALUES (9, 'stojak na kroplówki');
INSERT INTO `sprzet` VALUES (10, 'chłodziarka do leków');
INSERT INTO `sprzet` VALUES (11, 'krzesło toaletowe');
INSERT INTO `sprzet` VALUES (12, 'kula ortopedyczna');
INSERT INTO `sprzet` VALUES (13, 'laska ortopedyczna');
INSERT INTO `sprzet` VALUES (14, 'pulsoksymetr');
INSERT INTO `sprzet` VALUES (15, 'aparat EKG');
INSERT INTO `sprzet` VALUES (16, 'respirator');
INSERT INTO `sprzet` VALUES (17, 'defibrylator');
INSERT INTO `sprzet` VALUES (18, 'ssak medyczny');
INSERT INTO `sprzet` VALUES (19, 'fotel rehabilitacyjny');

-- ----------------------------
-- Table structure for typ_opakowania
-- ----------------------------
DROP TABLE IF EXISTS `typ_opakowania`;
CREATE TABLE `typ_opakowania`  (
  `typ_opakowania_id` int(11) NOT NULL AUTO_INCREMENT,
  `nazwa` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci NOT NULL,
  PRIMARY KEY (`typ_opakowania_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_polish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of typ_opakowania
-- ----------------------------
INSERT INTO `typ_opakowania` VALUES (10, 'blister');
INSERT INTO `typ_opakowania` VALUES (11, 'butelka');
INSERT INTO `typ_opakowania` VALUES (12, 'ampułka');
INSERT INTO `typ_opakowania` VALUES (13, 'fiolka');
INSERT INTO `typ_opakowania` VALUES (14, 'strzykawka');
INSERT INTO `typ_opakowania` VALUES (15, 'saszetka');
INSERT INTO `typ_opakowania` VALUES (16, 'spray');
INSERT INTO `typ_opakowania` VALUES (17, 'słoik');
INSERT INTO `typ_opakowania` VALUES (18, 'sztuki');

-- ----------------------------
-- Table structure for udogodnienie
-- ----------------------------
DROP TABLE IF EXISTS `udogodnienie`;
CREATE TABLE `udogodnienie`  (
  `udogodnienie_id` int(11) NOT NULL AUTO_INCREMENT,
  `nazwa` enum('telewizor','klimatyzacja','uchwyty wspomagające przy łóżku','wyciszone drzwi','sejf','szafki zamykane na klucz','kurtyna','wi-fi','radio','prywatna łazienka') CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`udogodnienie_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_polish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of udogodnienie
-- ----------------------------
INSERT INTO `udogodnienie` VALUES (1, 'telewizor');
INSERT INTO `udogodnienie` VALUES (2, 'klimatyzacja');
INSERT INTO `udogodnienie` VALUES (3, 'uchwyty wspomagające przy łóżku');
INSERT INTO `udogodnienie` VALUES (4, 'wyciszone drzwi');
INSERT INTO `udogodnienie` VALUES (5, 'sejf');
INSERT INTO `udogodnienie` VALUES (6, 'szafki zamykane na klucz');
INSERT INTO `udogodnienie` VALUES (7, 'kurtyna');
INSERT INTO `udogodnienie` VALUES (8, 'wi-fi');
INSERT INTO `udogodnienie` VALUES (9, 'radio');
INSERT INTO `udogodnienie` VALUES (10, 'prywatna łazienka');

-- ----------------------------
-- Table structure for uprawnienia
-- ----------------------------
DROP TABLE IF EXISTS `uprawnienia`;
CREATE TABLE `uprawnienia`  (
  `uprawnienie_id` int(11) NOT NULL AUTO_INCREMENT,
  `nazwa_uprawnienia` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci NOT NULL,
  PRIMARY KEY (`uprawnienie_id`) USING BTREE,
  UNIQUE INDEX `nazwa_uprawnienia`(`nazwa_uprawnienia` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_polish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of uprawnienia
-- ----------------------------
INSERT INTO `uprawnienia` VALUES (1, 'Dostęp do kart pacjentów');
INSERT INTO `uprawnienia` VALUES (10, 'Dostęp do ustawień systemu');
INSERT INTO `uprawnienia` VALUES (8, 'Generowanie raportów');
INSERT INTO `uprawnienia` VALUES (6, 'Podgląd wyników badań');
INSERT INTO `uprawnienia` VALUES (4, 'Rejestracja pacjentów');
INSERT INTO `uprawnienia` VALUES (5, 'Wypisywanie recept');
INSERT INTO `uprawnienia` VALUES (3, 'Zarządzanie grafikiem pracy');
INSERT INTO `uprawnienia` VALUES (7, 'Zarządzanie personelem');
INSERT INTO `uprawnienia` VALUES (9, 'Zarządzanie sprzętem medycznym');
INSERT INTO `uprawnienia` VALUES (2, 'Zlecanie badań');

-- ----------------------------
-- Table structure for uzytkownicy
-- ----------------------------
DROP TABLE IF EXISTS `uzytkownicy`;
CREATE TABLE `uzytkownicy`  (
  `uzytkownik_id` int(11) NOT NULL AUTO_INCREMENT,
  `imie` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci NOT NULL,
  `nazwisko` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci NOT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci NOT NULL,
  `haslo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci NOT NULL,
  `data_utworzenia` datetime NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`uzytkownik_id`) USING BTREE,
  UNIQUE INDEX `email`(`email` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_polish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of uzytkownicy
-- ----------------------------
INSERT INTO `uzytkownicy` VALUES (1, 'Jan', 'Kowalski', 'jan.kowalski@szpital.com', 'haslo123', '2024-12-05 20:32:08');
INSERT INTO `uzytkownicy` VALUES (2, 'Anna', 'Nowak', 'anna.nowak@szpital.com', 'haslo123', '2024-12-05 20:32:08');
INSERT INTO `uzytkownicy` VALUES (3, 'Piotr', 'Wiśniewski', 'piotr.wisniewski@szpital.com', 'haslo123', '2024-12-05 20:32:08');
INSERT INTO `uzytkownicy` VALUES (4, 'Ewa', 'Kamińska', 'ewa.kaminska@szpital.com', 'haslo123', '2024-12-05 20:32:08');
INSERT INTO `uzytkownicy` VALUES (5, 'Kamil', 'Zieliński', 'kamil.zielinski@szpital.com', 'haslo123', '2024-12-05 20:32:08');
INSERT INTO `uzytkownicy` VALUES (6, 'Monika', 'Szymańska', 'monika.szymanska@szpital.com', 'haslo123', '2024-12-05 20:32:08');
INSERT INTO `uzytkownicy` VALUES (7, 'Tomasz', 'Woźniak', 'tomasz.wozniak@szpital.com', 'haslo123', '2024-12-05 20:32:08');
INSERT INTO `uzytkownicy` VALUES (8, 'Katarzyna', 'Kowalczyk', 'katarzyna.kowalczyk@szpital.com', 'haslo123', '2024-12-05 20:32:08');
INSERT INTO `uzytkownicy` VALUES (9, 'Łukasz', 'Jankowski', 'lukasz.jankowski@szpital.com', 'haslo123', '2024-12-05 20:32:08');
INSERT INTO `uzytkownicy` VALUES (10, 'Magdalena', 'Wojciechowska', 'magdalena.wojciechowska@szpital.com', 'haslo123', '2024-12-05 20:32:08');

-- ----------------------------
-- Table structure for uzytkownicy_role
-- ----------------------------
DROP TABLE IF EXISTS `uzytkownicy_role`;
CREATE TABLE `uzytkownicy_role`  (
  `uzytkownik_id` int(11) NOT NULL,
  `rola_id` int(11) NOT NULL,
  PRIMARY KEY (`uzytkownik_id`, `rola_id`) USING BTREE,
  INDEX `rola_id`(`rola_id` ASC) USING BTREE,
  CONSTRAINT `uzytkownicy_role_ibfk_1` FOREIGN KEY (`uzytkownik_id`) REFERENCES `uzytkownicy` (`uzytkownik_id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `uzytkownicy_role_ibfk_2` FOREIGN KEY (`rola_id`) REFERENCES `role` (`rola_id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_polish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of uzytkownicy_role
-- ----------------------------
INSERT INTO `uzytkownicy_role` VALUES (3, 11);
INSERT INTO `uzytkownicy_role` VALUES (7, 11);
INSERT INTO `uzytkownicy_role` VALUES (2, 12);
INSERT INTO `uzytkownicy_role` VALUES (4, 12);
INSERT INTO `uzytkownicy_role` VALUES (1, 13);
INSERT INTO `uzytkownicy_role` VALUES (6, 13);
INSERT INTO `uzytkownicy_role` VALUES (8, 14);
INSERT INTO `uzytkownicy_role` VALUES (5, 16);
INSERT INTO `uzytkownicy_role` VALUES (9, 17);

-- ----------------------------
-- Table structure for wizyta
-- ----------------------------
DROP TABLE IF EXISTS `wizyta`;
CREATE TABLE `wizyta`  (
  `wizyta_id` int(11) NOT NULL AUTO_INCREMENT,
  `data_wizyty` datetime NOT NULL,
  `id_pracownika` smallint(5) NOT NULL,
  `pacjent_id` smallint(5) UNSIGNED NOT NULL,
  `platnosc_id` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`wizyta_id`) USING BTREE,
  INDEX `pacjent_id`(`pacjent_id` ASC) USING BTREE,
  INDEX `platnosc_id`(`platnosc_id` ASC) USING BTREE,
  INDEX `wizyta_ibfk_1`(`id_pracownika` ASC) USING BTREE,
  CONSTRAINT `wizyta_ibfk_1` FOREIGN KEY (`id_pracownika`) REFERENCES `pracownik` (`id_pracownika`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `wizyta_ibfk_2` FOREIGN KEY (`pacjent_id`) REFERENCES `pacjent` (`pacjent_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `wizyta_ibfk_3` FOREIGN KEY (`platnosc_id`) REFERENCES `platnosc` (`platnosc_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 68 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wizyta
-- ----------------------------
INSERT INTO `wizyta` VALUES (1, '2024-12-01 10:00:00', 1, 1, 1);
INSERT INTO `wizyta` VALUES (2, '2024-12-01 11:00:00', 2, 2, 2);
INSERT INTO `wizyta` VALUES (3, '2024-12-01 12:00:00', 3, 3, 3);
INSERT INTO `wizyta` VALUES (4, '2024-12-01 13:00:00', 4, 4, 4);
INSERT INTO `wizyta` VALUES (5, '2024-12-01 14:00:00', 5, 5, 5);
INSERT INTO `wizyta` VALUES (6, '2024-12-01 15:00:00', 6, 6, 6);
INSERT INTO `wizyta` VALUES (7, '2024-12-01 16:00:00', 7, 7, 7);
INSERT INTO `wizyta` VALUES (8, '2024-12-01 17:00:00', 8, 8, 8);
INSERT INTO `wizyta` VALUES (9, '2024-12-01 18:00:00', 9, 9, 9);
INSERT INTO `wizyta` VALUES (10, '2024-12-01 19:00:00', 10, 10, 10);
INSERT INTO `wizyta` VALUES (11, '2024-12-02 10:00:00', 1, 11, 11);
INSERT INTO `wizyta` VALUES (12, '2024-12-02 11:00:00', 2, 12, 12);
INSERT INTO `wizyta` VALUES (13, '2024-12-02 12:00:00', 3, 13, 13);
INSERT INTO `wizyta` VALUES (14, '2024-12-02 13:00:00', 4, 14, 14);
INSERT INTO `wizyta` VALUES (15, '2024-12-02 14:00:00', 5, 15, 15);
INSERT INTO `wizyta` VALUES (16, '2024-12-02 15:00:00', 6, 16, 16);
INSERT INTO `wizyta` VALUES (17, '2024-12-02 16:00:00', 7, 17, 17);
INSERT INTO `wizyta` VALUES (18, '2024-12-02 17:00:00', 8, 18, 18);
INSERT INTO `wizyta` VALUES (19, '2024-12-02 18:00:00', 9, 19, 19);
INSERT INTO `wizyta` VALUES (20, '2024-12-02 19:00:00', 10, 20, 20);
INSERT INTO `wizyta` VALUES (54, '2025-01-15 10:00:00', 3, 5, 36);
INSERT INTO `wizyta` VALUES (57, '2025-02-02 12:00:00', 9, 11, 39);
INSERT INTO `wizyta` VALUES (58, '2025-01-15 11:00:00', 3, 5, 40);
INSERT INTO `wizyta` VALUES (60, '2025-02-02 13:00:00', 10, 11, 42);
INSERT INTO `wizyta` VALUES (62, '2025-02-02 14:00:00', 9, 11, 44);
INSERT INTO `wizyta` VALUES (63, '2025-02-02 15:00:00', 9, 11, 45);
INSERT INTO `wizyta` VALUES (65, '2026-01-01 10:00:00', 20, 12, 47);
INSERT INTO `wizyta` VALUES (66, '2025-01-10 18:30:00', 1, 1, 48);
INSERT INTO `wizyta` VALUES (67, '2025-01-08 18:30:00', 1, 12, 49);

-- ----------------------------
-- View structure for widok_grafiku_pracownikow
-- ----------------------------
DROP VIEW IF EXISTS `widok_grafiku_pracownikow`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `widok_grafiku_pracownikow` AS select `p`.`id_pracownika` AS `id_pracownika`,`p`.`imie` AS `imie`,`p`.`nazwisko` AS `nazwisko`,`p`.`typ_pracownika` AS `typ_pracownika`,`g`.`grafik_id` AS `grafik_id`,`g`.`data_rozpoczecia_pracy` AS `data_rozpoczecia_pracy`,`g`.`data_zakonczenia_pracy` AS `data_zakonczenia_pracy`,`g`.`uwagi` AS `uwagi` from (`pracownik` `p` join `grafik` `g` on(`p`.`id_pracownika` = `g`.`id_pracownika`));

-- ----------------------------
-- View structure for widok_lekarzy_specjalizacje
-- ----------------------------
DROP VIEW IF EXISTS `widok_lekarzy_specjalizacje`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `widok_lekarzy_specjalizacje` AS select `d`.`id_pracownika` AS `id_pracownika`,`p`.`imie` AS `imie`,`p`.`nazwisko` AS `nazwisko`,`d`.`numer_licencji` AS `numer_licencji`,group_concat(`s`.`specjalizacja` separator ', ') AS `specjalizacje` from (((`doktorzy` `d` join `pracownik` `p` on(`d`.`id_pracownika` = `p`.`id_pracownika`)) join `doktor_specjalizacja` `ds` on(`d`.`id_pracownika` = `ds`.`id_pracownika`)) join `specjalizacja` `s` on(`ds`.`specjalizacja_id` = `s`.`specjalizacja_id`)) group by `d`.`id_pracownika`;

-- ----------------------------
-- View structure for widok_pacjentow_aktualnie_hospitalizowanych
-- ----------------------------
DROP VIEW IF EXISTS `widok_pacjentow_aktualnie_hospitalizowanych`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `widok_pacjentow_aktualnie_hospitalizowanych` AS select `p`.`pacjent_id` AS `pacjent_id`,`p`.`imie` AS `imie`,`p`.`nazwisko` AS `nazwisko`,`h`.`id_hospitalizacja` AS `id_hospitalizacja`,`h`.`data_rozpoczecia` AS `data_rozpoczecia`,`s`.`nr_sali` AS `nr_sali`,`o`.`nazwa_oddzialu` AS `nazwa_oddzialu` from (((`pacjent` `p` join `hospitalizacja` `h` on(`p`.`pacjent_id` = `h`.`pacjent_id`)) join `sala` `s` on(`h`.`id_sali` = `s`.`id_sali`)) join `oddzial` `o` on(`s`.`oddzial_id` = `o`.`oddzial_id`)) where `h`.`data_zakonczenia` is null;

-- ----------------------------
-- View structure for widok_platnosci_pacjentow
-- ----------------------------
DROP VIEW IF EXISTS `widok_platnosci_pacjentow`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `widok_platnosci_pacjentow` AS select `p`.`pacjent_id` AS `pacjent_id`,`p`.`imie` AS `imie`,`p`.`nazwisko` AS `nazwisko`,'Hospitalizacja' AS `typ_uslugi`,`h`.`id_hospitalizacja` AS `id_uslugi`,`h`.`data_rozpoczecia` AS `data_uslugi`,`pl`.`sposob_platnosci` AS `sposob_platnosci`,`pl`.`kwota_netto` AS `kwota_netto`,`pl`.`kwota_brutto` AS `kwota_brutto` from ((`pacjent` `p` join `hospitalizacja` `h` on(`p`.`pacjent_id` = `h`.`pacjent_id`)) join `platnosc` `pl` on(`h`.`platnosc_id` = `pl`.`platnosc_id`)) union all select `p`.`pacjent_id` AS `pacjent_id`,`p`.`imie` AS `imie`,`p`.`nazwisko` AS `nazwisko`,'Wizyta' AS `typ_uslugi`,`w`.`wizyta_id` AS `id_uslugi`,`w`.`data_wizyty` AS `data_uslugi`,`pl`.`sposob_platnosci` AS `sposob_platnosci`,`pl`.`kwota_netto` AS `kwota_netto`,`pl`.`kwota_brutto` AS `kwota_brutto` from ((`pacjent` `p` join `wizyta` `w` on(`p`.`pacjent_id` = `w`.`pacjent_id`)) join `platnosc` `pl` on(`w`.`platnosc_id` = `pl`.`platnosc_id`));

-- ----------------------------
-- View structure for widok_uzytkownicy_wiele_rol_uprawnienia
-- ----------------------------
DROP VIEW IF EXISTS `widok_uzytkownicy_wiele_rol_uprawnienia`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `widok_uzytkownicy_wiele_rol_uprawnienia` AS select `u`.`uzytkownik_id` AS `uzytkownik_id`,concat(`u`.`imie`,' ',`u`.`nazwisko`) AS `imie_nazwisko`,`u`.`email` AS `email`,group_concat(distinct `r`.`nazwa_rola` order by `r`.`nazwa_rola` ASC separator ', ') AS `role`,group_concat(distinct `up`.`nazwa_uprawnienia` order by `up`.`nazwa_uprawnienia` ASC separator ', ') AS `uprawnienia` from ((((`uzytkownicy` `u` join `uzytkownicy_role` `ur` on(`u`.`uzytkownik_id` = `ur`.`uzytkownik_id`)) join `role` `r` on(`ur`.`rola_id` = `r`.`rola_id`)) join `role_uprawnienia` `ru` on(`r`.`rola_id` = `ru`.`rola_id`)) join `uprawnienia` `up` on(`ru`.`uprawnienie_id` = `up`.`uprawnienie_id`)) group by `u`.`uzytkownik_id`;

-- ----------------------------
-- Procedure structure for DodajWizyte
-- ----------------------------
DROP PROCEDURE IF EXISTS `DodajWizyte`;
delimiter ;;
CREATE DEFINER=`projekt_user1`@`%` PROCEDURE `DodajWizyte`(
    IN param_pacjent_id INT,
    IN param_id_pracownika INT,
    IN param_data_wizyty DATETIME
)
BEGIN
    SET TRANSACTION ISOLATION LEVEL REPEATABLE READ;
    -- Rozpoczęcie transakcji
    START TRANSACTION;
    IF param_data_wizyty < NOW() THEN
        ROLLBACK;
        SIGNAL SQLSTATE '45000' 
        SET MESSAGE_TEXT = 'Nie można dodać wizyty w przeszłości';
    END IF;
    -- Sprawdzenie, czy pacjent istnieje
    IF NOT EXISTS (SELECT 1 FROM pacjent WHERE pacjent_id = param_pacjent_id) THEN
        ROLLBACK;
        SIGNAL SQLSTATE '45000' 
        SET MESSAGE_TEXT = 'Pacjent o podanym ID nie istnieje';
    END IF;

    -- Sprawdzenie, czy pracownik istnieje
    IF NOT EXISTS (SELECT 1 FROM pracownik WHERE id_pracownika = param_id_pracownika) THEN
        ROLLBACK;
        SIGNAL SQLSTATE '45000' 
        SET MESSAGE_TEXT = 'Pracownik o podanym ID nie istnieje';
    END IF;

    -- Sprawdzenie, czy istnieje wizyta na tę samą godzinę
    IF EXISTS (SELECT 1 
               FROM wizyta 
               WHERE data_wizyty = param_data_wizyty
               FOR UPDATE
              ) THEN
        ROLLBACK;
        SIGNAL SQLSTATE '45000' 
        SET MESSAGE_TEXT = 'Wizyta na tę godzinę już istnieje';
    END IF;

    -- Wstawienie nowej płatności, która automatycznie otrzyma nowe ID
    INSERT INTO platnosc (sposob_platnosci, kwota_netto, kwota_brutto)
    VALUES ('ubezpieczenie', 0.00, 0.00);

    -- Pobranie ID nowej płatności
    SET @new_platnosc_id = LAST_INSERT_ID();

    -- Dodanie wizyty
    INSERT INTO wizyta (pacjent_id, id_pracownika, data_wizyty, platnosc_id) 
    VALUES (param_pacjent_id, param_id_pracownika, param_data_wizyty, @new_platnosc_id);

    -- Zatwierdzenie transakcji
    COMMIT;
END
;;
delimiter ;

-- ----------------------------
-- Function structure for ObliczCzasPracyPracownikaWMiesiacu
-- ----------------------------
DROP FUNCTION IF EXISTS `ObliczCzasPracyPracownikaWMiesiacu`;
delimiter ;;
CREATE DEFINER=`projekt_user1`@`%` FUNCTION `ObliczCzasPracyPracownikaWMiesiacu`(pracownik_id INT,
    miesiac INT,
    rok INT
) RETURNS decimal(10,2)
BEGIN
    DECLARE calkowity_czas DECIMAL(10, 2);

    -- Obliczamy sumę godzin pracy na podstawie różnicy dat rozpoczęcia i zakończenia w danym miesiącu i roku
    SELECT 
        IFNULL(SUM(TIMESTAMPDIFF(MINUTE, data_rozpoczecia_pracy, data_zakonczenia_pracy)) / 60, 0)
    INTO 
        calkowity_czas
    FROM 
        grafik
    WHERE 
        id_pracownika = pracownik_id
        AND MONTH(data_rozpoczecia_pracy) = miesiac
        AND YEAR(data_rozpoczecia_pracy) = rok;

    -- Zwracamy wynik
    RETURN calkowity_czas;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for PobierzGrafikPracownika
-- ----------------------------
DROP PROCEDURE IF EXISTS `PobierzGrafikPracownika`;
delimiter ;;
CREATE DEFINER=`projekt_user1`@`%` PROCEDURE `PobierzGrafikPracownika`(
    IN pracownik_id INT,
    IN miesiac INT,
    IN rok INT
)
BEGIN
    SELECT 
        CONCAT(p.imie, ' ', p.nazwisko) AS pracownik,
        g.data_rozpoczecia_pracy,
        g.data_zakonczenia_pracy,
        g.uwagi
    FROM 
        pracownik p
    JOIN 
        grafik g ON p.id_pracownika = g.id_pracownika
    WHERE 
        p.id_pracownika = pracownik_id
        AND MONTH(g.data_rozpoczecia_pracy) = miesiac
        AND YEAR(g.data_rozpoczecia_pracy) = rok;
END
;;
delimiter ;

-- ----------------------------
-- Function structure for PobierzHistoriePacjenta
-- ----------------------------
DROP FUNCTION IF EXISTS `PobierzHistoriePacjenta`;
delimiter ;;
CREATE DEFINER=`projekt_user1`@`%` FUNCTION `PobierzHistoriePacjenta`(pacjentID INT) RETURNS longtext CHARSET utf8mb4 COLLATE utf8mb4_bin
BEGIN
    RETURN (
        SELECT JSON_ARRAYAGG(
            JSON_OBJECT(
                'id_historii', id_historii,
                'data_diagnozy', data_diagnozy,
                'nazwa_choroby', nazwa_choroby,
                'leczenie', leczenie,
                'uwagi', uwagi
            )
        )
        FROM historia
        WHERE pacjent_id = pacjentID
    );
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for PobierzPacjentowNaOddziale
-- ----------------------------
DROP PROCEDURE IF EXISTS `PobierzPacjentowNaOddziale`;
delimiter ;;
CREATE DEFINER=`projekt_user1`@`%` PROCEDURE `PobierzPacjentowNaOddziale`(
    IN p_oddzial_id TINYINT UNSIGNED
)
BEGIN
    SELECT 
        p.pacjent_id,
        p.imie,
        p.nazwisko,
        s.nr_sali,
        h.data_rozpoczecia,
        h.data_zakonczenia
    FROM 
        pacjent p
        JOIN hospitalizacja h ON p.pacjent_id = h.pacjent_id
        JOIN sala s ON h.id_sali = s.id_sali
    WHERE 
        s.oddzial_id = p_oddzial_id AND
        h.data_zakonczenia IS NULL;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for ZwrocHistoriePacjenta
-- ----------------------------
DROP PROCEDURE IF EXISTS `ZwrocHistoriePacjenta`;
delimiter ;;
CREATE DEFINER=`projekt_user1`@`%` PROCEDURE `ZwrocHistoriePacjenta`(IN pacjentID INT)
BEGIN
    SELECT 
        h.id_historii,
        h.data_diagnozy,
        h.nazwa_choroby,
        h.leczenie,
        h.uwagi
    FROM 
        historia h
    WHERE 
        h.pacjent_id = pacjentID;
END
;;
delimiter ;

-- ----------------------------
-- Event structure for dodaj_partycje_na_nowy_rok
-- ----------------------------
DROP EVENT IF EXISTS `dodaj_partycje_na_nowy_rok`;
delimiter ;;
CREATE EVENT `dodaj_partycje_na_nowy_rok`
ON SCHEDULE
EVERY '1' MONTH STARTS '2025-01-17 17:44:18'
DO BEGIN
    DECLARE rok_biezacy INT;
    DECLARE rok_nastepny INT;

    SET rok_biezacy = YEAR(CURDATE());
    SET rok_nastepny = rok_biezacy + 1;

    IF NOT EXISTS (
        SELECT 1
        FROM INFORMATION_SCHEMA.PARTITIONS
        WHERE TABLE_SCHEMA = 'projekt_trzupek_wawrzenczyk_wojtasz'
          AND TABLE_NAME   = 'historia_logowania'
          AND PARTITION_NAME = CONCAT('p', rok_nastepny)
    )
    THEN
        SET @sql = CONCAT(
            'ALTER TABLE projekt_trzupek_wawrzenczyk_wojtasz.historia_logowania ',
            'ADD PARTITION (PARTITION p', rok_nastepny, 
            ' VALUES LESS THAN (', rok_nastepny + 1, '))'
        );
        PREPARE stmt FROM @sql;
        EXECUTE stmt;
        DEALLOCATE PREPARE stmt;
    END IF;
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table grafik
-- ----------------------------
DROP TRIGGER IF EXISTS `grafik_before_insert`;
delimiter ;;
CREATE TRIGGER `grafik_before_insert` BEFORE INSERT ON `grafik` FOR EACH ROW BEGIN
    -- Sprawdzenie, czy data rozpoczęcia pracy nie jest w przeszłości
    IF NEW.data_rozpoczecia_pracy < NOW() THEN
        SIGNAL SQLSTATE '45000' 
            SET MESSAGE_TEXT = 'Data rozpoczęcia pracy nie może być w przeszłości.';
    END IF;
    
    -- Sprawdzenie, czy data zakończenia pracy jest późniejsza niż data rozpoczęcia pracy
    IF NEW.data_zakonczenia_pracy <= NEW.data_rozpoczecia_pracy THEN
        SIGNAL SQLSTATE '45000' 
            SET MESSAGE_TEXT = 'Data zakończenia pracy musi być późniejsza niż data rozpoczęcia pracy.';
    END IF;
    
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table grafik
-- ----------------------------
DROP TRIGGER IF EXISTS `grafik_before_update`;
delimiter ;;
CREATE TRIGGER `grafik_before_update` BEFORE UPDATE ON `grafik` FOR EACH ROW BEGIN
    -- Sprawdzenie, czy data rozpoczęcia pracy nie jest w przeszłości
    IF NEW.data_rozpoczecia_pracy < NOW() THEN
        SIGNAL SQLSTATE '45000' 
            SET MESSAGE_TEXT = 'Data rozpoczęcia pracy nie może być w przeszłości.';
    END IF;
    

    
    -- Sprawdzenie, czy data zakończenia pracy jest późniejsza niż data rozpoczęcia pracy
    IF NEW.data_zakonczenia_pracy <= NEW.data_rozpoczecia_pracy THEN
        SIGNAL SQLSTATE '45000' 
            SET MESSAGE_TEXT = 'Data zakończenia pracy musi być późniejsza niż data rozpoczęcia pracy.';
    END IF;
    

END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table historia_logowania
-- ----------------------------
DROP TRIGGER IF EXISTS `before_insert_historia_logowania`;
delimiter ;;
CREATE TRIGGER `before_insert_historia_logowania` BEFORE INSERT ON `historia_logowania` FOR EACH ROW BEGIN
    -- Sprawdź, czy istnieje użytkownik o danym ID
    IF (
        SELECT COUNT(*) 
        FROM uzytkownicy
        WHERE uzytkownik_id = NEW.uzytkownik_id
    ) = 0 THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Błąd: taki użytkownik nie istnieje w tabeli uzytkownicy!';
    END IF;
END
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
