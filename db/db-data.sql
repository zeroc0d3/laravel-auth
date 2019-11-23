-- Adminer 4.7.5 MySQL dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET NAMES utf8mb4;




INSERT INTO `laravel_blocker` (`id`, `typeId`, `value`, `note`, `userId`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1,	3,	'test.com',	'Block all domains/emails @test.com',	NULL,	'2019-11-19 15:31:16',	'2019-11-19 15:31:16',	NULL),
(2,	3,	'test.ca',	'Block all domains/emails @test.ca',	NULL,	'2019-11-19 15:31:16',	'2019-11-19 15:31:16',	NULL),
(3,	3,	'fake.com',	'Block all domains/emails @fake.com',	NULL,	'2019-11-19 15:31:16',	'2019-11-19 15:31:16',	NULL),
(4,	3,	'example.com',	'Block all domains/emails @example.com',	NULL,	'2019-11-19 15:31:16',	'2019-11-19 15:31:16',	NULL),
(5,	3,	'mailinator.com',	'Block all domains/emails @mailinator.com',	NULL,	'2019-11-19 15:31:16',	'2019-11-19 15:31:16',	NULL);

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
(19,	'Logged Out',	'Registered',	1,	'http://localhost:8000/logout',	'127.0.0.1',	'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Mobile Safari/537.36',	'id,en-US;q=0.9,en;q=0.8,und;q=0.7',	'http://localhost:8000/roles',	'POST',	'2019-11-19 15:40:11',	'2019-11-19 15:40:11',	NULL),
(20,	'Logged In',	'Registered',	1,	'http://auth.zeroc0d3lab.com/login',	'114.124.140.103',	'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36',	'id,en-US;q=0.9,en;q=0.8,und;q=0.7',	'http://auth.zeroc0d3lab.com/login',	'POST',	'2019-11-23 08:58:04',	'2019-11-23 08:58:04',	NULL),
(21,	'Viewed home',	'Registered',	1,	'http://auth.zeroc0d3lab.com/home',	'114.124.140.103',	'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36',	'id,en-US;q=0.9,en;q=0.8,und;q=0.7',	'http://auth.zeroc0d3lab.com/login',	'GET',	'2019-11-23 08:58:04',	'2019-11-23 08:58:04',	NULL),
(22,	'Viewed profile/rogahn.lelia',	'Registered',	1,	'http://auth.zeroc0d3lab.com/profile/rogahn.lelia',	'114.124.140.103',	'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36',	'id,en-US;q=0.9,en;q=0.8,und;q=0.7',	'http://auth.zeroc0d3lab.com/home',	'GET',	'2019-11-23 08:58:12',	'2019-11-23 08:58:12',	NULL),
(23,	'Viewed profile/rogahn.lelia/edit',	'Registered',	1,	'http://auth.zeroc0d3lab.com/profile/rogahn.lelia/edit',	'114.124.140.103',	'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36',	'id,en-US;q=0.9,en;q=0.8,und;q=0.7',	'http://auth.zeroc0d3lab.com/profile/rogahn.lelia',	'GET',	'2019-11-23 08:58:14',	'2019-11-23 08:58:14',	NULL),
(24,	'Edited profile/1/updateUserAccount',	'Registered',	1,	'http://auth.zeroc0d3lab.com/profile/1/updateUserAccount',	'114.124.140.103',	'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36',	'id,en-US;q=0.9,en;q=0.8,und;q=0.7',	'http://auth.zeroc0d3lab.com/profile/rogahn.lelia/edit',	'PUT',	'2019-11-23 08:58:40',	'2019-11-23 08:58:40',	NULL),
(25,	'Viewed profile/zeroc0d3/edit',	'Registered',	1,	'http://auth.zeroc0d3lab.com/profile/zeroc0d3/edit',	'114.124.140.103',	'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36',	'id,en-US;q=0.9,en;q=0.8,und;q=0.7',	'http://auth.zeroc0d3lab.com/profile/rogahn.lelia/edit',	'GET',	'2019-11-23 08:58:41',	'2019-11-23 08:58:41',	NULL),
(26,	'Viewed profile/zeroc0d3',	'Registered',	1,	'http://auth.zeroc0d3lab.com/profile/zeroc0d3',	'114.124.140.103',	'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36',	'id,en-US;q=0.9,en;q=0.8,und;q=0.7',	'http://auth.zeroc0d3lab.com/roles',	'GET',	'2019-11-23 08:59:02',	'2019-11-23 08:59:02',	NULL),
(27,	'Viewed profile/zeroc0d3/edit',	'Registered',	1,	'http://auth.zeroc0d3lab.com/profile/zeroc0d3/edit',	'114.124.140.103',	'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36',	'id,en-US;q=0.9,en;q=0.8,und;q=0.7',	'http://auth.zeroc0d3lab.com/profile/zeroc0d3',	'GET',	'2019-11-23 08:59:05',	'2019-11-23 08:59:05',	NULL),
(28,	'Created avatar/upload',	'Registered',	1,	'http://auth.zeroc0d3lab.com/avatar/upload',	'114.124.140.103',	'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36',	'id,en-US;q=0.9,en;q=0.8,und;q=0.7',	'http://auth.zeroc0d3lab.com/profile/zeroc0d3/edit',	'POST',	'2019-11-23 09:00:46',	'2019-11-23 09:00:46',	NULL),
(29,	'Viewed images/profile/1/avatar/avatar.jpg',	'Registered',	1,	'http://auth.zeroc0d3lab.com/images/profile/1/avatar/avatar.jpg?1574499646823=',	'114.124.140.103',	'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36',	'id,en-US;q=0.9,en;q=0.8,und;q=0.7',	'http://auth.zeroc0d3lab.com/profile/zeroc0d3/edit',	'GET',	'2019-11-23 09:00:46',	'2019-11-23 09:00:46',	NULL),
(30,	'Edited profile/zeroc0d3',	'Registered',	1,	'http://auth.zeroc0d3lab.com/profile/zeroc0d3',	'114.124.140.103',	'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36',	'id,en-US;q=0.9,en;q=0.8,und;q=0.7',	'http://auth.zeroc0d3lab.com/profile/zeroc0d3/edit',	'PATCH',	'2019-11-23 09:00:57',	'2019-11-23 09:00:57',	NULL),
(31,	'Viewed profile/zeroc0d3/edit',	'Registered',	1,	'http://auth.zeroc0d3lab.com/profile/zeroc0d3/edit',	'114.124.140.103',	'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36',	'id,en-US;q=0.9,en;q=0.8,und;q=0.7',	'http://auth.zeroc0d3lab.com/profile/zeroc0d3/edit',	'GET',	'2019-11-23 09:00:58',	'2019-11-23 09:00:58',	NULL),
(32,	'Viewed images/profile/1/avatar/avatar.jpeg',	'Registered',	1,	'http://auth.zeroc0d3lab.com/images/profile/1/avatar/avatar.jpeg',	'114.124.140.103',	'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36',	'id,en-US;q=0.9,en;q=0.8,und;q=0.7',	'http://auth.zeroc0d3lab.com/profile/zeroc0d3/edit',	'GET',	'2019-11-23 09:00:58',	'2019-11-23 09:00:58',	NULL),
(33,	'Logged Out',	'Registered',	1,	'http://auth.zeroc0d3lab.com/logout',	'114.124.140.103',	'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36',	'id,en-US;q=0.9,en;q=0.8,und;q=0.7',	'http://auth.zeroc0d3lab.com/profile/zeroc0d3/edit',	'POST',	'2019-11-23 09:01:01',	'2019-11-23 09:01:01',	NULL),
(34,	'Failed Login Attempt',	'Guest',	NULL,	'http://auth.zeroc0d3lab.com/login',	'114.124.140.103',	'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36',	'id,en-US;q=0.9,en;q=0.8,und;q=0.7',	'http://auth.zeroc0d3lab.com/login',	'POST',	'2019-11-23 09:01:10',	'2019-11-23 09:01:10',	NULL),
(35,	'Failed Login Attempt',	'Guest',	NULL,	'http://auth.zeroc0d3lab.com/login',	'114.124.140.103',	'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36',	'id,en-US;q=0.9,en;q=0.8,und;q=0.7',	'http://auth.zeroc0d3lab.com/login',	'POST',	'2019-11-23 09:01:17',	'2019-11-23 09:01:17',	NULL),
(36,	'Logged In',	'Registered',	1,	'http://auth.zeroc0d3lab.com/login',	'114.124.140.103',	'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36',	'id,en-US;q=0.9,en;q=0.8,und;q=0.7',	'http://auth.zeroc0d3lab.com/login',	'POST',	'2019-11-23 09:01:34',	'2019-11-23 09:01:34',	NULL),
(37,	'Viewed home',	'Registered',	1,	'http://auth.zeroc0d3lab.com/home',	'114.124.140.103',	'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36',	'id,en-US;q=0.9,en;q=0.8,und;q=0.7',	'http://auth.zeroc0d3lab.com/login',	'GET',	'2019-11-23 09:01:34',	'2019-11-23 09:01:34',	NULL),
(38,	'Viewed images/profile/1/avatar/avatar.jpeg',	'Registered',	1,	'http://auth.zeroc0d3lab.com/images/profile/1/avatar/avatar.jpeg',	'114.124.140.103',	'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36',	'id,en-US;q=0.9,en;q=0.8,und;q=0.7',	'http://auth.zeroc0d3lab.com/home',	'GET',	'2019-11-23 09:01:35',	'2019-11-23 09:01:35',	NULL),
(39,	'Viewed profile/zeroc0d3',	'Registered',	1,	'http://auth.zeroc0d3lab.com/profile/zeroc0d3',	'114.124.140.103',	'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36',	'id,en-US;q=0.9,en;q=0.8,und;q=0.7',	'http://auth.zeroc0d3lab.com/home',	'GET',	'2019-11-23 09:01:38',	'2019-11-23 09:01:38',	NULL),
(40,	'Viewed images/profile/1/avatar/avatar.jpeg',	'Registered',	1,	'http://auth.zeroc0d3lab.com/images/profile/1/avatar/avatar.jpeg',	'114.124.140.103',	'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36',	'id,en-US;q=0.9,en;q=0.8,und;q=0.7',	'http://auth.zeroc0d3lab.com/profile/zeroc0d3',	'GET',	'2019-11-23 09:01:39',	'2019-11-23 09:01:39',	NULL),
(41,	'Viewed profile/zeroc0d3/edit',	'Registered',	1,	'http://auth.zeroc0d3lab.com/profile/zeroc0d3/edit',	'114.124.140.103',	'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36',	'id,en-US;q=0.9,en;q=0.8,und;q=0.7',	'http://auth.zeroc0d3lab.com/profile/zeroc0d3',	'GET',	'2019-11-23 09:01:41',	'2019-11-23 09:01:41',	NULL),
(42,	'Viewed images/profile/1/avatar/avatar.jpeg',	'Registered',	1,	'http://auth.zeroc0d3lab.com/images/profile/1/avatar/avatar.jpeg',	'114.124.140.103',	'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36',	'id,en-US;q=0.9,en;q=0.8,und;q=0.7',	'http://auth.zeroc0d3lab.com/profile/zeroc0d3/edit',	'GET',	'2019-11-23 09:01:42',	'2019-11-23 09:01:42',	NULL),
(43,	'Edited profile/1/updateUserPassword',	'Registered',	1,	'http://auth.zeroc0d3lab.com/profile/1/updateUserPassword',	'114.124.140.103',	'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36',	'id,en-US;q=0.9,en;q=0.8,und;q=0.7',	'http://auth.zeroc0d3lab.com/profile/zeroc0d3/edit',	'PUT',	'2019-11-23 09:02:04',	'2019-11-23 09:02:04',	NULL),
(44,	'Viewed profile/zeroc0d3/edit',	'Registered',	1,	'http://auth.zeroc0d3lab.com/profile/zeroc0d3/edit',	'114.124.140.103',	'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36',	'id,en-US;q=0.9,en;q=0.8,und;q=0.7',	'http://auth.zeroc0d3lab.com/profile/zeroc0d3/edit',	'GET',	'2019-11-23 09:02:05',	'2019-11-23 09:02:05',	NULL),
(45,	'Viewed images/profile/1/avatar/avatar.jpeg',	'Registered',	1,	'http://auth.zeroc0d3lab.com/images/profile/1/avatar/avatar.jpeg',	'114.124.140.103',	'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36',	'id,en-US;q=0.9,en;q=0.8,und;q=0.7',	'http://auth.zeroc0d3lab.com/profile/zeroc0d3/edit',	'GET',	'2019-11-23 09:02:05',	'2019-11-23 09:02:05',	NULL),
(46,	'Logged Out',	'Registered',	1,	'http://auth.zeroc0d3lab.com/logout',	'114.124.140.103',	'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36',	'id,en-US;q=0.9,en;q=0.8,und;q=0.7',	'http://auth.zeroc0d3lab.com/profile/zeroc0d3/edit',	'POST',	'2019-11-23 09:02:11',	'2019-11-23 09:02:11',	NULL),
(47,	'Failed Login Attempt',	'Guest',	NULL,	'http://auth.zeroc0d3lab.com/login',	'114.124.140.103',	'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36',	'id,en-US;q=0.9,en;q=0.8,und;q=0.7',	'http://auth.zeroc0d3lab.com/login',	'POST',	'2019-11-23 09:02:22',	'2019-11-23 09:02:22',	NULL),
(48,	'Logged In',	'Registered',	1,	'http://auth.zeroc0d3lab.com/login',	'114.124.140.103',	'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36',	'id,en-US;q=0.9,en;q=0.8,und;q=0.7',	'http://auth.zeroc0d3lab.com/login',	'POST',	'2019-11-23 09:02:30',	'2019-11-23 09:02:30',	NULL),
(49,	'Viewed home',	'Registered',	1,	'http://auth.zeroc0d3lab.com/home',	'114.124.140.103',	'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36',	'id,en-US;q=0.9,en;q=0.8,und;q=0.7',	'http://auth.zeroc0d3lab.com/login',	'GET',	'2019-11-23 09:02:30',	'2019-11-23 09:02:30',	NULL),
(50,	'Viewed images/profile/1/avatar/avatar.jpeg',	'Registered',	1,	'http://auth.zeroc0d3lab.com/images/profile/1/avatar/avatar.jpeg',	'114.124.140.103',	'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36',	'id,en-US;q=0.9,en;q=0.8,und;q=0.7',	'http://auth.zeroc0d3lab.com/home',	'GET',	'2019-11-23 09:02:30',	'2019-11-23 09:02:30',	NULL),
(51,	'Viewed images/profile/1/avatar/avatar.jpeg',	'Registered',	1,	'http://auth.zeroc0d3lab.com/images/profile/1/avatar/avatar.jpeg',	'114.124.140.103',	'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36',	'id,en-US;q=0.9,en;q=0.8,und;q=0.7',	'http://auth.zeroc0d3lab.com/roles',	'GET',	'2019-11-23 09:02:35',	'2019-11-23 09:02:35',	NULL),
(52,	'Viewed users',	'Registered',	1,	'http://auth.zeroc0d3lab.com/users',	'114.124.140.103',	'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36',	'id,en-US;q=0.9,en;q=0.8,und;q=0.7',	'http://auth.zeroc0d3lab.com/roles',	'GET',	'2019-11-23 09:02:40',	'2019-11-23 09:02:40',	NULL),
(53,	'Viewed images/profile/1/avatar/avatar.jpeg',	'Registered',	1,	'http://auth.zeroc0d3lab.com/images/profile/1/avatar/avatar.jpeg',	'114.124.140.103',	'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36',	'id,en-US;q=0.9,en;q=0.8,und;q=0.7',	'http://auth.zeroc0d3lab.com/users',	'GET',	'2019-11-23 09:02:41',	'2019-11-23 09:02:41',	NULL),
(54,	'Viewed users/2/edit',	'Registered',	1,	'http://auth.zeroc0d3lab.com/users/2/edit',	'114.124.140.103',	'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36',	'id,en-US;q=0.9,en;q=0.8,und;q=0.7',	'http://auth.zeroc0d3lab.com/users',	'GET',	'2019-11-23 09:02:51',	'2019-11-23 09:02:51',	NULL),
(55,	'Viewed images/profile/1/avatar/avatar.jpeg',	'Registered',	1,	'http://auth.zeroc0d3lab.com/images/profile/1/avatar/avatar.jpeg',	'114.124.140.103',	'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36',	'id,en-US;q=0.9,en;q=0.8,und;q=0.7',	'http://auth.zeroc0d3lab.com/users/2/edit',	'GET',	'2019-11-23 09:02:52',	'2019-11-23 09:02:52',	NULL),
(56,	'Edited users/2',	'Registered',	1,	'http://auth.zeroc0d3lab.com/users/2',	'114.124.140.103',	'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36',	'id,en-US;q=0.9,en;q=0.8,und;q=0.7',	'http://auth.zeroc0d3lab.com/users/2/edit',	'PUT',	'2019-11-23 09:03:29',	'2019-11-23 09:03:29',	NULL),
(57,	'Edited users/2',	'Registered',	1,	'http://auth.zeroc0d3lab.com/users/2',	'114.124.140.103',	'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36',	'id,en-US;q=0.9,en;q=0.8,und;q=0.7',	'http://auth.zeroc0d3lab.com/users/2/edit',	'PUT',	'2019-11-23 09:03:29',	'2019-11-23 09:03:29',	NULL),
(58,	'Viewed users/2/edit',	'Registered',	1,	'http://auth.zeroc0d3lab.com/users/2/edit',	'114.124.140.103',	'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36',	'id,en-US;q=0.9,en;q=0.8,und;q=0.7',	'http://auth.zeroc0d3lab.com/users/2/edit',	'GET',	'2019-11-23 09:03:30',	'2019-11-23 09:03:30',	NULL),
(59,	'Viewed images/profile/1/avatar/avatar.jpeg',	'Registered',	1,	'http://auth.zeroc0d3lab.com/images/profile/1/avatar/avatar.jpeg',	'114.124.140.103',	'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36',	'id,en-US;q=0.9,en;q=0.8,und;q=0.7',	'http://auth.zeroc0d3lab.com/users/2/edit',	'GET',	'2019-11-23 09:03:31',	'2019-11-23 09:03:31',	NULL),
(60,	'Viewed profile/zeroc0d3',	'Registered',	1,	'http://auth.zeroc0d3lab.com/profile/zeroc0d3',	'114.124.140.103',	'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36',	'id,en-US;q=0.9,en;q=0.8,und;q=0.7',	'http://auth.zeroc0d3lab.com/users/2/edit',	'GET',	'2019-11-23 09:03:33',	'2019-11-23 09:03:33',	NULL),
(61,	'Viewed images/profile/1/avatar/avatar.jpeg',	'Registered',	1,	'http://auth.zeroc0d3lab.com/images/profile/1/avatar/avatar.jpeg',	'114.124.140.103',	'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36',	'id,en-US;q=0.9,en;q=0.8,und;q=0.7',	'http://auth.zeroc0d3lab.com/profile/zeroc0d3',	'GET',	'2019-11-23 09:03:34',	'2019-11-23 09:03:34',	NULL),
(62,	'Logged Out',	'Registered',	1,	'http://auth.zeroc0d3lab.com/logout',	'114.124.140.103',	'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36',	'id,en-US;q=0.9,en;q=0.8,und;q=0.7',	'http://auth.zeroc0d3lab.com/profile/zeroc0d3',	'POST',	'2019-11-23 09:03:39',	'2019-11-23 09:03:39',	NULL);

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


