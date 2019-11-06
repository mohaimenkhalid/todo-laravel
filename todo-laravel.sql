-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 06, 2019 at 11:26 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `todo-laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_11_02_112551_create_todos_table', 1),
(4, '2016_06_01_000001_create_oauth_auth_codes_table', 2),
(5, '2016_06_01_000002_create_oauth_access_tokens_table', 2),
(6, '2016_06_01_000003_create_oauth_refresh_tokens_table', 2),
(7, '2016_06_01_000004_create_oauth_clients_table', 2),
(8, '2016_06_01_000005_create_oauth_personal_access_clients_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('0305e40df0b455980235e459c5f869c50a8fc613ce60d2fd21d8a51fb717f03d18bc297847d87b92', 5, 2, NULL, '[]', 0, '2019-11-04 12:59:52', '2019-11-04 12:59:52', '2020-11-04 18:59:52'),
('23333eb119af4fcca192a52fd92eba5c5abc6ccf69a6f335b8d431cadfb47e9406d77c33e4c599d6', 1, 2, NULL, '[]', 0, '2019-11-04 02:31:58', '2019-11-04 02:31:58', '2020-11-04 08:31:58'),
('2d1330a98a4b8e96d3fd2dad9d066c37a90c180d7711236946483bed4044be8ff1abdc1bfb6a2f88', 1, 2, NULL, '[]', 0, '2019-11-04 02:16:00', '2019-11-04 02:16:00', '2020-11-04 08:16:00'),
('4200732466ce5f38a2392a9b16a58c794b074ed53240ab72f3edbcd2bf21584d1186fab9bb7130f0', 5, 2, NULL, '[]', 0, '2019-11-04 02:33:52', '2019-11-04 02:33:52', '2020-11-04 08:33:52'),
('483ad2e7fe3c170b4940183efc52e09de6506d3945c640f630cd371684eac29e270cfeb5bdac2a47', 5, 2, NULL, '[]', 0, '2019-11-04 12:59:49', '2019-11-04 12:59:49', '2020-11-04 18:59:49'),
('54c38bd9640335877dffa91335349ea33144aad7b9eeb09ae1a6355dc5a4f18c3fde4bbff0877d92', 5, 2, NULL, '[]', 0, '2019-11-04 12:59:54', '2019-11-04 12:59:54', '2020-11-04 18:59:54'),
('623d3b3740291e7a891539b326c8881b67a71c15e7f79239c4613b7392d0f4e7d035c73185d84e70', 1, 2, NULL, '[]', 0, '2019-11-04 02:28:37', '2019-11-04 02:28:37', '2020-11-04 08:28:37'),
('744f9f285f54c579d925b9301771afbde5da16adbf556234083b7568832bdacfb7fce32b26171cd1', 5, 2, NULL, '[]', 0, '2019-11-04 13:15:39', '2019-11-04 13:15:39', '2020-11-04 19:15:39'),
('830cdb609573cd3f6cdd9db923627704f57f2300b93027e8325845055ab9203120027f1791ce9240', 5, 2, NULL, '[]', 0, '2019-11-04 02:39:58', '2019-11-04 02:39:58', '2020-11-04 08:39:58'),
('85eaff97a531909061a543960cadb92572eb43dea4fe9bf5cd2f7ed75cab0e34343f39912ff8a690', 5, 2, NULL, '[]', 0, '2019-11-04 07:02:31', '2019-11-04 07:02:31', '2020-11-04 13:02:31'),
('86aacaccd622d723ca843a1997f6df7965b08f1033f368a26dd55acfd4078d6885f9789b8a16adaa', 1, 2, NULL, '[]', 0, '2019-11-04 02:15:35', '2019-11-04 02:15:35', '2020-11-04 08:15:35'),
('93388d400c3e2586dc7133120226575e355dd3379fc9eb725feca2fae1529521c91d6538c85ec2f6', 5, 2, NULL, '[]', 0, '2019-11-04 12:59:45', '2019-11-04 12:59:45', '2020-11-04 18:59:45'),
('bd7ff00007c2181e2a7e50e91406df7a1f4b883a43dc26583c9e2f5dd47b9f9dbc06c0366b0f911f', 5, 2, NULL, '[]', 0, '2019-11-04 12:37:04', '2019-11-04 12:37:04', '2020-11-04 18:37:04'),
('d96cf8b5451c2e79996db60a091883703eb6ee8d2c5157f13b044d79ea4398d26d519c356d2d36d8', 1, 2, NULL, '[]', 0, '2019-11-04 02:31:51', '2019-11-04 02:31:51', '2020-11-04 08:31:51'),
('e89bb21ef0ae8becf19bd8532725b9f4544e82d8d055b99ceb1967d4d5a953fc0b5ab11c63b54900', 5, 2, NULL, '[]', 0, '2019-11-04 07:02:35', '2019-11-04 07:02:35', '2020-11-04 13:02:35'),
('ea4413c5c04d5d83d367cf72235feb9bf6a22745a557a7def326809d59291b6d2b4d53a74b1c3613', 6, 1, 'MyApp', '[]', 0, '2019-11-05 09:06:54', '2019-11-05 09:06:54', '2020-11-05 15:06:54'),
('f8878d7e004ea8d0e0a4c5e01e56c1f5025ac230b2ab38edb363793c0c110b8b4b88880472aa18d1', 1, 1, 'MyApp', '[]', 0, '2019-11-04 13:23:49', '2019-11-04 13:23:49', '2020-11-04 19:23:49');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'WueyyKLV1ZB0xolSa5xslWpVzzT0EYyxYAt8FksY', 'http://localhost', 1, 0, 0, '2019-11-04 00:41:11', '2019-11-04 00:41:11'),
(2, NULL, 'Laravel Password Grant Client', '6wywAd8aLQKIkUuakddadQOeD6qAZWhk3ZWvPtuU', 'http://localhost', 0, 1, 0, '2019-11-04 00:41:11', '2019-11-04 00:41:11');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2019-11-04 00:41:11', '2019-11-04 00:41:11');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_refresh_tokens`
--

