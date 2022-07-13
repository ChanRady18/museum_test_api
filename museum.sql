-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 13, 2022 at 09:32 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `museum`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_07_04_072855_create_statues_table', 1),
(6, '2022_07_04_074842_create_museums_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `museums`
--

CREATE TABLE `museums` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `place` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `period` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `museums`
--

INSERT INTO `museums` (`id`, `title`, `type`, `place`, `period`, `content`, `image`, `created_at`, `updated_at`) VALUES
(8, 'Buddha', 'Sculpture', 'On view at The Met Fifth Avenue in Gallery 245', 'pre-Angkor period', 'Early in the seventh century a new Buddha type appeared in Southeast Asia, inspired by innovations that were taking place in northern India. The wellspring was the important monastic school at Sarnath. Its workshops undoubtedly supplied Buddha images to a great variety of clients, including pilgrim-monks who would have purchased small images—often, one may surmise, made of wood—easily transportable to their homelands. This Buddha, slender and ethereal, is a superb example of the early acceptance of the northern Indian model of ideal Buddhahood, seen in the increasingly detached and otherworldly expression and the use of body-defining drapery.', 'https://collectionapi.metmuseum.org/api/collection/v1/iiif/38160/1337803/main-image', '2022-07-13 00:03:55', '2022-07-13 00:03:55'),
(9, 'Brahma', 'Sculpture', 'On view at The Met Fifth Avenue in Gallery 249', 'Angkor period', 'This representation of Brahma, the Brahmanical god of creation and ancestor of all universes, is understood to be omnipresent. Hence he is depicted with four faces and four arms, evoking his universality. Brahma’s skirt-cloth (sampot) is in the Bakheng style, widely favored in the early tenth century and named after sculptures associated with the Bakheng temple. It is knee length, is drawn up between the legs and secured at the back, and has distinctive pleated “double-anchor,” or “fishtail,” pendants in front. The piled-up dreadlock hair (jatamukuta) is multifaceted to reflect the four faces it serves, and is secured with a string of pearls; each face of Brahma wears a large diadem, and a speckled treatment of the lower face indicates that he is bearded. This sculpture would have occupied a subsidiary shrine at a temple complex dedicated in all likelihood to Shiva.', 'https://collectionapi.metmuseum.org/api/collection/v1/iiif/38265/149662/main-image', '2022-07-13 00:05:36', '2022-07-13 00:05:36'),
(10, 'Standing Ganesha', 'Sculpture', 'On view at The Met Fifth Avenue in Gallery 245', 'pre-Angkor period', 'Ganesha is the Hindu elephant-headed deity who removes obstacles and is thus the god of success; in this sense, he is a god of great importance for everyday existence. He was venerated first, before the worshipper turned to the other gods, in order to remove potential obstacles between the worshipper and the divine. In Southeast Asia, Ganesha has a more independent status than in India; his images were often housed in separate temples as primary icons of worship. Here, Ganesha is shown wearing a short wraparound skirt (sampot), the front end of which falls down the center in a series of flaring folds characteristic of the Prasat Andet style.', 'https://collectionapi.metmuseum.org/api/collection/v1/iiif/38159/149690/main-image', '2022-07-13 00:06:43', '2022-07-13 00:06:43'),
(11, 'Shiva', 'Sculpture', 'On view at The Met Fifth Avenue in Gallery 245', 'pre-Angkor period', 'Sculptures of Shiva in human form began to appear in Khmer art in the seventh century, probably in response to the rising popularity of the Vaishnava cult that celebrated Vishnu as a king-like divinity, accessible and benign. The slim, almost adolescent figure displays a disconcerting realism in the modeling of the pectoral muscles and the subtle suggestion of the underlying ribcage. Yet the face is strong and authoritative—the face of a stern god—with a mustache, full lips, and strong arched eyebrows. A vertical third eye marks the forehead.', 'https://collectionapi.metmuseum.org/api/collection/v1/iiif/38158/1337796/main-image', '2022-07-13 00:09:46', '2022-07-13 00:09:46'),
(12, 'Standing Shiva', 'Sculpture', 'On view at The Met Fifth Avenue in Gallery 249', 'Angkor period', 'This figure is the most intact metal image surviving from Angkor. It belongs to a small group of metal sculptures of Hindu deities associated with royal cult practices that was discovered in Khmer territories in Cambodia and northeastern Thailand. Although it defies ready identification — the gesturing hands neither conform to a standard iconographic mudra nor hold key attributes — the figure may portray Shiva in anthropomorphic form, an unusual representation in Khmer art. It is possible that the sculpture served a dual purpose, representing primarily a cult icon for worship in a royal sanctuary and also acting as an ancestor image of a deceased ruler.', 'https://collectionapi.metmuseum.org/api/collection/v1/iiif/39097/149660/main-image', '2022-07-13 00:13:01', '2022-07-13 00:13:01'),
(13, 'Bodhisattva Avaolkiteshvara', 'Sculpture', 'On view at The Met Fifth Avenue in Gallery 245', 'pre-Angkor period', 'This four-armed Avalokiteshvara relates to a cache of small icons recovered by chance at the early eighth-century Khmer brick-and-sandstone temple Prasat Ak Yom, located on what is now an embankment of the West Baray, the eleventh-century reservoir in Angkor. This temple was likely the earliest step-pyramid temple in Khmer history. It has two doorjamb inscriptions, dated 674 and 704, respectively. During excavations in the 1930s, a set of bronzes was found secreted away in a cavity behind a lintel. This bronze is probably from the same workshop that supplied the Prasat Ak Yom temple with its images.', 'https://collectionapi.metmuseum.org/api/collection/v1/iiif/39092/1337797/main-image', '2022-07-13 00:15:25', '2022-07-13 00:15:25'),
(14, 'Buddha Protected by a Seven-headed Naga', 'Sculpture', 'On view at The Met Fifth Avenue in Gallery 245', 'Angkor period', 'This fragmentary sculpture can be associated with the late phase of Buddhist patronage in the vicinity of Angkor Thom, at Angkor, under the reign of King Jayavarman VII (r. 1181–1218), a devout Mahayana Buddhist. It depicts what must be assumed was the seated Buddha in deep meditation, resting on the coils of a snake that raises its seven-headed hood above the Buddha’s head. The cult of the animistic naga (snake-serpent) is an ancient practice in India and was readily taken up in Angkorian Cambodia to reflect a meeting of Indic and local cults that acknowledge the power of snake-spirits.', 'https://collectionapi.metmuseum.org/api/collection/v1/iiif/38451/79465/main-image', '2022-07-13 00:16:48', '2022-07-13 00:16:48'),
(15, 'Bust of Hevajra', 'Sculpture', 'On view at The Met Fifth Avenue in Gallery 245', 'Angkor period', 'This colossal bust of the Esoteric Buddhist god Hevajra comes from the ruins of the ancient site of Angkor in northwestern Cambodia. It is said to have been found near the East Gate (the Gate of the Dead) of the great walled city of Angkor Thom, built by Jayavarman VII (r. 1181–1219). The Bayon, sited at the very center of Angkor Thom, was one of the last major monuments of the Khmer empire.\n\nThis sculpture is fragmentary. The top head is missing. If the sculpture was, in fact, intended to represent the dancing Hevajra, it would have had eight arms on each side. Quite a few small bronze sculptures confirm this depiction. To judge from the rough surface of parts of this sculpture, it was never completed.', 'https://collectionapi.metmuseum.org/api/collection/v1/iiif/38304/149661/main-image', '2022-07-13 00:17:29', '2022-07-13 00:17:29'),
(16, 'Guardian Lion', 'Sculpture', 'On view at The Met Fifth Avenue in Gallery 245', '11th–early 12th century', 'Guardian lions flanked the main approaches to the sanctuary of most Khmer temples and were also placed along the stairways and on terraces. The lion, representing royalty, strength, and courage, was the personal symbol of the Khmer kings, who were believed to be gods as well. Therefore, the lion as guardian of the sacred precinct suggested the ability to ward off evil through both divine and royal protection.\nThis sculpture is fragmentary. The top head is missing. If the sculpture was, in fact, intended to represent the dancing Hevajra, it would have had eight arms on each side. Quite a few small bronze sculptures confirm this depiction. To judge from the rough surface of parts of this sculpture, it was never completed.', 'https://collectionapi.metmuseum.org/api/collection/v1/iiif/38449/95942/main-image', '2022-07-13 00:19:12', '2022-07-13 00:19:12'),
(17, 'STANDING BUDDHA', 'Bronze', 'National Museum of Cambodia,\nPhnom Penh', 'VI-VIIth centuries', 'There are two types of Buddha statues in Khmer art: the unadorned and the adorned Buddha. This figure is an unadorned Buddha (with simple monastic robes). His figure is specifically presented by distinctive characteristics called  ‘Sambhokaya’.\nThe draping style of the monastic robes in our time is indeed the same as that of the Buddha. There are three types of monastic robes: under garment (sampot ngout), the robe that covers the shoulder (sometimes the shoulders) uttarasanga called (cheipor), the robe covering the lower part of the body from the hips antaravasaka called (sbang). The uttarasanga can be worn in two ways: the left shoulder is bare in the ‘krang’ style and the both shoulders are covered in the ‘khlum’ style.', 'https://www.cambodiamuseum.info/image/collection/bronze_object/standing_buddha_big.jpg', '2022-07-13 00:25:35', '2022-07-13 00:25:35'),
(18, 'RECLINING VISNU', 'Bronze', 'National Museum of Cambodia,\nPhnom Penh', 'Second half of the XIth century', 'Khmer bronze production began from the Neolithic period (5,000BCE) and reached its apogee during the Angkor period (Baphuon style). The technique used continuously until the present-day is the ‘cire-perdue’ or ‘lost-wax ’ process. Some statues were inlaid in the eye cavities with precious stones to make them more life-like. The art of inlay was undeniably widespread throughout Southeast Asia in the 11th century.\nThis reclining Visnu is testimony to the talent of Khmer artists in the production of monumental bronze statues. Fragments of this statue were found in 1936 during excavations of a platform at the Western Mebon temple and were brought to the National Museum on the 1 December 1950.', 'https://www.cambodiamuseum.info/image/collection/bronze_object/reclining_visnu_big.jpg', '2022-07-13 00:26:53', '2022-07-13 00:26:53'),
(19, 'DEVI', 'Sandstone', 'National Museum of Cambodia,\nPhnom Penh', 'First half of VIIth century', 'According to Professor Jean Boisselier, this female statue is dated to the middle of the 7th century in the Sambor Prei Kuk style. One of the powerful kings of Chenla, Isanavarman, erected the city called Isanapura at Sambor Prei Kuk currently in Kompong Thom province. There we can still find many brick temples. Because of the absence of attributes, no one can claim this is either Visnu’s spouse or Siva’s spouse. The ancient Khmer used to pay respect to both the main gods and their spouses. “The morphology is remarkably close to the characteristics of Cambodian women today, so that one is tempted to see in this Devi an inspired personification of Khmer womanhood.”', 'https://www.cambodiamuseum.info/image/collection/stone_object/devi_big.jpg', '2022-07-13 00:29:09', '2022-07-13 00:29:09'),
(20, 'JAYAVARAMAN VII', 'Sandstone', 'National Museum of Cambodia,\nPhnom Penh', 'late XIIth - early XIIIth century', 'This statue is dated to the Bayon style. Portraiture art of this period is marked by smiling and mystical expression. The quality of the modelling of this work reveals an exceptional mastery of the art.\n\nHis facial expression is accentuated by semi-closed eyes, a light smile, nose with three lobes, large forehead, lips that are neither thin nor thick, and long ear lobes. All these traits represent the Khmer physiognomy. The king’s power as expressed by his facial expression evokes supreme knowledge, compassion and peacefulness.', 'https://www.cambodiamuseum.info/image/collection/stone_object/jayavarman_big.jpg', '2022-07-13 00:30:01', '2022-07-13 00:30:01');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `museums`
--
ALTER TABLE `museums`
  ADD PRIMARY KEY (`id`),
  ADD KEY `museums_title_index` (`title`),
  ADD KEY `museums_type_index` (`type`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `museums`
--
ALTER TABLE `museums`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
