/*Скрипты наполнения базы данных*/


USE bookmate;

 
INSERT `author` (`id`, `author_name`, `created_at`, `updated_at`) 
VALUES 
('1', 'L_Tolstoy', '2002-08-23 07:57:14', '2011-04-14 04:14:42'),
('2', 'M_Bulgakov', '1988-02-18 19:24:12', '2019-07-15 06:02:19'),
('3', 'K_Yung', '2016-03-17 20:33:46', '2008-09-19 16:15:12'),
('4', 'S_King', '2012-03-10 08:04:47', '2009-12-27 16:44:34'),
('5', 'R_Kavasima', '1975-12-21 12:39:15', '1978-05-01 16:38:20'),
('6', 'A_Pushkin', '2016-10-03 10:46:53', '2020-06-20 18:10:43'),
('7', 'A_Tolstoy', '1977-04-01 22:04:28', '1996-04-03 14:10:14'),
('8', 'F_Dostoevsky', '1994-08-19 23:05:43', '2002-12-30 18:14:37'),
('9', 'I_Asimov', '1982-02-18 17:21:05', '1977-07-27 04:17:13'),
('10', 'E_Tanenbaum', '1999-01-10 12:21:50', '1987-12-31 23:22:36'),
('11', 'A_Panchin', '1981-12-25 23:36:20', '1994-08-12 18:51:57'),
('12', 'A_Kazantseva', '2018-11-13 23:54:59', '2019-11-05 17:40:40'),
('13', 'R_Dokinz', '2001-07-13 02:57:58', '1999-09-23 08:22:49'),
('14', 'N_Gogol', '1995-03-06 05:05:40', '2012-09-10 18:35:18'),
('15', 'J_Ostin', '2005-01-05 04:21:12', '1995-03-06 21:12:13');

INSERT `users` (`id`, `first_name`, `last_name`, `phone`, `email`, `pass`, `created_at`, `updated_at`) 
VALUES 
('1', 'Ivan', 'Ivanov', '79178356798', 'urban79@example.org', '43245345435','1975-02-14 09:34:49', '1973-08-13 23:02:59'),
('2', 'Nelle', 'Anisimova', '79178356789', 'arette@example.net', '5345345235432', '1996-05-07 21:23:41', '1976-07-10 17:49:26'),
('3', 'Petr', 'Paulov', '79179956798', 'aurelie85@example.org', '223454354353425', '1978-07-16 02:16:37', '2005-12-17 02:30:25'),
('4', 'Michail', 'Wardonov', '79198356798', 'elica70@example.net', '243545234543', '1987-07-02 16:29:19', '2002-09-11 23:25:22'),
('5', 'Georg', 'Kartoshkin', '99178356798', 'gstrom@example.net', '245435435435', '2008-06-07 23:45:29', '2009-11-21 11:19:55'),
('6', 'Daniil', 'Mor', '79978356798', 'reane69@example.org', '453453425435', '1982-11-25 17:15:51', '1986-08-21 13:22:19'),
('7', 'Daniella', 'Larson', '79378356798', 'retha@example.org', '134134154135', '1998-06-24 17:15:16', '2009-11-04 17:49:11'),
('8', 'Elis', 'Aboeva', '79578356798', 'bosco.lec@example.com', '13241235135135235', '2019-12-30 03:28:10', '2007-02-07 16:18:07'),
('9', 'Marc', 'Tonky', '79178356793', 'hert08@example.net', '12413513515', '1986-06-20 05:53:22', '1978-09-07 03:13:50'),
('10', 'Dan', 'Solovey', '79678356798', 'goldner.ta@example.com', '12415153125', '1977-07-04 17:04:42', '2017-09-27 16:35:43'),
('11', 'Faina', 'White', '79178356790', 'ivy71@example.org', '2356635636', '1998-09-05 22:27:25', '2012-04-01 02:07:20'),
('12', 'Vickie', 'Dikaya', '79258356798', 'kheidenreich@example.org', '23562453623456', '2012-09-18 16:36:24', '2006-07-12 15:21:01'),
('13', 'Camilla', 'Melkonyan', '79458356798', 'norris65@example.com', '2456245624356', '2004-11-11 03:10:21', '1980-06-09 03:08:29'),
('14', 'Gerard', 'Lok', '79178356794', 'rconsidine@example.com', '235632563256326', '1971-12-05 14:14:10', '1994-08-28 19:24:24'),
('15', 'Vasiliy', 'Fedorov', '79658356798', 'ara91@example.net', '223566577765', '1976-09-03 12:55:41', '1996-09-04 13:06:42');


