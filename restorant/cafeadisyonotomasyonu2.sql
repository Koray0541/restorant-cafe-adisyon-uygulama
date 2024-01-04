DROP TABLE IF EXISTS `garson`;
CREATE TABLE `garson`  (
  `garsonid` int(11) NOT NULL AUTO_INCREMENT,
  `gadi` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `gsoyadi` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `gsubeid` int(11) NULL DEFAULT NULL,
  `gdurum` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `gsifre` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`garsonid`) USING BTREE,
  FULLTEXT INDEX `asa`(`gadi`, `gsoyadi`)
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of garson
-- ----------------------------
INSERT INTO `garson` VALUES (1, 'Ali', 'dursun', 1, 'pasif', NULL);
INSERT INTO `garson` VALUES (2, 'mehmet', 'can', 0, 'pasif', NULL);
INSERT INTO `garson` VALUES (3, 'veli', 'kaya', 0, 'pasif', NULL);
INSERT INTO `garson` VALUES (4, 'umut', 'gümüş', 0, 'aktif', '1');
INSERT INTO `garson` VALUES (5, 'ayşe', 'melih', 0, 'pasif', '123');
INSERT INTO `garson` VALUES (6, 'koray', 'kaya', 0, 'aktif', '123');

-- ----------------------------
-- Table structure for gorev
-- ----------------------------
DROP TABLE IF EXISTS `gorev`;
CREATE TABLE `gorev`  (
  `gorevid` int(11) NOT NULL AUTO_INCREMENT,
  `gorevadi` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`gorevid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of gorev
-- ----------------------------
INSERT INTO `gorev` VALUES (1, 'garson');
INSERT INTO `gorev` VALUES (2, 'asci');
INSERT INTO `gorev` VALUES (3, 'mudur');

-- ----------------------------
-- Table structure for kategori
-- ----------------------------
DROP TABLE IF EXISTS `kategori`;
CREATE TABLE `kategori`  (
  `katid` int(11) NOT NULL AUTO_INCREMENT,
  `kadi` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`katid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of kategori
-- ----------------------------
INSERT INTO `kategori` VALUES (1, 'seçiniz');
INSERT INTO `kategori` VALUES (2, 'Çorba');
INSERT INTO `kategori` VALUES (3, 'Et Yemekleri');
INSERT INTO `kategori` VALUES (4, 'Tavuk Yemekleri');
INSERT INTO `kategori` VALUES (5, 'Balık Çeşitleri');
INSERT INTO `kategori` VALUES (6, 'Hamur İşleri');
INSERT INTO `kategori` VALUES (7, 'Kahvaltı Çeşitleri');
INSERT INTO `kategori` VALUES (8, 'Soğuk İçecekler');
INSERT INTO `kategori` VALUES (9, 'Sıcak İçecekler');
INSERT INTO `kategori` VALUES (10, 'Tatlılar');

DROP TABLE IF EXISTS `yemek`;
CREATE TABLE `yemek`  (
  `yemekid` int(11) NOT NULL AUTO_INCREMENT,
  `yadi` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `ykatid` int(11) NULL DEFAULT NULL,
  `maliyet` float(32, 0) NULL DEFAULT NULL,
  `satisFiyati` float(32, 0) NULL DEFAULT NULL,
  `aciklama` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `resim` varchar(500) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`yemekid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 87 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of yemek
-- ----------------------------
INSERT INTO `yemek` VALUES (1, 'seçiniz', 0, 0, 0, '0', NULL);
INSERT INTO `yemek` VALUES (2, 'Ezogelin Çorbası', 2, 2, 5, 'sıcak içecek', NULL);
INSERT INTO `yemek` VALUES (3, 'Domates Çorbası', 2, 2, 4, 'sıcak içecek', NULL);
INSERT INTO `yemek` VALUES (4, 'Mercimek Çorbası', 2, 2, 5, 'sıcak içecek', NULL);
INSERT INTO `yemek` VALUES (5, 'İşkembe', 2, 3, 8, 'sıcak içecek', NULL);
INSERT INTO `yemek` VALUES (6, 'Kuzu Haşlama', 3, 10, 16, 'et yemeği', NULL);
INSERT INTO `yemek` VALUES (7, 'Kavurma', 3, 10, 14, 'et yemeği', NULL);
INSERT INTO `yemek` VALUES (8, 'Çoban Kavurma', 3, 10, 14, 'et yemeği', NULL);
INSERT INTO `yemek` VALUES (9, 'Dana Rosto', 3, 10, 14, 'et yemeği', NULL);
INSERT INTO `yemek` VALUES (10, 'Kuzu Tandır', 3, 10, 18, 'et yemeği', NULL);
INSERT INTO `yemek` VALUES (11, 'Fırında Kuzu Kızartma', 3, 10, 16, 'et yemeği', NULL);
INSERT INTO `yemek` VALUES (12, 'Et Sote', 3, 10, 14, 'et yemeği', NULL);
INSERT INTO `yemek` VALUES (13, 'Tas Kebabı', 3, 10, 14, 'et yemeği', NULL);
INSERT INTO `yemek` VALUES (14, 'Testi Kebabı', 3, 10, 15, 'et yemeği', NULL);
INSERT INTO `yemek` VALUES (15, 'Kuzu KaburgA', 3, 10, 15, 'et yemeği', NULL);
INSERT INTO `yemek` VALUES (16, 'Hünkar Beğendi', 3, 10, 16, 'et yemeği', NULL);
INSERT INTO `yemek` VALUES (17, 'Rosto Köfte', 3, 5, 11, 'et yemeği', NULL);
INSERT INTO `yemek` VALUES (18, 'İzmir Köfte', 3, 5, 11, 'et yemeği', NULL);
INSERT INTO `yemek` VALUES (19, 'Sebzeli Köfte', 3, 5, 11, 'et yemeği', NULL);
INSERT INTO `yemek` VALUES (20, 'Kadın Budu Köfte', 3, 5, 11, 'et yemeği', NULL);
INSERT INTO `yemek` VALUES (21, 'Ekşili Köfte', 3, 5, 11, 'et yemeği', NULL);
INSERT INTO `yemek` VALUES (22, 'Arnavut Ciğeri', 3, 5, 13, 'ciğer', NULL);
INSERT INTO `yemek` VALUES (23, 'Tavuk Sote', 4, 3, 10, 'tavuk yemeği', NULL);
INSERT INTO `yemek` VALUES (24, 'Tavuk Pirzola', 4, 3, 10, 'tavuk yemeği', NULL);
INSERT INTO `yemek` VALUES (25, 'Tavuk Sac Tava', 4, 3, 10, 'tavuk yemeği', NULL);
INSERT INTO `yemek` VALUES (26, 'Kuru Fasulye', 3, 2, 8, 'et yemeği', NULL);
INSERT INTO `yemek` VALUES (27, 'Patlıcanlı Fırın Kebabı', 3, 5, 12, 'et yemeği', NULL);
INSERT INTO `yemek` VALUES (28, 'Kağıt Kebabı', 3, 3, 11, 'et yemeği', NULL);
INSERT INTO `yemek` VALUES (29, 'Orman Kebabı', 3, 5, 13, 'et yemeği', NULL);
INSERT INTO `yemek` VALUES (30, 'İslim Kebabı', 3, 5, 14, 'et yemeği', NULL);
INSERT INTO `yemek` VALUES (31, 'Güveç', 3, 5, 13, 'et yemeği', NULL);
INSERT INTO `yemek` VALUES (32, 'Karnıyarık', 3, 3, 10, 'et yemeği', NULL);
INSERT INTO `yemek` VALUES (33, 'Kiremit Köfte', 3, 5, 16, 'et yemeği', NULL);
INSERT INTO `yemek` VALUES (34, 'İskender', 11, 5, 16, 'döner', NULL);
INSERT INTO `yemek` VALUES (35, 'Pilavüstü Döner', 11, 5, 16, 'döner', NULL);
INSERT INTO `yemek` VALUES (36, 'Dürüm Döner', 11, 3, 11, 'döner', NULL);
INSERT INTO `yemek` VALUES (37, 'Ala Balık Izgara', 5, 5, 20, 'balık', NULL);
INSERT INTO `yemek` VALUES (38, 'Levrek Izgara', 5, 5, 20, 'balık', NULL);
INSERT INTO `yemek` VALUES (39, 'Çipura Izgara', 5, 5, 20, 'balık', NULL);
INSERT INTO `yemek` VALUES (40, 'Somon Izgara', 5, 5, 20, 'balık', NULL);
INSERT INTO `yemek` VALUES (41, 'Hamsi Tava', 5, 5, 20, 'balık', NULL);
INSERT INTO `yemek` VALUES (42, 'Mezgit Tava', 5, 5, 20, 'balık', NULL);
INSERT INTO `yemek` VALUES (43, 'Kavurmalı Pide', 12, 5, 16, 'pide çeşitleri', NULL);
INSERT INTO `yemek` VALUES (44, 'Kuşbaşılı Pide', 12, 5, 16, 'pide çeşitleri', NULL);
INSERT INTO `yemek` VALUES (45, 'Karışık Pide', 12, 5, 17, 'pide çeşitleri', NULL);
INSERT INTO `yemek` VALUES (46, 'Kıymalı Pide', 12, 5, 13, 'pide çeşitleri', NULL);
INSERT INTO `yemek` VALUES (47, 'Sucuklu Pide', 12, 5, 14, 'pide çeşitleri', NULL);
INSERT INTO `yemek` VALUES (48, 'Kaşarlı Pide', 12, 5, 12, 'pide çeşitleri', NULL);
INSERT INTO `yemek` VALUES (49, 'Lahmacun', 12, 1, 3, 'pide çeşitleri', NULL);
INSERT INTO `yemek` VALUES (50, 'Serpme Kahvaltı', 7, 5, 18, 'kahvaltı', 'src/rsm/serpme.png');
INSERT INTO `yemek` VALUES (51, 'Sahanda Yumurta', 7, 1, 6, 'kahvaltı', NULL);
INSERT INTO `yemek` VALUES (52, 'Sucuklu Yumurta', 7, 1, 8, 'kahvaltı', NULL);
INSERT INTO `yemek` VALUES (53, 'Kavurmalı Yumurta', 7, 2, 9, 'kahvaltı', NULL);
INSERT INTO `yemek` VALUES (54, 'Pastırmalı Yumurta', 7, 3, 9, 'kahvaltı', NULL);
INSERT INTO `yemek` VALUES (55, 'Menemen', 7, 1, 6, 'kahvaltı', NULL);
INSERT INTO `yemek` VALUES (56, 'Kaşarlı Menemen', 7, 1, 7, 'kahvaltı', NULL);
INSERT INTO `yemek` VALUES (57, 'Paçanga Böreği', 6, 2, 7, 'hamur işleri', NULL);
INSERT INTO `yemek` VALUES (58, 'Sigara Böreği', 6, 1, 6, 'hamur işleri', NULL);
INSERT INTO `yemek` VALUES (59, 'Patates Kızartması', 7, 1, 6, 'kahvaltı', NULL);
INSERT INTO `yemek` VALUES (60, 'Muhlama', 7, 2, 10, 'kahvaltı', NULL);
INSERT INTO `yemek` VALUES (61, 'Çoban Salata', 13, 1, 8, 'salatalar', NULL);
INSERT INTO `yemek` VALUES (62, 'Kaşık Salata', 13, 1, 8, 'salatalar', NULL);
INSERT INTO `yemek` VALUES (63, 'Mevsim Salata', 13, 1, 8, 'salatalar', NULL);
INSERT INTO `yemek` VALUES (64, 'Sezar Salata ', 13, 3, 15, 'salatalar', NULL);
INSERT INTO `yemek` VALUES (65, 'Su Böreği', 6, 2, 8, 'hamur işleri', NULL);
INSERT INTO `yemek` VALUES (66, 'Sigara Böreği', 6, 2, 8, 'hamur işleri', NULL);
INSERT INTO `yemek` VALUES (67, 'Çay', 9, 1, 3, 'sıcak içecekler', 'src/img/tea-100x100.png');
INSERT INTO `yemek` VALUES (68, 'Türk Kahvesi', 9, 1, 8, 'sıcak içecekler', NULL);
INSERT INTO `yemek` VALUES (69, 'Gazlı İçecekler', 8, 1, 3, 'soğuk içecekler', NULL);
INSERT INTO `yemek` VALUES (70, 'Maden Suyu', 8, 1, 2, 'soğuk içecekler', NULL);
INSERT INTO `yemek` VALUES (71, 'Şalgam', 8, 1, 2, 'soğuk içecekler', NULL);
INSERT INTO `yemek` VALUES (72, 'Ayran', 8, 1, 3, 'soğuk içecekler', NULL);
INSERT INTO `yemek` VALUES (73, 'Cevizli Burma Kadayıf', 10, 3, 16, 'tatlılar', NULL);
INSERT INTO `yemek` VALUES (74, 'Fıstıklı Burma Kadayıf', 10, 4, 18, 'tatlılar', NULL);
INSERT INTO `yemek` VALUES (75, 'Cevizli Baklava', 10, 3, 15, 'tatlılar', NULL);
INSERT INTO `yemek` VALUES (76, 'Fıstıklı Baklava', 10, 4, 18, 'tatlılar', NULL);
INSERT INTO `yemek` VALUES (77, 'Künefe', 10, 2, 12, 'tatlılar', NULL);
INSERT INTO `yemek` VALUES (78, 'Supangle', 10, 2, 8, 'tatlılar', NULL);
INSERT INTO `yemek` VALUES (79, 'Profiterol', 10, 2, 8, 'tatlılar', NULL);
INSERT INTO `yemek` VALUES (80, 'Fırın Sütlaç', 10, 2, 8, 'tatlılar', NULL);
INSERT INTO `yemek` VALUES (81, 'Kazandibi', 10, 2, 8, 'tatlılar', NULL);
INSERT INTO `yemek` VALUES (82, 'Güllaç', 10, 2, 8, 'tatlılar', NULL);
-- ----------------------------
-- Procedure structure for bul
-- ----------------------------
DROP PROCEDURE IF EXISTS `bul`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `bul`(IN `ara` varchar(255))
BEGIN
	SELECT pid,tc,ad,soyad from garson
WHERE garson.gadi
LIKE CONCAT('%',ara,'%')
or garson.gsoyadi LIKE CONCAT('%',ara,'%');

END
;;
delimiter ;
  

----  yemek tablosuna yeni bir stun id ---
ALTER TABLE yemek
ADD COLUMN id INT AUTO_INCREMENT PRIMARY KEY FIRST;
----mevcut yemekleri id cevirme ---
UPDATE yemek
SET id = (SELECT MAX(id) + 1 FROM yemek);


--  -----------------------------
--  yemekleri listele
---------------------------------
DROP PROCEDURE IF EXISTS `yemekleriListele`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `yemekleriListele`(IN `kategoriAdi` varchar(255))
BEGIN
    SELECT * FROM yemek
    WHERE yemek.ykatid = (SELECT katid FROM kategori WHERE kadi = kategoriAdi);
END
;;
delimiter ;

----------------------
--- garson bul
---------------------
DROP PROCEDURE IF EXISTS `garsonlariBul`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `garsonlariBul`(IN `ara` varchar(255))
BEGIN
    SELECT pid, tc, ad, soyad FROM garson
    WHERE garson.gadi LIKE CONCAT('%',ara,'%') OR garson.gsoyadi LIKE CONCAT('%',ara,'%');
END;
;;
DELIMITER ;

-- ----------------------------
-- Görev Güncelleme Prosedürü
-- ----------------------------
DROP PROCEDURE IF EXISTS `gorevGuncelle`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `gorevGuncelle`(IN `garsonID` INT, IN `yeniGorevID` INT)
BEGIN
    -- Garsonun varlığını kontrol et
    IF (SELECT COUNT(*) FROM garson WHERE pid = garsonID) > 0 THEN
        -- Görevi güncelle
        UPDATE garson SET gsubeid = yeniGorevID WHERE pid = garsonID;
        SELECT 'Görev güncelleme başarılı' AS Mesaj;
    ELSE
        SELECT 'Hata: Belirtilen ID ile bir garson bulunamadı' AS Hata;
    END IF;
END;
;;
DELIMITER ;














