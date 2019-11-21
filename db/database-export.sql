-- Adminer 4.6.3 MySQL dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET NAMES utf8mb4;

DROP TABLE IF EXISTS `activations`;
CREATE TABLE `activations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `activations_user_id_index` (`user_id`),
  CONSTRAINT `activations_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `laravel2step`;
CREATE TABLE `laravel2step` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userId` bigint(20) unsigned NOT NULL,
  `authCode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `authCount` int(11) NOT NULL,
  `authStatus` tinyint(1) NOT NULL DEFAULT 0,
  `authDate` datetime DEFAULT NULL,
  `requestDate` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `laravel2step_userid_index` (`userId`),
  CONSTRAINT `laravel2step_userid_foreign` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `laravel_blocker`;
CREATE TABLE `laravel_blocker` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `typeId` int(10) unsigned NOT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `userId` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `laravel_blocker_value_unique` (`value`),
  KEY `laravel_blocker_typeid_index` (`typeId`),
  KEY `laravel_blocker_userid_index` (`userId`),
  CONSTRAINT `laravel_blocker_typeid_foreign` FOREIGN KEY (`typeId`) REFERENCES `laravel_blocker_types` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `laravel_blocker` (`id`, `typeId`, `value`, `note`, `userId`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1,	3,	'test.com',	'Block all domains/emails @test.com',	NULL,	'2019-11-19 15:31:16',	'2019-11-19 15:31:16',	NULL),
(2,	3,	'test.ca',	'Block all domains/emails @test.ca',	NULL,	'2019-11-19 15:31:16',	'2019-11-19 15:31:16',	NULL),
(3,	3,	'fake.com',	'Block all domains/emails @fake.com',	NULL,	'2019-11-19 15:31:16',	'2019-11-19 15:31:16',	NULL),
(4,	3,	'example.com',	'Block all domains/emails @example.com',	NULL,	'2019-11-19 15:31:16',	'2019-11-19 15:31:16',	NULL),
(5,	3,	'mailinator.com',	'Block all domains/emails @mailinator.com',	NULL,	'2019-11-19 15:31:16',	'2019-11-19 15:31:16',	NULL);

DROP TABLE IF EXISTS `laravel_blocker_types`;
CREATE TABLE `laravel_blocker_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `laravel_blocker_types_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `laravel_blocker_types` (`id`, `slug`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1,	'email',	'E-mail',	'2019-11-19 15:31:15',	'2019-11-19 15:31:15',	NULL),
(2,	'ipAddress',	'IP Address',	'2019-11-19 15:31:15',	'2019-11-19 15:31:15',	NULL),
(3,	'domain',	'Domain Name',	'2019-11-19 15:31:15',	'2019-11-19 15:31:15',	NULL),
(4,	'user',	'User',	'2019-11-19 15:31:15',	'2019-11-19 15:31:15',	NULL),
(5,	'city',	'City',	'2019-11-19 15:31:15',	'2019-11-19 15:31:15',	NULL),
(6,	'state',	'State',	'2019-11-19 15:31:15',	'2019-11-19 15:31:15',	NULL),
(7,	'country',	'Country',	'2019-11-19 15:31:15',	'2019-11-19 15:31:15',	NULL),
(8,	'countryCode',	'Country Code',	'2019-11-19 15:31:15',	'2019-11-19 15:31:15',	NULL),
(9,	'continent',	'Continent',	'2019-11-19 15:31:15',	'2019-11-19 15:31:15',	NULL),
(10,	'region',	'Region',	'2019-11-19 15:31:15',	'2019-11-19 15:31:15',	NULL);

