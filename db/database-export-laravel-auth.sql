-- Adminer 4.7.5 MySQL dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET NAMES utf8mb4;

DROP TABLE IF EXISTS `activations`;
CREATE TABLE `activations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
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
(1,	3,	'test.com',	'Block all domains/emails @test.com',	NULL,	'2020-05-24 00:44:01',	'2020-05-24 00:44:01',	NULL),
(2,	3,	'test.ca',	'Block all domains/emails @test.ca',	NULL,	'2020-05-24 00:44:01',	'2020-05-24 00:44:01',	NULL),
(3,	3,	'fake.com',	'Block all domains/emails @fake.com',	NULL,	'2020-05-24 00:44:01',	'2020-05-24 00:44:01',	NULL),
(4,	3,	'example.com',	'Block all domains/emails @example.com',	NULL,	'2020-05-24 00:44:01',	'2020-05-24 00:44:01',	NULL),
(5,	3,	'mailinator.com',	'Block all domains/emails @mailinator.com',	NULL,	'2020-05-24 00:44:01',	'2020-05-24 00:44:01',	NULL);

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
(1,	'email',	'E-mail',	'2020-05-24 00:44:01',	'2020-05-24 00:44:01',	NULL),
(2,	'ipAddress',	'IP Address',	'2020-05-24 00:44:01',	'2020-05-24 00:44:01',	NULL),
(3,	'domain',	'Domain Name',	'2020-05-24 00:44:01',	'2020-05-24 00:44:01',	NULL),
(4,	'user',	'User',	'2020-05-24 00:44:01',	'2020-05-24 00:44:01',	NULL),
(5,	'city',	'City',	'2020-05-24 00:44:01',	'2020-05-24 00:44:01',	NULL),
(6,	'state',	'State',	'2020-05-24 00:44:01',	'2020-05-24 00:44:01',	NULL),
(7,	'country',	'Country',	'2020-05-24 00:44:01',	'2020-05-24 00:44:01',	NULL),
(8,	'countryCode',	'Country Code',	'2020-05-24 00:44:01',	'2020-05-24 00:44:01',	NULL),
(9,	'continent',	'Continent',	'2020-05-24 00:44:01',	'2020-05-24 00:44:01',	NULL),
(10,	'region',	'Region',	'2020-05-24 00:44:01',	'2020-05-24 00:44:01',	NULL);

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
(1,	'Can View Users',	'view.users',	'Can view users',	'Permission',	'2020-05-24 00:44:01',	'2020-05-24 00:44:01',	NULL),
(2,	'Can Create Users',	'create.users',	'Can create new users',	'Permission',	'2020-05-24 00:44:01',	'2020-05-24 00:44:01',	NULL),
(3,	'Can Edit Users',	'edit.users',	'Can edit users',	'Permission',	'2020-05-24 00:44:01',	'2020-05-24 00:44:01',	NULL),
(4,	'Can Delete Users',	'delete.users',	'Can delete users',	'Permission',	'2020-05-24 00:44:01',	'2020-05-24 00:44:01',	NULL);

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
(1,	1,	1,	'2020-05-24 00:44:01',	'2020-05-24 00:44:01',	NULL),
(2,	2,	1,	'2020-05-24 00:44:01',	'2020-05-24 00:44:01',	NULL),
(3,	3,	1,	'2020-05-24 00:44:01',	'2020-05-24 00:44:01',	NULL),
(4,	4,	1,	'2020-05-24 00:44:01',	'2020-05-24 00:44:01',	NULL);

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
  `theme_id` bigint(20) unsigned NOT NULL DEFAULT 1,
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
(1,	1,	1,	NULL,	NULL,	NULL,	NULL,	NULL,	0,	'2020-05-24 00:44:02',	'2020-05-24 00:44:02'),
(2,	2,	1,	NULL,	NULL,	NULL,	NULL,	NULL,	0,	'2020-05-24 00:44:02',	'2020-05-24 00:44:02');

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
(1,	'Admin',	'admin',	'Admin Role',	5,	'2020-05-24 00:44:01',	'2020-05-24 00:44:01',	NULL),
(2,	'User',	'user',	'User Role',	1,	'2020-05-24 00:44:01',	'2020-05-24 00:44:01',	NULL),
(3,	'Unverified',	'unverified',	'Unverified Role',	0,	'2020-05-24 00:44:01',	'2020-05-24 00:44:01',	NULL);

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
(1,	1,	1,	'2020-05-24 00:44:02',	'2020-05-24 00:44:02',	NULL),
(2,	2,	2,	'2020-05-24 00:44:02',	'2020-05-24 00:44:02',	NULL);

DROP TABLE IF EXISTS `social_logins`;
CREATE TABLE `social_logins` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `provider` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `social_id` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `social_logins_user_id_index` (`user_id`),
  CONSTRAINT `social_logins_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `themes`;