INSERT `profiles` (`id`, `user_id`, `login`, `birthday`, `city`, `country`, `created_at`, `updated_at`) 
VALUES 
('1', '1', 'krasavchik', '2017-08-27', 'New Orlo', 'Tuvalu', '1992-04-02 06:31:33', '2016-07-31 00:41:56'),
('2', '2', 'hohoho', '1982-08-04', 'Port Kristina', 'Cuba', '2011-02-16 05:58:00', '2000-04-09 22:03:29'),
('3', '3', 'buter', '2010-07-09', 'New Mariana', 'Pakistan', '1974-05-01 19:24:25', '1985-09-08 07:39:06'),
('4', '4', 'ametist', '1971-11-07', 'New Melissamouth', 'Cook Islands', '1979-07-14 19:17:35', '2020-06-02 09:24:07'),
('5', '5', 'snob', '2000-10-19', 'West Andreaneport', 'Reunion', '1979-06-13 04:25:37', '2010-06-11 08:03:52'),
('6', '6', 'peraspera', '1976-04-21', 'Lake Brandynland', 'Poland', '1970-09-24 15:07:32', '1990-12-30 22:51:13'),
('7', '7', 'adastra', '1990-11-17', 'Kundechester', 'Malaysia', '2001-09-01 06:24:55', '2001-09-20 10:09:35'),
('8', '8', 'etc', '1983-02-11', 'Schadenborough', 'Belarus', '2008-07-02 18:54:25', '1984-03-11 08:40:39'),
('9', '9', 'labore', '1972-04-06', 'Jerrodmouth', 'El Salvador', '1977-10-24 23:48:47', '1970-11-17 16:18:59'),
('10', '10', 'sintet', '2018-08-28', 'Cleofort', 'Uruguay', '1993-09-26 07:26:25', '1994-02-06 01:53:35'),
('11', '11', 'utka', '1996-07-03', 'Miguelside', 'Finland', '2000-01-30 20:22:18', '2007-08-25 11:24:42'),
('12', '12', 'absolute', '1983-01-30', 'Smithamside', 'Bolivia', '1977-12-19 07:42:06', '2020-10-06 15:31:03'),
('13', '13', 'velvet', '2020-01-03', 'Nikkiburgh', 'Cape Verde', '1990-04-29 03:03:57', '1994-04-15 03:08:51'),
('14', '14', 'fura', '2017-06-20', 'North Quintenside', 'Bermuda', '2010-05-08 00:49:50', '1989-03-09 15:30:39'),
('15', '15', 'nochka', '2009-10-08', 'New Laurenfurt', 'Serbia', '1996-07-18 17:21:22', '2009-07-20 20:03:40');


INSERT `genre` (`id`, `genre_name`, `created_at`, `updated_at`) 
VALUES 
(1, 'Sciense', '2017-08-24 18:09:33', '1983-09-20 02:31:14'),
(2, 'Novel', '1990-11-13 12:26:26', '1990-12-25 10:21:43'),
(3, 'Poema', '1987-09-22 06:26:18', '1987-04-13 16:39:33'),
(4, 'Drama', '1973-08-30 14:03:57', '1998-02-15 10:45:38'),
(5, 'History', '1995-05-26 21:22:13', '2006-04-27 03:15:43'),
(6, 'Western', '1991-11-22 02:40:21', '1973-02-09 07:07:54'),
(7, 'Biography', '1989-06-02 09:46:54', '1988-09-18 18:38:14'),
(8, 'Myth', '1973-11-07 20:04:56', '2016-03-02 22:02:36'),
(9, 'Non_fiction', '2017-10-04 09:31:03', '1975-06-17 14:05:32'),
(10, 'Fairy_tale', '1988-05-22 13:34:28', '1978-12-15 12:06:34');

