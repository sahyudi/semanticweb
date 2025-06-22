/*
 Navicat Premium Data Transfer

 Source Server         : DB LOCAL
 Source Server Type    : MySQL
 Source Server Version : 80030
 Source Host           : localhost:3306
 Source Schema         : db_kompetitif

 Target Server Type    : MySQL
 Target Server Version : 80030
 File Encoding         : 65001

 Date: 22/06/2025 22:21:47
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for sertipikat_tanah
-- ----------------------------
DROP TABLE IF EXISTS `sertipikat_tanah`;
CREATE TABLE `sertipikat_tanah`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `nib` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `pemilik` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `kelurahan` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `kecamatan` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `kota` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `alamat` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `luas` float NULL DEFAULT NULL,
  `status` char(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tgl_terbit` date NULL DEFAULT NULL,
  `tgl_jth_tempo` date NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `nib`(`nib` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 201 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sertipikat_tanah
-- ----------------------------
INSERT INTO `sertipikat_tanah` VALUES (1, '1990-357215-7497', 'Hadi Nugroho', 'Bengkong Indah', 'Bengkong', 'Batam', 'Jl. Garuda No. 294', 658, 'HGB', '2020-01-27', '2037-12-11');
INSERT INTO `sertipikat_tanah` VALUES (2, '3240-291192-8286', 'Eka Yulianti', 'Tanjung Riau', 'Sekupang', 'Batam', 'Jl. Pelita No. 468', 98, 'HGU', '2020-10-15', NULL);
INSERT INTO `sertipikat_tanah` VALUES (3, '3887-604857-1334', 'Budi Lestari', 'Tanjung Pinggir', 'Sekupang', 'Batam', 'Jl. Rajawali No. 875', 173, 'HGB', '2022-09-04', NULL);
INSERT INTO `sertipikat_tanah` VALUES (4, '5416-674451-7237', 'Hadi Saputra', 'Bukit Tempayan', 'Batu Aji', 'Batam', 'Jl. Merpati No. 695', 111, 'SHM', '2014-12-19', '2031-11-15');
INSERT INTO `sertipikat_tanah` VALUES (5, '8800-949258-7340', 'Budi Saputra', 'Sadai', 'Bengkong', 'Batam', 'Jl. Merpati No. 22', 912, 'HGU', '2015-09-27', '2034-03-19');
INSERT INTO `sertipikat_tanah` VALUES (6, '7277-371535-9215', 'Kiki Saputra', 'Tiban Indah', 'Sekupang', 'Batam', 'Jl. Mawar No. 395', 184, 'HGU', '2011-01-10', '2027-02-19');
INSERT INTO `sertipikat_tanah` VALUES (7, '8787-995824-8801', 'Citra Putra', 'Tiban Indah', 'Sekupang', 'Batam', 'Jl. Mawar No. 700', 173, 'SHM', '2018-07-07', '2040-10-26');
INSERT INTO `sertipikat_tanah` VALUES (8, '9904-546471-1490', 'Hadi Yulianti', 'Batu Besar', 'Nongsa', 'Batam', 'Jl. Melati No. 422', 151, 'HGB', '2022-10-27', '2050-09-05');
INSERT INTO `sertipikat_tanah` VALUES (9, '9620-983780-9637', 'Lina Putra', 'Bengkong Laut', 'Bengkong', 'Batam', 'Jl. Mawar No. 173', 207, 'HGU', '2014-10-23', '2029-01-21');
INSERT INTO `sertipikat_tanah` VALUES (10, '5820-575093-2114', 'Budi Prasetyo', 'Tanjung Riau', 'Sekupang', 'Batam', 'Jl. Garuda No. 602', 765, 'SHM', '2015-02-02', NULL);
INSERT INTO `sertipikat_tanah` VALUES (11, '2244-596666-6495', 'Eka Prasetyo', 'Belian', 'Batam Kota', 'Batam', 'Jl. Mawar No. 841', 878, 'SHM', '2011-09-24', '2040-12-25');
INSERT INTO `sertipikat_tanah` VALUES (12, '1336-824011-4767', 'Dewi Nugroho', 'Bukit Tempayan', 'Batu Aji', 'Batam', 'Jl. Merpati No. 144', 496, 'HGU', '2020-04-20', NULL);
INSERT INTO `sertipikat_tanah` VALUES (13, '1140-772337-7542', 'Hadi Prasetyo', 'Patam Lestari', 'Sekupang', 'Batam', 'Jl. Rajawali No. 393', 155, 'HGB', '2021-10-04', '2047-09-16');
INSERT INTO `sertipikat_tanah` VALUES (14, '6494-908465-1811', 'Citra Yulianti', 'Tanjung Buntung', 'Bengkong', 'Batam', 'Jl. Pelita No. 369', 528, 'SHM', '2022-05-20', '2049-12-11');
INSERT INTO `sertipikat_tanah` VALUES (15, '9661-444683-9676', 'Dewi Haryanto', 'Taman Baloi', 'Batam Kota', 'Batam', 'Jl. Mawar No. 694', 192, 'SHM', '2020-07-12', '2033-12-04');
INSERT INTO `sertipikat_tanah` VALUES (16, '5709-617391-8838', 'Indra Lestari', 'Bengkong Laut', 'Bengkong', 'Batam', 'Jl. Mawar No. 185', 868, 'HGU', '2023-05-28', NULL);
INSERT INTO `sertipikat_tanah` VALUES (17, '3131-371380-3476', 'Hadi Lestari', 'Taman Baloi', 'Batam Kota', 'Batam', 'Jl. Mawar No. 906', 268, 'HGU', '2024-10-31', '2042-07-22');
INSERT INTO `sertipikat_tanah` VALUES (18, '2588-142196-6266', 'Gita Yulianti', 'Batu Besar', 'Nongsa', 'Batam', 'Jl. Garuda No. 26', 998, 'SHM', '2010-08-09', '2022-10-17');
INSERT INTO `sertipikat_tanah` VALUES (19, '8683-507627-9330', 'Fajar Santoso', 'Patam Lestari', 'Sekupang', 'Batam', 'Jl. Merpati No. 447', 290, 'HGB', '2017-01-25', '2038-04-26');
INSERT INTO `sertipikat_tanah` VALUES (20, '5122-132782-8181', 'Fajar Santoso', 'Sukajadi', 'Batam Kota', 'Batam', 'Jl. Mawar No. 473', 981, 'HGU', '2023-08-22', '2035-02-04');
INSERT INTO `sertipikat_tanah` VALUES (21, '5693-838796-8670', 'Kiki Putra', 'Belian', 'Batam Kota', 'Batam', 'Jl. Merpati No. 473', 787, 'HGB', '2011-01-16', '2021-12-28');
INSERT INTO `sertipikat_tanah` VALUES (22, '3709-550202-8972', 'Gita Putra', 'Tanjung Uncang', 'Batu Aji', 'Batam', 'Jl. Merpati No. 839', 979, 'HGB', '2012-09-09', NULL);
INSERT INTO `sertipikat_tanah` VALUES (23, '9895-707362-3211', 'Lina Wibowo', 'Batu Besar', 'Nongsa', 'Batam', 'Jl. Merpati No. 657', 629, 'HGU', '2024-05-16', '2035-10-04');
INSERT INTO `sertipikat_tanah` VALUES (24, '3963-405044-4330', 'Fajar Siregar', 'Kabil', 'Nongsa', 'Batam', 'Jl. Garuda No. 645', 149, 'HGB', '2020-10-21', NULL);
INSERT INTO `sertipikat_tanah` VALUES (25, '1607-301680-7254', 'Citra Santoso', 'Sambau', 'Nongsa', 'Batam', 'Jl. Rajawali No. 267', 984, 'SHM', '2010-05-15', '2023-07-18');
INSERT INTO `sertipikat_tanah` VALUES (26, '5603-466905-4954', 'Gita Prasetyo', 'Bukit Tempayan', 'Batu Aji', 'Batam', 'Jl. Melati No. 542', 352, 'SHM', '2022-08-01', '2042-04-01');
INSERT INTO `sertipikat_tanah` VALUES (27, '6456-712993-2523', 'Kiki Haryanto', 'Batu Selicin', 'Lubuk Baja', 'Batam', 'Jl. Melati No. 871', 634, 'SHM', '2010-07-05', '2038-08-16');
INSERT INTO `sertipikat_tanah` VALUES (28, '2118-181515-8859', 'Dewi Haryanto', 'Lubuk Baja Kota', 'Lubuk Baja', 'Batam', 'Jl. Rajawali No. 210', 413, 'SHM', '2011-07-17', '2037-06-24');
INSERT INTO `sertipikat_tanah` VALUES (29, '5529-719588-1184', 'Citra Siregar', 'Sambau', 'Nongsa', 'Batam', 'Jl. Rajawali No. 185', 826, 'SHM', '2022-02-02', '2039-06-24');
INSERT INTO `sertipikat_tanah` VALUES (30, '6769-349998-5302', 'Hadi Prasetyo', 'Kampung Pelita', 'Lubuk Baja', 'Batam', 'Jl. Garuda No. 619', 128, 'HGB', '2010-06-15', '2030-10-07');
INSERT INTO `sertipikat_tanah` VALUES (31, '3898-981991-4990', 'Lina Saputra', 'Teluk Tering', 'Batam Kota', 'Batam', 'Jl. Pelita No. 389', 661, 'HGB', '2024-12-06', NULL);
INSERT INTO `sertipikat_tanah` VALUES (32, '6198-259593-9797', 'Gita Prasetyo', 'Tanjung Uma', 'Lubuk Baja', 'Batam', 'Jl. Pelita No. 371', 905, 'HGB', '2012-06-24', '2036-11-04');
INSERT INTO `sertipikat_tanah` VALUES (33, '4862-535012-5569', 'Hadi Prasetyo', 'Tanjung Riau', 'Sekupang', 'Batam', 'Jl. Pelita No. 369', 552, 'HGB', '2022-01-02', '2051-11-20');
INSERT INTO `sertipikat_tanah` VALUES (34, '5001-171522-6774', 'Eka Putra', 'Kibing', 'Batu Aji', 'Batam', 'Jl. Melati No. 297', 230, 'HGU', '2024-03-23', NULL);
INSERT INTO `sertipikat_tanah` VALUES (35, '7960-642574-2424', 'Dewi Siregar', 'Batu Besar', 'Nongsa', 'Batam', 'Jl. Merpati No. 442', 337, 'HGU', '2018-05-12', '2038-09-19');
INSERT INTO `sertipikat_tanah` VALUES (36, '4158-236547-9984', 'Budi Lestari', 'Sadai', 'Bengkong', 'Batam', 'Jl. Garuda No. 502', 837, 'SHM', '2014-02-16', NULL);
INSERT INTO `sertipikat_tanah` VALUES (37, '5834-968850-5674', 'Lina Santoso', 'Batu Besar', 'Nongsa', 'Batam', 'Jl. Melati No. 952', 645, 'HGB', '2016-12-12', '2032-02-18');
INSERT INTO `sertipikat_tanah` VALUES (38, '1502-946765-4605', 'Gita Haryanto', 'Batu Besar', 'Nongsa', 'Batam', 'Jl. Pelita No. 790', 689, 'HGB', '2024-01-29', NULL);
INSERT INTO `sertipikat_tanah` VALUES (39, '9463-297007-7902', 'Eka Wibowo', 'Tiban Lama', 'Sekupang', 'Batam', 'Jl. Merpati No. 713', 814, 'HGB', '2011-06-05', NULL);
INSERT INTO `sertipikat_tanah` VALUES (40, '6361-669973-8376', 'Kiki Putra', 'Teluk Tering', 'Batam Kota', 'Batam', 'Jl. Garuda No. 711', 450, 'SHM', '2012-11-09', '2041-09-19');
INSERT INTO `sertipikat_tanah` VALUES (41, '4345-801989-3304', 'Adi Saputra', 'Tiban Indah', 'Sekupang', 'Batam', 'Jl. Garuda No. 420', 345, 'HGB', '2018-08-23', NULL);
INSERT INTO `sertipikat_tanah` VALUES (42, '5602-426951-7311', 'Hadi Saputra', 'Kampung Seraya', 'Batu Ampar', 'Batam', 'Jl. Mawar No. 586', 647, 'SHM', '2011-03-01', '2040-06-14');
INSERT INTO `sertipikat_tanah` VALUES (43, '8276-720777-3582', 'Indra Lestari', 'Tanjung Buntung', 'Bengkong', 'Batam', 'Jl. Pelita No. 43', 684, 'HGB', '2022-11-16', '2038-01-29');
INSERT INTO `sertipikat_tanah` VALUES (44, '8025-557729-1517', 'Adi Putra', 'Batu Besar', 'Nongsa', 'Batam', 'Jl. Melati No. 382', 142, 'HGB', '2011-04-05', NULL);
INSERT INTO `sertipikat_tanah` VALUES (45, '5279-274132-7175', 'Eka Wibowo', 'Kampung Seraya', 'Batu Ampar', 'Batam', 'Jl. Merpati No. 976', 721, 'HGU', '2014-11-03', NULL);
INSERT INTO `sertipikat_tanah` VALUES (46, '8093-224771-1928', 'Lina Wibowo', 'Kampung Seraya', 'Batu Ampar', 'Batam', 'Jl. Garuda No. 285', 986, 'HGU', '2015-04-24', '2030-08-28');
INSERT INTO `sertipikat_tanah` VALUES (47, '9821-577139-4142', 'Eka Lestari', 'Tanjung Uma', 'Lubuk Baja', 'Batam', 'Jl. Pelita No. 528', 187, 'HGU', '2021-02-05', NULL);
INSERT INTO `sertipikat_tanah` VALUES (48, '4355-405640-7843', 'Joko Santoso', 'Baloi Permai', 'Batam Kota', 'Batam', 'Jl. Melati No. 64', 884, 'HGB', '2024-07-10', NULL);
INSERT INTO `sertipikat_tanah` VALUES (49, '2679-119263-2690', 'Citra Prasetyo', 'Kibing', 'Batu Aji', 'Batam', 'Jl. Mawar No. 298', 954, 'HGB', '2014-05-27', NULL);
INSERT INTO `sertipikat_tanah` VALUES (50, '7768-870564-1137', 'Lina Haryanto', 'Tanjung Pinggir', 'Sekupang', 'Batam', 'Jl. Garuda No. 833', 298, 'HGB', '2023-12-19', '2053-10-07');
INSERT INTO `sertipikat_tanah` VALUES (51, '1175-414407-2749', 'Kiki Nugroho', 'Tanjung Sengkuang', 'Batu Ampar', 'Batam', 'Jl. Garuda No. 687', 266, 'SHM', '2014-03-07', '2028-07-20');
INSERT INTO `sertipikat_tanah` VALUES (52, '1545-482003-5158', 'Fajar Prasetyo', 'Sadai', 'Bengkong', 'Batam', 'Jl. Melati No. 682', 167, 'HGU', '2016-04-21', NULL);
INSERT INTO `sertipikat_tanah` VALUES (53, '5779-494397-7720', 'Gita Santoso', 'Ngenang', 'Nongsa', 'Batam', 'Jl. Merpati No. 298', 558, 'SHM', '2022-01-10', NULL);
INSERT INTO `sertipikat_tanah` VALUES (54, '4940-673127-5259', 'Budi Santoso', 'Kampung Seraya', 'Batu Ampar', 'Batam', 'Jl. Melati No. 94', 521, 'HGB', '2011-10-03', '2040-01-17');
INSERT INTO `sertipikat_tanah` VALUES (55, '1021-247572-1294', 'Joko Santoso', 'Batu Selicin', 'Lubuk Baja', 'Batam', 'Jl. Melati No. 195', 465, 'SHM', '2020-05-03', '2049-07-27');
INSERT INTO `sertipikat_tanah` VALUES (56, '6870-299405-1746', 'Adi Haryanto', 'Bukit Tempayan', 'Batu Aji', 'Batam', 'Jl. Rajawali No. 259', 542, 'SHM', '2021-04-30', NULL);
INSERT INTO `sertipikat_tanah` VALUES (57, '5798-671133-2901', 'Joko Santoso', 'Kabil', 'Nongsa', 'Batam', 'Jl. Rajawali No. 539', 976, 'HGU', '2011-11-23', '2038-11-27');
INSERT INTO `sertipikat_tanah` VALUES (58, '5340-355826-3910', 'Gita Yulianti', 'Baloi Indah', 'Lubuk Baja', 'Batam', 'Jl. Mawar No. 607', 268, 'HGB', '2021-04-11', '2037-09-13');
INSERT INTO `sertipikat_tanah` VALUES (59, '4444-821578-1094', 'Dewi Haryanto', 'Baloi Indah', 'Lubuk Baja', 'Batam', 'Jl. Melati No. 328', 292, 'SHM', '2016-03-05', NULL);
INSERT INTO `sertipikat_tanah` VALUES (60, '8505-485014-8827', 'Eka Santoso', 'Kampung Pelita', 'Lubuk Baja', 'Batam', 'Jl. Rajawali No. 656', 356, 'HGB', '2013-01-22', '2032-05-15');
INSERT INTO `sertipikat_tanah` VALUES (61, '9606-579855-1551', 'Adi Siregar', 'Sambau', 'Nongsa', 'Batam', 'Jl. Rajawali No. 762', 424, 'HGB', '2017-08-19', NULL);
INSERT INTO `sertipikat_tanah` VALUES (62, '7204-238405-7453', 'Hadi Siregar', 'Kibing', 'Batu Aji', 'Batam', 'Jl. Garuda No. 329', 874, 'HGU', '2010-05-29', '2038-12-04');
INSERT INTO `sertipikat_tanah` VALUES (63, '3179-828807-4067', 'Adi Lestari', 'Sadai', 'Bengkong', 'Batam', 'Jl. Melati No. 132', 826, 'SHM', '2020-10-09', '2035-06-10');
INSERT INTO `sertipikat_tanah` VALUES (64, '3331-275668-8739', 'Hadi Siregar', 'Kampung Pelita', 'Lubuk Baja', 'Batam', 'Jl. Merpati No. 934', 115, 'SHM', '2018-10-07', NULL);
INSERT INTO `sertipikat_tanah` VALUES (65, '5590-130055-2445', 'Kiki Saputra', 'Ngenang', 'Nongsa', 'Batam', 'Jl. Rajawali No. 393', 303, 'HGU', '2017-03-21', '2046-05-07');
INSERT INTO `sertipikat_tanah` VALUES (66, '2148-898616-7976', 'Citra Putra', 'Baloi Indah', 'Lubuk Baja', 'Batam', 'Jl. Mawar No. 485', 374, 'SHM', '2020-05-16', '2047-02-16');
INSERT INTO `sertipikat_tanah` VALUES (67, '1056-742332-4410', 'Budi Wibowo', 'Sambau', 'Nongsa', 'Batam', 'Jl. Rajawali No. 768', 322, 'HGB', '2022-08-31', NULL);
INSERT INTO `sertipikat_tanah` VALUES (68, '6233-676553-5411', 'Dewi Saputra', 'Kibing', 'Batu Aji', 'Batam', 'Jl. Garuda No. 511', 220, 'HGU', '2019-05-07', '2041-10-30');
INSERT INTO `sertipikat_tanah` VALUES (69, '5270-265893-8625', 'Eka Nugroho', 'Buliang', 'Batu Aji', 'Batam', 'Jl. Merpati No. 640', 570, 'SHM', '2023-10-23', NULL);
INSERT INTO `sertipikat_tanah` VALUES (70, '3474-501964-4338', 'Eka Wibowo', 'Baloi Indah', 'Lubuk Baja', 'Batam', 'Jl. Rajawali No. 166', 773, 'HGU', '2017-03-29', '2032-06-15');
INSERT INTO `sertipikat_tanah` VALUES (71, '3131-101870-5096', 'Budi Haryanto', 'Sambau', 'Nongsa', 'Batam', 'Jl. Melati No. 608', 334, 'SHM', '2018-06-28', '2035-09-17');
INSERT INTO `sertipikat_tanah` VALUES (72, '2568-526651-1760', 'Kiki Lestari', 'Sadai', 'Bengkong', 'Batam', 'Jl. Melati No. 415', 141, 'SHM', '2012-02-13', NULL);
INSERT INTO `sertipikat_tanah` VALUES (73, '5373-513756-6342', 'Fajar Lestari', 'Bengkong Indah', 'Bengkong', 'Batam', 'Jl. Merpati No. 364', 510, 'SHM', '2012-12-07', NULL);
INSERT INTO `sertipikat_tanah` VALUES (74, '4453-581517-5950', 'Indra Siregar', 'Batu Besar', 'Nongsa', 'Batam', 'Jl. Mawar No. 127', 244, 'SHM', '2021-08-19', '2048-01-20');
INSERT INTO `sertipikat_tanah` VALUES (75, '2299-830436-6650', 'Kiki Putra', 'Sadai', 'Bengkong', 'Batam', 'Jl. Merpati No. 976', 136, 'HGB', '2023-07-18', NULL);
INSERT INTO `sertipikat_tanah` VALUES (76, '1401-627377-2296', 'Hadi Nugroho', 'Tanjung Sengkuang', 'Batu Ampar', 'Batam', 'Jl. Pelita No. 717', 92, 'HGB', '2022-04-28', '2051-01-06');
INSERT INTO `sertipikat_tanah` VALUES (77, '1254-531302-4178', 'Citra Lestari', 'Buliang', 'Batu Aji', 'Batam', 'Jl. Mawar No. 277', 765, 'HGB', '2019-11-05', NULL);
INSERT INTO `sertipikat_tanah` VALUES (78, '1604-555550-2951', 'Kiki Wibowo', 'Ngenang', 'Nongsa', 'Batam', 'Jl. Mawar No. 465', 733, 'HGU', '2024-08-11', '2041-12-17');
INSERT INTO `sertipikat_tanah` VALUES (79, '3293-608592-5699', 'Eka Wibowo', 'Sungai Jodoh', 'Batu Ampar', 'Batam', 'Jl. Melati No. 400', 189, 'SHM', '2020-03-17', '2038-11-23');
INSERT INTO `sertipikat_tanah` VALUES (80, '1628-715668-1624', 'Joko Prasetyo', 'Sungai Jodoh', 'Batu Ampar', 'Batam', 'Jl. Pelita No. 70', 760, 'HGB', '2010-08-09', '2039-01-01');
INSERT INTO `sertipikat_tanah` VALUES (81, '7060-720986-6632', 'Eka Yulianti', 'Sadai', 'Bengkong', 'Batam', 'Jl. Mawar No. 434', 51, 'HGU', '2012-10-19', NULL);
INSERT INTO `sertipikat_tanah` VALUES (82, '9931-639714-2995', 'Adi Wibowo', 'Sungai Jodoh', 'Batu Ampar', 'Batam', 'Jl. Pelita No. 700', 714, 'HGU', '2023-01-05', '2047-07-19');
INSERT INTO `sertipikat_tanah` VALUES (83, '4473-666501-9855', 'Gita Siregar', 'Tanjung Sengkuang', 'Batu Ampar', 'Batam', 'Jl. Mawar No. 463', 243, 'HGU', '2022-10-27', NULL);
INSERT INTO `sertipikat_tanah` VALUES (84, '9137-483740-3210', 'Lina Yulianti', 'Batu Besar', 'Nongsa', 'Batam', 'Jl. Mawar No. 301', 62, 'SHM', '2016-09-29', '2040-12-08');
INSERT INTO `sertipikat_tanah` VALUES (85, '1804-363844-4919', 'Hadi Saputra', 'Sambau', 'Nongsa', 'Batam', 'Jl. Garuda No. 330', 85, 'HGB', '2024-05-31', '2043-07-31');
INSERT INTO `sertipikat_tanah` VALUES (86, '4732-917342-4910', 'Adi Santoso', 'Kibing', 'Batu Aji', 'Batam', 'Jl. Pelita No. 176', 564, 'SHM', '2019-11-13', NULL);
INSERT INTO `sertipikat_tanah` VALUES (87, '2628-399370-4872', 'Dewi Saputra', 'Buliang', 'Batu Aji', 'Batam', 'Jl. Merpati No. 772', 127, 'SHM', '2021-09-06', '2048-11-01');
INSERT INTO `sertipikat_tanah` VALUES (88, '7609-513920-7509', 'Hadi Siregar', 'Sambau', 'Nongsa', 'Batam', 'Jl. Rajawali No. 923', 375, 'SHM', '2015-11-16', '2043-11-08');
INSERT INTO `sertipikat_tanah` VALUES (89, '6163-181187-7021', 'Eka Yulianti', 'Sadai', 'Bengkong', 'Batam', 'Jl. Rajawali No. 382', 882, 'HGU', '2014-08-03', '2035-12-17');
INSERT INTO `sertipikat_tanah` VALUES (90, '5533-543077-9482', 'Eka Siregar', 'Ngenang', 'Nongsa', 'Batam', 'Jl. Mawar No. 50', 941, 'SHM', '2013-04-19', '2023-06-08');
INSERT INTO `sertipikat_tanah` VALUES (91, '4307-221610-5385', 'Kiki Santoso', 'Batu Selicin', 'Lubuk Baja', 'Batam', 'Jl. Mawar No. 353', 423, 'HGU', '2024-04-07', NULL);
INSERT INTO `sertipikat_tanah` VALUES (92, '4120-277197-6025', 'Indra Lestari', 'Sadai', 'Bengkong', 'Batam', 'Jl. Merpati No. 773', 652, 'HGB', '2019-05-17', '2029-11-05');
INSERT INTO `sertipikat_tanah` VALUES (93, '1543-820829-1233', 'Dewi Putra', 'Ngenang', 'Nongsa', 'Batam', 'Jl. Pelita No. 889', 845, 'HGB', '2012-12-16', '2039-02-08');
INSERT INTO `sertipikat_tanah` VALUES (94, '8417-378971-8249', 'Fajar Prasetyo', 'Kampung Pelita', 'Lubuk Baja', 'Batam', 'Jl. Merpati No. 889', 965, 'HGU', '2015-09-01', '2032-09-02');
INSERT INTO `sertipikat_tanah` VALUES (95, '6058-449812-5222', 'Indra Lestari', 'Sungai Jodoh', 'Batu Ampar', 'Batam', 'Jl. Rajawali No. 314', 860, 'HGU', '2020-01-17', '2049-07-12');
INSERT INTO `sertipikat_tanah` VALUES (96, '6224-300858-4248', 'Hadi Lestari', 'Bukit Tempayan', 'Batu Aji', 'Batam', 'Jl. Mawar No. 67', 276, 'HGB', '2021-02-19', '2049-11-10');
INSERT INTO `sertipikat_tanah` VALUES (97, '3453-309606-7243', 'Fajar Nugroho', 'Tanjung Sengkuang', 'Batu Ampar', 'Batam', 'Jl. Merpati No. 77', 850, 'HGB', '2020-06-04', '2034-12-28');
INSERT INTO `sertipikat_tanah` VALUES (98, '8699-380249-3132', 'Lina Prasetyo', 'Belian', 'Batam Kota', 'Batam', 'Jl. Rajawali No. 382', 756, 'SHM', '2018-07-20', '2047-01-01');
INSERT INTO `sertipikat_tanah` VALUES (99, '3016-291073-7693', 'Gita Yulianti', 'Tanjung Sengkuang', 'Batu Ampar', 'Batam', 'Jl. Pelita No. 129', 130, 'HGB', '2017-03-27', NULL);
INSERT INTO `sertipikat_tanah` VALUES (100, '4837-523995-2306', 'Lina Nugroho', 'Bukit Tempayan', 'Batu Aji', 'Batam', 'Jl. Rajawali No. 542', 506, 'HGB', '2015-09-11', NULL);
INSERT INTO `sertipikat_tanah` VALUES (101, '1179-275425-9135', 'Kiki Putra', 'Buliang', 'Batu Aji', 'Batam', 'Jl. Mawar No. 12', 785, 'HGU', '2013-08-28', '2043-01-23');
INSERT INTO `sertipikat_tanah` VALUES (102, '6023-639774-3937', 'Joko Prasetyo', 'Batu Besar', 'Nongsa', 'Batam', 'Jl. Garuda No. 644', 466, 'HGU', '2015-04-15', '2038-07-30');
INSERT INTO `sertipikat_tanah` VALUES (103, '4782-375920-4281', 'Eka Siregar', 'Belian', 'Batam Kota', 'Batam', 'Jl. Melati No. 44', 698, 'HGU', '2019-05-02', NULL);
INSERT INTO `sertipikat_tanah` VALUES (104, '7785-392856-5020', 'Kiki Saputra', 'Baloi Permai', 'Batam Kota', 'Batam', 'Jl. Pelita No. 744', 886, 'SHM', '2020-02-12', '2036-02-12');
INSERT INTO `sertipikat_tanah` VALUES (105, '4728-190350-9957', 'Kiki Yulianti', 'Sukajadi', 'Batam Kota', 'Batam', 'Jl. Garuda No. 744', 166, 'HGU', '2014-12-25', '2031-11-20');
INSERT INTO `sertipikat_tanah` VALUES (106, '2333-884356-1688', 'Citra Haryanto', 'Ngenang', 'Nongsa', 'Batam', 'Jl. Mawar No. 564', 412, 'HGB', '2018-12-25', NULL);
INSERT INTO `sertipikat_tanah` VALUES (107, '3030-607066-6692', 'Indra Nugroho', 'Batu Besar', 'Nongsa', 'Batam', 'Jl. Garuda No. 119', 662, 'HGU', '2021-10-28', '2036-10-19');
INSERT INTO `sertipikat_tanah` VALUES (108, '2666-834448-8759', 'Eka Yulianti', 'Teluk Tering', 'Batam Kota', 'Batam', 'Jl. Pelita No. 104', 624, 'HGU', '2011-01-30', '2038-08-08');
INSERT INTO `sertipikat_tanah` VALUES (109, '7349-327438-1577', 'Budi Santoso', 'Sukajadi', 'Batam Kota', 'Batam', 'Jl. Merpati No. 243', 469, 'HGU', '2016-05-29', '2032-03-06');
INSERT INTO `sertipikat_tanah` VALUES (110, '7312-489163-7737', 'Hadi Lestari', 'Tiban Lama', 'Sekupang', 'Batam', 'Jl. Pelita No. 562', 623, 'SHM', '2022-02-18', '2038-05-06');
INSERT INTO `sertipikat_tanah` VALUES (111, '6135-563486-8074', 'Joko Santoso', 'Tiban Baru', 'Sekupang', 'Batam', 'Jl. Rajawali No. 155', 982, 'HGU', '2019-06-06', '2041-09-08');
INSERT INTO `sertipikat_tanah` VALUES (112, '2573-168285-7400', 'Citra Santoso', 'Buliang', 'Batu Aji', 'Batam', 'Jl. Mawar No. 589', 960, 'HGB', '2011-04-12', '2037-01-21');
INSERT INTO `sertipikat_tanah` VALUES (113, '8212-245524-1974', 'Hadi Putra', 'Batu Merah', 'Batu Ampar', 'Batam', 'Jl. Mawar No. 597', 308, 'HGU', '2017-06-02', '2031-03-31');
INSERT INTO `sertipikat_tanah` VALUES (114, '3905-612513-6300', 'Kiki Nugroho', 'Tanjung Uma', 'Lubuk Baja', 'Batam', 'Jl. Pelita No. 774', 63, 'HGU', '2016-10-21', '2045-11-09');
INSERT INTO `sertipikat_tanah` VALUES (115, '4489-943269-4714', 'Gita Saputra', 'Lubuk Baja Kota', 'Lubuk Baja', 'Batam', 'Jl. Rajawali No. 15', 381, 'HGU', '2010-05-10', '2021-01-28');
INSERT INTO `sertipikat_tanah` VALUES (116, '1799-111078-3232', 'Fajar Lestari', 'Batu Besar', 'Nongsa', 'Batam', 'Jl. Garuda No. 375', 687, 'SHM', '2011-11-12', NULL);
INSERT INTO `sertipikat_tanah` VALUES (117, '6641-327022-8622', 'Citra Siregar', 'Sungai Jodoh', 'Batu Ampar', 'Batam', 'Jl. Melati No. 75', 773, 'SHM', '2013-09-05', '2040-10-22');
INSERT INTO `sertipikat_tanah` VALUES (118, '6610-746477-8323', 'Adi Yulianti', 'Tanjung Uncang', 'Batu Aji', 'Batam', 'Jl. Garuda No. 377', 456, 'HGB', '2014-02-24', '2042-12-23');
INSERT INTO `sertipikat_tanah` VALUES (119, '5396-425028-3670', 'Lina Siregar', 'Batu Merah', 'Batu Ampar', 'Batam', 'Jl. Pelita No. 311', 790, 'HGB', '2015-03-05', NULL);
INSERT INTO `sertipikat_tanah` VALUES (120, '7677-843650-7796', 'Indra Siregar', 'Sambau', 'Nongsa', 'Batam', 'Jl. Mawar No. 612', 87, 'SHM', '2010-11-14', '2039-09-28');
INSERT INTO `sertipikat_tanah` VALUES (121, '1390-419962-2294', 'Indra Prasetyo', 'Kampung Seraya', 'Batu Ampar', 'Batam', 'Jl. Rajawali No. 799', 814, 'SHM', '2021-12-30', '2051-02-24');
INSERT INTO `sertipikat_tanah` VALUES (122, '6984-480933-5660', 'Gita Saputra', 'Kampung Seraya', 'Batu Ampar', 'Batam', 'Jl. Garuda No. 221', 198, 'HGB', '2015-05-28', NULL);
INSERT INTO `sertipikat_tanah` VALUES (123, '3842-258550-3106', 'Adi Lestari', 'Sungai Jodoh', 'Batu Ampar', 'Batam', 'Jl. Merpati No. 226', 746, 'HGB', '2021-12-20', '2046-07-08');
INSERT INTO `sertipikat_tanah` VALUES (124, '2377-398024-9512', 'Gita Prasetyo', 'Tiban Indah', 'Sekupang', 'Batam', 'Jl. Rajawali No. 351', 410, 'HGU', '2018-10-15', '2033-07-16');
INSERT INTO `sertipikat_tanah` VALUES (125, '5749-600005-7840', 'Hadi Haryanto', 'Tiban Indah', 'Sekupang', 'Batam', 'Jl. Mawar No. 593', 567, 'SHM', '2024-05-18', '2041-06-25');
INSERT INTO `sertipikat_tanah` VALUES (126, '2301-627754-2791', 'Lina Siregar', 'Sungai Harapan', 'Sekupang', 'Batam', 'Jl. Merpati No. 804', 96, 'HGB', '2024-01-14', '2048-01-22');
INSERT INTO `sertipikat_tanah` VALUES (127, '2780-467832-8413', 'Gita Lestari', 'Tanjung Pinggir', 'Sekupang', 'Batam', 'Jl. Melati No. 713', 336, 'HGU', '2011-06-16', '2036-03-18');
INSERT INTO `sertipikat_tanah` VALUES (128, '5314-886218-4784', 'Kiki Yulianti', 'Tanjung Buntung', 'Bengkong', 'Batam', 'Jl. Rajawali No. 454', 576, 'SHM', '2021-10-20', NULL);
INSERT INTO `sertipikat_tanah` VALUES (129, '8017-563928-6179', 'Lina Lestari', 'Batu Besar', 'Nongsa', 'Batam', 'Jl. Mawar No. 286', 439, 'SHM', '2022-10-10', '2034-05-02');
INSERT INTO `sertipikat_tanah` VALUES (130, '4583-944619-8643', 'Kiki Putra', 'Teluk Tering', 'Batam Kota', 'Batam', 'Jl. Rajawali No. 549', 398, 'HGB', '2020-04-15', '2039-10-06');
INSERT INTO `sertipikat_tanah` VALUES (131, '3612-959909-9956', 'Fajar Siregar', 'Bengkong Laut', 'Bengkong', 'Batam', 'Jl. Garuda No. 441', 768, 'SHM', '2020-01-20', '2030-04-03');
INSERT INTO `sertipikat_tanah` VALUES (132, '4120-799418-5086', 'Joko Wibowo', 'Sungai Jodoh', 'Batu Ampar', 'Batam', 'Jl. Merpati No. 418', 395, 'SHM', '2011-02-05', '2029-01-02');
INSERT INTO `sertipikat_tanah` VALUES (133, '5683-718833-6877', 'Kiki Putra', 'Tanjung Buntung', 'Bengkong', 'Batam', 'Jl. Garuda No. 287', 337, 'SHM', '2016-11-12', '2034-01-13');
INSERT INTO `sertipikat_tanah` VALUES (134, '7522-129538-4601', 'Budi Putra', 'Taman Baloi', 'Batam Kota', 'Batam', 'Jl. Rajawali No. 547', 87, 'HGB', '2018-12-11', '2044-09-28');
INSERT INTO `sertipikat_tanah` VALUES (135, '4467-319329-4288', 'Kiki Lestari', 'Batu Selicin', 'Lubuk Baja', 'Batam', 'Jl. Mawar No. 109', 584, 'HGB', '2015-04-08', '2036-09-30');
INSERT INTO `sertipikat_tanah` VALUES (136, '6477-127863-2193', 'Lina Lestari', 'Ngenang', 'Nongsa', 'Batam', 'Jl. Pelita No. 804', 90, 'HGU', '2013-01-18', '2032-03-14');
INSERT INTO `sertipikat_tanah` VALUES (137, '4190-238186-4590', 'Gita Lestari', 'Tanjung Uma', 'Lubuk Baja', 'Batam', 'Jl. Rajawali No. 702', 75, 'HGB', '2022-05-08', '2037-11-01');
INSERT INTO `sertipikat_tanah` VALUES (138, '4395-892606-4538', 'Gita Yulianti', 'Sungai Harapan', 'Sekupang', 'Batam', 'Jl. Rajawali No. 382', 243, 'HGB', '2010-11-19', '2035-03-18');
INSERT INTO `sertipikat_tanah` VALUES (139, '5347-969490-3089', 'Hadi Saputra', 'Bengkong Laut', 'Bengkong', 'Batam', 'Jl. Rajawali No. 47', 445, 'HGB', '2013-09-23', NULL);
INSERT INTO `sertipikat_tanah` VALUES (140, '6820-788046-7598', 'Kiki Lestari', 'Bukit Tempayan', 'Batu Aji', 'Batam', 'Jl. Pelita No. 479', 700, 'HGB', '2023-03-09', NULL);
INSERT INTO `sertipikat_tanah` VALUES (141, '6004-889042-5004', 'Gita Saputra', 'Tanjung Pinggir', 'Sekupang', 'Batam', 'Jl. Merpati No. 511', 394, 'SHM', '2024-12-15', '2038-03-09');
INSERT INTO `sertipikat_tanah` VALUES (142, '2431-133583-9884', 'Kiki Nugroho', 'Teluk Tering', 'Batam Kota', 'Batam', 'Jl. Garuda No. 752', 875, 'HGB', '2013-02-21', '2034-08-05');
INSERT INTO `sertipikat_tanah` VALUES (143, '9593-214020-5565', 'Hadi Santoso', 'Batu Selicin', 'Lubuk Baja', 'Batam', 'Jl. Rajawali No. 663', 159, 'HGB', '2014-04-30', '2040-05-02');
INSERT INTO `sertipikat_tanah` VALUES (144, '3718-615776-6137', 'Eka Wibowo', 'Tiban Indah', 'Sekupang', 'Batam', 'Jl. Melati No. 688', 115, 'HGU', '2010-10-09', '2039-04-05');
INSERT INTO `sertipikat_tanah` VALUES (145, '6950-656169-8351', 'Fajar Wibowo', 'Buliang', 'Batu Aji', 'Batam', 'Jl. Melati No. 296', 924, 'SHM', '2015-04-14', '2035-10-31');
INSERT INTO `sertipikat_tanah` VALUES (146, '2578-832398-5562', 'Eka Saputra', 'Patam Lestari', 'Sekupang', 'Batam', 'Jl. Melati No. 837', 544, 'SHM', '2019-01-30', '2037-03-05');
INSERT INTO `sertipikat_tanah` VALUES (147, '4170-902168-9692', 'Fajar Yulianti', 'Tanjung Pinggir', 'Sekupang', 'Batam', 'Jl. Pelita No. 360', 850, 'SHM', '2023-11-07', '2049-07-21');
INSERT INTO `sertipikat_tanah` VALUES (148, '6028-402312-9220', 'Joko Haryanto', 'Patam Lestari', 'Sekupang', 'Batam', 'Jl. Mawar No. 879', 539, 'HGB', '2022-02-10', '2041-04-05');
INSERT INTO `sertipikat_tanah` VALUES (149, '9052-217124-8574', 'Eka Putra', 'Tanjung Pinggir', 'Sekupang', 'Batam', 'Jl. Rajawali No. 534', 211, 'SHM', '2019-12-31', '2049-05-21');
INSERT INTO `sertipikat_tanah` VALUES (150, '7483-329788-8423', 'Kiki Santoso', 'Tanjung Riau', 'Sekupang', 'Batam', 'Jl. Garuda No. 744', 364, 'SHM', '2020-04-21', '2036-01-21');
INSERT INTO `sertipikat_tanah` VALUES (151, '4960-681262-2615', 'Indra Putra', 'Kampung Pelita', 'Lubuk Baja', 'Batam', 'Jl. Garuda No. 747', 659, 'HGB', '2023-02-26', '2050-11-09');
INSERT INTO `sertipikat_tanah` VALUES (152, '5244-981993-6087', 'Joko Prasetyo', 'Sadai', 'Bengkong', 'Batam', 'Jl. Mawar No. 79', 750, 'HGU', '2010-05-09', '2029-08-30');
INSERT INTO `sertipikat_tanah` VALUES (153, '6598-312001-1803', 'Adi Siregar', 'Kampung Seraya', 'Batu Ampar', 'Batam', 'Jl. Mawar No. 266', 85, 'HGU', '2020-07-30', NULL);
INSERT INTO `sertipikat_tanah` VALUES (154, '6620-945017-7728', 'Citra Nugroho', 'Baloi Permai', 'Batam Kota', 'Batam', 'Jl. Pelita No. 494', 458, 'SHM', '2017-10-18', '2028-12-21');
INSERT INTO `sertipikat_tanah` VALUES (155, '4023-706616-2880', 'Citra Santoso', 'Bengkong Indah', 'Bengkong', 'Batam', 'Jl. Garuda No. 470', 603, 'HGU', '2011-09-27', '2023-09-28');
INSERT INTO `sertipikat_tanah` VALUES (156, '3090-244364-2251', 'Joko Lestari', 'Bukit Tempayan', 'Batu Aji', 'Batam', 'Jl. Melati No. 260', 633, 'SHM', '2016-01-30', NULL);
INSERT INTO `sertipikat_tanah` VALUES (157, '8437-461489-9113', 'Eka Siregar', 'Kampung Seraya', 'Batu Ampar', 'Batam', 'Jl. Rajawali No. 326', 577, 'HGB', '2013-04-07', '2035-09-01');
INSERT INTO `sertipikat_tanah` VALUES (158, '5018-797359-7752', 'Hadi Siregar', 'Sungai Jodoh', 'Batu Ampar', 'Batam', 'Jl. Merpati No. 893', 319, 'SHM', '2013-06-23', NULL);
INSERT INTO `sertipikat_tanah` VALUES (159, '1395-634936-9938', 'Indra Wibowo', 'Teluk Tering', 'Batam Kota', 'Batam', 'Jl. Merpati No. 753', 319, 'HGU', '2019-05-23', '2041-08-15');
INSERT INTO `sertipikat_tanah` VALUES (160, '4278-845393-3875', 'Citra Lestari', 'Sambau', 'Nongsa', 'Batam', 'Jl. Pelita No. 676', 674, 'SHM', '2021-05-09', NULL);
INSERT INTO `sertipikat_tanah` VALUES (161, '9571-849025-2263', 'Citra Putra', 'Tanjung Riau', 'Sekupang', 'Batam', 'Jl. Pelita No. 423', 684, 'SHM', '2018-05-13', NULL);
INSERT INTO `sertipikat_tanah` VALUES (162, '9334-757995-1655', 'Kiki Nugroho', 'Bukit Tempayan', 'Batu Aji', 'Batam', 'Jl. Garuda No. 354', 137, 'SHM', '2024-04-04', '2054-02-04');
INSERT INTO `sertipikat_tanah` VALUES (163, '7081-380890-4399', 'Fajar Lestari', 'Patam Lestari', 'Sekupang', 'Batam', 'Jl. Mawar No. 79', 362, 'HGB', '2020-07-01', '2047-09-19');
INSERT INTO `sertipikat_tanah` VALUES (164, '5026-962552-5592', 'Lina Lestari', 'Bengkong Indah', 'Bengkong', 'Batam', 'Jl. Pelita No. 875', 65, 'HGB', '2019-10-17', NULL);
INSERT INTO `sertipikat_tanah` VALUES (165, '6256-988674-3212', 'Citra Prasetyo', 'Kibing', 'Batu Aji', 'Batam', 'Jl. Merpati No. 51', 635, 'HGU', '2023-05-18', '2043-09-30');
INSERT INTO `sertipikat_tanah` VALUES (166, '5243-225595-3676', 'Adi Haryanto', 'Taman Baloi', 'Batam Kota', 'Batam', 'Jl. Garuda No. 509', 573, 'SHM', '2013-03-29', '2032-03-26');
INSERT INTO `sertipikat_tanah` VALUES (167, '9728-719590-6644', 'Indra Nugroho', 'Teluk Tering', 'Batam Kota', 'Batam', 'Jl. Rajawali No. 818', 377, 'HGU', '2020-07-06', '2048-09-23');
INSERT INTO `sertipikat_tanah` VALUES (168, '2395-253137-2061', 'Kiki Prasetyo', 'Buliang', 'Batu Aji', 'Batam', 'Jl. Melati No. 840', 558, 'HGU', '2011-10-16', '2041-06-01');
INSERT INTO `sertipikat_tanah` VALUES (169, '2759-843949-5604', 'Citra Nugroho', 'Baloi Permai', 'Batam Kota', 'Batam', 'Jl. Pelita No. 567', 855, 'HGU', '2011-03-29', NULL);
INSERT INTO `sertipikat_tanah` VALUES (170, '1711-568944-1232', 'Indra Prasetyo', 'Sungai Panas', 'Batam Kota', 'Batam', 'Jl. Rajawali No. 219', 436, 'SHM', '2017-07-05', '2033-02-08');
INSERT INTO `sertipikat_tanah` VALUES (171, '2191-337176-8640', 'Kiki Saputra', 'Lubuk Baja Kota', 'Lubuk Baja', 'Batam', 'Jl. Pelita No. 403', 952, 'HGU', '2010-02-09', NULL);
INSERT INTO `sertipikat_tanah` VALUES (172, '1673-363522-9092', 'Citra Prasetyo', 'Sukajadi', 'Batam Kota', 'Batam', 'Jl. Rajawali No. 798', 824, 'HGU', '2014-01-23', '2025-06-03');
INSERT INTO `sertipikat_tanah` VALUES (173, '9639-513343-2471', 'Kiki Putra', 'Baloi Permai', 'Batam Kota', 'Batam', 'Jl. Melati No. 175', 401, 'HGU', '2024-03-08', '2036-06-18');
INSERT INTO `sertipikat_tanah` VALUES (174, '9625-852247-6888', 'Fajar Putra', 'Teluk Tering', 'Batam Kota', 'Batam', 'Jl. Mawar No. 934', 114, 'HGB', '2023-07-27', NULL);
INSERT INTO `sertipikat_tanah` VALUES (175, '7530-904612-1908', 'Joko Siregar', 'Sungai Jodoh', 'Batu Ampar', 'Batam', 'Jl. Garuda No. 84', 649, 'HGB', '2011-11-07', '2030-07-20');
INSERT INTO `sertipikat_tanah` VALUES (176, '9111-568683-8061', 'Hadi Putra', 'Buliang', 'Batu Aji', 'Batam', 'Jl. Merpati No. 462', 469, 'SHM', '2022-09-23', '2039-12-08');
INSERT INTO `sertipikat_tanah` VALUES (177, '9085-576332-4596', 'Indra Siregar', 'Patam Lestari', 'Sekupang', 'Batam', 'Jl. Rajawali No. 306', 984, 'HGB', '2013-01-16', '2034-10-10');
INSERT INTO `sertipikat_tanah` VALUES (178, '6242-898392-7782', 'Kiki Santoso', 'Sambau', 'Nongsa', 'Batam', 'Jl. Garuda No. 261', 86, 'HGU', '2024-06-07', '2049-08-21');
INSERT INTO `sertipikat_tanah` VALUES (179, '8450-870494-1697', 'Indra Putra', 'Sungai Jodoh', 'Batu Ampar', 'Batam', 'Jl. Garuda No. 622', 544, 'HGB', '2024-10-04', '2035-09-18');
INSERT INTO `sertipikat_tanah` VALUES (180, '9851-523769-5634', 'Gita Haryanto', 'Tanjung Uma', 'Lubuk Baja', 'Batam', 'Jl. Mawar No. 439', 279, 'HGB', '2024-02-09', NULL);
INSERT INTO `sertipikat_tanah` VALUES (181, '7689-505519-7329', 'Indra Yulianti', 'Sadai', 'Bengkong', 'Batam', 'Jl. Mawar No. 259', 356, 'SHM', '2021-05-03', NULL);
INSERT INTO `sertipikat_tanah` VALUES (182, '2477-507565-5382', 'Eka Santoso', 'Batu Merah', 'Batu Ampar', 'Batam', 'Jl. Mawar No. 422', 232, 'SHM', '2022-02-05', '2048-03-05');
INSERT INTO `sertipikat_tanah` VALUES (183, '3165-664082-3191', 'Budi Putra', 'Sadai', 'Bengkong', 'Batam', 'Jl. Garuda No. 619', 289, 'HGB', '2010-09-04', '2031-10-23');
INSERT INTO `sertipikat_tanah` VALUES (184, '6644-549332-3956', 'Joko Santoso', 'Kampung Seraya', 'Batu Ampar', 'Batam', 'Jl. Rajawali No. 14', 90, 'SHM', '2020-05-26', '2039-08-20');
INSERT INTO `sertipikat_tanah` VALUES (185, '9058-707469-4033', 'Hadi Wibowo', 'Sungai Harapan', 'Sekupang', 'Batam', 'Jl. Pelita No. 809', 65, 'HGU', '2011-07-12', NULL);
INSERT INTO `sertipikat_tanah` VALUES (186, '4972-157201-5401', 'Dewi Saputra', 'Tanjung Uma', 'Lubuk Baja', 'Batam', 'Jl. Rajawali No. 541', 285, 'HGB', '2017-09-25', '2029-05-24');
INSERT INTO `sertipikat_tanah` VALUES (187, '9125-436073-9170', 'Fajar Siregar', 'Kabil', 'Nongsa', 'Batam', 'Jl. Garuda No. 534', 846, 'SHM', '2017-07-30', '2036-07-25');
INSERT INTO `sertipikat_tanah` VALUES (188, '7106-224303-7362', 'Budi Siregar', 'Sukajadi', 'Batam Kota', 'Batam', 'Jl. Melati No. 478', 995, 'HGB', '2012-02-04', NULL);
INSERT INTO `sertipikat_tanah` VALUES (189, '7849-999378-2459', 'Fajar Yulianti', 'Batu Besar', 'Nongsa', 'Batam', 'Jl. Garuda No. 382', 249, 'HGB', '2011-03-01', '2039-11-20');
INSERT INTO `sertipikat_tanah` VALUES (190, '3007-945713-7837', 'Hadi Putra', 'Kibing', 'Batu Aji', 'Batam', 'Jl. Mawar No. 197', 671, 'SHM', '2020-05-29', '2036-08-16');
INSERT INTO `sertipikat_tanah` VALUES (191, '3413-947814-2804', 'Adi Santoso', 'Belian', 'Batam Kota', 'Batam', 'Jl. Garuda No. 86', 956, 'HGU', '2014-03-24', '2037-09-24');
INSERT INTO `sertipikat_tanah` VALUES (192, '9186-582172-7403', 'Fajar Siregar', 'Sungai Jodoh', 'Batu Ampar', 'Batam', 'Jl. Merpati No. 816', 853, 'HGU', '2024-04-06', '2045-11-17');
INSERT INTO `sertipikat_tanah` VALUES (193, '6060-931321-6083', 'Eka Wibowo', 'Bengkong Laut', 'Bengkong', 'Batam', 'Jl. Rajawali No. 600', 62, 'SHM', '2011-03-22', NULL);
INSERT INTO `sertipikat_tanah` VALUES (194, '6489-377172-9383', 'Eka Wibowo', 'Sungai Harapan', 'Sekupang', 'Batam', 'Jl. Rajawali No. 689', 866, 'HGB', '2016-06-08', '2036-04-27');
INSERT INTO `sertipikat_tanah` VALUES (195, '5032-374685-8217', 'Dewi Prasetyo', 'Lubuk Baja Kota', 'Lubuk Baja', 'Batam', 'Jl. Melati No. 163', 633, 'HGB', '2021-03-09', '2033-07-01');
INSERT INTO `sertipikat_tanah` VALUES (196, '7132-300572-4092', 'Dewi Prasetyo', 'Tanjung Uma', 'Lubuk Baja', 'Batam', 'Jl. Rajawali No. 10', 847, 'HGB', '2010-10-11', '2036-02-26');
INSERT INTO `sertipikat_tanah` VALUES (197, '8541-411691-8774', 'Kiki Yulianti', 'Teluk Tering', 'Batam Kota', 'Batam', 'Jl. Garuda No. 634', 374, 'SHM', '2022-11-04', '2043-06-19');
INSERT INTO `sertipikat_tanah` VALUES (198, '9469-332703-6343', 'Dewi Prasetyo', 'Sungai Jodoh', 'Batu Ampar', 'Batam', 'Jl. Pelita No. 594', 394, 'HGB', '2013-03-15', '2025-01-16');
INSERT INTO `sertipikat_tanah` VALUES (199, '6344-695147-6358', 'Hadi Wibowo', 'Bukit Tempayan', 'Batu Aji', 'Batam', 'Jl. Mawar No. 960', 488, 'HGU', '2022-06-07', NULL);
INSERT INTO `sertipikat_tanah` VALUES (200, '9415-333118-9200', 'Dewi Haryanto', 'Kampung Seraya', 'Batu Ampar', 'Batam', 'Jl. Melati No. 682', 804, 'HGU', '2010-10-17', '2039-12-05');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int NOT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
