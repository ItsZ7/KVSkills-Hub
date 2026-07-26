-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 26, 2026 at 07:28 AM
-- Server version: 9.7.1
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kvskills_hub`
--

-- --------------------------------------------------------

--
-- Table structure for table `audit_logs`
--

CREATE TABLE `audit_logs` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `action` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `entity_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `entity_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metadata` json DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `audit_logs`
--

INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `entity_type`, `entity_id`, `ip_address`, `user_agent`, `metadata`, `created_at`) VALUES
(1, 2, 'register', 'user', 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '{\"role\": \"coach\"}', '2026-07-25 05:39:37'),
(2, 1, 'login', 'user', 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', NULL, '2026-07-26 00:48:55'),
(3, 1, 'change_status', 'user', 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '{\"status\": \"active\"}', '2026-07-26 00:50:15'),
(4, 1, 'change_status', 'user', 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '{\"status\": \"disabled\"}', '2026-07-26 00:50:25'),
(5, 1, 'logout', 'user', 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', NULL, '2026-07-26 00:57:53'),
(6, 4, 'register', 'user', 4, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', '{\"role\": \"coach\"}', '2026-07-26 01:08:02'),
(7, 4, 'login', 'user', 4, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', NULL, '2026-07-26 01:11:13'),
(8, 4, 'logout', 'user', 4, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', NULL, '2026-07-26 01:38:45'),
(9, 1, 'login', 'user', 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', NULL, '2026-07-26 01:42:40'),
(10, 1, 'logout', 'user', 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', NULL, '2026-07-26 01:53:54');

-- --------------------------------------------------------

--
-- Table structure for table `award_rules`
--

CREATE TABLE `award_rules` (
  `id` bigint UNSIGNED NOT NULL,
  `category` enum('heavy','light') COLLATE utf8mb4_unicode_ci NOT NULL,
  `award` enum('Emas','Perak','Gangsa','Medallion') COLLATE utf8mb4_unicode_ci NOT NULL,
  `min_score` decimal(6,2) NOT NULL,
  `max_score` decimal(6,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `award_rules`
--

INSERT INTO `award_rules` (`id`, `category`, `award`, `min_score`, `max_score`) VALUES
(1, 'heavy', 'Emas', 90.00, 100.00),
(2, 'heavy', 'Perak', 80.00, 90.00),
(3, 'heavy', 'Gangsa', 70.00, 80.00),
(4, 'heavy', 'Medallion', 65.00, 70.00),
(5, 'light', 'Emas', 95.00, 100.00),
(6, 'light', 'Perak', 90.00, 95.00),
(7, 'light', 'Gangsa', 85.00, 90.00),
(8, 'light', 'Medallion', 75.00, 85.00);

-- --------------------------------------------------------

--
-- Table structure for table `briefings`
--

CREATE TABLE `briefings` (
  `id` bigint UNSIGNED NOT NULL,
  `skill_id` bigint UNSIGNED NOT NULL,
  `level` enum('zone','national') COLLATE utf8mb4_unicode_ci NOT NULL,
  `briefing_date` date NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time DEFAULT NULL,
  `meeting_url` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_published` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `briefings`
--

INSERT INTO `briefings` (`id`, `skill_id`, `level`, `briefing_date`, `start_time`, `end_time`, `meeting_url`, `is_published`, `created_at`, `updated_at`) VALUES
(1, 1, 'zone', '2025-06-13', '11:00:00', NULL, 'https://meet.google.com/aue-mybt-fgk', 1, '2026-07-25 05:29:00', '2026-07-25 05:29:00'),
(2, 1, 'national', '2025-04-08', '11:00:00', NULL, 'https://meet.google.com/yuj-ffrd-boj', 1, '2026-07-25 05:29:00', '2026-07-25 05:29:00'),
(3, 2, 'zone', '2025-06-10', '10:00:00', NULL, 'https://meet.google.com/zuh-bpxc-ipj', 1, '2026-07-25 05:29:00', '2026-07-25 05:29:00'),
(4, 2, 'national', '2025-08-08', '09:30:00', NULL, 'https://meet.google.com/ddf-xqjn-vcq', 1, '2026-07-25 05:29:00', '2026-07-25 05:29:00'),
(5, 3, 'zone', '2025-06-10', '10:00:00', NULL, 'https://meet.google.com/fzw-pyro-azw', 1, '2026-07-25 05:29:00', '2026-07-25 05:29:00'),
(6, 3, 'national', '2025-08-08', '09:30:00', NULL, 'https://meet.google.com/yya-afqm-zsk', 1, '2026-07-25 05:29:00', '2026-07-25 05:29:00'),
(7, 4, 'zone', '2025-06-11', '11:00:00', NULL, 'https://meet.google.com/ymw-gqwb-gjo', 1, '2026-07-25 05:29:00', '2026-07-25 05:29:00'),
(8, 4, 'national', '2025-07-08', '10:00:00', NULL, 'https://meet.google.com/bjx-ngfz-qxg', 1, '2026-07-25 05:29:00', '2026-07-25 05:29:00'),
(9, 5, 'zone', '2025-06-13', '11:00:00', NULL, 'https://meet.google.com/vpp-appu-mbn', 1, '2026-07-25 05:29:00', '2026-07-25 05:29:00'),
(10, 5, 'national', '2025-07-08', '10:00:00', NULL, 'https://meet.google.com/hjt-bqva-vks-iny', 1, '2026-07-25 05:29:00', '2026-07-25 05:29:00'),
(11, 6, 'zone', '2025-06-12', '11:00:00', NULL, 'https://meet.google.com/vfo-akdu-mth', 1, '2026-07-25 05:29:00', '2026-07-25 05:29:00'),
(12, 6, 'national', '2025-06-08', '10:00:00', NULL, 'https://meet.google.com/vfo-akdu-mth', 1, '2026-07-25 05:29:00', '2026-07-25 05:29:00'),
(13, 7, 'zone', '2025-06-12', '14:00:00', NULL, 'https://meet.google.com/vfo-akdu-mth', 1, '2026-07-25 05:29:00', '2026-07-25 05:29:00'),
(14, 7, 'national', '2025-06-08', '12:00:00', NULL, 'https://meet.google.com/vfo-akdu-mth', 1, '2026-07-25 05:29:00', '2026-07-25 05:29:00'),
(15, 8, 'zone', '2025-05-28', '11:00:00', NULL, 'https://meet.google.com/kxz-vwka-pkk', 1, '2026-07-25 05:29:00', '2026-07-25 05:29:00'),
(16, 8, 'national', '2025-05-08', '10:00:00', NULL, 'https://meet.google.com/jeq-dcxr-gkt', 1, '2026-07-25 05:29:00', '2026-07-25 05:29:00'),
(17, 9, 'zone', '2025-06-11', '11:00:00', NULL, 'https://meet.google.com/wgv-yuik-nvn', 1, '2026-07-25 05:29:00', '2026-07-25 05:29:00'),
(18, 9, 'national', '2025-07-08', '10:00:00', NULL, 'https://meet.google.com/qiv-cjro-iny', 1, '2026-07-25 05:29:00', '2026-07-25 05:29:00'),
(19, 10, 'zone', '2025-06-10', '10:00:00', NULL, 'https://meet.google.com/ptv-jdyz-xqz', 1, '2026-07-25 05:29:00', '2026-07-25 05:29:00'),
(20, 10, 'national', '2025-07-08', '14:00:00', NULL, 'https://meet.google.com/xnu-znwe-syu', 1, '2026-07-25 05:29:00', '2026-07-25 05:29:00'),
(21, 11, 'zone', '2025-06-12', '10:00:00', NULL, 'https://meet.google.com/iaz-yjri-yom', 1, '2026-07-25 05:29:00', '2026-07-25 05:29:00'),
(22, 11, 'national', '2025-07-08', '10:30:00', NULL, 'https://meet.google.com/zjt-yqva-vks', 1, '2026-07-25 05:29:00', '2026-07-25 05:29:00'),
(23, 12, 'zone', '2025-06-10', '10:00:00', NULL, 'https://meet.google.com/mwn-otsx-ben', 1, '2026-07-25 05:29:00', '2026-07-25 05:29:00'),
(24, 12, 'national', '2025-05-08', '10:00:00', NULL, 'https://meet.google.com/vou-uicr-mnq', 1, '2026-07-25 05:29:00', '2026-07-25 05:29:00'),
(25, 13, 'zone', '2025-06-12', '10:00:00', NULL, 'https://meet.google.com/xtn-apbb-bun', 1, '2026-07-25 05:29:00', '2026-07-25 05:29:00'),
(26, 13, 'national', '2025-07-08', '11:00:00', NULL, 'https://meet.google.com/soi-zyit-bbc', 1, '2026-07-25 05:29:00', '2026-07-25 05:29:00'),
(27, 14, 'zone', '2025-06-11', '10:00:00', NULL, 'https://meet.google.com/cst-kzxb-yza', 1, '2026-07-25 05:29:00', '2026-07-25 05:29:00'),
(28, 14, 'national', '2025-07-08', '11:00:00', NULL, 'https://meet.google.com/yad-pgqu-ami', 1, '2026-07-25 05:29:00', '2026-07-25 05:29:00'),
(29, 15, 'zone', '2025-06-12', '10:00:00', NULL, 'https://meet.google.com/azj-oifq-ysm', 1, '2026-07-25 05:29:00', '2026-07-25 05:29:00'),
(30, 15, 'national', '2025-08-08', '10:00:00', NULL, 'https://meet.google.com/ria-uxsv-wpz', 1, '2026-07-25 05:29:00', '2026-07-25 05:29:00'),
(31, 16, 'zone', '2025-06-12', '11:00:00', NULL, 'https://meet.google.com/que-cgqv-zga', 1, '2026-07-25 05:29:00', '2026-07-25 05:29:00'),
(32, 16, 'national', '2025-06-08', '11:00:00', NULL, 'https://meet.google.com/ysq-noes-esf', 1, '2026-07-25 05:29:00', '2026-07-25 05:29:00'),
(33, 17, 'zone', '2025-06-12', '10:00:00', NULL, 'https://meet.google.com/omv-dqbc-wfk', 1, '2026-07-25 05:29:00', '2026-07-25 05:29:00'),
(34, 17, 'national', '2025-08-08', '09:00:00', NULL, 'https://meet.google.com/wdc-hfcr-chr', 1, '2026-07-25 05:29:00', '2026-07-25 05:29:00'),
(35, 18, 'zone', '2025-06-13', '10:00:00', NULL, 'https://meet.google.com/mqn-mcdy-qux', 1, '2026-07-25 05:29:00', '2026-07-25 05:29:00'),
(36, 18, 'national', '2025-06-08', '10:30:00', NULL, 'https://meet.google.com/eai-xbfv-bah', 1, '2026-07-25 05:29:00', '2026-07-25 05:29:00'),
(37, 19, 'zone', '2025-06-10', '11:00:00', NULL, 'https://meet.google.com/lookup/gdldscmmzl', 1, '2026-07-25 05:29:00', '2026-07-25 05:29:00'),
(38, 19, 'national', '2025-06-08', '11:00:00', NULL, 'https://meet.google.com/mru-cuba-kbd', 1, '2026-07-25 05:29:00', '2026-07-25 05:29:00'),
(39, 20, 'zone', '2025-06-12', '12:00:00', NULL, 'https://meet.google.com/vfo-akdu-mth', 1, '2026-07-25 05:29:00', '2026-07-25 05:29:00'),
(40, 20, 'national', '2025-06-08', '11:00:00', NULL, 'https://meet.google.com/vfo-akdu-mth', 1, '2026-07-25 05:29:00', '2026-07-25 05:29:00'),
(41, 21, 'zone', '2025-06-11', '11:00:00', NULL, 'https://meet.google.com/uvs-rwsw-yiw', 1, '2026-07-25 05:29:00', '2026-07-25 05:29:00'),
(42, 21, 'national', '2025-08-06', '09:00:00', NULL, 'https://meet.google.com/ghe-ykgb-ppz', 1, '2026-07-25 05:29:00', '2026-07-25 05:29:00'),
(43, 22, 'zone', '2025-06-12', '10:00:00', NULL, 'https://meet.google.com/jws-wmjq-mcs', 1, '2026-07-25 05:29:00', '2026-07-25 05:29:00'),
(44, 22, 'national', '2025-08-05', '10:00:00', NULL, 'https://meet.google.com/ojw-gxxk-ckj', 1, '2026-07-25 05:29:00', '2026-07-25 05:29:00');

-- --------------------------------------------------------

--
-- Table structure for table `competitions`
--

CREATE TABLE `competitions` (
  `id` bigint UNSIGNED NOT NULL,
  `code` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` enum('zone','national') COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `host_zone` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('draft','registration','ongoing','completed','archived') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'draft',
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `competitions`
--

INSERT INTO `competitions` (`id`, `code`, `name`, `level`, `start_date`, `end_date`, `host_zone`, `status`, `description`, `created_at`, `updated_at`) VALUES
(1, 'KVSKILLS-2025-NATIONAL-09', 'Pertandingan Kemahiran Kolej Vokasional (KVSkills) Kali Ke-9 Peringkat Kebangsaan 2025', 'national', '2025-09-06', '2025-09-11', 'Melaka/N9', 'completed', 'Pertandingan akhir peringkat kebangsaan yang berlangsung di Zon Melaka/Negeri Sembilan.', '2026-07-25 05:29:00', '2026-07-25 05:29:00');

-- --------------------------------------------------------

--
-- Table structure for table `competition_skills`
--

CREATE TABLE `competition_skills` (
  `id` bigint UNSIGNED NOT NULL,
  `competition_id` bigint UNSIGNED NOT NULL,
  `skill_id` bigint UNSIGNED NOT NULL,
  `venue_id` bigint UNSIGNED DEFAULT NULL,
  `skill_category` enum('heavy','light') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `registration_open_at` datetime DEFAULT NULL,
  `registration_close_at` datetime DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `competition_skills`
--

INSERT INTO `competition_skills` (`id`, `competition_id`, `skill_id`, `venue_id`, `skill_category`, `registration_open_at`, `registration_close_at`, `created_at`, `updated_at`) VALUES
(1, 1, 3, 1, NULL, NULL, NULL, '2026-07-25 05:29:00', '2026-07-25 05:29:00'),
(2, 1, 2, 1, NULL, NULL, NULL, '2026-07-25 05:29:00', '2026-07-25 05:29:00'),
(3, 1, 5, 2, NULL, NULL, NULL, '2026-07-25 05:29:00', '2026-07-25 05:29:00'),
(4, 1, 13, 2, NULL, NULL, NULL, '2026-07-25 05:29:00', '2026-07-25 05:29:00'),
(5, 1, 17, 2, NULL, NULL, NULL, '2026-07-25 05:29:00', '2026-07-25 05:29:00'),
(6, 1, 19, 2, NULL, NULL, NULL, '2026-07-25 05:29:00', '2026-07-25 05:29:00'),
(7, 1, 15, 3, NULL, NULL, NULL, '2026-07-25 05:29:00', '2026-07-25 05:29:00'),
(8, 1, 12, 4, NULL, NULL, NULL, '2026-07-25 05:29:00', '2026-07-25 05:29:00'),
(9, 1, 4, 4, NULL, NULL, NULL, '2026-07-25 05:29:00', '2026-07-25 05:29:00'),
(10, 1, 18, 4, NULL, NULL, NULL, '2026-07-25 05:29:00', '2026-07-25 05:29:00'),
(11, 1, 6, 5, NULL, NULL, NULL, '2026-07-25 05:29:00', '2026-07-25 05:29:00'),
(12, 1, 14, 5, NULL, NULL, NULL, '2026-07-25 05:29:00', '2026-07-25 05:29:00'),
(13, 1, 22, 5, NULL, NULL, NULL, '2026-07-25 05:29:00', '2026-07-25 05:29:00'),
(14, 1, 20, 5, NULL, NULL, NULL, '2026-07-25 05:29:00', '2026-07-25 05:29:00'),
(15, 1, 7, 5, NULL, NULL, NULL, '2026-07-25 05:29:00', '2026-07-25 05:29:00'),
(16, 1, 10, 6, NULL, NULL, NULL, '2026-07-25 05:29:00', '2026-07-25 05:29:00'),
(17, 1, 11, 6, NULL, NULL, NULL, '2026-07-25 05:29:00', '2026-07-25 05:29:00'),
(18, 1, 9, 7, NULL, NULL, NULL, '2026-07-25 05:29:00', '2026-07-25 05:29:00'),
(19, 1, 21, 7, NULL, NULL, NULL, '2026-07-25 05:29:00', '2026-07-25 05:29:00'),
(20, 1, 1, 8, NULL, NULL, NULL, '2026-07-25 05:29:00', '2026-07-25 05:29:00'),
(21, 1, 16, 8, NULL, NULL, NULL, '2026-07-25 05:29:00', '2026-07-25 05:29:00'),
(22, 1, 8, 9, NULL, NULL, NULL, '2026-07-25 05:29:00', '2026-07-25 05:29:00');

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE `documents` (
  `id` bigint UNSIGNED NOT NULL,
  `skill_id` bigint UNSIGNED DEFAULT NULL,
  `uploaded_by` bigint UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` enum('official_letter','briefing','national_schedule','national_schedule_source','question','result','other') COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_path` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `original_filename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime_type` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_size` bigint UNSIGNED NOT NULL,
  `checksum_sha256` char(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `visibility` enum('public','authenticated','private') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'private',
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `documents`
--

INSERT INTO `documents` (`id`, `skill_id`, `uploaded_by`, `title`, `category`, `file_path`, `original_filename`, `mime_type`, `file_size`, `checksum_sha256`, `visibility`, `is_active`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, 'Surat Makluman Pertandingan Akhir KVSkills 2025', 'official_letter', 'storage/private/documents/general/surat-makluman-pertandingan-akhir-2025.pdf', 'Surat Makluman Pertandingan Akhir KV Skills.pdf', 'application/pdf', 1143253, '824f8ea2b848ddc75d9886f310bacf9696c245322e9a9440e534a231acba2731', 'public', 1, '2026-07-25 05:29:00', '2026-07-25 05:29:00'),
(2, NULL, NULL, 'Jadual Penataran KVSkills Peringkat Zon (PDF)', 'briefing', 'storage/private/documents/briefings/jadual-penataran-zon.pdf', 'Jadual Waktu Penataran KVSkills Peringkat Zon.pdf', 'application/pdf', 99569, 'bafc0a1da162d5e88bb11b08cf4ca7524943ddd618b42fb1c239cca9508e35f2', 'public', 1, '2026-07-25 05:29:00', '2026-07-25 05:29:00'),
(3, NULL, NULL, 'Jadual Penataran KVSkills Peringkat Zon (Excel)', 'briefing', 'storage/private/documents/briefings/jadual-penataran-zon.xlsx', 'Jadual Waktu Penataran KVSkills Peringkat Zon.xlsx', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet', 7407, '59c07542584e32d652c09ae69448691f15aabf6774597e3fd4ab969bd31a28d1', 'public', 1, '2026-07-25 05:29:00', '2026-07-25 05:29:00'),
(4, NULL, NULL, 'Jadual Penataran KVSkills Peringkat Kebangsaan (Excel)', 'briefing', 'storage/private/documents/briefings/jadual-penataran-kebangsaan.xlsx', 'Jadual Waktu Penataran KVSkills Peringkat Kebangsaan.xlsx', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet', 12718, '7969709dad26ca280fbf790e03bd9a5132aee46e01d2506a545b47e2c004de14', 'public', 1, '2026-07-25 05:29:00', '2026-07-25 05:29:00'),
(5, NULL, NULL, 'Taklimat Penataran KVSkills Zon', 'briefing', 'storage/private/documents/briefings/taklimat-penataran-zon.pdf', 'TAKLIMAT PENATARAN KV SKILLS ZON.pdf', 'application/pdf', 919627, '3961cff670e57d9c65387f4547d1a874b3b1bd85ec6b73e3046e481ae104a88e', 'public', 1, '2026-07-25 05:29:00', '2026-07-25 05:29:00'),
(6, 1, NULL, 'Jadual Pertandingan Kebangsaan - ADDITIVE MANUFACTURING', 'national_schedule', 'storage/private/documents/national-schedules/additive-manufacturing.pdf', 'JADUAL PERTANDINGAN KEBANGSAAN ADDITIVE.pdf', 'application/pdf', 518943, 'f9611dc6448d3720375cf95a34355c1a3445d022cf47305a1449f2ae3d6afdf5', 'public', 1, '2026-07-25 05:29:00', '2026-07-25 05:29:00'),
(7, 2, NULL, 'Jadual Pertandingan Kebangsaan - ANIMATION AND MULTIMEDIA', 'national_schedule', 'storage/private/documents/national-schedules/animation-and-multimedia.pdf', '06. JADUAL PERTANDINGAN KEBANGSAAN_2025.pdf', 'application/pdf', 765663, 'a2621608ae3106e8e9b43d4c4a6b48dbb6d7827df0678974ce4ddf1f278eb7ae', 'public', 1, '2026-07-25 05:29:00', '2026-07-25 05:29:00'),
(8, 4, NULL, 'Jadual Pertandingan Kebangsaan - BEAUTY THERAPY', 'national_schedule', 'storage/private/documents/national-schedules/beauty-therapy.pdf', '06. JADUAL PERTANDINGAN KEBANGSAAN BEAUTY THERAPY.pdf', 'application/pdf', 501346, '8e9928c589debd36411a126ea247e5f27b855950e9683c595d2a96b44681049f', 'public', 1, '2026-07-25 05:29:00', '2026-07-25 05:29:00'),
(9, 6, NULL, 'Jadual Pertandingan Kebangsaan - BRICKLAYING', 'national_schedule', 'storage/private/documents/national-schedules/bricklaying.pdf', 'Bricklaying_JadualPertandingan_KVSkills_Kebangsaan2025.pdf', 'application/pdf', 374940, 'c51b2e777cb5bc66058b6a6823decbf783f3cca0d6c438c34b69fc77f92b18aa', 'public', 1, '2026-07-25 05:29:00', '2026-07-25 05:29:00'),
(10, 7, NULL, 'Jadual Pertandingan Kebangsaan - CARPENTRY', 'national_schedule', 'storage/private/documents/national-schedules/carpentry.pdf', 'JADUAL PERTANDINGAN KEBANGSAAN_CARPENTRY.pdf', 'application/pdf', 531568, '56614a3e0769b1f7167073b1f94b5fc1a94c1d17d12baf49d6749553edbc09c1', 'public', 1, '2026-07-25 05:29:00', '2026-07-25 05:29:00'),
(11, 8, NULL, 'Jadual Pertandingan Kebangsaan - CNC MILLING', 'national_schedule', 'storage/private/documents/national-schedules/cnc-milling.pdf', 'JADUAL PERTANDINGAN KEBANGSAAN.pdf', 'application/pdf', 579850, '8e723448c87260ef3c2173a4c4169101734f46ef999c70a7006566910a9149a4', 'public', 1, '2026-07-25 05:29:00', '2026-07-25 05:29:00'),
(12, 9, NULL, 'Jadual Pertandingan Kebangsaan - COOKING', 'national_schedule', 'storage/private/documents/national-schedules/cooking.pdf', 'Jadual Pertandingan Peringkat Kebangsaan KVSKILLS 2025 (NEW).pdf', 'application/pdf', 150075, '3c47c39e5dd2bb43c169179175c7c94d02c36f3d4cec4e4c6fbaeb9cfda8b004', 'public', 1, '2026-07-25 05:29:00', '2026-07-25 05:29:00'),
(13, 10, NULL, 'Jadual Pertandingan Kebangsaan - ELECTRICAL INSTALLATIONS', 'national_schedule', 'storage/private/documents/national-schedules/electrical-installations.pdf', 'JADUAL PERTANDINGAN KEBANGSAAN ELECTRICAL INSTALLATION.pdf', 'application/pdf', 367224, '819be69244dacf7993d3d90f8a350f6a2e5dccd7516ee4d46df6712d31ff1029', 'public', 1, '2026-07-25 05:29:00', '2026-07-25 05:29:00'),
(14, 11, NULL, 'Jadual Pertandingan Kebangsaan - ELECTRONICS', 'national_schedule', 'storage/private/documents/national-schedules/electronics.docx', '06. JADUAL PERTANDINGAN KEBANGSAAN -ELECTRONICS.docx', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', 372634, '5225286ce057e68b858bf2f6584d92fe32d94f37d0de7c0d44aae176e74c59ba', 'public', 1, '2026-07-25 05:29:00', '2026-07-25 05:29:00'),
(15, 12, NULL, 'Jadual Pertandingan Kebangsaan - FASHION TECHNOLOGY', 'national_schedule', 'storage/private/documents/national-schedules/fashion-technology.pdf', 'Fashion Technology_Jadual_KVSkill_Kebangsaan.pdf', 'application/pdf', 620389, '79441dcd6d6d3955d2933a0033ecac0e75464b208ca1ed7601127cbbb31e00c2', 'public', 1, '2026-07-25 05:29:00', '2026-07-25 05:29:00'),
(16, 13, NULL, 'Jadual Pertandingan Kebangsaan - GRAPHIC DESIGN TECHNOLOGY', 'national_schedule', 'storage/private/documents/national-schedules/graphic-design-technology.pdf', 'GDT JADUAL PERTANDINGAN KEBANGSAAN (GRAFIK).pdf', 'application/pdf', 769524, 'b481d19653081b8b82f21af5eaa546bddf41446229650a1db0013da4214ddcb5', 'public', 1, '2026-07-25 05:29:00', '2026-07-25 05:29:00'),
(17, 14, NULL, 'Jadual Pertandingan Kebangsaan - IT NETWORK AND SYSTEM ADMIN', 'national_schedule', 'storage/private/documents/national-schedules/it-network-and-system-admin.pdf', 'ITNSA_JADUAL PERTANDINGAN KV SKILLS KEBANGSAAN 2025.pdf', 'application/pdf', 498058, '810001e3d6ae2968dba2a82775751bbcc9682726239e1aaf21c7ef0f9ba6b661', 'public', 1, '2026-07-25 05:29:00', '2026-07-25 05:29:00'),
(18, 15, NULL, 'Jadual Pertandingan Kebangsaan - LANDSCAPE GARDENING', 'national_schedule', 'storage/private/documents/national-schedules/landscape-gardening.pdf', ' JADUAL PERTANDINGAN KEBANGSAAN LANDSCAPE GARDENING.pdf', 'application/pdf', 495347, 'ebe01bf01060406cc8ee9e617ef20b9e60f193a58f75d4ee2e8ba918911af53d', 'public', 1, '2026-07-25 05:29:00', '2026-07-25 05:29:00'),
(19, 16, NULL, 'Jadual Pertandingan Kebangsaan - MECHANICAL ENGINEERING - CAD', 'national_schedule', 'storage/private/documents/national-schedules/mechanical-engineering-cad.pdf', '06. JADUAL PERTANDINGAN KEBANGSAAN(CAD).pdf', 'application/pdf', 502310, 'd34b31dde5be9d6cfcc8caaea4d70c6cd2b5c798f0de63754617195932d0b7a9', 'public', 1, '2026-07-25 05:29:00', '2026-07-25 05:29:00'),
(20, 17, NULL, 'Jadual Pertandingan Kebangsaan - PAINTING & DECORATING', 'national_schedule', 'storage/private/documents/national-schedules/painting-and-decorating.pdf', '06. JADUAL PERTANDINGAN KV SKILLS KEBANGSAAN PAINTING & DECORATING.pdf', 'application/pdf', 273108, 'e9c852377e39b89495ff8b05ee191e3f495baae5d46d755f0edbab05a4e60bb3', 'public', 1, '2026-07-25 05:29:00', '2026-07-25 05:29:00'),
(21, 19, NULL, 'Jadual Pertandingan Kebangsaan - REFRIGERATION AND AIR-CONDITIONING', 'national_schedule', 'storage/private/documents/national-schedules/refrigeration-and-air-conditioning.pdf', '05. RAC_KVSKILLS2025_JADUAL PERTANDINGAN KEBANGSAAN.pdf', 'application/pdf', 355436, '8f9dc93c2a813da164e587c70000f131d9c4b943fba56c17929a93e61269fd3d', 'public', 1, '2026-07-25 05:29:00', '2026-07-25 05:29:00'),
(22, 20, NULL, 'Jadual Pertandingan Kebangsaan - WALL AND FLOOR TILING', 'national_schedule', 'storage/private/documents/national-schedules/wall-and-floor-tiling.pdf', 'Wall&FloorTiling_Jadual Pertandingan_KVSkills_KEB2025.pdf', 'application/pdf', 454329, 'd4cdf39babb6f9d2c18e889820fd5b3b41142985624f1bb7cb836a05bdbe927f', 'public', 1, '2026-07-25 05:29:00', '2026-07-25 05:29:00'),
(23, 21, NULL, 'Jadual Pertandingan Kebangsaan - WEB TECHNOLOGY', 'national_schedule', 'storage/private/documents/national-schedules/web-technology.pdf', 'WEB_TECHNOLOGY_JADUAL PERTANDINGAN KEBANGSAAN update 5_Ogos.pdf', 'application/pdf', 438638, '652f70ce2f4a8d7921db50034e1c1f62c77c4cd8328819a89cff7ee4521668da', 'public', 1, '2026-07-25 05:29:00', '2026-07-25 05:29:00'),
(24, 22, NULL, 'Jadual Pertandingan Kebangsaan - WELDING', 'national_schedule', 'storage/private/documents/national-schedules/welding.docx', 'JADUAL PERTANDINGAN KEBANGSAAN BIDANG WELDING.docx', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', 304921, 'd7869af74df1410c2831cf393f58c1a24023882d3037a2db88c50d91eb7fbaa5', 'public', 1, '2026-07-25 05:29:00', '2026-07-25 05:29:00'),
(25, 6, NULL, 'Jadual Pertandingan Kebangsaan - BRICKLAYING (Sumber Word)', 'national_schedule_source', 'storage/private/documents/national-schedules/bricklaying-source.docx', 'Bricklaying_JadualPertandingan_KVSkills_Kebangsaan2025.docx', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', 76604, '2f70a13dedd8f561f2dd1a8b76b51964841ba51ef80a17e55450b26e81bffc9c', 'private', 1, '2026-07-25 05:29:00', '2026-07-25 05:29:00');

-- --------------------------------------------------------

--
-- Table structure for table `registrations`
--

CREATE TABLE `registrations` (
  `id` bigint UNSIGNED NOT NULL,
  `competition_id` bigint UNSIGNED NOT NULL,
  `zone_id` bigint UNSIGNED NOT NULL,
  `skill_id` bigint UNSIGNED NOT NULL,
  `coach_user_id` bigint UNSIGNED NOT NULL,
  `participant_name` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `participant_email` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `participant_phone` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `institution` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('draft','submitted','approved','rejected') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'submitted',
  `rejection_reason` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `submitted_at` datetime DEFAULT NULL,
  `approved_at` datetime DEFAULT NULL,
  `approved_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `registration_helpers`
--

CREATE TABLE `registration_helpers` (
  `id` bigint UNSIGNED NOT NULL,
  `registration_id` bigint UNSIGNED NOT NULL,
  `helper_type` enum('assistant','model') COLLATE utf8mb4_unicode_ci NOT NULL,
  `full_name` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

CREATE TABLE `results` (
  `id` bigint UNSIGNED NOT NULL,
  `registration_id` bigint UNSIGNED NOT NULL,
  `score` decimal(6,2) NOT NULL,
  `skill_category` enum('heavy','light') COLLATE utf8mb4_unicode_ci NOT NULL,
  `award` enum('Emas','Perak','Gangsa','Medallion','Tiada') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Tiada',
  `rank_position` smallint UNSIGNED DEFAULT NULL,
  `is_published` tinyint(1) NOT NULL DEFAULT '0',
  `notes` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entered_by` bigint UNSIGNED NOT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ;

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE `skills` (
  `id` bigint UNSIGNED NOT NULL,
  `code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort_order` smallint UNSIGNED NOT NULL DEFAULT '0',
  `assistant_count` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `model_count` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `assistant_note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`id`, `code`, `slug`, `name`, `sort_order`, `assistant_count`, `model_count`, `assistant_note`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'B01', 'additive-manufacturing', 'ADDITIVE MANUFACTURING', 1, 0, 0, 'Tiada pembantu peserta dibenarkan.', 1, '2026-07-25 05:29:00', '2026-07-25 05:29:00'),
(2, 'B02', 'animation-and-multimedia', 'ANIMATION AND MULTIMEDIA', 2, 0, 0, 'Tiada pembantu peserta dibenarkan.', 1, '2026-07-25 05:29:00', '2026-07-25 05:29:00'),
(3, 'B03', 'automobile-technology', 'AUTOMOBILE TECHNOLOGY', 3, 0, 0, 'Tiada pembantu peserta dibenarkan.', 1, '2026-07-25 05:29:00', '2026-07-25 05:29:00'),
(4, 'B04', 'beauty-therapy', 'BEAUTY THERAPY', 4, 1, 1, '1 model dan 1 pembantu diwajibkan.', 1, '2026-07-25 05:29:00', '2026-07-25 05:29:00'),
(5, 'B05', 'bookkeeping', 'BOOKKEEPING', 5, 0, 0, 'Tiada pembantu peserta dibenarkan.', 1, '2026-07-25 05:29:00', '2026-07-25 05:29:00'),
(6, 'B06', 'bricklaying', 'BRICKLAYING', 6, 0, 0, 'Tiada pembantu peserta dibenarkan.', 1, '2026-07-25 05:29:00', '2026-07-25 05:29:00'),
(7, 'B07', 'carpentry', 'CARPENTRY', 7, 0, 0, 'Tiada pembantu peserta dibenarkan.', 1, '2026-07-25 05:29:00', '2026-07-25 05:29:00'),
(8, 'B08', 'cnc-milling', 'CNC MILLING', 8, 0, 0, 'Tiada pembantu peserta dibenarkan.', 1, '2026-07-25 05:29:00', '2026-07-25 05:29:00'),
(9, 'B09', 'cooking', 'COOKING', 9, 1, 0, '1 pembantu diwajibkan.', 1, '2026-07-25 05:29:00', '2026-07-25 05:29:00'),
(10, 'B10', 'electrical-installations', 'ELECTRICAL INSTALLATIONS', 10, 0, 0, 'Tiada pembantu peserta dibenarkan.', 1, '2026-07-25 05:29:00', '2026-07-25 05:29:00'),
(11, 'B11', 'electronics', 'ELECTRONICS', 11, 0, 0, 'Tiada pembantu peserta dibenarkan.', 1, '2026-07-25 05:29:00', '2026-07-25 05:29:00'),
(12, 'B12', 'fashion-technology', 'FASHION TECHNOLOGY', 12, 0, 0, 'Tiada pembantu peserta dibenarkan.', 1, '2026-07-25 05:29:00', '2026-07-25 05:29:00'),
(13, 'B13', 'graphic-design-technology', 'GRAPHIC DESIGN TECHNOLOGY', 13, 0, 0, 'Tiada pembantu peserta dibenarkan.', 1, '2026-07-25 05:29:00', '2026-07-25 05:29:00'),
(14, 'B14', 'it-network-and-system-admin', 'IT NETWORK AND SYSTEM ADMIN', 14, 0, 0, 'Tiada pembantu peserta dibenarkan.', 1, '2026-07-25 05:29:00', '2026-07-25 05:29:00'),
(15, 'B15', 'landscape-gardening', 'LANDSCAPE GARDENING', 15, 1, 0, '1 pembantu diwajibkan.', 1, '2026-07-25 05:29:00', '2026-07-25 05:29:00'),
(16, 'B16', 'mechanical-engineering-cad', 'MECHANICAL ENGINEERING - CAD', 16, 0, 0, 'Tiada pembantu peserta dibenarkan.', 1, '2026-07-25 05:29:00', '2026-07-25 05:29:00'),
(17, 'B17', 'painting-and-decorating', 'PAINTING & DECORATING', 17, 0, 0, 'Tiada pembantu peserta dibenarkan.', 1, '2026-07-25 05:29:00', '2026-07-25 05:29:00'),
(18, 'B18', 'patisserie-and-confectionery', 'PATISSERIE & CONFECTIONERY', 18, 0, 0, 'Tiada pembantu peserta dibenarkan.', 1, '2026-07-25 05:29:00', '2026-07-25 05:29:00'),
(19, 'B19', 'refrigeration-and-air-conditioning', 'REFRIGERATION AND AIR-CONDITIONING', 19, 0, 0, 'Tiada pembantu peserta dibenarkan.', 1, '2026-07-25 05:29:00', '2026-07-25 05:29:00'),
(20, 'B20', 'wall-and-floor-tiling', 'WALL AND FLOOR TILING', 20, 0, 0, 'Tiada pembantu peserta dibenarkan.', 1, '2026-07-25 05:29:00', '2026-07-25 05:29:00'),
(21, 'B21', 'web-technology', 'WEB TECHNOLOGY', 21, 0, 0, 'Tiada pembantu peserta dibenarkan.', 1, '2026-07-25 05:29:00', '2026-07-25 05:29:00'),
(22, 'B22', 'welding', 'WELDING', 22, 0, 0, 'Tiada pembantu peserta dibenarkan.', 1, '2026-07-25 05:29:00', '2026-07-25 05:29:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `zone_id` bigint UNSIGNED DEFAULT NULL,
  `role` enum('coach','technical','admin') COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('pending','active','disabled') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `full_name` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `institution` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password_hash` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_login_at` datetime DEFAULT NULL,
  `approved_at` datetime DEFAULT NULL,
  `approved_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `zone_id`, `role`, `status`, `full_name`, `email`, `phone`, `institution`, `password_hash`, `last_login_at`, `approved_at`, `approved_by`, `created_at`, `updated_at`) VALUES
(1, NULL, 'admin', 'active', 'Pentadbir KVSkills', 'admin@kvskills.my', NULL, NULL, '$2y$10$hL72Gc0SYsbzOTAC8QafMOh5xHOanx1zlj.v8i1a5zSSJEvRGaTNC', '2026-07-26 09:42:40', '2026-07-26 08:42:46', NULL, '2026-07-25 05:29:00', '2026-07-26 01:42:40'),
(2, 1, 'admin', 'active', 'Muhammad Faris Bin Mohd Fuad', 'accfarisgaming@gmail.com', '01116487080', 'kvsp1', '$2y$10$bJczP.y.0hNFOAw6LgYjSOHuVyAUT.h.km6SvNX5yx2uAXXIWmD5q', NULL, '2026-07-26 08:50:15', 1, '2026-07-25 05:39:37', '2026-07-26 01:12:36'),
(4, 3, 'coach', 'active', 'Jurulatih', 'jurulatih@gmail.com', '01116487080', 'kvsp1', '$2y$10$XjDm/GDoLyWbzLJuGuq28.5izCVftS1fjunguYk7DUjol9GXZ3Cze', '2026-07-26 09:11:13', NULL, NULL, '2026-07-26 01:08:02', '2026-07-26 01:11:13');

-- --------------------------------------------------------

--
-- Table structure for table `venues`
--

CREATE TABLE `venues` (
  `id` bigint UNSIGNED NOT NULL,
  `code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(220) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `map_url` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `venues`
--

INSERT INTO `venues` (`id`, `code`, `name`, `address`, `map_url`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'V01', 'Kolej Vokasional Ampangan', NULL, NULL, 1, '2026-07-25 05:29:00', '2026-07-25 05:29:00'),
(2, 'V02', 'Kolej Vokasional Juasseh', NULL, NULL, 1, '2026-07-25 05:29:00', '2026-07-25 05:29:00'),
(3, 'V03', 'Kolej Vokasional Dato\' Lela Maharaja', NULL, NULL, 1, '2026-07-25 05:29:00', '2026-07-25 05:29:00'),
(4, 'V04', 'Kolej Vokasional Dato\' Undang Haji Muhamad Sharip', NULL, NULL, 1, '2026-07-25 05:29:00', '2026-07-25 05:29:00'),
(5, 'V05', 'Kolej Vokasional Port Dickson', NULL, NULL, 1, '2026-07-25 05:29:00', '2026-07-25 05:29:00'),
(6, 'V06', 'Kolej Vokasional Kuala Klawang', NULL, NULL, 1, '2026-07-25 05:29:00', '2026-07-25 05:29:00'),
(7, 'V07', 'Kolej Vokasional Datuk Seri Abu Zahar Isnin', NULL, NULL, 1, '2026-07-25 05:29:00', '2026-07-25 05:29:00'),
(8, 'V08', 'Kolej Vokasional Datuk Seri Mohd Zin', NULL, NULL, 1, '2026-07-25 05:29:00', '2026-07-25 05:29:00'),
(9, 'V09', 'Kolej Vokasional Melaka Tengah', NULL, NULL, 1, '2026-07-25 05:29:00', '2026-07-25 05:29:00');

-- --------------------------------------------------------

--
-- Table structure for table `zones`
--

CREATE TABLE `zones` (
  `id` bigint UNSIGNED NOT NULL,
  `code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort_order` smallint UNSIGNED NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `zones`
--

INSERT INTO `zones` (`id`, `code`, `name`, `sort_order`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Z01', 'Kedah/Perlis', 1, 1, '2026-07-25 05:29:00', '2026-07-25 05:29:00'),
(2, 'Z02', 'Pulau Pinang', 2, 1, '2026-07-25 05:29:00', '2026-07-25 05:29:00'),
(3, 'Z03', 'Perak', 3, 1, '2026-07-25 05:29:00', '2026-07-25 05:29:00'),
(4, 'Z04', 'KL/Selangor', 4, 1, '2026-07-25 05:29:00', '2026-07-25 05:29:00'),
(5, 'Z05', 'Melaka/N9', 5, 1, '2026-07-25 05:29:00', '2026-07-25 05:29:00'),
(6, 'Z06', 'Johor', 6, 1, '2026-07-25 05:29:00', '2026-07-25 05:29:00'),
(7, 'Z07', 'Pahang', 7, 1, '2026-07-25 05:29:00', '2026-07-25 05:29:00'),
(8, 'Z08', 'Kelantan', 8, 1, '2026-07-25 05:29:00', '2026-07-25 05:29:00'),
(9, 'Z09', 'Terengganu', 9, 1, '2026-07-25 05:29:00', '2026-07-25 05:29:00'),
(10, 'Z10', 'Sabah/Sarawak', 10, 1, '2026-07-25 05:29:00', '2026-07-25 05:29:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `audit_logs`
--
ALTER TABLE `audit_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_audit_user` (`user_id`),
  ADD KEY `idx_audit_entity` (`entity_type`,`entity_id`),
  ADD KEY `idx_audit_created` (`created_at`);

--
-- Indexes for table `award_rules`
--
ALTER TABLE `award_rules`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_award_rule` (`category`,`award`);

--
-- Indexes for table `briefings`
--
ALTER TABLE `briefings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_briefing` (`skill_id`,`level`,`briefing_date`,`start_time`),
  ADD KEY `idx_briefing_date` (`briefing_date`);

--
-- Indexes for table `competitions`
--
ALTER TABLE `competitions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `competition_skills`
--
ALTER TABLE `competition_skills`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_competition_skill` (`competition_id`,`skill_id`),
  ADD KEY `fk_cs_skill` (`skill_id`),
  ADD KEY `fk_cs_venue` (`venue_id`);

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `file_path` (`file_path`),
  ADD KEY `fk_documents_skill` (`skill_id`),
  ADD KEY `fk_documents_user` (`uploaded_by`),
  ADD KEY `idx_documents_category_visibility` (`category`,`visibility`,`is_active`);

--
-- Indexes for table `registrations`
--
ALTER TABLE `registrations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_comp_zone_skill` (`competition_id`,`zone_id`,`skill_id`),
  ADD KEY `fk_reg_zone` (`zone_id`),
  ADD KEY `fk_reg_skill` (`skill_id`),
  ADD KEY `fk_reg_approved_by` (`approved_by`),
  ADD KEY `idx_reg_status` (`status`),
  ADD KEY `idx_reg_coach` (`coach_user_id`),
  ADD KEY `idx_reg_public` (`competition_id`,`status`,`skill_id`,`zone_id`);

--
-- Indexes for table `registration_helpers`
--
ALTER TABLE `registration_helpers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_helper_registration_type` (`registration_id`,`helper_type`);

--
-- Indexes for table `results`
--
ALTER TABLE `results`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `registration_id` (`registration_id`),
  ADD KEY `fk_results_user` (`entered_by`),
  ADD KEY `idx_results_public` (`is_published`,`award`,`rank_position`);

--
-- Indexes for table `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `fk_users_approved_by` (`approved_by`),
  ADD KEY `idx_users_role_status` (`role`,`status`),
  ADD KEY `idx_users_zone` (`zone_id`);

--
-- Indexes for table `venues`
--
ALTER TABLE `venues`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `zones`
--
ALTER TABLE `zones`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`),
  ADD UNIQUE KEY `name` (`name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `audit_logs`
--
ALTER TABLE `audit_logs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `award_rules`
--
ALTER TABLE `award_rules`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `briefings`
--
ALTER TABLE `briefings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `competitions`
--
ALTER TABLE `competitions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `competition_skills`
--
ALTER TABLE `competition_skills`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `documents`
--
ALTER TABLE `documents`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `registrations`
--
ALTER TABLE `registrations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `registration_helpers`
--
ALTER TABLE `registration_helpers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `results`
--
ALTER TABLE `results`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `skills`
--
ALTER TABLE `skills`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `venues`
--
ALTER TABLE `venues`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `zones`
--
ALTER TABLE `zones`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `audit_logs`
--
ALTER TABLE `audit_logs`
  ADD CONSTRAINT `fk_audit_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `briefings`
--
ALTER TABLE `briefings`
  ADD CONSTRAINT `fk_briefing_skill` FOREIGN KEY (`skill_id`) REFERENCES `skills` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `competition_skills`
--
ALTER TABLE `competition_skills`
  ADD CONSTRAINT `fk_cs_competition` FOREIGN KEY (`competition_id`) REFERENCES `competitions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_cs_skill` FOREIGN KEY (`skill_id`) REFERENCES `skills` (`id`) ON DELETE RESTRICT,
  ADD CONSTRAINT `fk_cs_venue` FOREIGN KEY (`venue_id`) REFERENCES `venues` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `documents`
--
ALTER TABLE `documents`
  ADD CONSTRAINT `fk_documents_skill` FOREIGN KEY (`skill_id`) REFERENCES `skills` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_documents_user` FOREIGN KEY (`uploaded_by`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `registrations`
--
ALTER TABLE `registrations`
  ADD CONSTRAINT `fk_reg_approved_by` FOREIGN KEY (`approved_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_reg_coach` FOREIGN KEY (`coach_user_id`) REFERENCES `users` (`id`) ON DELETE RESTRICT,
  ADD CONSTRAINT `fk_reg_competition` FOREIGN KEY (`competition_id`) REFERENCES `competitions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_reg_skill` FOREIGN KEY (`skill_id`) REFERENCES `skills` (`id`) ON DELETE RESTRICT,
  ADD CONSTRAINT `fk_reg_zone` FOREIGN KEY (`zone_id`) REFERENCES `zones` (`id`) ON DELETE RESTRICT;

--
-- Constraints for table `registration_helpers`
--
ALTER TABLE `registration_helpers`
  ADD CONSTRAINT `fk_helper_registration` FOREIGN KEY (`registration_id`) REFERENCES `registrations` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `results`
--
ALTER TABLE `results`
  ADD CONSTRAINT `fk_results_registration` FOREIGN KEY (`registration_id`) REFERENCES `registrations` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_results_user` FOREIGN KEY (`entered_by`) REFERENCES `users` (`id`) ON DELETE RESTRICT;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `fk_users_approved_by` FOREIGN KEY (`approved_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_users_zone` FOREIGN KEY (`zone_id`) REFERENCES `zones` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