DROP TABLE IF EXISTS `laravel_logger_activity`;
CREATE TABLE `laravel_logger_activity` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `userType` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `route` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ipAddress` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `userAgent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referer` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `methodType` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `laravel_logger_activity` (`id`, `description`, `userType`, `userId`, `route`, `ipAddress`, `userAgent`, `locale`, `referer`, `methodType`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1,	'Failed Login Attempt',	'Guest',	NULL,	'http://localhost:8000/login',	'127.0.0.1',	'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36',	'id,en-US;q=0.9,en;q=0.8,und;q=0.7',	'http://localhost:8000/login',	'POST',	'2019-11-19 15:32:39',	'2019-11-19 15:32:39',	NULL),
(2,	'Failed Login Attempt',	'Guest',	NULL,	'http://localhost:8000/login',	'127.0.0.1',	'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36',	'id,en-US;q=0.9,en;q=0.8,und;q=0.7',	'http://localhost:8000/login',	'POST',	'2019-11-19 15:33:22',	'2019-11-19 15:33:22',	NULL),
(3,	'Logged In',	'Registered',	1,	'http://localhost:8000/login',	'127.0.0.1',	'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36',	'id,en-US;q=0.9,en;q=0.8,und;q=0.7',	'http://localhost:8000/login',	'POST',	'2019-11-19 15:33:28',	'2019-11-19 15:33:28',	NULL),
(4,	'Viewed home',	'Registered',	1,	'http://localhost:8000/home',	'127.0.0.1',	'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36',	'id,en-US;q=0.9,en;q=0.8,und;q=0.7',	'http://localhost:8000/login',	'GET',	'2019-11-19 15:33:28',	'2019-11-19 15:33:28',	NULL),
(5,	'Viewed users',	'Registered',	1,	'http://localhost:8000/users',	'127.0.0.1',	'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36',	'id,en-US;q=0.9,en;q=0.8,und;q=0.7',	'http://localhost:8000/roles',	'GET',	'2019-11-19 15:33:56',	'2019-11-19 15:33:56',	NULL),
(6,	'Viewed users/create',	'Registered',	1,	'http://localhost:8000/users/create',	'127.0.0.1',	'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36',	'id,en-US;q=0.9,en;q=0.8,und;q=0.7',	'http://localhost:8000/users',	'GET',	'2019-11-19 15:34:04',	'2019-11-19 15:34:04',	NULL),
(7,	'Viewed themes',	'Registered',	1,	'http://localhost:8000/themes',	'127.0.0.1',	'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36',	'id,en-US;q=0.9,en;q=0.8,und;q=0.7',	'http://localhost:8000/users/create',	'GET',	'2019-11-19 15:34:08',	'2019-11-19 15:34:08',	NULL),
(8,	'Viewed logs',	'Registered',	1,	'http://localhost:8000/logs',	'127.0.0.1',	'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36',	'id,en-US;q=0.9,en;q=0.8,und;q=0.7',	'http://localhost:8000/themes',	'GET',	'2019-11-19 15:34:18',	'2019-11-19 15:34:18',	NULL),
(9,	'Viewed activity',	'Registered',	1,	'http://localhost:8000/activity',	'127.0.0.1',	'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36',	'id,en-US;q=0.9,en;q=0.8,und;q=0.7',	'http://localhost:8000/logs',	'GET',	'2019-11-19 15:34:24',	'2019-11-19 15:34:24',	NULL),
(10,	'Viewed themes',	'Registered',	1,	'http://localhost:8000/themes',	'127.0.0.1',	'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Mobile Safari/537.36',	'id,en-US;q=0.9,en;q=0.8,und;q=0.7',	'http://localhost:8000/roles',	'GET',	'2019-11-19 15:38:44',	'2019-11-19 15:38:44',	NULL),
(11,	'Viewed active-users',	'Registered',	1,	'http://localhost:8000/active-users',	'127.0.0.1',	'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Mobile Safari/537.36',	'id,en-US;q=0.9,en;q=0.8,und;q=0.7',	'http://localhost:8000/themes',	'GET',	'2019-11-19 15:39:00',	'2019-11-19 15:39:00',	NULL),
(12,	'Viewed phpinfo',	'Registered',	1,	'http://localhost:8000/phpinfo',	'127.0.0.1',	'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Mobile Safari/537.36',	'id,en-US;q=0.9,en;q=0.8,und;q=0.7',	'http://localhost:8000/active-users',	'GET',	'2019-11-19 15:39:07',	'2019-11-19 15:39:07',	NULL),
(13,	'Viewed blocker',	'Registered',	1,	'http://localhost:8000/blocker',	'127.0.0.1',	'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Mobile Safari/537.36',	'id,en-US;q=0.9,en;q=0.8,und;q=0.7',	'http://localhost:8000/phpinfo',	'GET',	'2019-11-19 15:39:13',	'2019-11-19 15:39:13',	NULL),
(14,	'Viewed blocker/create',	'Registered',	1,	'http://localhost:8000/blocker/create',	'127.0.0.1',	'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Mobile Safari/537.36',	'id,en-US;q=0.9,en;q=0.8,und;q=0.7',	'http://localhost:8000/blocker',	'GET',	'2019-11-19 15:39:23',	'2019-11-19 15:39:23',	NULL),
(15,	'Viewed blocker',	'Registered',	1,	'http://localhost:8000/blocker',	'127.0.0.1',	'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Mobile Safari/537.36',	'id,en-US;q=0.9,en;q=0.8,und;q=0.7',	'http://localhost:8000/blocker/create',	'GET',	'2019-11-19 15:39:27',	'2019-11-19 15:39:27',	NULL),
(16,	'Viewed blocker/1',	'Registered',	1,	'http://localhost:8000/blocker/1',	'127.0.0.1',	'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Mobile Safari/537.36',	'id,en-US;q=0.9,en;q=0.8,und;q=0.7',	'http://localhost:8000/blocker',	'GET',	'2019-11-19 15:39:31',	'2019-11-19 15:39:31',	NULL),
(17,	'Viewed profile/rogahn.lelia',	'Registered',	1,	'http://localhost:8000/profile/rogahn.lelia',	'127.0.0.1',	'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Mobile Safari/537.36',	'id,en-US;q=0.9,en;q=0.8,und;q=0.7',	'http://localhost:8000/roles',	'GET',	'2019-11-19 15:39:42',	'2019-11-19 15:39:42',	NULL),
(18,	'Viewed profile/rogahn.lelia/edit',	'Registered',	1,	'http://localhost:8000/profile/rogahn.lelia/edit',	'127.0.0.1',	'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Mobile Safari/537.36',	'id,en-US;q=0.9,en;q=0.8,und;q=0.7',	'http://localhost:8000/profile/rogahn.lelia',	'GET',	'2019-11-19 15:39:46',	'2019-11-19 15:39:46',	NULL),
(19,	'Logged Out',	'Registered',	1,	'http://localhost:8000/logout',	'127.0.0.1',	'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Mobile Safari/537.36',	'id,en-US;q=0.9,en;q=0.8,und;q=0.7',	'http://localhost:8000/roles',	'POST',	'2019-11-19 15:40:11',	'2019-11-19 15:40:11',	NULL);

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1,	'2014_10_12_000000_create_users_table',	1),
(2,	'2014_10_12_100000_create_password_resets_table',	1),
(3,	'2016_01_15_105324_create_roles_table',	1),
(4,	'2016_01_15_114412_create_role_user_table',	1),
(5,	'2016_01_26_115212_create_permissions_table',	1),
(6,	'2016_01_26_115523_create_permission_role_table',	1),
(7,	'2016_02_09_132439_create_permission_user_table',	1),
(8,	'2017_03_09_082449_create_social_logins_table',	1),
(9,	'2017_03_09_082526_create_activations_table',	1),
(10,	'2017_03_20_213554_create_themes_table',	1),
(11,	'2017_03_21_042918_create_profiles_table',	1),
(12,	'2017_11_04_103444_create_laravel_logger_activity_table',	1),
(13,	'2017_12_09_070937_create_two_step_auth_table',	1),
(14,	'2019_02_19_032636_create_laravel_blocker_types_table',	1),
(15,	'2019_02_19_045158_create_laravel_blocker_table',	1),
(16,	'2019_08_19_000000_create_failed_jobs_table',	1);

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `permissions`;
CREATE TABLE `permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `permissions` (`id`, `name`, `slug`, `description`, `model`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1,	'Can View Users',	'view.users',	'Can view users',	'Permission',	'2019-11-19 15:31:16',	'2019-11-19 15:31:16',	NULL),
(2,	'Can Create Users',	'create.users',	'Can create new users',	'Permission',	'2019-11-19 15:31:16',	'2019-11-19 15:31:16',	NULL),
(3,	'Can Edit Users',	'edit.users',	'Can edit users',	'Permission',	'2019-11-19 15:31:16',	'2019-11-19 15:31:16',	NULL),
(4,	'Can Delete Users',	'delete.users',	'Can delete users',	'Permission',	'2019-11-19 15:31:16',	'2019-11-19 15:31:16',	NULL);