INSERT INTO `permissions` (`id`, `name`, `slug`, `description`, `model`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1,	'Can View Users',	'view.users',	'Can view users',	'Permission',	'2019-11-19 15:31:16',	'2019-11-19 15:31:16',	NULL),
(2,	'Can Create Users',	'create.users',	'Can create new users',	'Permission',	'2019-11-19 15:31:16',	'2019-11-19 15:31:16',	NULL),
(3,	'Can Edit Users',	'edit.users',	'Can edit users',	'Permission',	'2019-11-19 15:31:16',	'2019-11-19 15:31:16',	NULL),
(4,	'Can Delete Users',	'delete.users',	'Can delete users',	'Permission',	'2019-11-19 15:31:16',	'2019-11-19 15:31:16',	NULL);

INSERT INTO `permission_role` (`id`, `permission_id`, `role_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1,	1,	1,	'2019-11-19 15:31:16',	'2019-11-19 15:31:16',	NULL),
(2,	2,	1,	'2019-11-19 15:31:16',	'2019-11-19 15:31:16',	NULL),
(3,	3,	1,	'2019-11-19 15:31:16',	'2019-11-19 15:31:16',	NULL),
(4,	4,	1,	'2019-11-19 15:31:16',	'2019-11-19 15:31:16',	NULL);


INSERT INTO `profiles` (`id`, `user_id`, `theme_id`, `location`, `bio`, `twitter_username`, `github_username`, `avatar`, `avatar_status`, `created_at`, `updated_at`) VALUES
(1,	1,	1,	NULL,	NULL,	NULL,	'zeroc0d3',	'/images/profile/1/avatar/avatar.jpeg',	1,	'2019-11-19 15:31:16',	'2019-11-23 09:00:57'),
(2,	2,	1,	NULL,	NULL,	NULL,	NULL,	NULL,	0,	'2019-11-19 15:31:16',	'2019-11-19 15:31:16');

INSERT INTO `roles` (`id`, `name`, `slug`, `description`, `level`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1,	'Admin',	'admin',	'Admin Role',	5,	'2019-11-19 15:31:16',	'2019-11-19 15:31:16',	NULL),
(2,	'User',	'user',	'User Role',	1,	'2019-11-19 15:31:16',	'2019-11-19 15:31:16',	NULL),
(3,	'Unverified',	'unverified',	'Unverified Role',	0,	'2019-11-19 15:31:16',	'2019-11-19 15:31:16',	NULL);

INSERT INTO `role_user` (`id`, `role_id`, `user_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1,	1,	1,	'2019-11-19 15:31:16',	'2019-11-19 15:31:16',	NULL),
(4,	2,	2,	'2019-11-23 09:03:30',	'2019-11-23 09:03:30',	NULL);


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