INSERT INTO `oauth_refresh_tokens` (`id`, `access_token_id`, `revoked`, `expires_at`) VALUES
('0525aa1e2038610ed8f895ec458e94ee4a3f989e22146d088ffadb28f76b2e419a938b2837a33d00', '86aacaccd622d723ca843a1997f6df7965b08f1033f368a26dd55acfd4078d6885f9789b8a16adaa', 0, '2020-11-04 08:15:35'),
('2b032e0afcf6c984ed5cb1877decfa577ec56ebe0b629f568c54eec00625ba685b5a7e4409605d25', 'd96cf8b5451c2e79996db60a091883703eb6ee8d2c5157f13b044d79ea4398d26d519c356d2d36d8', 0, '2020-11-04 08:31:51'),
('41da727dfc600130bf5e06d7f6c0ca59790b619bdaa8b164b083c3af1e814957a009984787fd404f', '483ad2e7fe3c170b4940183efc52e09de6506d3945c640f630cd371684eac29e270cfeb5bdac2a47', 0, '2020-11-04 18:59:49'),
('42cdc00ad70237e0fad52909f5025fab893ff7aa84d0866d73a2243a08f62bceaae6de991ef6f58b', '623d3b3740291e7a891539b326c8881b67a71c15e7f79239c4613b7392d0f4e7d035c73185d84e70', 0, '2020-11-04 08:28:37'),
('4d267d731499160543b81a3f02687c2fb9c9e8ae4336dd968f0d7628be1656bf7bb3080c162d29f5', 'bd7ff00007c2181e2a7e50e91406df7a1f4b883a43dc26583c9e2f5dd47b9f9dbc06c0366b0f911f', 0, '2020-11-04 18:37:04'),
('5a9c13bd80ec202ba9e9b306a2882253e92c9eff74663b578018ec5b3ddb6211966882abcb581b87', '0305e40df0b455980235e459c5f869c50a8fc613ce60d2fd21d8a51fb717f03d18bc297847d87b92', 0, '2020-11-04 18:59:52'),
('8dfef596bac07f0a77a399340f60ee45384a38a7b868f56c37d22a5da65de78cd8cb309116e1d6ec', '85eaff97a531909061a543960cadb92572eb43dea4fe9bf5cd2f7ed75cab0e34343f39912ff8a690', 0, '2020-11-04 13:02:31'),
('a58a0fa2a8a02192144ff6ab81883bcc94411601c0ac62833527dc9c298d15bd4e2c544c973a602f', '744f9f285f54c579d925b9301771afbde5da16adbf556234083b7568832bdacfb7fce32b26171cd1', 0, '2020-11-04 19:15:39'),
('c3b2ced4e90c364a993b5e76831cf4d90340d72e15348c105987b6ab9265d09a6d7e1c2c75320095', '2d1330a98a4b8e96d3fd2dad9d066c37a90c180d7711236946483bed4044be8ff1abdc1bfb6a2f88', 0, '2020-11-04 08:16:01'),
('cb9cdc12870a2d211b6df44ac218da72c9be34c7cc509df8a2e1e85e64d791ae8a9d379ad5d0a651', '23333eb119af4fcca192a52fd92eba5c5abc6ccf69a6f335b8d431cadfb47e9406d77c33e4c599d6', 0, '2020-11-04 08:31:58'),
('cd712a9a4259471960070cbd0b1c365d8f4a83a683f65a7d91937f1dcd72ce6c460dc081d89ee3a0', '54c38bd9640335877dffa91335349ea33144aad7b9eeb09ae1a6355dc5a4f18c3fde4bbff0877d92', 0, '2020-11-04 18:59:54'),
('cfb824bab0f585ae8c8208ea1a3bbfb290e1ecbf2fd17e8e8b6e364cc3d486e18433677fa1b29271', '830cdb609573cd3f6cdd9db923627704f57f2300b93027e8325845055ab9203120027f1791ce9240', 0, '2020-11-04 08:39:58'),
('d4c9802fe33324d9c3b7df1a2374107c32cd8202e4bef0da794620b25a2a887a630a342def52f42d', '4200732466ce5f38a2392a9b16a58c794b074ed53240ab72f3edbcd2bf21584d1186fab9bb7130f0', 0, '2020-11-04 08:33:52'),
('dd1a834231f45920ee7d9cdef809ace8f2cb9f6b6d61d74e2f0b966e84803f75fd9fdef2071c5f7a', 'e89bb21ef0ae8becf19bd8532725b9f4544e82d8d055b99ceb1967d4d5a953fc0b5ab11c63b54900', 0, '2020-11-04 13:02:35'),
('fe096d1d72ef6fdc56f0bb79b64f4a68712750b6e1f9df97f8f5900f326b08f05dcbabfc48da8a5f', '93388d400c3e2586dc7133120226575e355dd3379fc9eb725feca2fae1529521c91d6538c85ec2f6', 0, '2020-11-04 18:59:45');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `todos`
--

