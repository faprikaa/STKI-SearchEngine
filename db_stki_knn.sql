 -- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 11, 2024 at 06:13 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_stki_knn`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL
) ;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2024-06-10 16:13:44.149309'),
(2, 'auth', '0001_initial', '2024-06-10 16:13:44.774791'),
(3, 'admin', '0001_initial', '2024-06-10 16:13:44.922839'),
(4, 'admin', '0002_logentry_remove_auto_add', '2024-06-10 16:13:44.930421'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2024-06-10 16:13:44.937588'),
(6, 'contenttypes', '0002_remove_content_type_name', '2024-06-10 16:13:45.032911'),
(7, 'auth', '0002_alter_permission_name_max_length', '2024-06-10 16:13:45.102444'),
(8, 'auth', '0003_alter_user_email_max_length', '2024-06-10 16:13:45.138146'),
(9, 'auth', '0004_alter_user_username_opts', '2024-06-10 16:13:45.150602'),
(10, 'auth', '0005_alter_user_last_login_null', '2024-06-10 16:13:45.233465'),
(11, 'auth', '0006_require_contenttypes_0002', '2024-06-10 16:13:45.237592'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2024-06-10 16:13:45.245019'),
(13, 'auth', '0008_alter_user_username_max_length', '2024-06-10 16:13:45.323039'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2024-06-10 16:13:45.400163'),
(15, 'auth', '0010_alter_group_name_max_length', '2024-06-10 16:13:45.430139'),
(16, 'auth', '0011_update_proxy_permissions', '2024-06-10 16:13:45.444823'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2024-06-10 16:13:45.523618'),
(18, 'sessions', '0001_initial', '2024-06-10 16:13:45.559562');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `makanan`
--

CREATE TABLE `makanan` (
  `id` int NOT NULL,
  `nama` varchar(30) NOT NULL,
  `bahan` varchar(100) NOT NULL,
  `deskripsi` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `makanan`
--

INSERT INTO `makanan` (`id`, `nama`, `bahan`, `deskripsi`) VALUES
(1, 'Perkedel', 'kentang, telur', 'hidangan tradisional Indonesia yang berbentuk bulat pipih dan biasanya digoreng hingga berwarna kecokelatan. Selain kentang, ada variasi perkedel yang menggunakan bahan dasar lain seperti jagung, tahu, atau daging cincang. Adonan perkedel dibentuk menjadi bulatan pipih, kemudian dicelupkan ke dalam kocokan telur sebelum digoreng hingga matang. Perkedel sering disajikan sebagai lauk pendamping dalam hidangan nasi atau sebagai camilan.'),
(2, 'Lotek', 'kangkung, kacang panjang, tauge, kubis, bayam, dan mentimun', 'Lotek adalah hidangan khas Indonesia, terutama populer di daerah Jawa Barat, yang terdiri dari berbagai sayuran segar yang direbus atau dikukus dan kemudian disajikan dengan saus kacang yang khas. \r\nSaus kacang untuk lotek dibuat dari kacang tanah yang digoreng atau disangrai, kemudian dihaluskan dan dicampur dengan bahan-bahan lain. Proses pencampuran saus dan sayuran dilakukan dengan cara diaduk hingga semua sayuran terbalut saus secara merata. Lotek biasanya disajikan dengan lontong atau nasi dan sering dilengkapi dengan kerupuk sebagai pelengkap. Rasanya yang segar dan gurih menjadikannya hidangan yang sangat digemari sebagai makanan ringan atau lauk.'),
(3, 'Mendoan', 'Tempe, tepung terigu, bawang putih, ketumbar, daun bawang, garam, air, minyak untuk menggoreng.', 'Mendoan adalah makanan tradisional khas Banyumas, Jawa Tengah, yang dibuat dari tempe yang diiris tipis dan dicelupkan ke dalam adonan tepung berbumbu sebelum digoreng setengah matang. Adonan tepung yang digunakan mengandung berbagai bumbu seperti bawang putih, ketumbar, dan daun bawang, memberikan cita rasa gurih yang khas. Setelah digoreng sebentar, mendoan memiliki tekstur lembut dan tidak terlalu kering. Hidangan ini biasanya disajikan dengan sambal kecap atau cabai rawit, dan dinikmati sebagai camilan atau lauk pendamping.'),
(4, 'Rendang', 'Daging sapi, santan, rempah-rempah', 'Rendang merupakan masakan khas Indonesia yang berasal dari Minangkabau, Sumatera Barat. Rendang dimasak dengan santan dan campuran berbagai rempah-rempah seperti serai, lengkuas, bawang putih, kunyit, jahe, dan cabai. Proses memasak rendang memakan waktu lama hingga bumbu meresap sempurna dan daging menjadi empuk serta berwarna kecokelatan. Rendang sering disajikan dalam acara-acara khusus dan merupakan salah satu makanan yang terkenal secara internasional.'),
(5, 'Nasi Goreng', 'Nasi, kecap manis, telur, bawang putih, bawang merah, cabai, garam', 'Nasi goreng adalah salah satu makanan populer di Indonesia dan bisa ditemukan di berbagai tempat dari restoran mewah hingga pedagang kaki lima. Bumbu dasar nasi goreng terdiri dari bawang putih, bawang merah, kecap manis, dan cabai, namun variasi bahan tambahan bisa disesuaikan dengan selera. Nasi goreng sering disajikan dengan acar, kerupuk, dan irisan mentimun.'),
(6, 'Sate Ayam', 'Daging ayam, bumbu kacang', 'Sate merupakan makanan yang terdiri dari potongan daging yang ditusuk, lalu dibakar di atas arang. Sate ayam biasanya disajikan dengan bumbu kacang serta lontong atau nasi sebagai pelengkap. Daging ayam yang digunakan dipotong kecil-kecil dan ditusuk dengan tusukan bambu atau besi, kemudian dibakar hingga matang dan beraroma harum. Bumbu kacang yang digunakan dibuat dari kacang tanah yang dihaluskan dan dicampur dengan bahan-bahan lain seperti bawang putih, cabai, gula merah, dan air asam jawa. Rasanya yang gurih dan manis dengan aroma bakaran yang khas membuatnya menjadi salah satu makanan yang sangat populer di Indonesia.'),
(7, 'Gudeg', 'Nangka muda, santan, gula jawa', 'Gudeg merupakan masakan khas Yogyakarta yang terbuat dari nangka muda yang dimasak dengan santan dan gula jawa hingga berwarna cokelat dan bertekstur lembut. Gudeg biasanya disajikan dengan nasi, ayam opor, telur pindang, dan sambal goreng krecek. Proses memasak gudeg memakan waktu lama agar bumbu meresap sempurna ke dalam nangka muda. Rasa gudeg yang manis dan gurih membuatnya menjadi salah satu makanan favorit di Yogyakarta dan sering dijadikan oleh-oleh oleh wisatawan.'),
(8, 'Bakso', 'Daging sapi, tepung tapioka, bawang putih, garam, lada', 'Bakso merupakan bola-bola daging yang terbuat dari campuran daging sapi giling dan tepung tapioka, disajikan dalam kuah kaldu yang gurih. Bakso sering disajikan dengan mie, bihun, tahu, dan sayuran, serta dilengkapi dengan saus, kecap, dan sambal sesuai selera. Bakso adalah salah satu makanan jalanan yang sangat populer di Indonesia dan bisa ditemukan di berbagai tempat, dari pedagang kaki lima hingga restoran besar.'),
(9, 'Bakpia', 'Tepung terigu, kacang hijau, gula jawa', 'Kue kecil berbentuk bulat berasal dari Yogyakarta, terbuat dari adonan tepung terigu yang diisi dengan pasta kacang hijau dan gula, kemudian dipanggang hingga matang. Bakpia memiliki rasa manis dengan kulit yang tipis dan renyah, serta isian yang lembut dan manis.'),
(10, 'Wingko', 'Kelapa parut, tepung beras ketan, gula', 'Kue tradisional yang terbuat dari campuran kelapa parut, tepung ketan, dan gula, dipanggang hingga berwarna kecokelatan. Wingko sebenarnya berasal dari Jawa Timur tetapi sering dijadikan oleh-oleh khas dari kota-kota di Jawa seperti Yogyakarta dan Semarang. Memiliki rasa yang manis serta tekstur yang kenyal.'),
(11, 'Nasi Kuning', 'Nasi, kunyit, santan', 'Nasi yang dimasak dengan santan dan kunyit sehingga berwarna kuning cerah dan memiliki rasa gurih. Nasi kuning sering disajikan pada acara-acara spesial seperti perayaan ulang tahun atau syukuran, dan biasanya dilengkapi dengan lauk seperti ayam goreng, sambal, telur balado, dan serundeng.'),
(12, 'Nasi Uduk', 'Nasi, santan, daun pandan, serai', 'Nasi uduk adalah nasi yang dimasak dengan santan dan bumbu seperti daun pandan dan serai, menghasilkan nasi yang gurih dan wangi, sering disajikan dengan lauk seperti ayam goreng, telur balado, tempe orek, dan sambal. Nasi uduk merupakan pilihan favorit untuk sarapan di Indonesia, tetapi juga bisa dinikmati kapan saja sepanjang hari.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `makanan`
--
ALTER TABLE `makanan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `makanan`
--
ALTER TABLE `makanan`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