INSERT INTO `users` (`id`, `name`, `first_name`, `last_name`, `email`, `password`, `remember_token`, `activated`, `token`, `signup_ip_address`, `signup_confirmation_ip_address`, `signup_sm_ip_address`, `admin_ip_address`, `updated_ip_address`, `deleted_ip_address`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1,	'zeroc0d3',	'ZeroC0D3',	'Team',	'zeroc0d3.team@gmail.com',	'$2y$10$c/ePkH/JA1ywlCJ0dOJ8.u/EZ8aI4qyOP5eaaQt7aHGEmwkNHxy/6',	'd0BPmNytOqjO7SjQLx8UdsuM9Vlf9qUnd6Wjl1I9hKXpCwUqxYsmI8RObMZd',	1,	'O4jiSMGf7m8bhk4XqrA95SIJYZwSBg2RMYXkIRAJb4YL4yvfeoxIBCZ6ii1zsVxq',	NULL,	'61.195.134.243',	NULL,	'62.142.125.129',	'114.124.140.103',	NULL,	'2019-11-19 15:31:16',	'2019-11-23 09:02:05',	NULL),
(2,	'guest',	'Guest',	'ZeroC0D3Lab',	'user@zeroc0d3labcom',	'$2y$10$It3u4qGpcbrtFnyq8SGvl.SvthiFgriz2FYQHzJgJ42CXUtrGHmye',	NULL,	1,	'TShGLIAKjIY8jv6wp104ul1B96HtqaMexg7vCNurmo9h6TsJIiTJoejlPZPHXxRF',	'125.213.103.144',	'219.17.231.37',	NULL,	NULL,	'114.124.140.103',	NULL,	'2019-11-19 15:31:16',	'2019-11-23 09:03:30',	NULL);

-- 2019-11-23 09:05:11