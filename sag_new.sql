/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 100126
Source Host           : localhost:3306
Source Database       : sag_new

Target Server Type    : MYSQL
Target Server Version : 100126
File Encoding         : 65001

Date: 2018-01-17 18:03:19
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for estatus
-- ----------------------------
DROP TABLE IF EXISTS `estatus`;
CREATE TABLE `estatus` (
  `idEstatus` int(11) NOT NULL AUTO_INCREMENT,
  `estatus` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`idEstatus`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of estatus
-- ----------------------------
INSERT INTO `estatus` VALUES ('1', 'Activo');
INSERT INTO `estatus` VALUES ('2', 'Inactivo');

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `menu_id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_name` varchar(255) NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT '0 if menu is root level or menuid if this is child on any menu',
  `link` varchar(255) NOT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '1' COMMENT '0 for disabled menu or 1 for enabled menu',
  `icon` varchar(50) NOT NULL,
  `is_visible` smallint(1) NOT NULL,
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES ('1', 'Home', '0', '#home', '1', 'fa fa-home', '0');
INSERT INTO `menu` VALUES ('2', 'Web development', '0', '#web-dev', '1', 'fa fa-home', '0');
INSERT INTO `menu` VALUES ('3', 'WordPress Development', '0', '#wp-dev', '1', 'fa fa-home', '0');
INSERT INTO `menu` VALUES ('4', 'About w3school.info', '0', '#w3school-info', '1', 'fa fa-question-circle', '0');
INSERT INTO `menu` VALUES ('5', 'AWS ADMIN', '2', '#', '1', 'fa fa-home', '0');
INSERT INTO `menu` VALUES ('6', 'PHP', '2', '#', '1', 'fa fa-home', '0');
INSERT INTO `menu` VALUES ('7', 'Javascript', '2', '#', '1', 'fa fa-home', '0');
INSERT INTO `menu` VALUES ('8', 'Elastic Ip', '5', '#electic-ip', '1', 'fa fa-home', '0');
INSERT INTO `menu` VALUES ('9', 'Load balacing', '5', '#load-balancing', '1', 'fa fa-home', '0');
INSERT INTO `menu` VALUES ('10', 'Cluster Indexes', '5', '#cluster-indexes', '1', 'fa fa-home', '0');
INSERT INTO `menu` VALUES ('11', 'Rds Db setup', '5', '#rds-db', '1', 'fa fa-home', '0');
INSERT INTO `menu` VALUES ('12', 'Framework Development', '6', '#', '1', 'fa fa-home', '0');
INSERT INTO `menu` VALUES ('13', 'Ecommerce Development', '6', '#', '1', 'fa fa-home', '0');
INSERT INTO `menu` VALUES ('14', 'Cms Development', '6', '#', '1', 'fa fa-home', '0');
INSERT INTO `menu` VALUES ('21', 'News & Media', '6', '#', '1', 'fa fa-home', '0');
INSERT INTO `menu` VALUES ('22', 'Codeigniter', '12', '#codeigniter', '1', 'fa fa-home', '0');
INSERT INTO `menu` VALUES ('23', 'Cake', '12', '#cake-dev', '1', 'fa fa-home', '0');
INSERT INTO `menu` VALUES ('24', 'Opencart', '13', '#opencart', '1', 'fa fa-home', '0');
INSERT INTO `menu` VALUES ('25', 'Magento', '13', '#magento', '1', 'fa fa-home', '0');
INSERT INTO `menu` VALUES ('26', 'Wordpress', '14', '#wordpress-dev', '1', 'fa fa-home', '0');
INSERT INTO `menu` VALUES ('27', 'Joomla', '14', '#joomla-dev', '1', 'fa fa-home', '0');
INSERT INTO `menu` VALUES ('28', 'Drupal', '14', '#drupal-dev', '1', 'fa fa-home', '0');
INSERT INTO `menu` VALUES ('29', 'Ajax', '7', '#ajax-dev', '1', 'fa fa-home', '0');
INSERT INTO `menu` VALUES ('30', 'Jquery', '7', '#jquery-dev', '1', 'fa fa-home', '0');
INSERT INTO `menu` VALUES ('31', 'Themes', '3', '#theme-dev', '1', 'fa fa-home', '0');
INSERT INTO `menu` VALUES ('32', 'Plugins', '3', '#plugin-dev', '1', 'fa fa-home', '0');
INSERT INTO `menu` VALUES ('33', 'Custom Post Types', '3', '#', '1', 'fa fa-home', '0');
INSERT INTO `menu` VALUES ('34', 'Options', '3', '#wp-options', '1', 'fa fa-home', '0');
INSERT INTO `menu` VALUES ('35', 'Testimonials', '33', '#testimonial-dev', '1', 'fa fa-home', '0');
INSERT INTO `menu` VALUES ('36', 'Portfolios', '33', '#portfolio-dev', '1', 'fa fa-home', '0');

-- ----------------------------
-- Table structure for menu_perfil
-- ----------------------------
DROP TABLE IF EXISTS `menu_perfil`;
CREATE TABLE `menu_perfil` (
  `idMenuPerfil` int(11) NOT NULL AUTO_INCREMENT,
  `idPerfil` int(11) NOT NULL DEFAULT '0',
  `idMenu` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`idMenuPerfil`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of menu_perfil
-- ----------------------------
INSERT INTO `menu_perfil` VALUES ('1', '1', '1');
INSERT INTO `menu_perfil` VALUES ('2', '1', '2');
INSERT INTO `menu_perfil` VALUES ('3', '1', '3');
INSERT INTO `menu_perfil` VALUES ('4', '1', '4');
INSERT INTO `menu_perfil` VALUES ('5', '1', '5');
INSERT INTO `menu_perfil` VALUES ('6', '1', '6');
INSERT INTO `menu_perfil` VALUES ('7', '1', '7');
INSERT INTO `menu_perfil` VALUES ('8', '1', '8');
INSERT INTO `menu_perfil` VALUES ('9', '1', '9');
INSERT INTO `menu_perfil` VALUES ('10', '1', '17');

-- ----------------------------
-- Table structure for perfiles
-- ----------------------------
DROP TABLE IF EXISTS `perfiles`;
CREATE TABLE `perfiles` (
  `idPerfil` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`idPerfil`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of perfiles
-- ----------------------------
INSERT INTO `perfiles` VALUES ('1', 'Super Administrador');
INSERT INTO `perfiles` VALUES ('2', 'Administrador');
INSERT INTO `perfiles` VALUES ('3', 'Usuario');

-- ----------------------------
-- Table structure for r_menu
-- ----------------------------
DROP TABLE IF EXISTS `r_menu`;
CREATE TABLE `r_menu` (
  `id_menu` int(2) NOT NULL AUTO_INCREMENT,
  `nama_menu` varchar(100) DEFAULT NULL,
  `urutan` int(2) DEFAULT NULL,
  `icon` varchar(50) DEFAULT NULL,
  `newclass` varchar(100) DEFAULT NULL,
  `is_visible` smallint(2) DEFAULT NULL,
  PRIMARY KEY (`id_menu`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of r_menu
-- ----------------------------
INSERT INTO `r_menu` VALUES ('1', 'Busquedas', '1', '<i class=\"fa fa-dashboard\"></i>', 'first_class', '1');
INSERT INTO `r_menu` VALUES ('2', 'Captura de datos', '2', '<i class=\"fa fa-files-o\"></i>', 'second_class', '1');
INSERT INTO `r_menu` VALUES ('3', 'Tickets', '3', '<i class=\"fa fa-th\"></i>', 'third_class', '1');
INSERT INTO `r_menu` VALUES ('4', 'Reportes', '4', '<i class=\"fa fa-dashboard\"></i>', null, '1');
INSERT INTO `r_menu` VALUES ('5', 'Ejecución de periodo', '5', '<i class=\"fa fa-pie-chart\"></i>', null, '1');
INSERT INTO `r_menu` VALUES ('6', 'Balance', '6', '<i class=\"fa fa-laptop\"></i>', null, '0');
INSERT INTO `r_menu` VALUES ('7', 'Residentes', '7', '<i class=\"fa fa-envelope\"></i>', null, '0');

-- ----------------------------
-- Table structure for r_menu_sub
-- ----------------------------
DROP TABLE IF EXISTS `r_menu_sub`;
CREATE TABLE `r_menu_sub` (
  `id_sub_menu` int(3) NOT NULL AUTO_INCREMENT,
  `nama_sub_menu` varchar(100) DEFAULT NULL,
  `id_menu` int(2) DEFAULT NULL,
  `urutan_sub_menu` int(2) DEFAULT NULL,
  `hak_akses` varchar(30) DEFAULT '4',
  `url` varchar(150) DEFAULT '#',
  `content_before` varchar(200) DEFAULT NULL,
  `content_after` varchar(200) DEFAULT NULL,
  `icon` varchar(150) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `target` enum('_self','_blank') DEFAULT '_self',
  `is_visible` smallint(2) DEFAULT '0',
  PRIMARY KEY (`id_sub_menu`),
  KEY `urutan_sub_menu_index` (`id_menu`,`urutan_sub_menu`)
) ENGINE=MyISAM AUTO_INCREMENT=48 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of r_menu_sub
-- ----------------------------
INSERT INTO `r_menu_sub` VALUES ('1', 'Bancos', '1', '1', '1', '', null, null, '<i class=\"fa fa-university\"></i>', 'Master Jenis Barang', '_self', '1');
INSERT INTO `r_menu_sub` VALUES ('2', 'Lecturas', '1', '1', '2', '', null, null, '<i class=\"fa  fa-dashboard\"></i>', 'Master Merk Barang', '_self', '1');
INSERT INTO `r_menu_sub` VALUES ('5', 'Departamentos', '1', '1', '3', null, null, null, '<i class=\"fa  fa-building-o\"></i>', 'Master Pelanggan', '_self', '1');
INSERT INTO `r_menu_sub` VALUES ('6', 'Edificios', '1', '1', '4', null, null, null, '<i class=\"fa  fa-building\"></i>', 'Transaksi Penjualan (POS)', '_self', '1');
INSERT INTO `r_menu_sub` VALUES ('7', 'Alta lecturas', '2', '2', '1', 'aplikasi/penjualan/v_retur_penjualan.php', null, null, '<i class=\"fa  fa-arrow-right\"></i>', 'Transaksi Retur Penjualan', '_self', '1');
INSERT INTO `r_menu_sub` VALUES ('8', 'Edición de lecturas', '2', '2', '2', 'aplikasi/pembelian/v_master_supplier.php', null, null, '<i class=\"fa  fa-arrow-right\"></i>', 'Master Supplier', '_self', '1');
INSERT INTO `r_menu_sub` VALUES ('9', 'Edición de edificios', '2', '2', '3', 'aplikasi/pembelian/v_pembelian.php', null, '', '<i class=\"fa  fa-arrow-right\"></i>', 'Transaksi Pembelian', '_self', '1');
INSERT INTO `r_menu_sub` VALUES ('10', 'Edicion de departamentos', '2', '2', '4', 'aplikasi/pembelian/v_retur_pembelian.php', null, null, '<i class=\"fa  fa-arrow-right\"></i>', 'Transaksi Retur Pembelian', '_self', '1');
INSERT INTO `r_menu_sub` VALUES ('11', 'Edición de fechas lectura', '2', '2', '5', 'aplikasi/laporan/l_daftar_harga_barang.php', '', null, '<i class=\"fa  fa-arrow-right\"></i>', 'Laporan Daftar Harga Barang', '_blank', '1');
INSERT INTO `r_menu_sub` VALUES ('12', 'Listado de Tickes', '3', '3', '1', 'aplikasi/laporan/l_daftar_harga_jasa.php', '', null, '<i class=\"fa  fa-arrow-right\"></i>', 'Laporan Daftar Harga Jasa', '_blank', '1');
INSERT INTO `r_menu_sub` VALUES ('13', 'L. Pembelian', '4', '8', '4', 'aplikasi/laporan/v_laporan_pembelian.php', '', null, '<i class=\"fa  fa-arrow-right\"></i>', 'Laporan Pembelian', '_self', '0');
INSERT INTO `r_menu_sub` VALUES ('14', 'L. Laba Rugi', '4', '14', '4', 'aplikasi/laporan/v_laporan_laba_rugi.php', '<li class=\"divider\"></li>', null, '<i class=\"fa  fa-arrow-right\"></i>', 'Laporan Laba Rugi', '_self', '0');
INSERT INTO `r_menu_sub` VALUES ('15', 'Master Pengguna Aplikasi', '5', '1', '4', 'aplikasi/utility/v_mstuser.php', null, null, '<i class=\"fa  fa-arrow-right\"></i>', 'Master Pengguna Aplikasi', '_self', '0');
INSERT INTO `r_menu_sub` VALUES ('16', 'Referensi Sistem', '5', '2', '4', 'aplikasi/utility/v_refsystem.php', null, null, '<i class=\"fa  fa-arrow-right\"></i>', 'Referensi Sistem', '_self', '0');
INSERT INTO `r_menu_sub` VALUES ('17', 'Satuan', '1', '5', '2', 'aplikasi/master/v_satuan.php', null, null, '<i class=\"fa  fa-arrow-right\"></i>', 'Master Satuan', '_self', '0');
INSERT INTO `r_menu_sub` VALUES ('18', 'Pelunasan Jual Tempo', '2', '4', '2', 'aplikasi/penjualan/v_lunas_jual_tempo.php', null, null, '<i class=\"fa  fa-arrow-right\"></i>', 'Form Pelunasan Penjualan Secara Tempo', '_self', '0');
INSERT INTO `r_menu_sub` VALUES ('20', 'Pelunasan Beli Tempo', '3', '4', '4', 'aplikasi/pembelian/v_lunas_beli_tempo.php', null, null, '<i class=\"fa  fa-arrow-right\"></i>', 'Form Pelunasan Pembelian Tempo', '_self', '0');
INSERT INTO `r_menu_sub` VALUES ('21', 'Penyesuaian Stok', '6', '1', '2', 'aplikasi/mutasi/v_mutasi.php', null, null, '<i class=\"fa  fa-arrow-right\"></i>', 'Menu Penyesuaian Stok (Adjustment Stok)', '_self', '0');
INSERT INTO `r_menu_sub` VALUES ('22', 'Kartu Stok', '6', '2', '2', 'aplikasi/mutasi/v_kartu_stok.php', null, null, '<i class=\"fa  fa-arrow-right\"></i>', 'Lihat Kartu Stok', '_self', '0');
INSERT INTO `r_menu_sub` VALUES ('23', 'Cetak Mutasi Stok Barang', '6', '3', '2', 'aplikasi/mutasi/l_laporan_mutasi_stok.php', null, null, '<i class=\"fa  fa-arrow-right\"></i>', 'Laporan Mutasi Stok Barang', '_blank', '0');
INSERT INTO `r_menu_sub` VALUES ('24', 'Cetak Barang Habis', '6', '4', '2', 'aplikasi/mutasi/l_barang_abis.php', null, null, '<i class=\"fa  fa-arrow-right\"></i>', 'Laporan Barang Habis', '_blank', '0');
INSERT INTO `r_menu_sub` VALUES ('25', 'Cetak Daftar Harga Jual dan Beli', '4', '3', '4', 'aplikasi/laporan/l_daftar_seluruh_harga.php', null, '<li class=\"divider\"></li>', '<i class=\"fa  fa-arrow-right\"></i>', 'Laporan Daftar Harga Jual dan Beli', '_blank', '0');
INSERT INTO `r_menu_sub` VALUES ('26', 'L. Penjualan', '4', '7', '2', 'aplikasi/laporan/v_laporan_penjualan.php', '<li class=\"divider\"></li>', null, '<i class=\"fa  fa-arrow-right\"></i>', 'Laporan Penjualan', '_self', '0');
INSERT INTO `r_menu_sub` VALUES ('27', 'Cetak Daftar Supplier', '4', '1', '4', 'aplikasi/laporan/l_daftar_supplier.php', null, '<li class=\"divider\"></li>', '<i class=\"fa  fa-arrow-right\"></i>', 'Laporan Daftar Supplier', '_blank', '0');
INSERT INTO `r_menu_sub` VALUES ('28', 'Cetak Daftar Pelanggan', '4', '2', '2', 'aplikasi/laporan/l_daftar_pelanggan.php', null, '<li class=\"divider\"></li>', '<i class=\"fa  fa-arrow-right\"></i>', 'Laporan Daftar Pelanggan', '_blank', '0');
INSERT INTO `r_menu_sub` VALUES ('30', 'L. Retur Penjualan', '4', '9', '2', 'aplikasi/laporan/v_laporan_retur_penjualan.php', null, null, '<i class=\"fa  fa-arrow-right\"></i>', 'Laporan Retur Penjualan', '_self', '0');
INSERT INTO `r_menu_sub` VALUES ('31', 'L. Retur Pembelian', '4', '10', '4', 'aplikasi/laporan/v_laporan_retur_pembelian.php', null, null, '<i class=\"fa  fa-arrow-right\"></i>', 'Laporan Retur Pembelian', '_self', '0');
INSERT INTO `r_menu_sub` VALUES ('32', 'Penjualan Grosir', '2', '5', '2', 'aplikasi/penjualan/v_penjualan_grosir.php', null, null, '<i class=\"fa  fa-arrow-right\"></i>', 'Transaksi Penjualan Grosir', '_self', '0');
INSERT INTO `r_menu_sub` VALUES ('33', 'Backup Database', '5', '3', '4', 'aplikasi/utility/v_backup.php', null, null, '<i class=\"fa  fa-arrow-right\"></i>', 'Menu Backup Database', '_self', '0');
INSERT INTO `r_menu_sub` VALUES ('34', 'Closing Stok', '6', '5', '4', 'aplikasi/mutasi/v_close_stok.php', '<li class=\"divider\"></li>', null, '<i class=\"fa  fa-arrow-right\"></i>', 'Menu Penutupan Stok (Closing Stok)', '_self', '0');
INSERT INTO `r_menu_sub` VALUES ('35', 'Ubah Margin Manual', '5', '4', '4', 'aplikasi/utility/v_ubah_margin.php', null, null, '<i class=\"fa  fa-arrow-right\"></i>', 'Menu Ubah Laba Rugi secara Manual Pada Transaksi Penjualan', '_self', '0');
INSERT INTO `r_menu_sub` VALUES ('36', 'Biaya Harian', '7', '1', '2', 'aplikasi/biaya/v_biaya.php', null, null, '<i class=\"fa  fa-arrow-right\"></i>', 'Untuk mencatat pengeluaran harian', '_self', '0');
INSERT INTO `r_menu_sub` VALUES ('37', 'Setoran', '7', '2', '2', 'aplikasi/biaya/v_setoran.php', null, null, '<i class=\"fa  fa-arrow-right\"></i>', 'Untuk mencatat setoran ', '_self', '0');
INSERT INTO `r_menu_sub` VALUES ('38', 'Upah Karyawan', '7', '3', '4', 'aplikasi/biaya/v_upah.php', null, null, '<i class=\"fa  fa-arrow-right\"></i>', 'Untuk mencatat pengeluaran gaji karyawan', '_self', '0');
INSERT INTO `r_menu_sub` VALUES ('39', 'L. Biaya/Pengeluaran Harian', '4', '11', '2', 'aplikasi/laporan/v_laporan_biaya.php', '<li class=\"divider\"></li>', null, '<i class=\"fa  fa-arrow-right\"></i>', 'Laporan Biaya / pengeluaran harian', '_self', '0');
INSERT INTO `r_menu_sub` VALUES ('41', 'L. Setoran', '4', '12', '2', 'aplikasi/laporan/v_laporan_setoran.php', null, null, '<i class=\"fa  fa-arrow-right\"></i>', 'Laporan Setoran', '_self', '0');
INSERT INTO `r_menu_sub` VALUES ('42', 'L. Upah Karyawan', '4', '13', '4', 'aplikasi/laporan/v_laporan_upah.php', null, null, '<i class=\"fa  fa-arrow-right\"></i>', 'Laporan upah karyawan', '_self', '0');
INSERT INTO `r_menu_sub` VALUES ('43', 'L. Transaksi Harian', '4', '6', '2', 'aplikasi/laporan/v_transaksi_harian.php', '<li class=\"divider\"></li>', '', '<i class=\"fa  fa-arrow-right\"></i>', 'Laporan transaksi harian', '_self', '0');
INSERT INTO `r_menu_sub` VALUES ('44', 'Restore Master Barang', '5', '5', '4', 'aplikasi/utility/v_restore_m_barang.php', '<li class=\"divider\"></li>', null, '<i class=\"fa  fa-arrow-right\"></i>', 'Restoring Master Barang yang dihapus', '_self', '0');
INSERT INTO `r_menu_sub` VALUES ('45', 'Restore Master Jasa', '5', '6', '4', 'aplikasi/utility/v_restore_m_jasa.php', null, null, '<i class=\"fa  fa-arrow-right\"></i>', 'Restoring Master Jasa yang dihapus', '_self', '0');
INSERT INTO `r_menu_sub` VALUES ('47', null, null, null, '4', '#', null, null, null, null, '_self', '0');

-- ----------------------------
-- Table structure for r_menu_sub_level_2
-- ----------------------------
DROP TABLE IF EXISTS `r_menu_sub_level_2`;
CREATE TABLE `r_menu_sub_level_2` (
  `id_sub_menu_level_2` int(3) NOT NULL AUTO_INCREMENT,
  `nama_sub_menu_level_2` varchar(100) DEFAULT NULL,
  `id_sub_menu` int(2) DEFAULT NULL,
  `urutan_sub_menu` int(2) DEFAULT NULL,
  `url` varchar(150) DEFAULT '#',
  `icon` varchar(150) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `target` enum('_self','_blank') DEFAULT '_self',
  PRIMARY KEY (`id_sub_menu_level_2`),
  KEY `urutan_sub_menu_index` (`id_sub_menu`,`urutan_sub_menu`)
) ENGINE=MyISAM AUTO_INCREMENT=46 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of r_menu_sub_level_2
-- ----------------------------
INSERT INTO `r_menu_sub_level_2` VALUES ('1', 'multilevel 1', '1', '1', 'aplikasi/master/v_jenis_produk.php', '<i class=\"fa  fa-circle\"></i>', 'this is multilevel', '_self');
INSERT INTO `r_menu_sub_level_2` VALUES ('2', 'multilevel 2', '1', '2', 'aplikasi/master/v_merk.php', '<i class=\"fa  fa-circle\"></i>', 'this is multilevel', '_self');
INSERT INTO `r_menu_sub_level_2` VALUES ('3', 'multilevel 3', '1', '3', 'aplikasi/master/v_jasa.php', '<i class=\"fa  fa-circle\"></i>', 'this is multilevel', '_self');
INSERT INTO `r_menu_sub_level_2` VALUES ('4', 'multilevel 4', '1', '4', 'aplikasi/master/v_barang.php', '<i class=\"fa  fa-circle\"></i>', 'this is multilevel', '_self');
INSERT INTO `r_menu_sub_level_2` VALUES ('5', 'multilevel 5', '2', '2', 'aplikasi/penjualan/v_pelanggan.php', '<i class=\"fa  fa-circle\"></i>', 'this is multilevel', '_self');
INSERT INTO `r_menu_sub_level_2` VALUES ('6', 'multilevel 6', '2', '1', 'aplikasi/penjualan/v_penjualan.php', '<i class=\"fa  fa-circle\"></i>', 'this is multilevel', '_self');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu` varchar(50) DEFAULT NULL,
  `link` varchar(50) DEFAULT NULL,
  `icon` varchar(50) DEFAULT NULL,
  `is_main_menu` int(11) DEFAULT NULL,
  `is_visible` int(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('1', 'Configuración', '#', 'fa fa-cog', '0', '1');
INSERT INTO `sys_menu` VALUES ('2', 'Menus', 'index.php?action=menu_add', 'fa fa-bars', '1', '1');
INSERT INTO `sys_menu` VALUES ('3', 'Usuarios', 'index.php?action=user_add', 'fa fa-user-circle-o', '1', '1');
INSERT INTO `sys_menu` VALUES ('4', 'Menu Perfiles', 'index.php?action=profile_Add', 'fa fa-cogs', '1', '1');
INSERT INTO `sys_menu` VALUES ('5', 'Busquedas', '#', 'fa fa-search', '0', '1');
INSERT INTO `sys_menu` VALUES ('6', 'Consumos y Pagos', '#', 'fa fa-thermometer-full', '0', '1');
INSERT INTO `sys_menu` VALUES ('7', 'Tickets', '#', 'fa fa-ticket', '0', '1');
INSERT INTO `sys_menu` VALUES ('8', 'Reportes', '#', 'fa fa-file-o', '0', '1');
INSERT INTO `sys_menu` VALUES ('9', 'Proceso Mensual', '#', 'fa fa fa-cogs', '0', '1');
INSERT INTO `sys_menu` VALUES ('10', 'Eventos', '#', 'fa fa-list-alt ', '0', '1');
INSERT INTO `sys_menu` VALUES ('11', 'Instalaciones', '#', 'fa fa-list-alt ', '0', '1');
INSERT INTO `sys_menu` VALUES ('12', 'Documentos', '#', 'fa fa-list-alt ', '0', '1');
INSERT INTO `sys_menu` VALUES ('13', 'Registrar Contabilidad', '#', 'fa fa-list-alt ', '0', '1');
INSERT INTO `sys_menu` VALUES ('14', 'Editar Contabilidad', '#', 'fa fa-list-alt ', '0', '1');
INSERT INTO `sys_menu` VALUES ('15', 'Reportes Contabilidad', '#', 'fa fa-list-alt ', '0', '1');
INSERT INTO `sys_menu` VALUES ('16', 'Graficas Contabilidad', '#', 'fa fa-list-alt ', '0', '1');
INSERT INTO `sys_menu` VALUES ('17', 'Por Bancos', 'index.php?action=search_banks', 'fa fa-search', '5', '1');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `userId` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(25) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `nombre` varchar(30) DEFAULT NULL,
  `apellidop` varchar(30) DEFAULT NULL,
  `apellidom` varchar(30) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `telefono` varchar(30) DEFAULT NULL,
  `idPerfil` int(11) DEFAULT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'admin', 'cc67deb76149a72e7c1e398796b112fb', 'Jorge', 'Diaz', 'Cobarrubias', 'jodiazc@gmail.com', '1234567890123', '1');
