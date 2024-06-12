-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 12, 2024 at 10:26 AM
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
  `bahan` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `deskripsi` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `makanan`
--

INSERT INTO `makanan` (`id`, `nama`, `bahan`, `deskripsi`) VALUES
(1, 'Perkedel', 'kentang, telur', 'hidangan tradisional Indonesia yang berbentuk bulat pipih dan biasanya digoreng hingga berwarna kecokelatan. Selain kentang, ada variasi perkedel yang menggunakan bahan dasar lain seperti jagung, tahu, atau daging cincang. Adonan perkedel dibentuk menjadi bulatan pipih, kemudian dicelupkan ke dalam kocokan telur sebelum digoreng hingga matang. Perkedel sering disajikan sebagai lauk pendamping dalam hidangan nasi atau sebagai camilan.'),
(2, 'Lotek', 'kangkung, kacang panjang, tauge, kubis, bayam, dan mentimun', 'Lotek adalah hidangan khas Indonesia, terutama populer di daerah Jawa Barat, yang terdiri dari berbagai sayuran segar yang direbus atau dikukus dan kemudian disajikan dengan saus kacang yang khas. \r\nSaus kacang untuk lotek dibuat dari kacang tanah yang digoreng atau disangrai, kemudian dihaluskan dan dicampur dengan bahan-bahan lain. Proses pencampuran saus dan sayuran dilakukan dengan cara diaduk hingga semua sayuran terbalut saus secara merata. Lotek biasanya disajikan dengan lontong atau nasi dan sering dilengkapi dengan kerupuk sebagai pelengkap. Rasanya yang segar dan gurih menjadikannya hidangan yang sangat digemari sebagai makanan ringan atau lauk.'),
(3, 'Mendoan', 'Tempe, tepung terigu, bawang putih, ketumbar, daun bawang, garam, air, minyak untuk menggoreng.', 'Mendoan adalah makanan tradisional khas Banyumas, Jawa Tengah, yang dibuat dari tempe tempe yang diiris tipis dan dicelupkan ke dalam adonan tepung berbumbu sebelum digoreng setengah matang. Adonan tepung yang dibalut tempe yang digunakan mengandung berbagai bumbu seperti bawang putih, ketumbar, dan daun bawang, memberikan cita rasa gurih yang khas pada tempe alias mendoan tersebut. Setelah digoreng sebentar, mendoan tempe memiliki tekstur lembut dan tidak terlalu kering. Hidangan ini biasanya disajikan dengan sambal kecap atau cabai rawit, dan dinikmati sebagai camilan atau lauk pendamping.'),
(4, 'Rendang', 'Daging sapi, santan, rempah-rempah', 'Rendang merupakan masakan khas Indonesia yang berasal dari Minangkabau, Sumatera Barat. Rendang dimasak dengan santan dan campuran berbagai rempah-rempah seperti serai, lengkuas, bawang putih, kunyit, jahe, dan cabai. Proses memasak rendang memakan waktu lama hingga bumbu meresap sempurna dan daging menjadi empuk serta berwarna kecokelatan. Rendang sering disajikan dalam acara-acara khusus dan merupakan salah satu makanan yang terkenal secara internasional.'),
(5, 'Nasi Goreng', 'Nasi, kecap manis, telur, bawang putih, bawang merah, cabai, garam', 'Nasi goreng adalah salah satu makanan populer di Indonesia dan bisa ditemukan di berbagai tempat dari restoran mewah hingga pedagang kaki lima. Bumbu dasar nasi goreng terdiri dari bawang putih, bawang merah, kecap manis, dan cabai, namun variasi bahan tambahan bisa disesuaikan dengan selera. Nasi goreng sering disajikan dengan acar, kerupuk, dan irisan mentimun.'),
(6, 'Sate Ayam', 'Daging ayam, bumbu kacang', 'Sate merupakan makanan yang terdiri dari potongan daging yang ditusuk, lalu dibakar di atas arang. Sate ayam biasanya disajikan dengan bumbu kacang serta lontong atau nasi sebagai pelengkap. Daging ayam yang digunakan dipotong kecil-kecil dan ditusuk dengan tusukan bambu atau besi, kemudian dibakar hingga matang dan beraroma harum. Bumbu kacang yang digunakan dibuat dari kacang tanah yang dihaluskan dan dicampur dengan bahan-bahan lain seperti bawang putih, cabai, gula merah, dan air asam jawa. Rasanya yang gurih dan manis dengan aroma bakaran yang khas membuatnya menjadi salah satu makanan yang sangat populer di Indonesia.'),
(7, 'Gudeg', 'Nangka muda, santan, gula jawa', 'Gudeg merupakan masakan khas Yogyakarta yang terbuat dari nangka muda yang dimasak dengan santan dan gula jawa hingga berwarna cokelat dan bertekstur lembut. Gudeg biasanya disajikan dengan nasi, ayam opor, telur pindang, dan sambal goreng krecek. Proses memasak gudeg memakan waktu lama agar bumbu meresap sempurna ke dalam nangka muda. Rasa gudeg yang manis dan gurih membuatnya menjadi salah satu makanan favorit di Yogyakarta dan sering dijadikan oleh-oleh oleh wisatawan.'),
(8, 'Bakso', 'Daging sapi, tepung tapioka, bawang putih, garam, lada', 'Bakso merupakan bola-bola daging yang terbuat dari campuran daging sapi giling dan tepung tapioka, disajikan dalam kuah kaldu yang gurih. Bakso sering disajikan dengan mie, bihun, tahu, dan sayuran, serta dilengkapi dengan saus, kecap, dan sambal sesuai selera. Bakso adalah salah satu makanan jalanan yang sangat populer di Indonesia dan bisa ditemukan di berbagai tempat, dari pedagang kaki lima hingga restoran besar.'),
(9, 'Bakpia', 'Tepung terigu, kacang hijau, gula jawa', 'Kue kecil berbentuk bulat berasal dari Yogyakarta, terbuat dari adonan tepung terigu yang diisi dengan pasta kacang hijau dan gula, kemudian dipanggang hingga matang. Bakpia memiliki rasa manis dengan kulit yang tipis dan renyah, serta isian yang lembut dan manis.'),
(10, 'Wingko', 'Kelapa parut, tepung beras ketan, gula', 'Kue tradisional yang terbuat dari campuran kelapa parut, tepung ketan, dan gula, dipanggang hingga berwarna kecokelatan. Wingko sebenarnya berasal dari Jawa Timur tetapi sering dijadikan oleh-oleh khas dari kota-kota di Jawa seperti Yogyakarta dan Semarang. Memiliki rasa yang manis serta tekstur yang kenyal.'),
(11, 'Nasi Kuning', 'Nasi, kunyit, santan', 'Nasi yang dimasak dengan santan dan kunyit sehingga berwarna kuning cerah dan memiliki rasa gurih. Nasi kuning sering disajikan pada acara-acara spesial seperti perayaan ulang tahun atau syukuran, dan biasanya dilengkapi dengan lauk seperti ayam goreng, sambal, telur balado, dan serundeng.'),
(12, 'Nasi Uduk', 'Nasi, santan, daun pandan, serai', 'Nasi uduk adalah nasi yang dimasak dengan santan dan bumbu seperti daun pandan dan serai, menghasilkan nasi yang gurih dan wangi, sering disajikan dengan lauk seperti ayam goreng, telur balado, tempe orek, dan sambal. Nasi uduk merupakan pilihan favorit untuk sarapan di Indonesia, tetapi juga bisa dinikmati kapan saja sepanjang hari.'),
(13, 'Papeda', 'Sagu, air, ikan tongkol, bumbu kuning, daun jeruk, serai, dan kunyit', 'Papeda adalah makanan khas Papua yang dibuat dari sagu yang dimasak dengan air hingga berbentuk seperti gel, biasanya disajikan dengan ikan tongkol yang dimasak dalam bumbu kuning yang kaya akan daun jeruk, serai, dan kunyit. Hidangan ini memiliki tekstur kenyal dan lembut dengan rasa gurih dari ikan dan bumbu rempah yang menggugah selera.'),
(14, 'Pempek', 'Ikan tenggiri, tepung sagu, air, bawang putih, garam, telur, dan cuka', 'Pempek adalah makanan khas Palembang yang dibuat dari campuran ikan tenggiri dan tepung sagu, dicampur dengan air, bawang putih, dan garam, kemudian dibentuk dan direbus sebelum digoreng. Hidangan ini biasanya disajikan dengan telur di dalamnya dan dinikmati bersama saus cuka yang asam, manis, dan pedas, menciptakan perpaduan rasa yang unik dan lezat.'),
(15, 'Lumpia', 'Kulit lumpia, rebung, tauge, wortel, kol, daging ayam atau udang, bawang putih, bawang merah, bawang bombay, kecap manis, minyak goreng', 'Lumpia adalah sejenis makanan yang terbuat dari campuran rebung, tauge, wortel, kol, dan daging ayam atau udang yang dibungkus dengan kulit lumpia, kemudian digoreng hingga renyah. Hidangan ini biasanya disajikan dengan saus yang terbuat dari campuran bawang putih, bawang merah, bawang bombay, dan kecap manis, menciptakan rasa yang gurih dan manis yang lezat.'),
(16, 'Tahu Kupat', 'Tahu, ketupat, kubis, tauge, bawang goreng, bumbu kacang', 'Tahu Kupat adalah hidangan yang terdiri dari potongan tahu yang disajikan bersama ketupat, kubis, tauge, dan bawang goreng, yang kemudian disiram dengan bumbu kacang kental yang kaya akan rasa gurih dan manis, menciptakan perpaduan tekstur yang lembut dan renyah dengan cita rasa yang khas.'),
(17, 'Rawon', 'Daging sapi, kluwek, bawang merah, bawang putih, lengkuas, serai, daun salam, daun jeruk, garam, gula merah, air, minyak goreng', 'Rawon adalah masakan tradisional Jawa Timur yang terbuat dari daging sapi yang dimasak dalam kuah hitam pekat yang dihasilkan dari kluwek yang telah dihaluskan bersama dengan rempah-rempah seperti bawang merah, bawang putih, lengkuas, dan serai, memberikan cita rasa yang kaya dan kompleks dengan aroma yang harum.'),
(18, 'Soto', 'Ayam atau daging sapi, bihun, tauge, telur rebus, bawang goreng, seledri, jeruk nipis, kuah kaldu.', 'Soto adalah sup tradisional Indonesia yang berisi daging ayam atau sapi, bihun, dan sayuran dalam kuah kaldu yang gurih. Soto biasanya disajikan dengan telur rebus, bawang goreng, seledri, dan perasan jeruk nipis.'),
(19, 'Gado-Gado', 'Sayuran (kangkung, tauge, kubis, bayam), tahu, tempe, lontong, bumbu kacang, kerupuk', 'Gado-gado adalah salad khas Indonesia yang terdiri dari campuran sayuran rebus, tahu, tempe, dan lontong, disiram dengan saus kacang kental dan disajikan dengan kerupuk.'),
(20, 'Sayur Asem', 'Jagung, kacang panjang, labu siam, melinjo, daun melinjo, asam jawa, bumbu (bawang merah, bawang putih, cabai, terasi).', 'Sayur Asem adalah sup sayuran khas Indonesia yang memiliki rasa asam dan segar. Terbuat dari berbagai sayuran dan bumbu yang dimasak dengan asam jawa, sayur ini biasanya dinikmati dengan nasi dan lauk pauk.'),
(21, 'Nasi Liwet', 'Beras, santan, serai, daun salam, daun pandan, ikan teri, ayam, tahu, tempe.', 'Nasi Liwet adalah nasi khas Solo yang dimasak dengan santan dan rempah seperti serai dan daun salam, menghasilkan nasi yang gurih dan harum. Nasi liwet biasanya disajikan dengan ayam, tahu, tempe, dan ikan teri.'),
(22, 'Bubur Ayam', 'Beras, ayam, kaldu ayam, bawang goreng, seledri, cakwe, kecap manis, sambal.', 'Bubur Ayam adalah bubur nasi yang disajikan dengan potongan ayam suwir, kaldu ayam, dan berbagai topping seperti bawang goreng, seledri, cakwe, kecap manis, dan sambal. Hidangan ini sering dinikmati sebagai sarapan.'),
(23, 'Serabi', 'Tepung beras, santan, gula, daun pandan, kelapa parut.', 'Serabi adalah kue tradisional Indonesia yang terbuat dari adonan tepung beras dan santan, dimasak di atas wajan kecil. Serabi biasanya disajikan dengan kelapa parut dan sirup gula merah.'),
(24, 'Klepon', 'Tepung ketan, gula merah, kelapa parut, air pandan.', 'Klepon adalah kue tradisional yang terbuat dari tepung ketan yang dibentuk menjadi bola-bola kecil dan diisi dengan gula merah cair, kemudian direbus dan digulingkan dalam kelapa parut. Klepon biasanya disajikan sebagai camilan manis.'),
(25, 'Ayam Betutu', 'Ayam, bumbu bali, daun pisang', 'Ayam khas Bali yang dimasak dengan bumbu khas dan dibungkus daun pisang. Ayam dibumbui dengan campuran rempah-rempah tradisional, lalu dimasak perlahan hingga empuk dan beraroma harum. Hidangan ini memiliki rasa yang kaya dan pedas.'),
(26, 'Ayam Taliwang', 'Ayam, cabai, bawang putih, kemiri, terasi', 'Ayam panggang dari Lombok dengan bumbu pedas. Ayam dibumbui dengan cabai dan bumbu lainnya, kemudian dipanggang hingga matang. Hidangan ini terkenal dengan rasa pedas dan gurih yang khas.'),
(27, 'Babi Guling', 'Babi, bumbu kuning, rempah-rempah', 'Hidangan Bali yang berupa babi panggang dengan bumbu kuning. Babi diisi dengan bumbu dan rempah-rempah, lalu dipanggang hingga kulitnya renyah. Hidangan ini sering disajikan dalam acara-acara adat dan upacara keagamaan di Bali.'),
(28, 'Bandeng Presto', 'Ikan bandeng, bawang putih, kunyit, garam', 'Ikan bandeng yang dimasak dengan presto sehingga tulangnya lunak. Ikan dibumbui dan dimasak dalam tekanan tinggi hingga tulangnya menjadi lunak dan dapat dimakan. Hidangan ini sering disajikan dengan sambal dan nasi.'),
(29, 'Batagor', 'Ikan tenggiri, tahu, tepung sagu, bumbu kacang', 'Tahu dan ikan yang digoreng, disajikan dengan bumbu kacang. Batagor adalah singkatan dari Bakso Tahu Goreng, hidangan ini memiliki tekstur yang renyah di luar dan lembut di dalam, dengan cita rasa yang gurih dan manis dari bumbu kacangnya.'),
(30, 'Bika Ambon', 'Telur, gula, santan, tepung sagu', 'Kue khas Medan yang bertekstur bersarang dan beraroma harum. Kue ini memiliki rasa manis dengan aroma pandan dan tekstur kenyal serta berongga. Bika Ambon sering dijadikan oleh-oleh khas Medan.'),
(31, 'Bubur Manado', 'Beras, jagung, bayam, labu kuning, kemangi, bawang merah, ikan asin', 'Bubur yang terbuat dari campuran beras dan sayuran, disajikan dengan ikan asin. Bubur Manado memiliki rasa gurih dan segar dengan tambahan aroma kemangi. Hidangan ini sering dinikmati sebagai sarapan atau makan siang.'),
(32, 'Coto Makassar', 'Daging sapi, jeroan, kacang tanah, bawang putih, ketumbar', 'Sup daging khas Makassar dengan bumbu kacang. Coto Makassar menggunakan daging sapi dan jeroan yang dimasak dengan bumbu rempah dan kacang tanah, menghasilkan sup yang kaya akan rasa dan aroma.'),
(33, 'Es Cendol', 'Tepung beras, santan, gula merah, daun pandan, es', 'Minuman manis yang terbuat dari tepung beras, santan, dan gula merah. Es cendol biasanya disajikan dengan es dan memiliki cita rasa manis dan segar yang cocok untuk dinikmati di hari yang panas.'),
(34, 'Es Teler', 'Kelapa muda, alpukat, nangka, santan, sirup gula', 'Minuman segar dengan campuran buah-buahan dan santan. Es teler terdiri dari kelapa muda, alpukat, dan nangka yang dicampur dengan santan dan sirup gula, menciptakan minuman yang manis dan menyegarkan.'),
(35, 'Nasi Padang', 'Nasi, rendang, gulai, sambal, sayuran', 'Hidangan nasi khas Padang yang disajikan dengan berbagai lauk seperti rendang, gulai, dan sambal. Nasi Padang memiliki rasa yang kaya dari berbagai lauk yang disajikan.'),
(36, 'Pecel', 'Sayuran (bayam, kacang panjang, tauge, kol), bumbu kacang, kerupuk', 'Pecel adalah salad tradisional Indonesia yang terdiri dari berbagai sayuran rebus yang disiram dengan bumbu kacang kental. Hidangan ini biasanya disajikan dengan kerupuk dan kadang ditambahkan dengan tempe atau tahu goreng. Pecel memiliki cita rasa yang gurih, pedas, dan manis.'),
(37, 'otak-otak', 'Ikan tenggiri, tepung sagu, daun pisang', 'Makanan ringan yang terbuat dari ikan tenggiri yang dibumbui dan dibungkus daun pisang, kemudian dipanggang. Otak-otak memiliki rasa gurih dan tekstur yang kenyal.'),
(38, 'Sate', 'Daging ayam, kambing, atau sapi, kecap manis, bawang merah, bawang putih, cabai, kacang tanah', 'Sate adalah daging yang dipotong kecil-kecil, ditusuk dengan tusukan sate, dan dibakar di atas arang. Sate biasanya disajikan dengan bumbu kacang atau kecap manis yang dicampur dengan bawang merah, bawang putih, dan cabai. Hidangan ini populer di seluruh Indonesia dengan variasi rasa dan penyajian yang berbeda-beda di setiap daerah.'),
(39, 'Soto Betawi', 'Daging sapi, santan, bawang merah, bawang putih, jahe, lengkuas, serai, daun salam, daun jeruk', 'Soto Betawi adalah sup khas Betawi yang terbuat dari daging sapi dan jeroan yang dimasak dalam kuah santan yang gurih dan beraroma rempah. Hidangan ini biasanya disajikan dengan emping, bawang goreng, dan potongan tomat serta daun bawang.'),
(40, 'Nasi Tumpeng', 'Nasi kuning, ayam, telur, tempe, tahu, sambal, lalapan', 'Nasi Tumpeng adalah nasi kuning yang dibentuk menyerupai kerucut dan disajikan dengan berbagai lauk-pauk seperti ayam, telur, tempe, tahu, sambal, dan lalapan. Hidangan ini sering disajikan pada acara-acara perayaan dan syukuran di Indonesia.'),
(41, 'Opor Ayam', 'Ayam, santan, bawang merah, bawang putih, serai, daun salam, lengkuas, kunyit', 'Opor Ayam adalah masakan ayam yang dimasak dalam kuah santan yang gurih dan beraroma rempah. Hidangan ini memiliki cita rasa yang lembut dan sering disajikan dengan ketupat atau lontong, terutama saat perayaan Lebaran.'),
(42, 'Ayam Goreng', 'Ayam, bawang putih, ketumbar, kunyit, garam, minyak goreng', 'Ayam Goreng adalah ayam yang dibumbui dengan campuran bawang putih, ketumbar, kunyit, dan garam, kemudian digoreng hingga matang dan renyah. Hidangan ini sangat populer di Indonesia dan sering disajikan dengan nasi, sambal, dan lalapan.'),
(43, 'Mie Goreng', 'Mie telur, kecap manis, bawang putih, bawang merah, sayuran, telur, ayam atau udang', 'Mie Goreng adalah mie yang digoreng dengan berbagai bumbu dan bahan seperti kecap manis, bawang putih, bawang merah, sayuran, telur, dan daging ayam atau udang. Hidangan ini sangat populer di Indonesia sebagai makanan sehari-hari atau hidangan cepat saji.'),
(44, 'Sate Padang', 'Daging sapi, lidah sapi, tepung beras, bumbu kuning, bawang merah, bawang putih, kunyit', 'Sate Padang adalah sate khas Padang yang terbuat dari daging sapi atau lidah sapi yang dibumbui dengan bumbu kuning, kemudian dibakar dan disajikan dengan saus kental dari tepung beras yang gurih dan beraroma rempah.'),
(45, 'Sop Buntut', 'Ekor sapi, wortel, kentang, bawang merah, bawang putih, daun bawang, seledri', 'Sop Buntut adalah sup yang terbuat dari ekor sapi yang dimasak dengan sayuran seperti wortel dan kentang dalam kuah kaldu yang gurih. Hidangan ini biasanya disajikan dengan taburan bawang goreng dan daun bawang.'),
(46, 'Siomay', 'Ikan tenggiri, tepung sagu, tahu, kentang, kol, telur, bumbu kacang', 'Siomay adalah makanan yang terbuat dari campuran ikan tenggiri dan tepung sagu yang dikukus, kemudian disajikan dengan tahu, kentang, kol, dan telur. Hidangan ini biasanya disajikan dengan bumbu kacang yang gurih dan sedikit manis.'),
(47, 'Rujak Buah', 'Buah-buahan (mangga, jambu, nanas, pepaya), gula merah, cabai, garam, kacang tanah', 'Rujak Buah adalah campuran berbagai buah-buahan segar yang dipotong-potong dan disajikan dengan bumbu rujak yang terbuat dari gula merah, cabai, garam, dan kacang tanah yang dihaluskan. Hidangan ini memiliki rasa yang segar, manis, dan pedas.'),
(48, 'Pisang Goreng', 'Pisang, tepung terigu, gula', 'Pisang yang digoreng dengan balutan tepung hingga renyah. Pisang goreng memiliki rasa manis dan tekstur yang renyah di luar serta lembut di dalam.'),
(49, 'Es Campur', 'Buah-buahan (nangka, cincau, kelapa muda), cendol, tape, sirup, es serut', 'Es Campur adalah minuman dingin yang terdiri dari campuran berbagai buah-buahan, cendol, dan tape yang disajikan dengan sirup dan es serut. Minuman ini memiliki rasa yang manis dan segar, cocok untuk dinikmati di cuaca panas.'),
(50, 'Es Doger', 'Tape, ketan hitam, kelapa muda, susu kental manis, sirup, es serut', 'Es Doger adalah minuman dingin yang terbuat dari campuran tape, ketan hitam, dan kelapa muda yang disajikan dengan sirup, susu kental manis, dan es serut. Minuman ini memiliki rasa yang manis dan sedikit asam, cocok untuk menyegarkan hari Anda.');

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
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nama` (`nama`);

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
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

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
