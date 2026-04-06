/*
 Navicat Premium Dump SQL

 Source Server         : local3307
 Source Server Type    : MySQL
 Source Server Version : 100432 (10.4.32-MariaDB)
 Source Host           : localhost:3307
 Source Schema         : tower

 Target Server Type    : MySQL
 Target Server Version : 100432 (10.4.32-MariaDB)
 File Encoding         : 65001

 Date: 06/04/2026 12:57:17
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for photo_categories
-- ----------------------------
DROP TABLE IF EXISTS `photo_categories`;
CREATE TABLE `photo_categories`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `section_id` int NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `max_photo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `date_created` datetime NULL DEFAULT NULL,
  `date_modified` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of photo_categories
-- ----------------------------
INSERT INTO `photo_categories` VALUES (1, 1, 'MK ONSITE', '1', NULL, NULL);
INSERT INTO `photo_categories` VALUES (2, 1, 'SKOM', '3', NULL, NULL);
INSERT INTO `photo_categories` VALUES (3, 2, 'PEMBESIAN SITE', '6', NULL, NULL);
INSERT INTO `photo_categories` VALUES (4, 3, 'MK ON SITE', '1', NULL, NULL);
INSERT INTO `photo_categories` VALUES (5, 3, 'PERSIAPAN PENGECORAN', '1', NULL, NULL);
INSERT INTO `photo_categories` VALUES (6, 3, 'PENGECORAN', '6', NULL, NULL);
INSERT INTO `photo_categories` VALUES (7, 4, 'MK ON SITE', '1', NULL, NULL);
INSERT INTO `photo_categories` VALUES (8, 4, 'MATERIAL ON SITE', '2', NULL, NULL);
INSERT INTO `photo_categories` VALUES (9, 4, 'ERECTION', '3', NULL, NULL);
INSERT INTO `photo_categories` VALUES (10, 5, 'FOTO MK', '1', NULL, NULL);
INSERT INTO `photo_categories` VALUES (11, 5, 'SITE VIEW', '1', NULL, NULL);
INSERT INTO `photo_categories` VALUES (12, 5, 'PANEL ACPDB', '1', NULL, NULL);
INSERT INTO `photo_categories` VALUES (13, 5, 'PANEL KWH', '1', NULL, NULL);
INSERT INTO `photo_categories` VALUES (14, 5, 'GROUNDING', '2', NULL, NULL);
INSERT INTO `photo_categories` VALUES (15, 5, 'PENGUKURAN TEGANGAN RS', '1', NULL, NULL);
INSERT INTO `photo_categories` VALUES (16, 5, 'PENGUKURAN TEGANGAN RN', '1', NULL, NULL);
INSERT INTO `photo_categories` VALUES (17, 5, 'PENGUKURAN TEGANGAN RT', '1', NULL, NULL);
INSERT INTO `photo_categories` VALUES (18, 5, 'PENGUKURAN TEGANGAN SN', '1', NULL, NULL);
INSERT INTO `photo_categories` VALUES (19, 5, 'PENGUKURAN TEGANGAN ST', '1', NULL, NULL);
INSERT INTO `photo_categories` VALUES (20, 5, 'PENGUKURAN TEGANGAN TN', '1', NULL, NULL);
INSERT INTO `photo_categories` VALUES (21, 5, 'PENGUKURAN TEGANGAN NG', '1', NULL, NULL);
INSERT INTO `photo_categories` VALUES (22, 5, 'PENGUKURAN TEGANGAN', '7', NULL, NULL);
INSERT INTO `photo_categories` VALUES (23, 5, 'VERTICALITY', '4', NULL, NULL);
INSERT INTO `photo_categories` VALUES (24, 6, 'TEAM WITH APD', '2', NULL, NULL);
INSERT INTO `photo_categories` VALUES (25, 6, 'K3', '2', NULL, NULL);
INSERT INTO `photo_categories` VALUES (26, 6, 'TOOLS', '4', NULL, NULL);
INSERT INTO `photo_categories` VALUES (27, 7, 'MK ON SITE', '1', NULL, NULL);
INSERT INTO `photo_categories` VALUES (28, 7, 'MOS', '3', NULL, NULL);
INSERT INTO `photo_categories` VALUES (29, 8, 'TOWER VIEW', '2', NULL, NULL);
INSERT INTO `photo_categories` VALUES (30, 8, 'PERKUATAN', '10', NULL, NULL);

-- ----------------------------
-- Table structure for photo_category_cells
-- ----------------------------
DROP TABLE IF EXISTS `photo_category_cells`;
CREATE TABLE `photo_category_cells`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `photo_category_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `photo_index` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `cell` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 73 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of photo_category_cells
-- ----------------------------
INSERT INTO `photo_category_cells` VALUES (1, '1', '1', 'A10');
INSERT INTO `photo_category_cells` VALUES (2, '2', '1', 'G10');
INSERT INTO `photo_category_cells` VALUES (3, '2', '2', 'A27');
INSERT INTO `photo_category_cells` VALUES (4, '2', '3', 'G27');
INSERT INTO `photo_category_cells` VALUES (5, '3', '1', 'A10');
INSERT INTO `photo_category_cells` VALUES (6, '3', '2', 'G10');
INSERT INTO `photo_category_cells` VALUES (7, '3', '3', 'A27');
INSERT INTO `photo_category_cells` VALUES (8, '3', '4', 'G27');
INSERT INTO `photo_category_cells` VALUES (9, '3', '5', 'A44');
INSERT INTO `photo_category_cells` VALUES (10, '3', '6', 'G44');
INSERT INTO `photo_category_cells` VALUES (11, '4', '1', 'A10');
INSERT INTO `photo_category_cells` VALUES (12, '5', '1', 'G10');
INSERT INTO `photo_category_cells` VALUES (13, '6', '1', 'A27');
INSERT INTO `photo_category_cells` VALUES (14, '6', '2', 'G27');
INSERT INTO `photo_category_cells` VALUES (15, '6', '3', 'A44');
INSERT INTO `photo_category_cells` VALUES (16, '6', '4', 'G44');
INSERT INTO `photo_category_cells` VALUES (17, '6', '5', 'A59');
INSERT INTO `photo_category_cells` VALUES (18, '6', '6', 'G59');
INSERT INTO `photo_category_cells` VALUES (19, '7', '1', 'A10');
INSERT INTO `photo_category_cells` VALUES (20, '8', '1', 'G10');
INSERT INTO `photo_category_cells` VALUES (21, '8', '2', 'A27');
INSERT INTO `photo_category_cells` VALUES (22, '9', '1', 'G27');
INSERT INTO `photo_category_cells` VALUES (23, '9', '2', 'A43');
INSERT INTO `photo_category_cells` VALUES (24, '9', '3', 'G43');
INSERT INTO `photo_category_cells` VALUES (25, '10', '1', 'A11');
INSERT INTO `photo_category_cells` VALUES (26, '11', '1', 'G11');
INSERT INTO `photo_category_cells` VALUES (27, '12', '1', 'A28');
INSERT INTO `photo_category_cells` VALUES (28, '13', '1', 'G28');
INSERT INTO `photo_category_cells` VALUES (29, '14', '1', 'A45');
INSERT INTO `photo_category_cells` VALUES (30, '14', '2', 'G45');
INSERT INTO `photo_category_cells` VALUES (31, '15', '1', 'A64');
INSERT INTO `photo_category_cells` VALUES (32, '16', '1', 'G64');
INSERT INTO `photo_category_cells` VALUES (33, '17', '1', 'A81');
INSERT INTO `photo_category_cells` VALUES (34, '18', '1', 'G81');
INSERT INTO `photo_category_cells` VALUES (35, '19', '1', 'A98');
INSERT INTO `photo_category_cells` VALUES (36, '20', '1', 'G98');
INSERT INTO `photo_category_cells` VALUES (37, '21', '1', 'A117');
INSERT INTO `photo_category_cells` VALUES (38, '22', '1', 'G117');
INSERT INTO `photo_category_cells` VALUES (39, '22', '2', 'A134');
INSERT INTO `photo_category_cells` VALUES (40, '22', '3', 'G134');
INSERT INTO `photo_category_cells` VALUES (41, '22', '4', 'A151');
INSERT INTO `photo_category_cells` VALUES (42, '22', '5', 'G151');
INSERT INTO `photo_category_cells` VALUES (43, '22', '6', 'A168');
INSERT INTO `photo_category_cells` VALUES (44, '22', '7', 'G168');
INSERT INTO `photo_category_cells` VALUES (45, '23', '1', 'A186');
INSERT INTO `photo_category_cells` VALUES (46, '23', '2', 'G186');
INSERT INTO `photo_category_cells` VALUES (47, '23', '3', 'A203');
INSERT INTO `photo_category_cells` VALUES (48, '23', '4', 'G203');
INSERT INTO `photo_category_cells` VALUES (49, '24', '1', 'A10');
INSERT INTO `photo_category_cells` VALUES (50, '24', '2', 'G10');
INSERT INTO `photo_category_cells` VALUES (51, '25', '1', 'A27');
INSERT INTO `photo_category_cells` VALUES (52, '25', '2', 'G27');
INSERT INTO `photo_category_cells` VALUES (53, '26', '1', 'A44');
INSERT INTO `photo_category_cells` VALUES (54, '26', '2', 'G44');
INSERT INTO `photo_category_cells` VALUES (55, '26', '3', 'A61');
INSERT INTO `photo_category_cells` VALUES (56, '26', '4', 'G61');
INSERT INTO `photo_category_cells` VALUES (57, '27', '1', 'A10');
INSERT INTO `photo_category_cells` VALUES (58, '28', '1', 'G10');
INSERT INTO `photo_category_cells` VALUES (59, '28', '2', 'A27');
INSERT INTO `photo_category_cells` VALUES (60, '28', '3', 'G27');
INSERT INTO `photo_category_cells` VALUES (61, '29', '1', 'A11');
INSERT INTO `photo_category_cells` VALUES (62, '29', '2', 'G11');
INSERT INTO `photo_category_cells` VALUES (63, '30', '1', 'A28');
INSERT INTO `photo_category_cells` VALUES (64, '30', '2', 'G28');
INSERT INTO `photo_category_cells` VALUES (65, '30', '3', 'A47');
INSERT INTO `photo_category_cells` VALUES (66, '30', '4', 'G47');
INSERT INTO `photo_category_cells` VALUES (67, '30', '5', 'A64');
INSERT INTO `photo_category_cells` VALUES (68, '30', '6', 'G64');
INSERT INTO `photo_category_cells` VALUES (69, '30', '7', 'A81');
INSERT INTO `photo_category_cells` VALUES (70, '30', '8', 'G81');
INSERT INTO `photo_category_cells` VALUES (71, '30', '9', 'A98');
INSERT INTO `photo_category_cells` VALUES (72, '30', '10', 'G98');

-- ----------------------------
-- Table structure for photos
-- ----------------------------
DROP TABLE IF EXISTS `photos`;
CREATE TABLE `photos`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `site_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `category_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `slot` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `file_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `date_created` datetime NULL DEFAULT NULL,
  `date_modified` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 209 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of photos
-- ----------------------------
INSERT INTO `photos` VALUES (1, 'TGR292', '2', '1', 'siteTGR292_cat2_slot1.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (2, 'TGR292', '1', '1', 'siteTGR292_cat1_slot1.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (3, 'TGR292', '2', '2', 'siteTGR292_cat2_slot2.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (4, 'TGR292', '2', '3', 'siteTGR292_cat2_slot3.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (5, 'pojoklaban', '24', '1', 'sitepojoklaban_cat24_slot1.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (6, 'pojoklaban', '29', '1', 'sitepojoklaban_cat29_slot1.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (7, 'Profesor_Lefran_Pane_Tugu', '24', '2', 'siteProfesor_Lefran_Pane_Tugu_cat24_slot2.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (8, 'Profesor_Lefran_Pane_Tugu', '27', '1', 'siteProfesor_Lefran_Pane_Tugu_cat27_slot1.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (9, 'Profesor_Lefran_Pane_Tugu', '28', '1', 'siteProfesor_Lefran_Pane_Tugu_cat28_slot1.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (10, 'Profesor_Lefran_Pane_Tugu', '28', '2', 'siteProfesor_Lefran_Pane_Tugu_cat28_slot2.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (11, 'Profesor_Lefran_Pane_Tugu', '30', '1', 'siteProfesor_Lefran_Pane_Tugu_cat30_slot1.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (12, 'Profesor_Lefran_Pane_Tugu', '30', '2', 'siteProfesor_Lefran_Pane_Tugu_cat30_slot2.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (13, 'Profesor_Lefran_Pane_Tugu', '30', '3', 'siteProfesor_Lefran_Pane_Tugu_cat30_slot3.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (14, 'Profesor_Lefran_Pane_Tugu', '30', '4', 'siteProfesor_Lefran_Pane_Tugu_cat30_slot4.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (15, 'Profesor_Lefran_Pane_Tugu', '30', '5', 'siteProfesor_Lefran_Pane_Tugu_cat30_slot5.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (16, 'Profesor_Lefran_Pane_Tugu', '30', '6', 'siteProfesor_Lefran_Pane_Tugu_cat30_slot6.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (17, 'Profesor_Lefran_Pane_Tugu', '30', '7', 'siteProfesor_Lefran_Pane_Tugu_cat30_slot7.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (18, 'PULAU_NANGKA_BARAT', '24', '1', 'sitePULAU_NANGKA_BARAT_cat24_slot1.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (19, 'PULAU_NANGKA_BARAT', '26', '1', 'sitePULAU_NANGKA_BARAT_cat26_slot1.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (20, 'PULAU_NANGKA_BARAT', '28', '1', 'sitePULAU_NANGKA_BARAT_cat28_slot1.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (21, 'PULAU_NANGKA_BARAT', '28', '2', 'sitePULAU_NANGKA_BARAT_cat28_slot2.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (22, 'PULAU_NANGKA_BARAT', '28', '3', 'sitePULAU_NANGKA_BARAT_cat28_slot3.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (23, 'PULAU_NANGKA_BARAT', '29', '1', 'sitePULAU_NANGKA_BARAT_cat29_slot1.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (24, 'PULAU_NANGKA_BARAT', '29', '2', 'sitePULAU_NANGKA_BARAT_cat29_slot2.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (25, 'PULAU_NANGKA_BARAT', '30', '1', 'sitePULAU_NANGKA_BARAT_cat30_slot1.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (26, 'PULAU_NANGKA_BARAT', '30', '2', 'sitePULAU_NANGKA_BARAT_cat30_slot2.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (27, 'PULAU_NANGKA_BARAT', '30', '3', 'sitePULAU_NANGKA_BARAT_cat30_slot3.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (28, 'PULAU_NANGKA_BARAT', '30', '4', 'sitePULAU_NANGKA_BARAT_cat30_slot4.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (29, 'PULAU_NANGKA_BARAT', '30', '5', 'sitePULAU_NANGKA_BARAT_cat30_slot5.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (30, 'PULAU_NANGKA_BARAT', '30', '6', 'sitePULAU_NANGKA_BARAT_cat30_slot6.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (31, 'PULAU_NANGKA_BARAT', '30', '7', 'sitePULAU_NANGKA_BARAT_cat30_slot7.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (32, 'Sang_Hyang_Indah', '24', '1', 'siteSang_Hyang_Indah_cat24_slot1.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (33, 'Sang_Hyang_Indah', '27', '1', 'siteSang_Hyang_Indah_cat27_slot1.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (34, 'Sang_Hyang_Indah', '29', '1', 'siteSang_Hyang_Indah_cat29_slot1.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (35, 'SRG-04-300', '27', '1', 'siteSRG-04-300_cat27_slot1.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (36, 'SRG-04-300', '28', '1', 'siteSRG-04-300_cat28_slot1.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (37, 'SRG-04-300', '28', '2', 'siteSRG-04-300_cat28_slot2.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (38, 'SRG-04-300', '28', '3', 'siteSRG-04-300_cat28_slot3.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (39, 'SRG-04-300', '29', '1', 'siteSRG-04-300_cat29_slot1.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (40, 'SRG-04-300', '30', '1', 'siteSRG-04-300_cat30_slot1.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (41, 'SITU_SELA', '25', '1', 'siteSITU_SELA_cat25_slot1.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (42, 'SITU_SELA', '30', '1', 'siteSITU_SELA_cat30_slot1.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (43, 'SUKA_NEGARA_CIKUPA', '24', '1', 'siteSUKA_NEGARA_CIKUPA_cat24_slot1.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (44, 'SUKA_NEGARA_CIKUPA', '30', '1', 'siteSUKA_NEGARA_CIKUPA_cat30_slot1.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (45, 'SUKA_NEGARA_CIKUPA', '30', '2', 'siteSUKA_NEGARA_CIKUPA_cat30_slot2.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (46, 'SUKA_BAKTI', '27', '1', 'siteSUKA_BAKTI_cat27_slot1.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (47, 'SUKA_BAKTI', '28', '1', 'siteSUKA_BAKTI_cat28_slot1.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (48, 'SUKA_BAKTI', '28', '2', 'siteSUKA_BAKTI_cat28_slot2.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (49, 'SUKA_BAKTI', '28', '3', 'siteSUKA_BAKTI_cat28_slot3.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (50, 'SUKA_BAKTI', '29', '1', 'siteSUKA_BAKTI_cat29_slot1.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (51, 'SUKA_BAKTI', '29', '2', 'siteSUKA_BAKTI_cat29_slot2.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (52, 'TAMBANG_PONCOL', '27', '1', 'siteTAMBANG_PONCOL_cat27_slot1.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (53, 'KELAPA_GADING_TRADE_CENTER', '27', '1', 'siteKELAPA_GADING_TRADE_CENTER_cat27_slot1.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (54, 'KELAPA_GADING_TRADE_CENTER', '28', '1', 'siteKELAPA_GADING_TRADE_CENTER_cat28_slot1.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (55, 'KELAPA_GADING_TRADE_CENTER', '28', '2', 'siteKELAPA_GADING_TRADE_CENTER_cat28_slot2.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (56, 'KELAPA_GADING_TRADE_CENTER', '28', '3', 'siteKELAPA_GADING_TRADE_CENTER_cat28_slot3.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (57, 'KELAPA_GADING_TRADE_CENTER', '29', '1', 'siteKELAPA_GADING_TRADE_CENTER_cat29_slot1.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (58, 'KELAPA_GADING_TRADE_CENTER', '29', '2', 'siteKELAPA_GADING_TRADE_CENTER_cat29_slot2.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (59, 'KELAPA_GADING_TRADE_CENTER', '30', '1', 'siteKELAPA_GADING_TRADE_CENTER_cat30_slot1.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (60, 'KEMANDORAN', '27', '1', 'siteKEMANDORAN_cat27_slot1.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (61, 'KOMP_SARIINTEN', '24', '1', 'siteKOMP_SARIINTEN_cat24_slot1.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (62, 'KOMP_SARIINTEN', '29', '1', 'siteKOMP_SARIINTEN_cat29_slot1.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (63, 'MUCHTARRAYA', '27', '1', 'siteMUCHTARRAYA_cat27_slot1.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (64, 'MUCHTARRAYA', '29', '1', 'siteMUCHTARRAYA_cat29_slot1.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (65, 'MUCHTARRAYA', '29', '2', 'siteMUCHTARRAYA_cat29_slot2.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (66, 'MUCHTARRAYA', '30', '1', 'siteMUCHTARRAYA_cat30_slot1.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (67, 'MUCHTARRAYA', '30', '2', 'siteMUCHTARRAYA_cat30_slot2.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (68, 'MUCHTARRAYA', '30', '3', 'siteMUCHTARRAYA_cat30_slot3.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (69, 'MUCHTARRAYA', '30', '4', 'siteMUCHTARRAYA_cat30_slot4.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (70, 'MUCHTARRAYA', '30', '5', 'siteMUCHTARRAYA_cat30_slot5.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (71, 'MUCHTARRAYA', '30', '6', 'siteMUCHTARRAYA_cat30_slot6.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (72, 'NANGGEWER', '27', '1', 'siteNANGGEWER_cat27_slot1.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (73, 'NAROGONG', '29', '1', 'siteNAROGONG_cat29_slot1.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (74, 'NAROGONG', '30', '1', 'siteNAROGONG_cat30_slot1.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (75, 'NAROGONG', '27', '1', 'siteNAROGONG_cat27_slot1.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (76, 'NAROGONG', '30', '2', 'siteNAROGONG_cat30_slot2.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (77, 'PADEPOKAN_MACAN', '27', '1', 'sitePADEPOKAN_MACAN_cat27_slot1.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (78, 'PADEPOKAN_MACAN', '30', '1', 'sitePADEPOKAN_MACAN_cat30_slot1.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (79, 'PEJUANG_MEDAN_SATRIA_MT', '27', '1', 'sitePEJUANG_MEDAN_SATRIA_MT_cat27_slot1.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (80, 'PEJUANG_MEDAN_SATRIA_MT', '29', '1', 'sitePEJUANG_MEDAN_SATRIA_MT_cat29_slot1.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (81, 'BOJONG_NANGKA', '27', '1', 'siteBOJONG_NANGKA_cat27_slot1.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (82, 'BUNDARAN_PNR', '27', '1', 'siteBUNDARAN_PNR_cat27_slot1.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (83, 'BUNDARAN_PNR', '29', '1', 'siteBUNDARAN_PNR_cat29_slot1.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (84, 'BUNDARAN_PNR', '29', '2', 'siteBUNDARAN_PNR_cat29_slot2.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (85, 'BUNDARAN_PNR', '30', '1', 'siteBUNDARAN_PNR_cat30_slot1.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (86, 'BUNDARAN_PNR', '30', '2', 'siteBUNDARAN_PNR_cat30_slot2.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (87, 'BUNDARAN_PNR', '30', '3', 'siteBUNDARAN_PNR_cat30_slot3.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (88, 'BUNDARAN_PNR', '30', '4', 'siteBUNDARAN_PNR_cat30_slot4.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (89, 'BUNDARAN_PNR', '30', '5', 'siteBUNDARAN_PNR_cat30_slot5.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (90, 'BUNDARAN_PNR', '30', '6', 'siteBUNDARAN_PNR_cat30_slot6.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (91, 'BUNDARAN_PNR', '30', '7', 'siteBUNDARAN_PNR_cat30_slot7.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (92, 'BUNDARAN_PNR', '30', '8', 'siteBUNDARAN_PNR_cat30_slot8.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (93, 'GANG_HALI', '27', '1', 'siteGANG_HALI_cat27_slot1.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (94, 'GANG_HALI', '28', '1', 'siteGANG_HALI_cat28_slot1.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (95, 'GANG_HALI', '28', '2', 'siteGANG_HALI_cat28_slot2.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (96, 'GANG_HALI', '28', '3', 'siteGANG_HALI_cat28_slot3.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (97, 'GANG_HALI', '29', '1', 'siteGANG_HALI_cat29_slot1.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (98, 'GANG_HALI', '29', '2', 'siteGANG_HALI_cat29_slot2.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (99, 'GANG_HALI', '30', '1', 'siteGANG_HALI_cat30_slot1.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (100, 'GARUDA_MUDA', '24', '1', 'siteGARUDA_MUDA_cat24_slot1.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (101, 'GARUDA_MUDA', '27', '1', 'siteGARUDA_MUDA_cat27_slot1.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (102, 'GARUDA_MUDA', '30', '1', 'siteGARUDA_MUDA_cat30_slot1.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (103, 'GARUDA_MUDA', '30', '2', 'siteGARUDA_MUDA_cat30_slot2.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (104, 'GARUDA_MUDA', '30', '3', 'siteGARUDA_MUDA_cat30_slot3.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (105, 'GARUDA_MUDA', '30', '4', 'siteGARUDA_MUDA_cat30_slot4.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (106, 'GARUDA_MUDA', '30', '6', 'siteGARUDA_MUDA_cat30_slot6.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (107, 'GARUDA_MUDA', '30', '7', 'siteGARUDA_MUDA_cat30_slot7.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (108, 'GARUDA_MUDA', '29', '1', 'siteGARUDA_MUDA_cat29_slot1.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (109, 'GARUDA_MUDA', '29', '2', 'siteGARUDA_MUDA_cat29_slot2.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (110, 'GARUDA_MUDA', '30', '8', 'siteGARUDA_MUDA_cat30_slot8.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (111, 'GARUDA_MUDA', '30', '9', 'siteGARUDA_MUDA_cat30_slot9.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (112, 'GARUDA_MUDA', '30', '10', 'siteGARUDA_MUDA_cat30_slot10.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (113, 'GARUDA_MUDA', '30', '5', 'siteGARUDA_MUDA_cat30_slot5.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (114, 'WARU_CIATER', '24', '1', 'siteWARU_CIATER_cat24_slot1.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (115, 'WARU_CIATER', '29', '1', 'siteWARU_CIATER_cat29_slot1.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (116, 'WARU_CIATER', '30', '1', 'siteWARU_CIATER_cat30_slot1.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (117, 'WARU_CIATER', '30', '2', 'siteWARU_CIATER_cat30_slot2.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (118, 'WARU_CIATER', '27', '1', 'siteWARU_CIATER_cat27_slot1.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (119, 'KARANGTENGAH', '27', '1', 'siteKARANGTENGAH_cat27_slot1.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (120, 'KARANGTENGAH', '28', '1', 'siteKARANGTENGAH_cat28_slot1.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (121, 'KARANGTENGAH', '28', '2', 'siteKARANGTENGAH_cat28_slot2.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (122, 'KARANGTENGAH', '28', '3', 'siteKARANGTENGAH_cat28_slot3.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (123, 'KARANGTENGAH', '29', '1', 'siteKARANGTENGAH_cat29_slot1.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (124, 'KARANGTENGAH', '30', '1', 'siteKARANGTENGAH_cat30_slot1.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (125, 'KARANGTENGAH', '30', '2', 'siteKARANGTENGAH_cat30_slot2.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (126, 'KARANGTENGAH', '30', '3', 'siteKARANGTENGAH_cat30_slot3.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (127, 'KARANGTENGAH', '30', '4', 'siteKARANGTENGAH_cat30_slot4.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (128, 'KOMPLEKDKS', '30', '1', 'siteKOMPLEKDKS_cat30_slot1.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (129, 'KOMPLEKDKS', '30', '2', 'siteKOMPLEKDKS_cat30_slot2.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (130, 'KOMPLEKDKS', '27', '1', 'siteKOMPLEKDKS_cat27_slot1.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (131, 'KOMPLEKDKS', '30', '3', 'siteKOMPLEKDKS_cat30_slot3.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (132, 'KOMPLEKDKS', '30', '4', 'siteKOMPLEKDKS_cat30_slot4.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (133, 'KOMPLEKDKS', '30', '5', 'siteKOMPLEKDKS_cat30_slot5.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (134, 'KOMPLEKDKS', '30', '6', 'siteKOMPLEKDKS_cat30_slot6.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (135, 'CABAT_MEDAN_SATRIA', '26', '1', 'siteCABAT_MEDAN_SATRIA_cat26_slot1.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (136, 'CABAT_MEDAN_SATRIA', '30', '1', 'siteCABAT_MEDAN_SATRIA_cat30_slot1.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (137, 'CABAT_MEDAN_SATRIA', '29', '1', 'siteCABAT_MEDAN_SATRIA_cat29_slot1.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (138, 'CIOMAS', '26', '1', 'siteCIOMAS_cat26_slot1.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (139, 'CIOMAS', '29', '1', 'siteCIOMAS_cat29_slot1.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (140, 'CIOMAS', '30', '1', 'siteCIOMAS_cat30_slot1.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (141, 'CIOMAS', '30', '2', 'siteCIOMAS_cat30_slot2.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (142, 'PANTAI_INDAH_UTARA', '26', '1', 'sitePANTAI_INDAH_UTARA_cat26_slot1.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (143, 'PANTAI_INDAH_UTARA', '29', '1', 'sitePANTAI_INDAH_UTARA_cat29_slot1.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (144, '92143', '27', '1', 'site92143_cat27_slot1.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (145, '92143', '28', '1', 'site92143_cat28_slot1.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (146, '92143', '28', '2', 'site92143_cat28_slot2.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (147, '92143', '29', '1', 'site92143_cat29_slot1.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (148, '92143', '29', '2', 'site92143_cat29_slot2.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (149, '92143', '30', '1', 'site92143_cat30_slot1.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (150, '92143', '30', '2', 'site92143_cat30_slot2.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (151, '92143', '30', '3', 'site92143_cat30_slot3.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (152, '92143', '30', '4', 'site92143_cat30_slot4.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (153, 'PERCETAKAN_NEGARA', '27', '1', 'sitePERCETAKAN_NEGARA_cat27_slot1.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (154, 'PERCETAKAN_NEGARA', '29', '1', 'sitePERCETAKAN_NEGARA_cat29_slot1.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (155, 'PERCETAKAN_NEGARA', '28', '1', 'sitePERCETAKAN_NEGARA_cat28_slot1.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (156, 'PERCETAKAN_NEGARA', '29', '2', 'sitePERCETAKAN_NEGARA_cat29_slot2.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (157, 'CIPINANG_BESAR', '30', '1', 'siteCIPINANG_BESAR_cat30_slot1.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (158, 'CIPINANG_BESAR', '26', '1', 'siteCIPINANG_BESAR_cat26_slot1.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (159, 'CIPINANG_BESAR', '26', '2', 'siteCIPINANG_BESAR_cat26_slot2.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (160, 'CIPINANG_BESAR', '26', '3', 'siteCIPINANG_BESAR_cat26_slot3.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (161, 'CIPINANG_BESAR', '29', '1', 'siteCIPINANG_BESAR_cat29_slot1.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (162, 'CIPINANG_BESAR', '29', '2', 'siteCIPINANG_BESAR_cat29_slot2.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (163, 'CIPINANG_BESAR', '30', '2', 'siteCIPINANG_BESAR_cat30_slot2.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (164, 'CIPINANG_BESAR', '30', '3', 'siteCIPINANG_BESAR_cat30_slot3.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (165, 'TGR294', '1', '1', 'siteTGR294_cat1_slot1.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (166, 'TGR294', '5', '1', 'siteTGR294_cat5_slot1.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (167, 'TGR294', '4', '1', 'siteTGR294_cat4_slot1.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (168, 'TGR294', '6', '1', 'siteTGR294_cat6_slot1.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (169, 'TGR294', '6', '2', 'siteTGR294_cat6_slot2.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (170, 'TGR294', '6', '3', 'siteTGR294_cat6_slot3.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (171, 'TGR294', '6', '4', 'siteTGR294_cat6_slot4.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (172, 'TGR294', '6', '5', 'siteTGR294_cat6_slot5.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (173, 'TGR294', '6', '6', 'siteTGR294_cat6_slot6.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (174, 'TGR294', '2', '1', 'siteTGR294_cat2_slot1.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (175, 'TGR294', '2', '2', 'siteTGR294_cat2_slot2.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (176, 'TGR294', '2', '3', 'siteTGR294_cat2_slot3.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (177, 'TGR294', '3', '1', 'siteTGR294_cat3_slot1.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (178, 'TGR294', '3', '4', 'siteTGR294_cat3_slot4.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (179, 'TGR294', '3', '5', 'siteTGR294_cat3_slot5.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (180, 'TGR294', '3', '2', 'siteTGR294_cat3_slot2.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (181, 'TGR294', '3', '3', 'siteTGR294_cat3_slot3.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (182, 'TGR294', '3', '6', 'siteTGR294_cat3_slot6.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (183, 'TGR292', '3', '1', 'siteTGR292_cat3_slot1.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (184, 'TGR292', '5', '1', 'siteTGR292_cat5_slot1.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (185, 'TGR292', '3', '2', 'siteTGR292_cat3_slot2.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (186, 'TGR292', '3', '3', 'siteTGR292_cat3_slot3.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (187, 'TGR292', '3', '4', 'siteTGR292_cat3_slot4.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (188, 'TGR292', '3', '5', 'siteTGR292_cat3_slot5.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (189, 'TGR292', '3', '6', 'siteTGR292_cat3_slot6.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (190, 'TGR292', '6', '1', 'siteTGR292_cat6_slot1.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (191, 'TGR292', '6', '2', 'siteTGR292_cat6_slot2.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (192, 'TGR292', '6', '3', 'siteTGR292_cat6_slot3.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (193, 'TGR292', '6', '4', 'siteTGR292_cat6_slot4.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (194, 'TGR292', '4', '1', 'siteTGR292_cat4_slot1.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (195, 'TGR292', '6', '5', 'siteTGR292_cat6_slot5.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (196, 'TGR292', '6', '6', 'siteTGR292_cat6_slot6.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (197, 'TGR294', '8', '1', 'siteTGR294_cat8_slot1.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (198, 'JKB049', '2', '1', 'siteJKB049_cat2_slot1.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (199, 'JKB049', '2', '2', 'siteJKB049_cat2_slot2.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (200, 'JKB049', '2', '3', 'siteJKB049_cat2_slot3.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (201, 'TGR292', '7', '1', 'siteTGR292_cat7_slot1.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (202, 'TGR292', '8', '2', 'siteTGR292_cat8_slot2.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (203, 'TGR292', '8', '1', 'siteTGR292_cat8_slot1.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (204, 'TGR294', '8', '2', 'siteTGR294_cat8_slot2.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (205, 'TGR294', '7', '1', 'siteTGR294_cat7_slot1.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (207, 'TGR294', '9', '1', 'siteTGR294_cat9_slot1.jpg', NULL, NULL);
INSERT INTO `photos` VALUES (208, 'TGR294', '9', '2', 'siteTGR294_cat9_slot2.jpg', NULL, NULL);

-- ----------------------------
-- Table structure for report_cells
-- ----------------------------
DROP TABLE IF EXISTS `report_cells`;
CREATE TABLE `report_cells`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `sheet_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `field_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `cell` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of report_cells
-- ----------------------------
INSERT INTO `report_cells` VALUES (1, 'MASTER', 'project_id', 'F5');
INSERT INTO `report_cells` VALUES (2, 'MASTER', 'site_name_po', 'F6');
INSERT INTO `report_cells` VALUES (3, 'MASTER', 'site_name_tenant', 'F7');
INSERT INTO `report_cells` VALUES (4, 'MASTER', 'site_id', 'F8');
INSERT INTO `report_cells` VALUES (5, 'MASTER', 'start', 'F9');
INSERT INTO `report_cells` VALUES (6, 'MASTER', 'done', 'F10');
INSERT INTO `report_cells` VALUES (7, 'MASTER', 'tenant', 'F11');
INSERT INTO `report_cells` VALUES (8, 'MASTER', 'type_tower', 'F12');
INSERT INTO `report_cells` VALUES (9, 'MASTER', 'height', 'G12');
INSERT INTO `report_cells` VALUES (10, 'MASTER', 'alamat', 'F13');
INSERT INTO `report_cells` VALUES (11, 'MASTER', 'latitude', 'G15');
INSERT INTO `report_cells` VALUES (12, 'MASTER', 'longitude', 'G14');
INSERT INTO `report_cells` VALUES (13, 'MASTER', 'pekerjaan', 'F16');
INSERT INTO `report_cells` VALUES (14, 'MASTER', 'area', 'F17');
INSERT INTO `report_cells` VALUES (15, 'MASTER', 'mitra', 'F18');
INSERT INTO `report_cells` VALUES (16, 'MASTER', 'atp_date', 'F19');
INSERT INTO `report_cells` VALUES (17, 'MASTER', 'executive_general_manager', 'F22');
INSERT INTO `report_cells` VALUES (18, 'MASTER', 'manager_construction', 'F23');
INSERT INTO `report_cells` VALUES (19, 'MASTER', 'gm_area_office', 'F26');
INSERT INTO `report_cells` VALUES (20, 'MASTER', 'manager_const', 'F27');
INSERT INTO `report_cells` VALUES (21, 'MASTER', 'project_management', 'F28');
INSERT INTO `report_cells` VALUES (22, 'MASTER', 'waspang_area', 'F29');
INSERT INTO `report_cells` VALUES (24, 'MASTER', 'mitra', 'C21');

-- ----------------------------
-- Table structure for section
-- ----------------------------
DROP TABLE IF EXISTS `section`;
CREATE TABLE `section`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `pekerjaan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `sheet_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `date_created` datetime NULL DEFAULT NULL,
  `date_modified` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of section
-- ----------------------------
INSERT INTO `section` VALUES (1, 'B2S', 'SKOM', 'SKOM', NULL, NULL);
INSERT INTO `section` VALUES (2, 'B2S', 'PEMBESIAN', 'PEMBESIAN SITE', NULL, NULL);
INSERT INTO `section` VALUES (3, 'B2S', 'PENGECORAN', 'PENGECORAN SITE', NULL, NULL);
INSERT INTO `section` VALUES (4, 'B2S', 'ERECTION', 'MOS & ERECTION', NULL, NULL);
INSERT INTO `section` VALUES (5, 'B2S', 'ATP', 'PELAKSANAAN ATP', NULL, NULL);
INSERT INTO `section` VALUES (6, 'PERKUATAN', 'TEAM & TOOLS', 'FOTO PENDUKUNG TEAM & TOOLS', NULL, NULL);
INSERT INTO `section` VALUES (7, 'PERKUATAN', 'MOS', 'PREPERATION & MOS', NULL, NULL);
INSERT INTO `section` VALUES (8, 'PERKUATAN', 'DOKUMENTASI ATP', 'PELAKSANAAN ATP', NULL, NULL);

-- ----------------------------
-- Table structure for sites
-- ----------------------------
DROP TABLE IF EXISTS `sites`;
CREATE TABLE `sites`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `project_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `site_name_po` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `site_name_tenant` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `site_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `start` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `done` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `tenant` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `type_tower` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `height` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `alamat` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `latitude` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `longitude` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `pekerjaan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `area` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `mitra` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `atp_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `executive_general_manager` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `manager_construction` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `gm_area_office` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `manager_const` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `project_management` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `waspang_area` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `progress` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `date_created` datetime NULL DEFAULT NULL,
  `date_modified` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 50 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sites
-- ----------------------------
INSERT INTO `sites` VALUES (15, '', 'POJOK LABAN', 'POJOK LABAN', 'pojoklaban', '', '', '', '', '', '', '', '', 'PERKUATAN', 'JABODETABEB', 'PT TRITECH CONSULT', '', '', '', '', '', '', '', NULL, NULL, NULL);
INSERT INTO `sites` VALUES (16, '', 'Profesor Lefran Pane Tugu', 'Profesor Lefran Pane Tugu', 'Profesor_Lefran_Pane_Tugu', '', '', '', '', '', '', '', '', 'PERKUATAN', 'JABODETABEB', 'PT TRITECH CONSULT', '', '', '', '', '', '', '', NULL, NULL, NULL);
INSERT INTO `sites` VALUES (17, '', 'PULAU NANGKA BARAT', 'PULAU NANGKA BARAT', 'PULAU_NANGKA_BARAT', '', '', '', '', '', '', '', '', 'PERKUATAN', 'JABODETABEB', 'PT TRITECH CONSULT', '', '', '', '', '', '', '', NULL, NULL, NULL);
INSERT INTO `sites` VALUES (18, '', 'Sang Hyang Indah', 'Sang Hyang Indah', 'Sang_Hyang_Indah', '', '', '', '', '', '', '', '', 'PERKUATAN', 'JABODETABEB', 'PT TRITECH CONSULT', '', '', '', '', '', '', '', NULL, NULL, NULL);
INSERT INTO `sites` VALUES (19, '', 'Jalan Citra Indah', 'Jalan Citra Indah', 'SRG-04-300', '', '', '', '', '', '', '', '', 'PERKUATAN', 'JABODETABEB', 'PT TRITECH CONSULT', '', '', '', '', '', '', '', NULL, NULL, NULL);
INSERT INTO `sites` VALUES (20, '', 'SITU SELA', 'SITU SELA', 'SITU_SELA', '', '', '', '', '', '', '', '', 'PERKUATAN', 'JABODETABEB', 'PT TRITECH CONSULT', '', '', '', '', '', '', '', NULL, NULL, NULL);
INSERT INTO `sites` VALUES (21, '', 'SUKA NEGARA CIKUPA', 'SUKA NEGARA CIKUPA', 'SUKA_NEGARA_CIKUPA', '', '', '', '', '', '', '', '', 'PERKUATAN', 'JABODETABEB', 'PT TRITECH CONSULT', '', '', '', '', '', '', '', NULL, NULL, NULL);
INSERT INTO `sites` VALUES (22, '', 'SUKA BAKTI', 'SUKA BAKTI', 'SUKA_BAKTI', '', '', '', '', '', '', '', '', 'PERKUATAN', 'JABODETABEB', 'PT TRITECH CONSULT', '', '', '', '', '', '', '', NULL, NULL, NULL);
INSERT INTO `sites` VALUES (23, '', 'TAMBANG PONCOL', 'TAMBANG PONCOL', 'TAMBANG_PONCOL', '', '', '', '', '', '', '', '', 'PERKUATAN', 'JABODETABEB', 'PT TRITECH CONSULT', '', '', '', '', '', '', '', NULL, NULL, NULL);
INSERT INTO `sites` VALUES (24, '', 'KELAPA GADING TRADE CENTER', 'KELAPA GADING TRADE CENTER', 'KELAPA_GADING_TRADE_CENTER', '', '', '', '', '', '', '', '', 'PERKUATAN', 'JABODETABEB', 'PT TRITECH CONSULT', '', '', '', '', '', '', '', NULL, NULL, NULL);
INSERT INTO `sites` VALUES (25, '', 'KEMANDORAN', 'KEMANDORAN', 'KEMANDORAN', '', '', '', '', '', '', '', '', 'PERKUATAN', 'JABODETABEB', 'PT TRITECH CONSULT', '', '', '', '', '', '', '', NULL, NULL, NULL);
INSERT INTO `sites` VALUES (26, '', 'KENDAL JAYA', 'KENDAL JAYA', 'KENDAL_JAYA', '', '', '', '', '', '', '', '', 'PERKUATAN', 'JABODETABEB', 'PT TRITECH CONSULT', '', '', '', '', '', '', '', NULL, NULL, NULL);
INSERT INTO `sites` VALUES (27, '', 'KOMP SARIINTEN', 'KOMP SARIINTEN', 'KOMP_SARIINTEN', '', '', '', '', '', '', '', '', 'PERKUATAN', 'JABODETABEB', 'PT TRITECH CONSULT', '', '', '', '', '', '', '', NULL, NULL, NULL);
INSERT INTO `sites` VALUES (28, '', 'MUCHTARRAYA', 'MUCHTARRAYA', 'MUCHTARRAYA', '', '', '', '', '', '', '', '', 'PERKUATAN', 'JABODETABEB', 'PT TRITECH CONSULT', '', '', '', '', '', '', '', NULL, NULL, NULL);
INSERT INTO `sites` VALUES (29, '', 'NANGGEWER', 'NANGGEWER', 'NANGGEWER', '', '', '', '', '', '', '', '', 'PERKUATAN', 'JABODETABEB', 'PT TRITECH CONSULT', '', '', '', '', '', '', '', NULL, NULL, NULL);
INSERT INTO `sites` VALUES (30, '', 'SD CILEUNGSI NAROGONG', 'SD CILEUNGSI NAROGONG', 'NAROGONG', '', '', '', '', '', '', '', '', 'PERKUATAN', 'JABODETABEB', 'PT TRITECH CONSULT', '', '', '', '', '', '', '', NULL, NULL, NULL);
INSERT INTO `sites` VALUES (31, '', 'PADEPOKAN MACAN', 'PADEPOKAN MACAN', 'PADEPOKAN_MACAN', '', '', '', '', '', 'PGGX+32C Ciakar, Kabupaten Tangerang, Banten', '-6.27482', '106.54752', 'PERKUATAN', 'JABODETABEB', 'PT TRITECH CONSULT', '', '', '', '', '', '', '', NULL, NULL, NULL);
INSERT INTO `sites` VALUES (32, '', 'PEJUANG_MEDAN_SATRIA_MT', 'PEJUANG_MEDAN_SATRIA_MT', 'PEJUANG_MEDAN_SATRIA_MT', '', '', '', '', '', '', '', '', 'PERKUATAN', 'JABODETABEB', 'PT TRITECH CONSULT', '', '', '', '', '', '', '', NULL, NULL, NULL);
INSERT INTO `sites` VALUES (33, '', 'BOJONG NANGKA', 'BOJONG NANGKA', 'BOJONG_NANGKA', '', '', '', '', '', '', '', '', 'PERKUATAN', 'JABODETABEB', 'PT TRITECH CONSULT', '', '', '', '', '', '', '', NULL, NULL, NULL);
INSERT INTO `sites` VALUES (34, '', 'BUNDARAN PNR', 'BUNDARAN PNR', 'BUNDARAN_PNR', '', '', '', '', '', '', '', '', 'PERKUATAN', 'JABODETABEB', 'PT TRITECH CONSULT', '', '', '', '', '', '', '', NULL, NULL, NULL);
INSERT INTO `sites` VALUES (35, '', 'GANG HALI', 'GANG HALI', 'GANG_HALI', '', '', '', '', '', '', '', '', 'PERKUATAN', 'JABODETABEB', 'PT TRITECH CONSULT', '', '', '', '', '', '', '', NULL, NULL, NULL);
INSERT INTO `sites` VALUES (36, '', 'GARUDA MUDA', 'GARUDA MUDA', 'GARUDA_MUDA', '', '', '', '', '42', 'KAMPUNG SANDING 2, RT. 14/RW. 07, NO 14 CICADAS GUNUNG PUTRI BOGOR 10310 JABODETABEK', '-6.4248', '106.9151', 'PERKUATAN', 'JABODETABEB', 'PT TRITECH CONSULT', '', '', '', '', '', '', '', NULL, NULL, NULL);
INSERT INTO `sites` VALUES (37, '', 'WARU CIATER', 'WARU CIATER', 'WARU_CIATER', '', '', '', '', '', 'Jl. Waru, Kp. Maruga Rt.09 Rw.04 Kel. Ciater Kec. Serpong Kab. Tangerang, Banten', '-6.31542', '106.69823', 'PERKUATAN', 'JABODETABEB', 'PT TRITECH CONSULT', '', '', '', '', '', '', '', NULL, NULL, NULL);
INSERT INTO `sites` VALUES (38, '', 'JL H MULUD KARANGTENGAH', 'JL H MULUD KARANGTENGAH', 'KARANGTENGAH', '', '', '', 'MONOPOLE', '36m', 'JL. H, NIBAN GANG H, MEAN, RT 2, RW. 2, KARANG TIMUR KEC. KARANG TENGAH, KOTA TANGERANG, BANTEN', '06.21784', '106.71548', 'PERKUATAN', 'JABODETABEB', 'PT TRITECH CONSULT', '', '', '', '', '', '', '', NULL, NULL, NULL);
INSERT INTO `sites` VALUES (39, '', 'KOMPLEKDKS', 'KOMPLEKDKS', 'KOMPLEKDKS', '', '', '', '', '', '', '', '', 'PERKUATAN', 'JABODETABEB', 'PT TRITECH CONSULT', '', '', '', '', '', '', '', NULL, NULL, NULL);
INSERT INTO `sites` VALUES (40, '', 'CABAT MEDAN SATRIA', '', 'CABAT_MEDAN_SATRIA', '', '', '', '', '', '', '', '', 'PERKUATAN', 'JABODETABEB', 'PT. TRITECH CONSULT', '', '', '', '', '', '', '', NULL, NULL, NULL);
INSERT INTO `sites` VALUES (41, '', 'CIOMAS', 'CIOMAS', 'CIOMAS', '', '', '', '', '', '', '', '', 'PERKUATAN', 'JABODETABEB', 'PT. TRITECH CONSULT', '', '', '', '', '', '', '', NULL, NULL, NULL);
INSERT INTO `sites` VALUES (42, '', 'PANTAI INDAH UTARA', 'PANTAI INDAH UTARA', 'PANTAI_INDAH_UTARA', '', '', '', '', '', '', '', '', 'PERKUATAN', 'JABODETABEB', 'PT. TRITECH CONSULT', '', '', '', '', '', '', '', NULL, NULL, NULL);
INSERT INTO `sites` VALUES (43, '16HC09WOOO9', 'WAHID HASYIM', 'WAHID HASYIM', '92143', '', '', '', 'POLE', '12m', 'JL. WAHID HASYIM NO. 200, TANAH ABANG JAKARTA PUSAT	', '-6.18673', '106.81811', 'PERKUATAN', 'JABODETABEB', 'PT TRITECH CONSULT', '', '', '', '', '', '', '', NULL, NULL, NULL);
INSERT INTO `sites` VALUES (44, '', 'PERCETAKAN NEGARA', 'PERCETAKAN NEGARA', 'PERCETAKAN_NEGARA', '', '', '', '', '', '', '', '', 'PERKUATAN', 'JABODETABEB', 'PT TRITECH CONSULT', '', '', '', '', '', '', '', NULL, NULL, NULL);
INSERT INTO `sites` VALUES (45, '', 'CIPINANG BESAR', 'CIPINANG BESAR', 'CIPINANG_BESAR', '', '', '', 'SST', '20 m', 'No. 42 Cipinang Besar Selatan. Kecamatan: Jatinegara. Kota: Jakarta Timur. Provinsi: Daerah Khusus Ibukota Jakarta', '', '', 'PERKUATAN', 'JABODETABEB', 'PT. TRITECH CONSULT', '', '', '', '', '', '', '', NULL, NULL, NULL);
INSERT INTO `sites` VALUES (46, '', 'JLARJUNAPAMULANG', 'JLARJUNAPAMULANG', 'CPT056', '', '', '', 'SST', '42m', '', ' -6.33808', '106.70644', 'B2S', 'JABODETABEB', 'PT. TRITECH CONSULT', '', '', '', '', '', '', '', NULL, NULL, NULL);
INSERT INTO `sites` VALUES (47, '', 'JLNBOJONGKEMUNING', 'JLNBOJONGKEMUNING', 'TGR294', '', '', '', 'SST', '32', 'Kp. Bojong RT. 001 RW. 002 Desa Kemuning kec. Legok Kab. Tangerang', ' -6.30151', '106.57513', 'B2S', 'JABODETABEB', 'PT. TRITECH CONSULT', '', '', '', '', '', '', '', NULL, NULL, NULL);
INSERT INTO `sites` VALUES (48, '', 'PERMANENCOMBATEDINBURG', 'PERMANENCOMBATEDINBURG', 'JKB049', '', '', '', 'SST', '32m', 'JL Pd Randu,. 005 RW. 002 Kelurahan Duri Kosambi Kecamatan Cengkareng Kota Jakarta barat Prov. Jakarta', '-6.17601', '106.72524', 'B2S', 'JABODETABEB', 'PT. TRITECH CONSULT', '', '', '', '', '', '', '', NULL, NULL, NULL);
INSERT INTO `sites` VALUES (49, '', 'RANCAKALAPAPANONGAN', 'RANCAKALAPAPANONGAN', 'TGR292', '', '', '', '3 leg', '72m', 'kp Panongan RT. 004/004 Kel. Panongan Kecamatan. Panongan Kab Tangerang Prov. Banten', '-6.279999', '106.520125', 'B2S', 'JABODETABEB', 'PT. TRITECH CONSULT', '', '', '', '', '', '', '', NULL, NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
