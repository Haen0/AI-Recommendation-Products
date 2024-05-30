-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 30, 2024 at 07:32 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ai`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `image1` varchar(255) NOT NULL,
  `image2` varchar(255) NOT NULL,
  `image3` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `category` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `rating` decimal(2,1) NOT NULL DEFAULT 0.0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `image1`, `image2`, `image3`, `description`, `category`, `price`, `stock`, `rating`, `created_at`, `updated_at`) VALUES
(3, 'Pena Tulis Pelikan', 'images/products/sr6O03rjw4UXpS1To4Wk1Oj598rUwdKjA6YeybSh.png', 'images/products/FBfFxXlIir5PhBT5THzIULAEDnJ7KcFktGIoyXVo.png', 'images/products/ikmxOEKD0is5HDBfMLnPMcmydUf7FDJ4CPCuu8Y1.png', 'Pena tulis bertinta hitam dengan desain ergonomis dari merek Pelikan, memberikan kenyamanan maksimal untuk penggunaan sehari-hari.', 'alatTulis', 5000, 99, '0.0', '2024-01-02 06:36:12', '2024-01-05 02:54:59'),
(4, 'Korektor Faber', 'images/products/thCTEC0JauLojiTs7gFv7Ne79UUXZQVQRMqQpApz.png', 'images/products/Osa0zeUFyoPQQJtY5YxS3VvWbykn48Se0PLTZvX1.png', 'images/products/LJoWJ4ci5yixivqazTDT5oxxlgKSpf8V05E4wYW9.png', 'Korektor cair dengan aplikator brush dari merek Faber-Castell, memberikan kemudahan dalam mengoreksi tulisan, cepat kering, dan tanpa bekas noda.', 'alatTulis', 8000, 99, '0.0', '2024-01-02 06:37:26', '2024-01-02 06:43:54'),
(5, 'Korektor Artline', 'images/products/Qmabgv0nxed2DaquAgD7JEcaTv1iG05Yp6xtM7t8.png', 'images/products/2jUL7gB0jjCpIsZQIs5NZWCwpxzPy4C4uMzro2zT.png', 'images/products/2HLhKQz9tlHOoNytJaWRmcpvX8J4KmoOcY1DNXBc.png', 'Korektor cair dengan aplikator brush dari merek Artline, dirancang untuk pengoreksian tulisan dengan hasil yang rapi dan bersih.', 'alatTulis', 8000, 99, '0.0', '2024-01-02 06:37:57', '2024-01-02 06:37:57'),
(6, 'Korektor Snowman', 'images/products/cXCrQLfoQiIfTZC72BLE38e3PVJyWXTSaxItQMLd.png', 'images/products/gXmrtl33A3HjsOatzZQHtHGX3iwkea6xROD350D6.png', 'images/products/nsrMRH42uW8hD8VWXgkajJtcTMfjUTEOyBOv9vfo.png', 'Korektor cair dengan aplikator brush dari merek Snowman, formula anti-noda yang ideal untuk penggunaan sehari-hari.', 'alatTulis', 8000, 99, '0.0', '2024-01-02 06:38:23', '2024-01-02 06:39:12'),
(7, 'Buku Ekslusif Serayu', 'images/products/HEVXyIxkesK2xKDGVWbo7Iimj0ONBWXOiKetMH9Q.png', 'images/products/gIGmF6IsQQRqNmNJEviUlpZo2WwmXUwIKGLOjPka.png', 'images/products/gBkVbxV25nfyIOtpEdAd9JNMawD1CSYlV0ozKeDc.png', 'Buku berukuran A5 dengan sampul lentur dari merek Serayu, dilengkapi dengan kertas berkualitas tinggi untuk catatan, ide, atau sketsa.', 'buku', 20000, 99, '0.0', '2024-01-02 06:40:12', '2024-01-05 02:53:37'),
(8, 'Isi Buku Serayu', 'images/products/ICUH1aAGpcHJwlqD7SUj3FjJYsqMcIU6zHz53vYc.png', 'images/products/s0ZCrcZP3QzFgtxrIv87vFgABgd7UgGJtZHlfXYA.png', 'images/products/3l5x8in6ItDGl6KNP1EZG9PFIWIUn4ReJUDMnvbW.png', 'Isi buku tambahan dari merek Serayu dengan kertas berkualitas, dapat digunakan untuk menambah kapasitas catatan pada buku utama Anda.', 'buku', 15000, 99, '0.0', '2024-01-02 06:40:54', '2024-01-02 06:40:54'),
(9, 'Gunting Excell', 'images/products/grXxaBN8KrVfGSQWdsghdb4ShHuDlIN3LB8B03sw.png', 'images/products/j9T2U29VbjRpd47qZSS8e6UhsH8DUyoUkKg27CUr.png', 'images/products/qmIp1w9v2Iq64YD2yM4g7ePXOZPVEvSa3zJT3tj5.png', 'Gunting dari merek Excell dengan mata tajam dan pegangan ergonomis, ideal untuk pemotongan kertas atau bahan lainnya.', 'alatTulis', 10000, 99, '0.0', '2024-01-02 06:41:28', '2024-01-02 06:41:28'),
(10, 'Kipas Angin Cosmos', 'images/products/kipas_cosmos1.png', 'images/products/kipas_cosmos2.png', 'images/products/kipas_cosmos3.png', 'Kipas angin listrik dari merek Cosmos, dilengkapi dengan tiga kecepatan dan desain yang modern untuk kenyamanan di rumah Anda.', 'alatListrik', 150000, 50, '0.0', '2024-05-30 05:00:00', '2024-05-30 05:00:00'),
(11, 'Lampu LED Philips', 'images/products/lampu_led_philips1.png', 'images/products/lampu_led_philips2.png', 'images/products/lampu_led_philips3.png', 'Lampu LED hemat energi dari merek Philips, memberikan pencahayaan maksimal dengan konsumsi daya rendah.', 'alatListrik', 25000, 100, '0.0', '2024-05-30 05:01:00', '2024-05-30 05:01:00'),
(12, 'Kabel Listrik Supreme', 'images/products/kabel_supreme1.png', 'images/products/kabel_supreme2.png', 'images/products/kabel_supreme3.png', 'Kabel listrik berkualitas tinggi dari merek Supreme, ideal untuk instalasi listrik rumah dan industri.', 'alatListrik', 50000, 200, '0.0', '2024-05-30 05:02:00', '2024-05-30 05:02:00'),
(13, 'Terminal Listrik Arde', 'images/products/terminal_arde1.png', 'images/products/terminal_arde2.png', 'images/products/terminal_arde3.png', 'Terminal listrik dengan perlindungan arde dari merek Arde, memastikan koneksi listrik yang aman dan handal.', 'alatListrik', 30000, 150, '0.0', '2024-05-30 05:03:00', '2024-05-30 05:03:00'),
(14, 'Saklar Panasonic', 'images/products/saklar_panasonic1.png', 'images/products/saklar_panasonic2.png', 'images/products/saklar_panasonic3.png', 'Saklar listrik dari merek Panasonic dengan desain elegan dan mekanisme yang tahan lama.', 'alatListrik', 20000, 100, '0.0', '2024-05-30 05:04:00', '2024-05-30 05:04:00'),
(15, 'Stop Kontak Broco', 'images/products/stop_kontak_broco1.png', 'images/products/stop_kontak_broco2.png', 'images/products/stop_kontak_broco3.png', 'Stop kontak dari merek Broco dengan desain modern dan bahan berkualitas untuk keamanan listrik.', 'alatListrik', 40000, 80, '0.0', '2024-05-30 05:05:00', '2024-05-30 05:05:00'),
(16, 'Adaptor Listrik Universal', 'images/products/adaptor_universal1.png', 'images/products/adaptor_universal2.png', 'images/products/adaptor_universal3.png', 'Adaptor listrik universal yang kompatibel dengan berbagai jenis colokan, ideal untuk perjalanan internasional.', 'alatListrik', 50000, 60, '0.0', '2024-05-30 05:06:00', '2024-05-30 05:06:00'),
(17, 'Lampu Emergency Xiaomi', 'images/products/lampu_emergency_xiaomi1.png', 'images/products/lampu_emergency_xiaomi2.png', 'images/products/lampu_emergency_xiaomi3.png', 'Lampu emergency dari Xiaomi dengan daya tahan baterai hingga 12 jam, cocok untuk keadaan darurat.', 'alatListrik', 75000, 75, '0.0', '2024-05-30 05:07:00', '2024-05-30 05:07:00'),
(18, 'Senter LED Energizer', 'images/products/senter_led_energizer1.png', 'images/products/senter_led_energizer2.png', 'images/products/senter_led_energizer3.png', 'Senter LED dari merek Energizer dengan cahaya terang dan tahan lama, cocok untuk berbagai keperluan.', 'alatListrik', 35000, 90, '0.0', '2024-05-30 05:08:00', '2024-05-30 05:08:00'),
(19, 'Extension Cord Uticon', 'images/products/extension_cord_uticon1.png', 'images/products/extension_cord_uticon2.png', 'images/products/extension_cord_uticon3.png', 'Kabel ekstensi dari merek Uticon dengan beberapa colokan dan switch on/off untuk kemudahan penggunaan.', 'alatListrik', 45000, 70, '0.0', '2024-05-30 05:09:00', '2024-05-30 05:09:00'),
(20, 'Saklar Digital Schneider', 'images/products/saklar_digital_schneider1.png', 'images/products/saklar_digital_schneider2.png', 'images/products/saklar_digital_schneider3.png', 'Saklar digital dari Schneider dengan fitur timer dan pengendalian jarak jauh melalui aplikasi.', 'alatListrik', 150000, 50, '0.0', '2024-05-30 05:10:00', '2024-05-30 05:10:00'),
(21, 'Kabel Roll Krisbow', 'images/products/kabel_roll_krisbow1.png', 'images/products/kabel_roll_krisbow2.png', 'images/products/kabel_roll_krisbow3.png', 'Kabel roll dari merek Krisbow dengan panjang 10 meter dan bahan yang tahan lama.', 'alatListrik', 85000, 40, '0.0', '2024-05-30 05:11:00', '2024-05-30 05:11:00'),
(22, 'Lampu Hias RGB', 'images/products/lampu_hias_rgb1.png', 'images/products/lampu_hias_rgb2.png', 'images/products/lampu_hias_rgb3.png', 'Lampu hias LED dengan warna RGB yang dapat diubah sesuai suasana hati, dilengkapi dengan remote control.', 'alatListrik', 60000, 60, '0.0', '2024-05-30 05:12:00', '2024-05-30 05:12:00'),
(23, 'Lampu Meja IKEA', 'images/products/lampu_meja_ikea1.png', 'images/products/lampu_meja_ikea2.png', 'images/products/lampu_meja_ikea3.png', 'Lampu meja dari IKEA dengan desain minimalis dan cahaya yang dapat diatur intensitasnya.', 'alatListrik', 50000, 70, '0.0', '2024-05-30 05:13:00', '2024-05-30 05:13:00'),
(24, 'Steker Panasonic', 'images/products/steker_panasonic1.png', 'images/products/steker_panasonic2.png', 'images/products/steker_panasonic3.png', 'Steker listrik dari Panasonic dengan bahan berkualitas dan desain yang mudah dipasang.', 'alatListrik', 15000, 200, '0.0', '2024-05-30 05:14:00', '2024-05-30 05:14:00'),
(25, 'Charger USB Anker', 'images/products/charger_usb_anker1.png', 'images/products/charger_usb_anker2.png', 'images/products/charger_usb_anker3.png', 'Charger USB cepat dari Anker dengan beberapa port untuk mengisi daya berbagai perangkat secara bersamaan.', 'alatListrik', 120000, 80, '0.0', '2024-05-30 05:15:00', '2024-05-30 05:15:00'),
(26, 'Bohlam Pintar TP-Link', 'images/products/bohlam_pintar_tplink1.png', 'images/products/bohlam_pintar_tplink2.png', 'images/products/bohlam_pintar_tplink3.png', 'Bohlam pintar dari TP-Link yang dapat dikontrol melalui smartphone untuk pengaturan pencahayaan yang fleksibel.', 'alatListrik', 100000, 60, '0.0', '2024-05-30 05:16:00', '2024-05-30 05:16:00'),
(27, 'Saklar Dinding Schneider', 'images/products/saklar_dinding_schneider1.png', 'images/products/saklar_dinding_schneider2.png', 'images/products/saklar_dinding_schneider3.png', 'Saklar dinding dari Schneider dengan desain modern dan material yang tahan lama.', 'alatListrik', 25000, 150, '0.0', '2024-05-30 05:17:00', '2024-05-30 05:17:00'),
(28, 'Lampu Sorot LED', 'images/products/lampu_sorot_led1.png', 'images/products/lampu_sorot_led2.png', 'images/products/lampu_sorot_led3.png', 'Lampu sorot LED dengan daya tinggi dan tahan lama, cocok untuk penerangan luar ruangan.', 'alatListrik', 90000, 50, '0.0', '2024-05-30 05:18:00', '2024-05-30 05:18:00'),
(29, 'Plug Timer Digital', 'images/products/plug_timer_digital1.png', 'images/products/plug_timer_digital2.png', 'images/products/plug_timer_digital3.png', 'Plug timer digital yang memungkinkan pengaturan waktu menyala dan mati perangkat listrik secara otomatis.', 'alatListrik', 80000, 70, '0.0', '2024-05-30 05:19:00', '2024-05-30 05:19:00'),
(30, 'Stabilizer Listrik Matsunaga', 'images/products/stabilizer_matsunaga1.png', 'images/products/stabilizer_matsunaga2.png', 'images/products/stabilizer_matsunaga3.png', 'Stabilizer listrik dari Matsunaga untuk melindungi peralatan elektronik dari fluktuasi tegangan.', 'alatListrik', 200000, 40, '0.0', '2024-05-30 05:20:00', '2024-05-30 05:20:00'),
(31, 'Colokan Listrik Tahan Air', 'images/products/colokan_tahan_air1.png', 'images/products/colokan_tahan_air2.png', 'images/products/colokan_tahan_air3.png', 'Colokan listrik tahan air yang cocok untuk penggunaan di area luar ruangan.', 'alatListrik', 35000, 90, '0.0', '2024-05-30 05:21:00', '2024-05-30 05:21:00'),
(32, 'Charger Mobil Aukey', 'images/products/charger_mobil_aukey1.png', 'images/products/charger_mobil_aukey2.png', 'images/products/charger_mobil_aukey3.png', 'Charger mobil dari Aukey dengan fitur pengisian cepat untuk berbagai perangkat elektronik.', 'alatListrik', 70000, 80, '0.0', '2024-05-30 05:22:00', '2024-05-30 05:22:00'),
(33, 'Panel Surya Portable', 'images/products/panel_surya_portable1.png', 'images/products/panel_surya_portable2.png', 'images/products/panel_surya_portable3.png', 'Panel surya portable yang dapat digunakan untuk mengisi daya perangkat elektronik di mana saja.', 'alatListrik', 300000, 30, '0.0', '2024-05-30 05:23:00', '2024-05-30 05:23:00'),
(34, 'Inverter Listrik 1000W', 'images/products/inverter_1000w1.png', 'images/products/inverter_1000w2.png', 'images/products/inverter_1000w3.png', 'Inverter listrik 1000W yang cocok untuk mengubah arus DC ke AC dalam kendaraan atau sistem surya.', 'alatListrik', 250000, 40, '0.0', '2024-05-30 05:24:00', '2024-05-30 05:24:00'),
(35, 'Kabel HDMI 5m', 'images/products/kabel_hdmi_5m1.png', 'images/products/kabel_hdmi_5m2.png', 'images/products/kabel_hdmi_5m3.png', 'Kabel HDMI sepanjang 5 meter untuk menghubungkan perangkat audio visual dengan kualitas tinggi.', 'alatListrik', 50000, 100, '0.0', '2024-05-30 05:25:00', '2024-05-30 05:25:00'),
(36, 'Extension Cord Belkin', 'images/products/extension_cord_belkin1.png', 'images/products/extension_cord_belkin2.png', 'images/products/extension_cord_belkin3.png', 'Kabel ekstensi dari Belkin dengan proteksi surge dan beberapa colokan untuk kemudahan penggunaan.', 'alatListrik', 85000, 70, '0.0', '2024-05-30 05:26:00', '2024-05-30 05:26:00'),
(37, 'Alarm Asap Kidde', 'images/products/alarm_asap_kidde1.png', 'images/products/alarm_asap_kidde2.png', 'images/products/alarm_asap_kidde3.png', 'Alarm asap dari merek Kidde untuk mendeteksi asap dan kebakaran secara cepat dan akurat.', 'alatListrik', 150000, 50, '0.0', '2024-05-30 05:27:00', '2024-05-30 05:27:00'),
(38, 'CCTV Xiaomi', 'images/products/cctv_xiaomi1.png', 'images/products/cctv_xiaomi2.png', 'images/products/cctv_xiaomi3.png', 'Kamera CCTV dari Xiaomi dengan fitur pengawasan jarak jauh melalui smartphone.', 'alatListrik', 300000, 30, '0.0', '2024-05-30 05:28:00', '2024-05-30 05:28:00'),
(39, 'Stop Kontak USB', 'images/products/stop_kontak_usb1.png', 'images/products/stop_kontak_usb2.png', 'images/products/stop_kontak_usb3.png', 'Stop kontak dengan port USB untuk mengisi daya perangkat elektronik secara langsung.', 'alatListrik', 40000, 100, '0.0', '2024-05-30 05:29:00', '2024-05-30 05:29:00'),
(40, 'Kabel Audio AUX 3.5mm', 'images/products/kabel_audio_aux1.png', 'images/products/kabel_audio_aux2.png', 'images/products/kabel_audio_aux3.png', 'Kabel audio AUX 3.5mm untuk menghubungkan perangkat audio dengan kualitas suara yang jernih.', 'alatListrik', 20000, 150, '0.0', '2024-05-30 05:30:00', '2024-05-30 05:30:00'),
(41, 'Kipas Angin Desk Panasonic', 'images/products/kipas_desk_panasonic1.png', 'images/products/kipas_desk_panasonic2.png', 'images/products/kipas_desk_panasonic3.png', 'Kipas angin meja dari merek Panasonic dengan tiga kecepatan, ideal untuk penggunaan di meja kerja atau belajar.', 'alatListrik', 175000, 50, '0.0', '2024-05-30 05:31:00', '2024-05-30 05:31:00'),
(42, 'Kipas Angin Stand Panasonic', 'images/products/kipas_stand_panasonic1.png', 'images/products/kipas_stand_panasonic2.png', 'images/products/kipas_stand_panasonic3.png', 'Kipas angin berdiri dari merek Panasonic dengan fitur osilasi dan tiga kecepatan untuk kenyamanan maksimal.', 'alatListrik', 200000, 40, '0.0', '2024-05-30 05:32:00', '2024-05-30 05:32:00'),
(43, 'Kipas Angin Wall Panasonic', 'images/products/kipas_wall_panasonic1.png', 'images/products/kipas_wall_panasonic2.png', 'images/products/kipas_wall_panasonic3.png', 'Kipas angin dinding dari merek Panasonic yang hemat ruang dan mudah dipasang, cocok untuk kamar tidur atau ruang tamu.', 'alatListrik', 180000, 60, '0.0', '2024-05-30 05:33:00', '2024-05-30 05:33:00'),
(44, 'Kipas Angin Tower Panasonic', 'images/products/kipas_tower_panasonic1.png', 'images/products/kipas_tower_panasonic2.png', 'images/products/kipas_tower_panasonic3.png', 'Kipas angin menara dari merek Panasonic dengan desain ramping dan fungsi osilasi untuk pendinginan menyeluruh.', 'alatListrik', 220000, 30, '0.0', '2024-05-30 05:34:00', '2024-05-30 05:34:00'),
(45, 'Lampu LED Philips Warm White', 'images/products/lampu_led_philips_warm1.png', 'images/products/lampu_led_philips_warm2.png', 'images/products/lampu_led_philips_warm3.png', 'Lampu LED dari Philips dengan cahaya warm white yang nyaman untuk mata, ideal untuk ruang keluarga.', 'alatListrik', 30000, 100, '0.0', '2024-05-30 05:35:00', '2024-05-30 05:35:00'),
(46, 'Lampu LED Philips Cool White', 'images/products/lampu_led_philips_cool1.png', 'images/products/lampu_led_philips_cool2.png', 'images/products/lampu_led_philips_cool3.png', 'Lampu LED dari Philips dengan cahaya cool white yang terang dan hemat energi, cocok untuk area kerja.', 'alatListrik', 30000, 100, '0.0', '2024-05-30 05:36:00', '2024-05-30 05:36:00'),
(47, 'Lampu LED Philips Daylight', 'images/products/lampu_led_philips_daylight1.png', 'images/products/lampu_led_philips_daylight2.png', 'images/products/lampu_led_philips_daylight3.png', 'Lampu LED dari Philips dengan cahaya daylight yang cerah, memberikan penerangan maksimal di setiap sudut ruangan.', 'alatListrik', 30000, 100, '0.0', '2024-05-30 05:37:00', '2024-05-30 05:37:00'),
(48, 'Lampu LED Philips Dimmable', 'images/products/lampu_led_philips_dimmable1.png', 'images/products/lampu_led_philips_dimmable2.png', 'images/products/lampu_led_philips_dimmable3.png', 'Lampu LED dari Philips dengan fitur dimmable yang memungkinkan Anda mengatur intensitas cahaya sesuai kebutuhan.', 'alatListrik', 40000, 80, '0.0', '2024-05-30 05:38:00', '2024-05-30 05:38:00'),
(49, 'Kabel Listrik Supreme NYA 1.5mm', 'images/products/kabel_supreme_nya1.png', 'images/products/kabel_supreme_nya2.png', 'images/products/kabel_supreme_nya3.png', 'Kabel listrik NYA dari merek Supreme dengan ukuran 1.5mm, ideal untuk instalasi listrik rumah tangga.', 'alatListrik', 40000, 150, '0.0', '2024-05-30 05:39:00', '2024-05-30 05:39:00'),
(50, 'Kabel Listrik Supreme NYA 2.5mm', 'images/products/kabel_supreme_nya2.png', 'images/products/kabel_supreme_nya3.png', 'images/products/kabel_supreme_nya4.png', 'Kabel listrik NYA dari merek Supreme dengan ukuran 2.5mm, cocok untuk instalasi listrik dengan daya lebih besar.', 'alatListrik', 50000, 150, '0.0', '2024-05-30 05:40:00', '2024-05-30 05:40:00'),
(51, 'Kabel Listrik Supreme NYM 2x1.5mm', 'images/products/kabel_supreme_nym1.png', 'images/products/kabel_supreme_nym2.png', 'images/products/kabel_supreme_nym3.png', 'Kabel listrik NYM dari merek Supreme dengan ukuran 2x1.5mm, tahan terhadap kondisi luar ruangan dan kelembapan.', 'alatListrik', 60000, 150, '0.0', '2024-05-30 05:41:00', '2024-05-30 05:41:00'),
(52, 'Kabel Listrik Supreme NYM 2x2.5mm', 'images/products/kabel_supreme_nym2.png', 'images/products/kabel_supreme_nym3.png', 'images/products/kabel_supreme_nym4.png', 'Kabel listrik NYM dari merek Supreme dengan ukuran 2x2.5mm, ideal untuk instalasi listrik dengan kebutuhan daya tinggi.', 'alatListrik', 70000, 150, '0.0', '2024-05-30 05:42:00', '2024-05-30 05:42:00'),
(53, 'Saklar Dinding Panasonic Single', 'images/products/saklar_dinding_panasonic_single1.png', 'images/products/saklar_dinding_panasonic_single2.png', 'images/products/saklar_dinding_panasonic_single3.png', 'Saklar dinding single dari Panasonic dengan desain elegan dan kualitas material yang tinggi.', 'alatListrik', 20000, 200, '0.0', '2024-05-30 05:43:00', '2024-05-30 05:43:00'),
(54, 'Saklar Dinding Panasonic Double', 'images/products/saklar_dinding_panasonic_double1.png', 'images/products/saklar_dinding_panasonic_double2.png', 'images/products/saklar_dinding_panasonic_double3.png', 'Saklar dinding double dari Panasonic dengan dua tombol dan desain modern, cocok untuk ruang tamu atau kamar tidur.', 'alatListrik', 25000, 200, '0.0', '2024-05-30 05:44:00', '2024-05-30 05:44:00'),
(55, 'Saklar Dinding Panasonic Triple', 'images/products/saklar_dinding_panasonic_triple1.png', 'images/products/saklar_dinding_panasonic_triple2.png', 'images/products/saklar_dinding_panasonic_triple3.png', 'Saklar dinding triple dari Panasonic dengan tiga tombol untuk kontrol lebih fleksibel di berbagai ruangan.', 'alatListrik', 30000, 200, '0.0', '2024-05-30 05:45:00', '2024-05-30 05:45:00'),
(56, 'Saklar Dinding Panasonic Smart', 'images/products/saklar_dinding_panasonic_smart1.png', 'images/products/saklar_dinding_panasonic_smart2.png', 'images/products/saklar_dinding_panasonic_smart3.png', 'Saklar dinding smart dari Panasonic yang dapat dikontrol melalui aplikasi smartphone untuk kemudahan dan kenyamanan.', 'alatListrik', 50000, 200, '0.0', '2024-05-30 05:46:00', '2024-05-30 05:46:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