INSERT `book_type` (`id`, `type_name`, `created_at`, `updated_at`) 
VALUES 
('1', 'Text', '2015-08-25 03:20:25', '2020-08-03 14:04:01'),
('2', 'Audio', '2010-05-22 09:46:42', '1972-01-27 10:07:23'),
('3', 'Text_and_audio', '1970-09-03 09:49:47', '2014-02-23 12:59:12');


INSERT `publishing_house` (`id`, `publishing_house_name`, `created_at`, `updated_at`) 
VALUES 
(1, 'Mann', '1987-03-12 22:42:28', '1998-09-29 22:57:13'),
(2, 'Ivanov', '1979-11-14 16:56:43', '2013-12-19 15:03:54'),
(3, 'Ferber', '2015-06-16 20:48:16', '1976-08-18 02:27:15'),
(4, 'Purdy', '1991-06-15 23:29:24', '1988-04-02 05:14:57'),
(5, 'Borbora', '2000-09-20 16:11:13', '1976-11-05 04:36:31'),
(6, 'Alpina', '1977-11-15 12:55:53', '1979-02-19 09:02:06'),
(7, 'Heaney', '2004-01-13 07:48:28', '1971-05-21 20:50:01'),
(8, 'Classica', '2020-07-22 17:34:14', '2001-10-21 11:37:46'),
(9, 'Leannon-Wehner', '2010-01-23 05:01:43', '2009-08-22 18:51:10'),
(10, 'Shields', '2008-05-29 12:40:42', '1970-04-18 01:19:47'),
(11, 'Piter', '1999-05-17 10:06:28', '1989-09-26 01:18:59'),
(12, 'Moscow_press', '2002-07-01 18:42:44', '1986-10-02 11:28:26'),
(13, 'Dinastia', '2012-01-14 07:05:46', '2003-02-07 22:23:14'),
(14, 'Now_press', '2015-03-28 07:22:34', '1999-12-31 11:31:32'),
(15, 'Horoshee_izdatelstvo', '1998-01-20 20:10:43', '2019-04-02 07:59:05');


INSERT `book_status_text` (`id`, `status_text`, `created_at`, `updated_at`) 
VALUES 
(1, 'Want_to_read', '1997-04-21 19:53:15', '1985-02-07 14:54:53'),
(2, 'Reading', '1974-02-24 08:30:30', '1999-10-24 09:07:29'),
(3, 'Read', '2016-11-19 19:00:33', '1991-05-12 11:21:40');