CREATE TABLE `todos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Mr. Jasmin Feil', 'maggio.agnes@example.net', '2019-11-04 01:51:22', '$2y$10$T9rOdSi6F4tZu5ZzetmRROeWOIuNp4fTmLLsC76.q3eS9DWlqXFLe', 'CWHtJzmAA2', '2019-11-04 01:51:22', '2019-11-04 01:51:22'),
(2, 'Pinkie Wiza', 'loy.dietrich@example.com', '2019-11-04 01:51:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'LAtgAFTgte', '2019-11-04 01:51:26', '2019-11-04 01:51:26'),
(3, 'Kareem Runolfsson', 'marcelina.conn@example.org', '2019-11-04 01:51:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '9NAwXHeJFl', '2019-11-04 01:51:28', '2019-11-04 01:51:28'),
(4, 'Sydney Stamm', 'monroe05@example.net', '2019-11-04 01:51:29', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'APEMz3ELyq', '2019-11-04 01:51:29', '2019-11-04 01:51:29'),
(5, 'Emely Moen', 'lourdes07@example.org', '2019-11-04 01:51:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'jjv4Mq4WOQ', '2019-11-04 01:51:30', '2019-11-04 01:51:30'),
(6, 'khalid', 'k@gmail.com', NULL, '$2y$10$Bhx9o3z2NPKGDdNvBBsDeejRASWWTYKQEQ4PEkRE9hilxGKeA75q2', NULL, '2019-11-04 13:36:13', '2019-11-04 13:36:13'),
(7, 'mohaimen', 'mohaimen707@gmail.com', NULL, '$2y$10$8EZ8P2kTSiN97gI.t1LhoefaOTaP5Yuq.Be8aPJX/.48dMoA46OKW', NULL, '2019-11-05 06:44:17', '2019-11-05 06:44:17'),
(8, 'test', 'test@gmail.com', NULL, '$2y$10$AZdp62/hOjMjDBQv9.lYVegiRtk1PUCp/b0wlrDp/.AFUxvqEZvCm', NULL, '2019-11-05 06:49:24', '2019-11-05 06:49:24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `todos`
--
ALTER TABLE `todos`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `todos`
--
ALTER TABLE `todos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