CREATE TABLE `themes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
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
(1,	'Default',	'null',	NULL,	1,	'theme',	1,	'2020-05-24 00:44:01',	'2020-05-24 00:44:02',	NULL),
(2,	'Darkly',	'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/darkly/bootstrap.min.css',	NULL,	1,	'theme',	2,	'2020-05-24 00:44:01',	'2020-05-24 00:44:02',	NULL),
(3,	'Cyborg',	'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/cyborg/bootstrap.min.css',	NULL,	1,	'theme',	3,	'2020-05-24 00:44:01',	'2020-05-24 00:44:02',	NULL),
(4,	'Cosmo',	'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/cosmo/bootstrap.min.css',	NULL,	1,	'theme',	4,	'2020-05-24 00:44:01',	'2020-05-24 00:44:02',	NULL),
(5,	'Cerulean',	'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/cerulean/bootstrap.min.css',	NULL,	1,	'theme',	5,	'2020-05-24 00:44:01',	'2020-05-24 00:44:02',	NULL),
(6,	'Flatly',	'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/flatly/bootstrap.min.css',	NULL,	1,	'theme',	6,	'2020-05-24 00:44:01',	'2020-05-24 00:44:02',	NULL),
(7,	'Journal',	'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/journal/bootstrap.min.css',	NULL,	1,	'theme',	7,	'2020-05-24 00:44:02',	'2020-05-24 00:44:02',	NULL),
(8,	'Lumen',	'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/lumen/bootstrap.min.css',	NULL,	1,	'theme',	8,	'2020-05-24 00:44:02',	'2020-05-24 00:44:02',	NULL),
(9,	'Paper',	'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/paper/bootstrap.min.css',	NULL,	1,	'theme',	9,	'2020-05-24 00:44:02',	'2020-05-24 00:44:02',	NULL),
(10,	'Readable',	'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/readable/bootstrap.min.css',	NULL,	1,	'theme',	10,	'2020-05-24 00:44:02',	'2020-05-24 00:44:02',	NULL),
(11,	'Sandstone',	'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/sandstone/bootstrap.min.css',	NULL,	1,	'theme',	11,	'2020-05-24 00:44:02',	'2020-05-24 00:44:02',	NULL),
(12,	'Simplex',	'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/simplex/bootstrap.min.css',	NULL,	1,	'theme',	12,	'2020-05-24 00:44:02',	'2020-05-24 00:44:02',	NULL),
(13,	'Slate',	'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/slate/bootstrap.min.css',	NULL,	1,	'theme',	13,	'2020-05-24 00:44:02',	'2020-05-24 00:44:02',	NULL),
(14,	'Spacelab',	'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/spacelab/bootstrap.min.css',	NULL,	1,	'theme',	14,	'2020-05-24 00:44:02',	'2020-05-24 00:44:02',	NULL),
(15,	'Superhero',	'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/superhero/bootstrap.min.css',	NULL,	1,	'theme',	15,	'2020-05-24 00:44:02',	'2020-05-24 00:44:02',	NULL),
(16,	'United',	'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/united/bootstrap.min.css',	NULL,	1,	'theme',	16,	'2020-05-24 00:44:02',	'2020-05-24 00:44:02',	NULL),
(17,	'Yeti',	'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/yeti/bootstrap.min.css',	NULL,	1,	'theme',	17,	'2020-05-24 00:44:02',	'2020-05-24 00:44:02',	NULL),
(18,	'Bootstrap 4.3.1',	'https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css',	NULL,	1,	'theme',	18,	'2020-05-24 00:44:02',	'2020-05-24 00:44:02',	NULL),
(19,	'Materialize',	'https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.css',	NULL,	1,	'theme',	19,	'2020-05-24 00:44:02',	'2020-05-24 00:44:02',	NULL),
(20,	'Material Design for Bootstrap (MDB) 4.8.7',	'https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.8.7/css/mdb.css',	NULL,	1,	'theme',	20,	'2020-05-24 00:44:02',	'2020-05-24 00:44:02',	NULL),
(21,	'mdbootstrap',	'https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.3.1/css/mdb.min.css',	NULL,	1,	'theme',	21,	'2020-05-24 00:44:02',	'2020-05-24 00:44:02',	NULL),
(22,	'Litera',	'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/litera/bootstrap.min.css',	NULL,	1,	'theme',	22,	'2020-05-24 00:44:02',	'2020-05-24 00:44:02',	NULL),
(23,	'Lux',	'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/lux/bootstrap.min.css',	NULL,	1,	'theme',	23,	'2020-05-24 00:44:02',	'2020-05-24 00:44:02',	NULL),
(24,	'Materia',	'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/materia/bootstrap.min.css',	NULL,	1,	'theme',	24,	'2020-05-24 00:44:02',	'2020-05-24 00:44:02',	NULL),
(25,	'Minty',	'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/minty/bootstrap.min.css',	NULL,	1,	'theme',	25,	'2020-05-24 00:44:02',	'2020-05-24 00:44:02',	NULL),
(26,	'Pulse',	'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/pulse/bootstrap.min.css',	NULL,	1,	'theme',	26,	'2020-05-24 00:44:02',	'2020-05-24 00:44:02',	NULL),
(27,	'Sketchy',	'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/sketchy/bootstrap.min.css',	NULL,	1,	'theme',	27,	'2020-05-24 00:44:02',	'2020-05-24 00:44:02',	NULL),
(28,	'Solar',	'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/solar/bootstrap.min.css',	NULL,	1,	'theme',	28,	'2020-05-24 00:44:02',	'2020-05-24 00:44:02',	NULL);

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
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

INSERT INTO `users` (`id`, `name`, `first_name`, `last_name`, `email`, `email_verified_at`, `password`, `remember_token`, `activated`, `token`, `signup_ip_address`, `signup_confirmation_ip_address`, `signup_sm_ip_address`, `admin_ip_address`, `updated_ip_address`, `deleted_ip_address`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1,	'garrett.lowe',	'Shea',	'Wiegand',	'admin@admin.com',	NULL,	'$2y$10$v4Z9wCkFtUpZGtTGGy1IjOW2NKOglB87kfbrNvXTFPmsYU0rKODtm',	NULL,	1,	'TUJATz50ZpHB1X7RhkMFATcWpU83ZJeNAv45QKVmDExhuODm9hNFd8Vi5sYzfVaC',	NULL,	'179.160.182.205',	NULL,	'85.193.152.163',	NULL,	NULL,	'2020-05-24 00:44:02',	'2020-05-24 00:44:02',	NULL),
(2,	'toy.delfina',	'Waylon',	'Kilback',	'user@user.com',	NULL,	'$2y$10$JJN6K3yKxQhurK5zHOLQbuR/qK4ZO..hJO0R7RMBlS0WTk4stZaaO',	NULL,	1,	'vHQUdSnLTFC8YAcNJhT8R5zTDXWIXA3BGInVzckMgirSADQzhJYRlkGijj93u0oH',	'54.7.13.231',	'203.216.126.76',	NULL,	NULL,	NULL,	NULL,	'2020-05-24 00:44:02',	'2020-05-24 00:44:02',	NULL);

-- 2020-05-24 00:46:01