INSERT `books` (`id`, `title`, `genre_id`, `author_id`, `book_type_id`, `publishing_house_id`, `book_written`, `book_description`, `publishing_time`, `book_size`, `created_at`, `updated_at`) 
VALUES 
('1', 'But_why', 1, '1', '1', 1, '2015-04-19', 'Aut suscipit id voluptas.', '1994-04-08', 9696756, '2016-07-26 08:08:33', '1973-04-19 05:01:58'),
('2', 'Yes_i_can', 2, '2', '2', 2, '2005-02-18', 'Sit fugiat eos at sunt. ', '1999-11-24', 639970, '1990-12-29 19:47:51', '2018-06-30 11:22:36'),
('3', 'Good', 3, '3', '3', 3, '1994-09-13', 'Sit iure et est magnam soluta aut animi.Distinctio quia occaecati quisquam et voluptas.', '1970-05-22', 72176239, '2011-01-23 20:23:20', '2014-07-29 05:49:10'),
('4', 'Best_trip', 4, '4', '1', 4, '1987-01-30', 'Quas aliquid hic asperiores aut ad numquam fuga. Aut et velit culpa temporibus omnis.', '1985-08-07', 0, '2006-04-13 15:20:55', '1995-01-06 10:23:18'),
('5', 'Zoo', 5, '5', '2', 5, '1984-09-16', 'Quia ut ipsam placeat id hic. Ipsam ducimus ex neque eos omnis.', '1987-01-27', 3848, '1975-01-30 07:45:55', '1984-12-24 22:35:04'),
('6', 'Geisha', 6, '6', '3', 6, '1974-12-11', 'Et minima qui similique illum. Beatae qui perspiciatis qui consequatur animi.', '2016-01-21', 0, '2006-04-12 02:40:16', '1994-03-26 10:20:50'),
('7', 'Say_me', 7, '7', '1', 7, '2019-06-11', 'Eos et architecto blanditiis. Nihil et delectus est voluptate nihil.', '1984-04-20', 1176353, '2007-03-16 12:04:58', '2013-04-05 06:09:04'),
('8', 'Data_Bases', 8, '8', '2', 8, '2008-06-21', 'Aspernatur doloremque reiciendis sequi reprehenderit unde et.', '2000-12-17', 74731175, '2017-10-12 07:20:47', '1994-02-09 17:24:31'),
('9', 'Piton_3', 9, '9', '3', 9, '1978-12-03', 'Qui sit dolore non rerum quam.', '1994-07-28', 4, '2000-07-22 17:13:21', '1987-06-18 08:28:04'),
('10', 'Networks', 10, '10', '1', 10, '2004-07-02', 'Delectus eum doloribus sit eum ut.', '2008-07-12', 3, '1976-12-01 04:02:18', '1978-01-11 00:08:43'),
('11', 'Endless_summer', 1, '11', '2', 11, '2020-06-15', 'Omnis omnis ea suscipit in commodi minima dolorem sequi.', '2014-06-10', 103, '1972-05-14 02:12:52', '2014-06-16 17:05:07'),
('12', 'Sit_here', 2, '12', '3', 12, '1976-01-10', 'Quibusdam aspernatur ut quasi aut facere perferendis. Eum maiores maiores aut voluptate soluta porro quisquam.', '2008-01-11', 7, '1997-04-22 18:14:53', '1990-06-07 16:20:23'),
('13', 'Jellyfish', 3, '13', '1', 13, '2007-01-15', 'Quasi cumque in ut sunt. Vero enim voluptatem ullam et aut similique odit.', '2010-03-26', 89, '2001-10-03 11:17:33', '2014-07-10 22:05:47'),
('14', 'English_language', 4, '14', '2', 14, '1998-01-06', 'Quo quod perspiciatis ratione qui deserunt.Possimus aut perspiciatis rerum labore maiores.', '1997-12-14', 633, '2015-01-15 01:28:17', '1973-10-20 10:08:12'),
('15', 'Best_practice', 5, '15', '3', 15, '1982-11-25', 'Excepturi placeat quis omnis eius debitis laudantium.', '2016-05-11', 0, '1974-08-15 22:28:59', '2020-06-05 23:02:51');


INSERT `book_status` (`id`, `user_id`, `book_id`, `book_status_text_id`, `created_at`, `updated_at`) 
VALUES 
(1, '1', '1', 1, '1990-03-24 18:01:59', '1971-06-15 14:55:09'),
(2, '2', '2', 2, '2015-06-18 10:28:46', '1978-06-16 15:52:33'),
(3, '3', '3', 3, '1988-05-14 15:06:17', '2002-10-17 21:32:36'),
(4, '4', '4', 1, '2002-11-22 10:04:27', '2007-04-07 17:01:35'),
(5, '5', '5', 2, '1970-11-30 11:39:43', '1994-10-23 07:13:51'),
(6, '6', '6', 3, '1995-01-09 04:12:22', '2003-09-24 01:24:04'),
(7, '7', '7', 1, '1976-03-13 17:35:44', '1994-08-18 12:36:11'),
(8, '8', '8', 2, '1988-10-23 20:49:01', '1988-03-11 16:07:42'),
(9, '9', '9', 3, '2011-01-02 03:40:28', '2015-12-22 10:52:44'),
(10, '10', '10', 1, '2016-05-13 11:01:30', '2002-06-11 22:54:00'),
(11, '11', '11', 2, '1982-04-07 18:22:33', '1989-10-22 22:50:31'),
(12, '12', '12', 3, '2011-07-22 10:05:35', '1979-11-15 01:46:53'),
(13, '13', '13', 1, '1970-02-17 01:46:44', '2015-09-15 13:37:03'),
(14, '14', '14', 2, '1971-09-22 06:49:42', '2009-05-24 06:47:51'),
(15, '15', '15', 3, '2012-11-28 06:23:07', '2008-04-30 00:13:59'),
(16, '1', '1', 1, '1971-04-22 08:59:31', '2001-03-26 20:11:22'),
(17, '2', '2', 2, '1979-12-02 17:43:00', '1973-05-19 08:50:33');