DROP TABLE IF EXISTS `permission_role`;
CREATE TABLE `permission_role` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `permission_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `permission_role_permission_id_index` (`permission_id`),
  KEY `permission_role_role_id_index` (`role_id`),
  CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `permission_role` (`id`, `permission_id`, `role_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1,	1,	1,	'2019-11-19 15:31:16',	'2019-11-19 15:31:16',	NULL),
(2,	2,	1,	'2019-11-19 15:31:16',	'2019-11-19 15:31:16',	NULL),
(3,	3,	1,	'2019-11-19 15:31:16',	'2019-11-19 15:31:16',	NULL),
(4,	4,	1,	'2019-11-19 15:31:16',	'2019-11-19 15:31:16',	NULL);

DROP TABLE IF EXISTS `permission_user`;
CREATE TABLE `permission_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `permission_id` int(10) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `permission_user_permission_id_index` (`permission_id`),
  KEY `permission_user_user_id_index` (`user_id`),
  CONSTRAINT `permission_user_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `permission_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `profiles`;
CREATE TABLE `profiles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `theme_id` int(10) unsigned NOT NULL DEFAULT 1,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bio` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter_username` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `github_username` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `profiles_theme_id_foreign` (`theme_id`),
  KEY `profiles_user_id_index` (`user_id`),
  CONSTRAINT `profiles_theme_id_foreign` FOREIGN KEY (`theme_id`) REFERENCES `themes` (`id`),
  CONSTRAINT `profiles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `profiles` (`id`, `user_id`, `theme_id`, `location`, `bio`, `twitter_username`, `github_username`, `avatar`, `avatar_status`, `created_at`, `updated_at`) VALUES
(1,	1,	1,	NULL,	NULL,	NULL,	NULL,	NULL,	0,	'2019-11-19 15:31:16',	'2019-11-19 15:31:16'),
(2,	2,	1,	NULL,	NULL,	NULL,	NULL,	NULL,	0,	'2019-11-19 15:31:16',	'2019-11-19 15:31:16');

DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `roles` (`id`, `name`, `slug`, `description`, `level`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1,	'Admin',	'admin',	'Admin Role',	5,	'2019-11-19 15:31:16',	'2019-11-19 15:31:16',	NULL),
(2,	'User',	'user',	'User Role',	1,	'2019-11-19 15:31:16',	'2019-11-19 15:31:16',	NULL),
(3,	'Unverified',	'unverified',	'Unverified Role',	0,	'2019-11-19 15:31:16',	'2019-11-19 15:31:16',	NULL);

DROP TABLE IF EXISTS `role_user`;
CREATE TABLE `role_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(10) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `role_user_role_id_index` (`role_id`),
  KEY `role_user_user_id_index` (`user_id`),
  CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `role_user` (`id`, `role_id`, `user_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1,	1,	1,	'2019-11-19 15:31:16',	'2019-11-19 15:31:16',	NULL),
(2,	2,	2,	'2019-11-19 15:31:16',	'2019-11-19 15:31:16',	NULL);

DROP TABLE IF EXISTS `social_logins`;
CREATE TABLE `social_logins` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `provider` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `social_id` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `social_logins_user_id_index` (`user_id`),
  CONSTRAINT `social_logins_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `themes`;
CREATE TABLE `themes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notes` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `taggable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `taggable_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `themes_name_unique` (`name`),
  UNIQUE KEY `themes_link_unique` (`link`),
  KEY `themes_taggable_type_taggable_id_index` (`taggable_type`,`taggable_id`),
  KEY `themes_id_index` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `themes` (`id`, `name`, `link`, `notes`, `status`, `taggable_type`, `taggable_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1,	'Default',	'null',	NULL,	1,	'theme',	1,	'2019-11-19 15:31:16',	'2019-11-19 15:31:16',	NULL),
(2,	'Darkly',	'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/darkly/bootstrap.min.css',	NULL,	1,	'theme',	2,	'2019-11-19 15:31:16',	'2019-11-19 15:31:16',	NULL),
(3,	'Cyborg',	'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/cyborg/bootstrap.min.css',	NULL,	1,	'theme',	3,	'2019-11-19 15:31:16',	'2019-11-19 15:31:16',	NULL),
(4,	'Cosmo',	'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/cosmo/bootstrap.min.css',	NULL,	1,	'theme',	4,	'2019-11-19 15:31:16',	'2019-11-19 15:31:16',	NULL),
(5,	'Cerulean',	'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/cerulean/bootstrap.min.css',	NULL,	1,	'theme',	5,	'2019-11-19 15:31:16',	'2019-11-19 15:31:16',	NULL),
(6,	'Flatly',	'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/flatly/bootstrap.min.css',	NULL,	1,	'theme',	6,	'2019-11-19 15:31:16',	'2019-11-19 15:31:16',	NULL),
(7,	'Journal',	'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/journal/bootstrap.min.css',	NULL,	1,	'theme',	7,	'2019-11-19 15:31:16',	'2019-11-19 15:31:16',	NULL),
(8,	'Lumen',	'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/lumen/bootstrap.min.css',	NULL,	1,	'theme',	8,	'2019-11-19 15:31:16',	'2019-11-19 15:31:16',	NULL),
(9,	'Paper',	'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/paper/bootstrap.min.css',	NULL,	1,	'theme',	9,	'2019-11-19 15:31:16',	'2019-11-19 15:31:16',	NULL),
(10,	'Readable',	'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/readable/bootstrap.min.css',	NULL,	1,	'theme',	10,	'2019-11-19 15:31:16',	'2019-11-19 15:31:16',	NULL),
(11,	'Sandstone',	'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/sandstone/bootstrap.min.css',	NULL,	1,	'theme',	11,	'2019-11-19 15:31:16',	'2019-11-19 15:31:16',	NULL),
(12,	'Simplex',	'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/simplex/bootstrap.min.css',	NULL,	1,	'theme',	12,	'2019-11-19 15:31:16',	'2019-11-19 15:31:16',	NULL),
(13,	'Slate',	'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/slate/bootstrap.min.css',	NULL,	1,	'theme',	13,	'2019-11-19 15:31:16',	'2019-11-19 15:31:16',	NULL),
(14,	'Spacelab',	'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/spacelab/bootstrap.min.css',	NULL,	1,	'theme',	14,	'2019-11-19 15:31:16',	'2019-11-19 15:31:16',	NULL),
(15,	'Superhero',	'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/superhero/bootstrap.min.css',	NULL,	1,	'theme',	15,	'2019-11-19 15:31:16',	'2019-11-19 15:31:16',	NULL),
(16,	'United',	'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/united/bootstrap.min.css',	NULL,	1,	'theme',	16,	'2019-11-19 15:31:16',	'2019-11-19 15:31:16',	NULL),
(17,	'Yeti',	'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/yeti/bootstrap.min.css',	NULL,	1,	'theme',	17,	'2019-11-19 15:31:16',	'2019-11-19 15:31:16',	NULL),
(18,	'Bootstrap 4.3.1',	'https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css',	NULL,	1,	'theme',	18,	'2019-11-19 15:31:16',	'2019-11-19 15:31:16',	NULL),
(19,	'Materialize',	'https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.css',	NULL,	1,	'theme',	19,	'2019-11-19 15:31:16',	'2019-11-19 15:31:16',	NULL),
(20,	'Material Design for Bootstrap (MDB) 4.8.7',	'https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.8.7/css/mdb.css',	NULL,	1,	'theme',	20,	'2019-11-19 15:31:16',	'2019-11-19 15:31:16',	NULL),
(21,	'mdbootstrap',	'https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.3.1/css/mdb.min.css',	NULL,	1,	'theme',	21,	'2019-11-19 15:31:16',	'2019-11-19 15:31:16',	NULL),
(22,	'Litera',	'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/litera/bootstrap.min.css',	NULL,	1,	'theme',	22,	'2019-11-19 15:31:16',	'2019-11-19 15:31:16',	NULL),
(23,	'Lux',	'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/lux/bootstrap.min.css',	NULL,	1,	'theme',	23,	'2019-11-19 15:31:16',	'2019-11-19 15:31:16',	NULL),
(24,	'Materia',	'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/materia/bootstrap.min.css',	NULL,	1,	'theme',	24,	'2019-11-19 15:31:16',	'2019-11-19 15:31:16',	NULL),
(25,	'Minty',	'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/minty/bootstrap.min.css',	NULL,	1,	'theme',	25,	'2019-11-19 15:31:16',	'2019-11-19 15:31:16',	NULL),
(26,	'Pulse',	'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/pulse/bootstrap.min.css',	NULL,	1,	'theme',	26,	'2019-11-19 15:31:16',	'2019-11-19 15:31:16',	NULL),
(27,	'Sketchy',	'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/sketchy/bootstrap.min.css',	NULL,	1,	'theme',	27,	'2019-11-19 15:31:16',	'2019-11-19 15:31:16',	NULL),
(28,	'Solar',	'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/solar/bootstrap.min.css',	NULL,	1,	'theme',	28,	'2019-11-19 15:31:16',	'2019-11-19 15:31:16',	NULL);

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activated` tinyint(1) NOT NULL DEFAULT 0,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `signup_ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `signup_confirmation_ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `signup_sm_ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_name_unique` (`name`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `users` (`id`, `name`, `first_name`, `last_name`, `email`, `password`, `remember_token`, `activated`, `token`, `signup_ip_address`, `signup_confirmation_ip_address`, `signup_sm_ip_address`, `admin_ip_address`, `updated_ip_address`, `deleted_ip_address`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1,	'rogahn.lelia',	'Johan',	'Gutkowski',	'admin@admin.com',	'$2y$10$4cJjYYHp88v26qQ.Jc/LzOaxzHX3/JQZmSykd4LQwWwYNBiUFahRm',	'yQehyY82B5vYRY1VUdqGegLTP3T19EtKjxGKcHLUT8KY60icJxa60O2g0yQ2',	1,	'O4jiSMGf7m8bhk4XqrA95SIJYZwSBg2RMYXkIRAJb4YL4yvfeoxIBCZ6ii1zsVxq',	NULL,	'61.195.134.243',	NULL,	'62.142.125.129',	NULL,	NULL,	'2019-11-19 15:31:16',	'2019-11-19 15:31:16',	NULL),
(2,	'frederick.collins',	'Hope',	'Franecki',	'user@user.com',	'$2y$10$aTgTr8OxE3h3zWejVFCN9eSW5IH10UB1ZEX7jQAuEWsa5Gv22yWeC',	NULL,	1,	'TShGLIAKjIY8jv6wp104ul1B96HtqaMexg7vCNurmo9h6TsJIiTJoejlPZPHXxRF',	'125.213.103.144',	'219.17.231.37',	NULL,	NULL,	NULL,	NULL,	'2019-11-19 15:31:16',	'2019-11-19 15:31:16',	NULL);

-- 2019-11-19 15:46:02