INSERT `quotes` (`id`, `user_id`, `book_id`, `quote_text`, `created_at`, `updated_at`) 
VALUES 
('1', '1', '1', 'Est atque ut eveniet possimus cumque cumque cum omnis. Quae et ut quod autem. Qui amet sint qui et.', '2017-07-21 01:48:22', '2013-01-04 07:09:15'),
('2', '2', '2', 'Corrupti et quaerat omnis reiciendis mollitia aut.  Et molestias nobis nisi totam nobis omnis consequatur.', '1991-03-27 17:15:26', '1977-11-11 22:38:52'),
('3', '3', '3', 'Qui quisquam repellendus exercitationem cum vero quasi sed. Mollitia quis consequatur optio cum culpa. Aliquam aut aut sint aspernatur quibusdam quia.', '1977-01-01 15:15:53', '2007-06-09 16:15:56'),
('4', '4', '4', 'Assumenda tempore ut et est animi. Tempore accusamus sint quae sit dolor. Facilis odit dicta molestias cupiditate. Itaque in ex et aut.', '2018-02-03 11:00:20', '2012-11-04 13:22:59'),
('5', '5', '5', 'Quod aspernatur et dolor eveniet repellat dolore itaque. Sed sed dicta exercitationem autem molestias quasi eos. Nulla enim consequatur ad consequatur commodi.', '2004-12-22 18:08:34', '1999-11-23 01:56:01'),
('6', '6', '6', 'Necessitatibus voluptas ut excepturi harum.  Tempore amet natus quaerat amet quaerat odio minima.', '1994-04-01 04:29:46', '1987-07-12 02:55:21'),
('7', '7', '7', 'Possimus dolores iusto eveniet et quam id. Ipsum in reiciendis dolorum velit quia.', '2013-02-15 17:41:29', '1980-05-17 23:59:18'),
('8', '8', '8', 'Eius eius ipsam voluptates est vitae nesciunt ipsa. Incidunt excepturi dolorem unde et quisquam itaque omnis rerum.', '2006-11-10 09:28:53', '1971-02-22 17:56:50'),
('9', '9', '9', 'Aut ut itaque facilis vero. Tempora repellat voluptatem est perspiciatis consequatur.', '2010-02-03 11:07:24', '2015-08-26 14:26:23'),
('10', '10', '10', 'Omnis qui aut aperiam alias excepturi eum sint. Eius eveniet exercitationem consequatur et deserunt et.', '2001-08-16 02:08:30', '2011-02-27 00:22:47'),
('11', '11', '11', 'Vero tenetur ducimus provident id explicabo dolor et.', '2013-08-17 15:30:30', '2004-05-30 06:17:43'),
('12', '12', '12', 'Quia eius ut et non nobis excepturi impedit.', '2001-01-20 23:36:55', '2015-10-26 11:47:38'),
('13', '13', '13', 'Perspiciatis nulla voluptatum velit ducimus.', '2009-04-18 02:54:06', '1981-01-27 01:37:32'),
('14', '14', '14', 'Occaecati molestiae rerum nostrum numquam natus corporis.', '2007-08-14 17:15:42', '1978-09-10 12:27:14'),
('15', '15', '15', 'Deserunt quasi cumque facilis esse non rerum molestiae. Nemo omnis ab aut reprehenderit quod error officia.', '2006-02-05 22:40:49', '2001-03-12 01:29:06'),
('16', '1', '1', 'Expedita voluptas a hic sunt nesciunt. Sed nihil alias et esse. Odio natus provident veniam.', '2007-08-30 18:09:55', '2018-04-24 05:41:18'),
('17', '2', '2', 'A aut temporibus exercitationem sunt et laborum velit.  Repellendus dolorum quae sit vel facilis. Voluptate dignissimos ut est nostrum et sit et voluptas.', '1991-10-14 20:08:36', '1982-11-22 13:15:41'),
('18', '3', '3', 'Esse aut recusandae amet consequatur. ', '2003-04-14 01:02:05', '2011-02-19 02:02:17'),
('19', '4', '4', 'Sapiente quia repellat rerum est. Aut porro eos saepe cumque sed aliquid rerum.', '1977-04-23 03:03:17', '1989-08-24 22:48:41');


INSERT `review` (`id`, `user_id`, `book_id`, `title`, `body`, `rating`, `created_at`, `updated_at`) 
VALUES 
('1', '1', '1', 'So so', 'I think its good but can be better', 3, '2009-05-26 09:15:47', '1996-06-26 02:44:50'),
('2', '2', '2', 'not good ', 'The other reviews also led me to believe', 2, '2009-05-24 00:55:58', '1999-06-28 17:00:15'),
('3', '3', '3', 'Crying', 'Hi I read it and its worst book I ever seen', 1, '2000-09-05 13:02:05', '1995-08-09 23:48:00'),
('4', '4', '4', 'Eh', 'So so', 3, '1999-11-22 18:04:19', '1974-06-06 21:11:25'),
('5', '5', '5', 'Awesome', 'Like it', 5, '1982-10-27 22:50:43', '1993-11-09 06:21:14'),
('6', '6', '6', 'Hello', 'Dont know what to say...', 2, '1973-09-25 21:29:30', '1996-04-26 13:24:43'),
('7', '7', '7', 'Good book', 'Good advise to you', 5, '2000-05-06 13:31:18', '1971-08-19 16:00:50'),
('8', '8', '8', 'read it!', 'I previously wrote this review right after reading the book', 4, '1980-06-17 14:16:38', '2014-08-21 17:41:52'),
('9', '9', '9', 'my opinion', 'I was quite disappointed in this book given the reviews', 8, '1988-06-17 08:36:14', '1992-06-15 00:12:46'),
('10', '10', '10', 'by me', 'I had high hopes for this but it is way too wordy', 8, '1974-03-25 19:08:47', '1994-01-13 12:10:42'),
('11', '11', '11', 'one thing', 'All of the material covered could have been condensed in 1 chapter', 9, '1985-04-09 23:34:16', '2020-10-25 07:41:30'),
('12', '12', '12', 'hurray', 'I just finished the book', 2, '2010-05-20 01:55:05', '1984-07-09 01:32:52'),
('13', '13', '13', 'not good', 'Left me feeling empty', 3, '2000-12-03 04:49:09', '1975-12-09 22:16:44'),
('14', '14', '14', 'interesting', 'Presents a mysterious and complex subject in a very understandable and interesting way. ', 9, '1998-07-06 23:06:59', '2015-05-15 16:06:45'),
('15', '15', '15', 'dont understand', 'so heavy language its unbeliveable', 2, '2013-08-28 13:47:47', '1980-06-30 03:42:44'),
('16', '1', '1', 'have high hopes', 'i have words to describe it', 4, '1999-01-31 11:42:33', '2002-05-12 00:42:20'),
('17', '2', '2', 'best book', 'read it second times its the beeeeest', 6, '1975-06-22 16:26:49', '1986-08-17 20:54:50'),
('18', '3', '3', 'hello everybody', 'Consciousness still a mystery but less of one. Rally good read', 9, '1976-10-24 12:25:43', '1996-06-04 02:54:55'),
('19', '4', '4', 'no words', 'to desribe it', 7, '1995-08-06 20:11:21', '2013-05-01 22:03:12'),
('20', '5', '5', 'not good not bad', 'i have advise to u - read it and say us how it was', 5, '1992-01-17 18:00:11', '1994-08-29 17:23:05');


