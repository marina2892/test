create database if not exists snet0611 character set = utf8mb4;
use snet0611;
DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `lastname` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Фамилия пользователя',
  `email` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `hometown` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo_id` bigint(20) unsigned DEFAULT NULL,
  `create_at` datetime DEFAULT current_timestamp(),
  `pass` char(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`),
  KEY `phone_2` (`phone`),
  KEY `users_firstname_lastname_idx` (`firstname`,`lastname`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('1', 'Allan', 'Krajcik', 'dickinson.verda@example.com', '877-605-7958x1982', '1997-06-16', 'debitis', 'm', '3', '2005-06-17 19:14:20', '69edd54b31cd56f23f89b62d6f83b9704cec3e2f');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('2', 'Kaci', 'Dooley', 'mia02@example.org', '016-331-4763', '2002-04-03', 'numquam', 'm', '7', '1985-01-11 06:01:48', 'da5ec35443c827846dcd5d7cd997a94a08ba3c64');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('3', 'Keara', 'Koch', 'neichmann@example.org', '816.029.2764x165', '2008-05-31', 'rerum', 'm', '2', '2020-10-25 19:11:47', 'fb9cfce0c4e942c4317fb4051b0e982c53a4de8e');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('4', 'Ashlynn', 'Strosin', 'dubuque.mollie@example.net', '(108)000-9909', '2010-05-10', 'ut', 'm', '4', '1979-09-01 01:08:17', '3b1930498d599ab6da31d18708ca5879d088ad63');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('5', 'Keanu', 'Howell', 'blaze48@example.org', '758-351-4002', '2015-03-28', 'et', 'f', '6', '1978-10-04 14:07:27', '625f561f390d894b4b7ff09ebe1d69dbf1992959');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('6', 'Dock', 'Wolff', 'dschuster@example.net', '449.655.6324', '1972-03-04', 'magni', 'f', '3', '2006-05-10 05:29:17', '8545a99b42bd44301917c710f404206656a35009');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('7', 'Maia', 'Raynor', 'minerva.murazik@example.com', '770-763-8690x8328', '2005-01-05', 'quo', 'f', '0', '1977-11-05 19:47:44', '6b3403b4d14165fa8178f799747313d255342c4f');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('8', 'Aleen', 'Schoen', 'ullrich.khalil@example.org', '121-243-7577', '1978-02-25', 'inventore', 'm', '5', '1977-07-18 10:07:05', '4c27ce0bacf10eefd6a04a9545930b25da2af928');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('9', 'Jeramie', 'Breitenberg', 'triston01@example.net', '1-604-420-3709x8755', '2016-04-22', 'incidunt', 'f', '5', '1998-04-12 12:32:11', '8c7086038659e91edbaa56bc3106c0dd738dacf8');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('10', 'Ryann', 'Farrell', 'carson.damore@example.net', '872-718-7982x1121', '2016-10-11', 'blanditiis', 'f', '5', '2008-12-31 22:19:56', '1509ac3eace08a3f55c33c0f7be73d93e531a821');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('11', 'Raul', 'Parisian', 'kenny69@example.net', '948-514-0771x0963', '1989-06-29', 'autem', 'm', '2', '1983-10-09 10:56:32', 'b5c1a91c0e91c47b2a0396d4fbb1333930e94d65');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('12', 'Gilda', 'Stoltenberg', 'llangosh@example.net', '04133341244', '2010-05-04', 'eligendi', 'm', '7', '1982-07-13 04:13:09', 'd445d50eba2cb18f1f15e543a7738dd7131dcb80');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('13', 'Sonya', 'Rice', 'rosamond50@example.com', '(933)077-4288x35802', '1982-04-09', 'dolor', 'f', '0', '1992-11-19 02:57:17', '4c128d0f4561b0d2befc9eaadeb8ce8fe11e6615');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('14', 'Greg', 'Klocko', 'verdie45@example.net', '1-611-960-7567x267', '1988-03-19', 'molestiae', 'f', '3', '1985-10-24 02:40:16', 'a1bcfe141aeac5309d894cbf681b483c3abb24db');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('15', 'Jenifer', 'Howell', 'ymraz@example.org', '326.051.7709', '2008-12-21', 'quia', 'f', '6', '1987-10-23 09:48:04', 'e36c5b80383a12c3102e10a417de2d72b948848e');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('16', 'Bernie', 'Padberg', 'sylvan.wunsch@example.org', '(952)832-0508', '2000-06-12', 'accusamus', 'm', '2', '2016-05-16 08:32:24', 'fe11a6e04be0e4b32089be2a736f141840a219d6');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('17', 'Adah', 'Schamberger', 'jared.pouros@example.com', '022.669.1718x30307', '1988-01-12', 'sed', 'f', '3', '2012-03-17 21:11:09', 'd9248ef008d420e4de9b71926aa4398f6a0549b3');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('18', 'Carmen', 'Pfeffer', 'leonel44@example.org', '651-856-8419x3332', '1999-12-14', 'est', 'm', '3', '1971-06-30 15:38:25', '80b75a7baedd4c771f48ac612492659a6ad5da87');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('19', 'Stacy', 'Thompson', 'lauren.mclaughlin@example.org', '912.668.6754x7282', '1998-01-19', 'qui', 'f', '7', '2009-02-10 20:35:10', '3492dc5b5a425e60987a627eb86043bccbf2a54d');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('20', 'Troy', 'Kuhic', 'uharvey@example.org', '294.103.1902x0109', '1983-08-18', 'optio', 'f', '7', '1992-01-17 03:56:48', '5ccead35c54d24b88edd5bda3ce72d76c7ee900f');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('21', 'Dale', 'Waelchi', 'jgutkowski@example.net', '(678)822-5683x983', '1994-10-05', 'aut', 'm', '2', '1983-05-26 03:42:51', 'ad4970c73b2bbbba74083218ce9fa20dfc30860a');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('22', 'Britney', 'VonRueden', 'nia.simonis@example.com', '(974)592-7696', '2014-08-31', 'voluptatum', 'm', '0', '2006-06-20 19:57:21', 'e5f39a7ceeae0392b254f1c63307698311026c7a');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('23', 'Earnest', 'Koss', 'joanny.labadie@example.net', '+58(0)7724940353', '1986-05-05', 'sed', 'm', '6', '2014-01-20 03:08:46', '2da4aee6de3c7391b345b749b426259facf982c4');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('24', 'Rhea', 'Wisoky', 'raymond02@example.org', '(256)240-6997', '1989-08-08', 'ut', 'm', '3', '1998-06-15 09:12:58', '0813e1964e98d6a8eb4c6eebf6c6d412c1859c45');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('25', 'Reyna', 'Harris', 'lynch.juana@example.org', '742-615-5551x02152', '1984-08-03', 'enim', 'f', '7', '1995-06-21 08:18:33', 'e66eb7756b150636812896af43d63851a7a0aebd');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('26', 'Damien', 'Feeney', 'jessika.raynor@example.org', '1-900-498-7046x50597', '2007-11-07', 'beatae', 'f', '9', '1998-12-18 12:34:07', '09d8f99f303f480697daa17352e621f90bc9edfb');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('27', 'Omari', 'Borer', 'jade.mclaughlin@example.com', '756.236.7395', '2003-01-12', 'qui', 'f', '7', '2018-01-26 14:25:28', '2fdf57c2f313653c796e82261e7c136523628c89');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('28', 'Heath', 'Larson', 'gerhold.nelson@example.com', '(415)088-1764x877', '1983-02-06', 'ratione', 'f', '3', '2003-12-09 14:47:37', 'f9eae116cc926baca69bf2042d4ab287c530c400');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('29', 'Jermain', 'Trantow', 'jtrantow@example.com', '+42(6)7455050550', '2004-01-06', 'consequatur', 'f', '3', '1992-04-02 13:51:48', 'e652dbe0956f38b03e9f8918627c6495ec486caf');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('30', 'Lauretta', 'Boyle', 'mallory.streich@example.org', '(467)206-3952x145', '2019-11-27', 'maxime', 'm', '7', '2017-01-26 20:50:28', 'cc1e7daed626f35fb1f586a1e0be59d2c24d1040');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('31', 'Mallie', 'Keeling', 'oschuppe@example.org', '481-022-1630', '2001-07-04', 'blanditiis', 'm', '1', '1985-09-02 09:07:49', 'c23b3e1c93cd2a9392f28a423f4a539e2a21bc40');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('32', 'Mckenzie', 'Hilpert', 'king.patsy@example.net', '973.249.7254', '1993-05-07', 'voluptas', 'f', '4', '1982-08-27 11:59:58', 'e366b36612aac59511f69bf4d0136d786e5d670e');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('33', 'Jose', 'Abshire', 'turner.vince@example.net', '1-860-066-7494', '1974-10-15', 'reiciendis', 'm', '0', '1986-08-30 12:39:46', '1f0ba94ab5139eaa9884432b5e8756ac2c96fed0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('34', 'Abigail', 'Koss', 'gerry.reichel@example.net', '09567623039', '2012-09-12', 'magni', 'f', '0', '1971-04-06 15:56:22', '84a5c601a59695faf34872835e15e7a4743e0157');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('35', 'Marty', 'Botsford', 'jreinger@example.net', '345-021-8331x61966', '1979-08-18', 'reprehenderit', 'f', '5', '1972-05-06 12:47:48', 'f2f7a97be5ad6e174e403808d555b98727dc5647');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('36', 'Trey', 'McDermott', 'stacey12@example.org', '04273322254', '1973-01-10', 'architecto', 'm', '2', '1995-10-18 03:20:38', 'bd84de00db6104579dd75456d3464d5939ba1cba');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('37', 'Sasha', 'Grant', 'skylar.labadie@example.org', '798.268.2972x9044', '2002-09-16', 'libero', 'm', '0', '1996-11-02 01:27:20', '2e9cba6174af5b6bd2fe7ac44c11499237dbc517');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('38', 'Gustave', 'Von', 'eloy44@example.org', '553.036.2762', '1972-10-15', 'labore', 'm', '0', '1973-09-07 21:04:08', '066d4356b767761d0257a135c90b43eee022fd80');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('39', 'Mariela', 'Hessel', 'hlynch@example.net', '1-213-271-8095x02644', '2016-12-24', 'ullam', 'm', '0', '2016-04-21 06:50:58', 'ffd3306716dcb6987dec2770adf0d347285b3b17');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('40', 'Elmo', 'Hoeger', 'owolf@example.org', '08265580893', '2010-06-26', 'ipsam', 'f', '8', '1973-02-27 20:57:53', '0e69a39ec6d7a9ba656c122ec36e49d5f68af662');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('41', 'Meghan', 'Trantow', 'lempi.beahan@example.net', '394-812-0918x78571', '1983-07-13', 'sunt', 'm', '3', '2018-03-11 10:28:41', 'cadf2f7c0a8b09fb3125dc6b90b96fe40b5f3b27');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('42', 'Henry', 'Wiza', 'ryan.deion@example.com', '06990256942', '2003-05-19', 'quis', 'm', '0', '1977-04-23 04:55:58', 'e3d7350f6f31a1846b9c5c1dcdec7f103afc6e3f');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('43', 'Hiram', 'Hyatt', 'gwolff@example.org', '087.316.7970x865', '1976-02-01', 'omnis', 'm', '0', '2020-05-24 11:39:59', '3a5ab32d0c63186cd34acb8b855ab9bf1eb60fc4');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('44', 'Shanna', 'Luettgen', 'marshall.schiller@example.net', '(378)969-7958', '1994-03-03', 'repellendus', 'f', '6', '2011-01-09 03:22:57', '19f289affd6d774492cced72ceb94eaeba7203cc');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('45', 'Javonte', 'McKenzie', 'cory72@example.net', '1-453-358-4062', '2006-02-27', 'quas', 'f', '9', '2020-08-08 07:33:11', '50602c35195ca04ae9624fda2884ff0fb1b9b4d6');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('46', 'Cloyd', 'Skiles', 'erdman.patience@example.org', '04222395471', '1987-06-07', 'quia', 'f', '3', '2018-09-24 01:20:53', 'c75faeb8fedc9c13c6f7ec39394f2ea838d12700');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('47', 'Citlalli', 'Schultz', 'weimann.polly@example.net', '917.363.9311x03779', '1984-10-07', 'perspiciatis', 'm', '1', '2014-06-19 00:17:53', '44d2924b88b579965416c9744f849c8aa62c5c16');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('48', 'Dejon', 'Williamson', 'olson.daisy@example.net', '(684)498-5505', '1972-12-05', 'inventore', 'f', '0', '2016-04-07 19:09:43', '353477da3f4c66648af0a6138a4cdf32d0f55aa1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('49', 'Roosevelt', 'Bins', 'tgerhold@example.org', '640.437.1714x86075', '1985-01-03', 'ut', 'f', '0', '1988-08-01 01:00:21', '608b5633399f304c762983348c2025e29310b711');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('50', 'Katrina', 'Pouros', 'orutherford@example.com', '302.553.6958x484', '1995-03-25', 'nihil', 'm', '0', '1983-08-03 10:55:02', '0798a393888cbde10cb5ec8292a0ed96c239e39c');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('51', 'Ashlynn', 'Harvey', 'billie.damore@example.com', '09801461307', '1989-05-10', 'nihil', 'm', '8', '1972-06-14 11:51:11', 'a0ec2184f7e0acbefb11531da9522cbe7e574e52');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('52', 'Roel', 'Green', 'feeney.coby@example.org', '296-216-3038x28186', '1984-09-21', 'voluptatem', 'f', '0', '1979-02-16 10:54:26', 'f428809692cd2406fad950a781a1d1f6faf2abbe');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('53', 'Colten', 'Paucek', 'pfeffer.lizeth@example.org', '(296)232-8163', '1986-11-19', 'ut', 'm', '3', '1994-12-10 16:38:51', '9795ecd5128fef43c38af87f6c4d917c8ca91fc7');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('54', 'Ansel', 'Farrell', 'mireille94@example.com', '439-880-2910x0334', '2008-02-15', 'ullam', 'm', '1', '1970-05-28 09:47:43', '3afea2a163403476aaae10b949afedad8c62043e');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('55', 'Ludwig', 'Davis', 'hertha.jacobi@example.com', '+68(7)0974606660', '1999-01-06', 'voluptatem', 'm', '9', '1985-08-07 20:45:53', '9e98729d1f4bd0b97b47a8867e5528132aede100');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('56', 'Kara', 'Schaden', 'juwan75@example.org', '475.395.5502x18795', '1997-09-13', 'error', 'm', '7', '1988-03-29 15:24:05', 'b04504e45a0f67db33f6d0199a3c2f3dca198fb7');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('57', 'Vilma', 'McClure', 'audrey.dickinson@example.net', '(802)251-6473x030', '1992-12-22', 'dolor', 'm', '3', '2012-03-30 07:01:35', '03af602bc972761706ad810ab4a60addf7a9f3cf');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('58', 'Lawson', 'Kertzmann', 'nbarton@example.com', '(125)382-4750x09107', '2019-04-11', 'deserunt', 'm', '0', '1994-05-25 18:09:51', '3ddbdc10bd380659d92e58f749ce181ae25789f4');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('59', 'Eliezer', 'OConner', 'nbarrows@example.org', '1-876-554-6437', '1971-08-25', 'harum', 'm', '0', '1992-07-20 03:36:41', '86e0f65ad17e42fa568a1330c3f533b21f85cded');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('60', 'Mozell', 'Dicki', 'jayden.crist@example.org', '155.690.4980x66676', '1994-09-22', 'laudantium', 'm', '1', '1975-02-02 00:09:45', 'fc50d9c718fc92e39fe921b7f98e570c37074f47');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('61', 'Brisa', 'Bosco', 'mark22@example.org', '186-672-6001x7692', '1992-02-04', 'consequatur', 'f', '2', '1999-10-21 17:06:38', 'cf7e9ed822d13c4069cd6c2c76a7648f7027bf9e');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('62', 'Trent', 'Hammes', 'emmy79@example.net', '654-418-6039', '1994-03-14', 'eligendi', 'm', '6', '2001-09-01 09:18:13', 'dea0c058b025d243b43d4bb4606748a96d91b587');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('63', 'Eleanora', 'Effertz', 'clifton32@example.net', '+38(4)1009605559', '1992-06-23', 'consequatur', 'm', '5', '1978-06-25 18:08:48', 'a6f14dcfb3f2a195591c54e29d3cacd866f6b6f4');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('64', 'Jeramy', 'Rice', 'helen41@example.com', '+00(6)9277713944', '1996-10-12', 'molestiae', 'm', '7', '2004-01-11 11:01:35', '02bf7e654448435785b7fe2df8f78f2c77c231fc');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('65', 'Domenic', 'Altenwerth', 'austyn79@example.org', '(863)149-3474x793', '1983-06-03', 'molestiae', 'm', '5', '1999-05-23 19:33:22', '6b4048566b83dbf375c0edbcb60e53fcd1b8c9fa');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('66', 'Chasity', 'Carter', 'mweber@example.com', '1-717-890-3417x9410', '1986-03-21', 'neque', 'f', '5', '1991-06-11 06:38:06', '416be95f266008aa77a1dfc39810f770fe48d264');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('67', 'Tad', 'Johnston', 'igorczany@example.net', '399-827-8737x989', '1985-02-08', 'vel', 'm', '8', '2012-12-04 23:20:41', 'ec7017baed4f3f304c14524ad5edf237e77b2289');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('68', 'Anais', 'Douglas', 'ledner.michelle@example.com', '1-190-081-2776', '2014-04-07', 'distinctio', 'm', '7', '2010-11-26 02:54:53', '05f65358a690835a8b49751cb0f423498fc6b9e2');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('69', 'Bret', 'Bode', 'hegmann.makayla@example.com', '674-283-5166x32437', '2013-08-24', 'enim', 'm', '2', '2001-11-28 23:51:07', 'facf8109468a2793130ca3dd6eba72329c5b669b');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('70', 'Jay', 'Casper', 'jason.hills@example.com', '281-110-3015', '1980-05-28', 'error', 'm', '5', '1987-07-20 20:53:20', '4591397c5639756b899e573de45384e40ae10c3c');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('71', 'Aiden', 'Zieme', 'nils.sanford@example.org', '(871)978-3197x547', '2009-01-12', 'est', 'm', '2', '1986-12-08 13:47:54', 'e395d365b7c94d5a5c4d11aadd62cdd249ad35aa');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('72', 'Rodger', 'Block', 'bayer.issac@example.net', '345.950.7116x684', '1985-01-29', 'qui', 'm', '0', '2007-11-17 23:46:11', '5580fa0a90f7a514e3f0d7eaf139e6b7732324d1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('73', 'Antonio', 'Armstrong', 'pouros.lauriane@example.com', '1-267-479-8484x11848', '2018-03-06', 'quia', 'f', '7', '1981-05-25 19:39:45', '0116c2a1f890bd696f19eef3d813858034a235a3');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('74', 'Chandler', 'Bernhard', 'alayna26@example.org', '+99(7)2997227003', '2017-04-15', 'quia', 'm', '8', '1993-03-12 23:15:49', '66167510139a270969b28329db9f6aba225abadc');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('75', 'Berneice', 'Quitzon', 'hosea.sporer@example.com', '068-373-1289x9293', '1983-04-09', 'quia', 'f', '4', '1999-10-17 15:49:36', 'e35a97e93eb388794df46ca42f21ca2a4da296ee');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('76', 'Gus', 'Simonis', 'ryundt@example.com', '1-254-014-1545', '1974-02-08', 'sit', 'm', '1', '2008-04-18 03:02:25', '2c2b699e0702dce7e6eef5240f4451bfe0e3ebda');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('77', 'Krystina', 'Friesen', 'ykuvalis@example.org', '017.852.4814x8289', '2017-03-15', 'et', 'm', '2', '1978-01-31 10:37:23', '9396b86ee9ce6e8566ce0e8d5cac135534566813');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('78', 'Aimee', 'Gleason', 'daniela65@example.net', '1-170-090-9878', '1986-09-02', 'neque', 'm', '3', '1973-07-05 04:57:28', '0d6d9c149a887034607d659233815b59f917bec7');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('79', 'Janis', 'Pfannerstill', 'lubowitz.litzy@example.net', '(472)370-2239x1999', '1976-07-25', 'sint', 'm', '5', '2005-08-18 11:16:19', 'fa0fc34198e80e76f4420ab848d6c877210f90d0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('80', 'Abigayle', 'Witting', 'hauck.else@example.net', '359-210-3210x2792', '1976-03-25', 'quaerat', 'm', '4', '1979-07-14 08:41:21', 'f0c2223eb6283292b340acc6cfedc52aa75db5dc');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('81', 'Salma', 'Wunsch', 'leilani.vandervort@example.net', '1-782-990-2312', '2012-12-12', 'temporibus', 'm', '8', '1979-09-26 22:18:56', '1e97750949e91cdcdac1347b9261c24c0bd1402c');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('82', 'Alexandro', 'Daugherty', 'gmonahan@example.org', '+17(2)0788045442', '1983-03-05', 'sunt', 'f', '5', '1985-03-23 01:10:08', '87e441a57d20a6bcfa7cd42e3fe83e0d46bd389f');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('83', 'Gino', 'Dooley', 'junior46@example.org', '(506)872-3958', '2003-02-12', 'omnis', 'f', '5', '1979-03-06 06:17:39', '15260bead1bff932af25ddf62e01821f151bc609');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('84', 'Joyce', 'Moen', 'mauricio.anderson@example.net', '1-010-704-7100', '1977-10-24', 'ipsam', 'f', '8', '1996-08-02 07:47:47', '31165943847738a3f64f369de2553bf42e791a9c');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('85', 'Amelie', 'Lakin', 'lebsack.zetta@example.net', '564.953.1898', '2006-08-04', 'sit', 'm', '2', '1974-07-01 18:05:02', 'dd046ddbc96aef1be7ad9c7645f133ec2ddd6bbb');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('86', 'Burnice', 'Wisozk', 'bertha.kuvalis@example.net', '02786228664', '2004-11-10', 'porro', 'm', '0', '2010-07-06 19:18:22', 'cad874cf85b61802268a7de975164feca2c22d40');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('87', 'Haylee', 'Dooley', 'kenton16@example.org', '291.439.3818x632', '2007-09-19', 'qui', 'm', '1', '1987-04-23 03:24:27', '0ba3a0db6c1055fb6fe45cf2dea714def60dd22d');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('88', 'Lenny', 'Roob', 'klein.rosie@example.net', '02712442585', '2001-01-25', 'suscipit', 'f', '5', '1978-08-25 05:25:40', '84170f8df033bf741af1f38ef169ae22bd8efcba');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('89', 'Juston', 'Huels', 'kailey14@example.net', '961.002.2427x26541', '1982-01-11', 'ea', 'f', '9', '1984-08-15 11:35:17', 'db4d9aa288284829996424192ce111b703416f40');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('90', 'Madilyn', 'Cruickshank', 'willms.alejandra@example.net', '255.334.1140x73687', '1979-11-21', 'delectus', 'm', '6', '2005-11-15 00:49:27', '248b9b79b63feec6509efb698963dca577c0837c');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('91', 'Modesta', 'Davis', 'robel.rowland@example.org', '(189)388-4399x326', '2019-08-13', 'sint', 'f', '8', '1975-07-17 09:05:18', 'a289e16258f7c6a534976e5b22552d361316b13c');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('92', 'Camylle', 'Hirthe', 'jaleel.kshlerin@example.org', '295-121-5415x44788', '2016-05-28', 'et', 'm', '8', '2004-05-24 04:37:21', 'f6755a8124a5cc3fb2dc892f07ec34cb522a7ee0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('93', 'Viviane', 'Gislason', 'ecummings@example.com', '+17(9)9908059099', '1970-06-03', 'atque', 'm', '8', '1996-03-03 21:46:11', 'c7935e5a7ba11246acc2cae3ea354ac677cecbba');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('94', 'Johnpaul', 'Pollich', 'pkris@example.net', '1-354-306-3936', '2017-09-16', 'enim', 'm', '0', '2020-07-16 08:40:40', '8df6c7ebfad02480303f6ceb5d3a4b1ad4baddb7');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('95', 'Freeda', 'Romaguera', 'xschowalter@example.net', '01062894836', '1984-04-27', 'et', 'm', '2', '1983-10-23 16:35:44', '74ed59128e1d1f125e249ec5bc5df745367e1547');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('96', 'Stella', 'Von', 'kbeahan@example.org', '747-990-2505x600', '2018-04-09', 'sint', 'f', '7', '2001-05-20 15:34:43', '6329d716f5e4c62faa7532a70d503ef0c5e7aed1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('97', 'Emmett', 'Hessel', 'khane@example.com', '182-506-4226', '1982-01-24', 'adipisci', 'm', '9', '1996-08-16 13:19:13', '92db4227d5671d643c55e6d5b73da7c35ae3d211');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('98', 'Gabriella', 'Corwin', 'bosco.quentin@example.org', '1-140-015-8494x0881', '1974-09-26', 'hic', 'm', '1', '1972-06-20 06:53:38', '3797cbbf889354b4bff23193705ca9b612186155');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('99', 'Rossie', 'Yundt', 'kovacek.ned@example.org', '634.073.1270x2109', '2007-03-06', 'repudiandae', 'f', '1', '1989-10-12 15:28:05', 'fc8d8277da82189c4b89ed790fc56931213f2e69');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('100', 'Princess', 'Mosciski', 'annamarie43@example.org', '1-966-753-9155x73676', '1970-10-20', 'enim', 'm', '1', '1987-10-20 04:51:54', '68a1dabc7eeb9ce3972be59e9a201d619c94d428');


DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `from_user_id` bigint(20) unsigned NOT NULL,
  `to_user_id` bigint(20) unsigned NOT NULL,
  `message` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT 0,
  `created_at` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `from_user_id` (`from_user_id`),
  KEY `to_user_id` (`to_user_id`),
  CONSTRAINT `messages_ibfk_1` FOREIGN KEY (`from_user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `messages_ibfk_2` FOREIGN KEY (`to_user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `message`, `is_read`, `created_at`) VALUES ('1', '66', '75', 'Consequatur cupiditate impedit accusantium ullam dolorem. Perferendis qui nobis dolorem voluptatibus culpa. Fugiat deserunt et dignissimos odit voluptatem et qui. Fugit cumque voluptate aliquid accusantium ad est commodi.', 0, '2014-03-11 02:29:14');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `message`, `is_read`, `created_at`) VALUES ('2', '31', '27', 'Reprehenderit qui sapiente dolores libero saepe dolorum vero. Et sit explicabo perspiciatis nam sint. Laborum velit officiis dolorem. Veniam distinctio vero odit aut pariatur in debitis.', 0, '1975-09-13 09:46:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `message`, `is_read`, `created_at`) VALUES ('3', '81', '18', 'Sit saepe eos et ab aut consequatur recusandae. Aut molestiae et qui dicta quia a minima corporis.', 0, '1986-06-04 19:13:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `message`, `is_read`, `created_at`) VALUES ('4', '94', '90', 'Dolor est dignissimos sed magni. Dolores porro quasi et et dolorem. Dicta commodi sunt dolor commodi repellendus. Recusandae reiciendis sed ullam omnis non sit dolore et.', 0, '1976-12-21 16:34:48');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `message`, `is_read`, `created_at`) VALUES ('5', '17', '78', 'Possimus placeat accusantium laborum sed id itaque. Ut a quod enim asperiores et minima. Adipisci perferendis accusamus officiis et autem et accusamus placeat. Veritatis eveniet molestias labore qui asperiores magni atque.', 0, '2018-08-18 12:51:12');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `message`, `is_read`, `created_at`) VALUES ('6', '65', '47', 'Molestiae adipisci consequatur fugit voluptas aut officiis ut. Repudiandae nesciunt aut perferendis dolore nam qui quidem. Rem voluptatum qui laborum ab expedita ut sint.', 0, '1981-11-27 22:22:43');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `message`, `is_read`, `created_at`) VALUES ('7', '59', '92', 'Possimus commodi corrupti error expedita. Nam qui ex qui harum voluptate dolores. Voluptatem minus sequi delectus. Magni aliquid distinctio repellendus suscipit.', 1, '1990-05-27 00:26:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `message`, `is_read`, `created_at`) VALUES ('8', '61', '93', 'At quia voluptate dolor dolorem nostrum vel. Error voluptatem quaerat sed vel eos aut magnam. Vel possimus consectetur molestiae in aut.', 0, '2017-03-10 23:00:46');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `message`, `is_read`, `created_at`) VALUES ('9', '27', '59', 'Vel eius consequatur culpa autem. Voluptatem perspiciatis ad eos velit eius ut consequatur. Ipsam et doloremque aut vitae sit consequatur doloremque ut.', 0, '2014-10-01 21:46:01');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `message`, `is_read`, `created_at`) VALUES ('10', '67', '28', 'Consequatur vel neque non sint eius ut voluptate dicta. Blanditiis ipsam ut aut beatae ut cum. Tempora natus ut autem nihil tempora dolores aut doloribus. Sit non neque quod quis occaecati exercitationem laudantium.', 1, '2013-02-23 09:06:49');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `message`, `is_read`, `created_at`) VALUES ('11', '53', '53', 'Doloribus dolor id hic. Aut qui nam officiis fuga repellat laboriosam. Blanditiis sit eum nisi sed.', 0, '2009-08-26 19:02:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `message`, `is_read`, `created_at`) VALUES ('12', '96', '60', 'Et omnis deserunt voluptatum dolor autem sed similique. Et itaque quia tempora voluptatum. Qui officiis aut id eos quisquam voluptas voluptate. Occaecati officia commodi esse et molestiae non aut.', 0, '1999-04-28 16:17:46');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `message`, `is_read`, `created_at`) VALUES ('13', '6', '5', 'Corporis sint voluptate aperiam provident. Voluptatem necessitatibus repudiandae et. Iusto rerum veniam animi voluptas atque. Beatae at perspiciatis eius.', 1, '1983-03-13 06:34:58');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `message`, `is_read`, `created_at`) VALUES ('14', '90', '8', 'Sunt laboriosam dolorum facere. Quibusdam tempora sapiente omnis et quasi deserunt. Deleniti voluptate magnam non ut distinctio possimus. Quo libero quos dicta culpa. Harum repellendus quos voluptatem voluptas dicta corporis.', 0, '2003-07-08 23:26:55');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `message`, `is_read`, `created_at`) VALUES ('15', '79', '19', 'Cupiditate aut voluptas unde placeat. Non possimus molestias dolorem soluta omnis. Cupiditate asperiores quae fugiat doloribus et. Repellendus voluptatem placeat architecto dignissimos autem autem suscipit.', 1, '1991-07-17 07:54:43');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `message`, `is_read`, `created_at`) VALUES ('16', '11', '45', 'Temporibus occaecati vel quod blanditiis earum. Error sint at et quos ex quis. Inventore qui aut nulla recusandae omnis. Est id soluta aut quo molestiae quibusdam quidem.', 1, '2015-05-02 11:03:53');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `message`, `is_read`, `created_at`) VALUES ('17', '93', '42', 'Voluptates omnis suscipit est magni totam eveniet architecto. Laborum nam voluptatem non facilis sit autem eaque. Molestias inventore rem quia eaque aut. Consectetur et voluptatum perferendis minima distinctio.', 1, '1981-03-11 18:45:53');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `message`, `is_read`, `created_at`) VALUES ('18', '71', '73', 'Sunt aperiam quas eaque magnam expedita sunt quis. Laboriosam voluptates aut omnis sed delectus nihil. Voluptatum ad veritatis sequi sed repellat sed.', 0, '2003-02-13 09:29:49');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `message`, `is_read`, `created_at`) VALUES ('19', '59', '65', 'Asperiores est molestiae illo explicabo enim est. Mollitia laborum nihil unde cum ut occaecati reprehenderit eligendi.', 0, '2003-07-02 00:30:51');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `message`, `is_read`, `created_at`) VALUES ('20', '62', '75', 'Provident et aperiam cumque placeat. Rerum modi est eos nihil consequatur. Alias impedit doloribus vel voluptate nobis culpa id. Rerum numquam expedita aspernatur qui dolorem. Ad non ratione nesciunt eius.', 1, '2013-09-10 19:47:01');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `message`, `is_read`, `created_at`) VALUES ('21', '43', '27', 'Sapiente natus occaecati cum eaque incidunt quos. Cumque aliquam reprehenderit sunt quaerat omnis sunt hic officiis. Libero consectetur et eum voluptas necessitatibus.', 1, '1997-02-08 22:07:55');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `message`, `is_read`, `created_at`) VALUES ('22', '22', '1', 'Harum quo ea qui quos ut quia nihil et. Ut sed ratione voluptate voluptas. Consequatur enim ipsum ea dolorem laborum.', 0, '2010-02-20 19:55:43');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `message`, `is_read`, `created_at`) VALUES ('23', '18', '82', 'Doloribus ea animi sit tempore fugit. Dolores soluta beatae hic similique. Provident ratione aliquam est et.', 0, '1993-12-16 08:15:42');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `message`, `is_read`, `created_at`) VALUES ('24', '93', '45', 'Officiis qui repudiandae et praesentium iusto similique dolores. Dolorem assumenda doloremque perspiciatis possimus quis molestiae. Et nam eum nostrum sapiente. Ipsum blanditiis et earum mollitia amet velit.', 0, '2018-08-10 03:52:10');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `message`, `is_read`, `created_at`) VALUES ('25', '40', '60', 'Magnam aut ex debitis. Alias officiis alias autem facere quis. Atque est delectus quo fuga neque sunt. Dolorem officiis et ad fuga odio repudiandae.', 0, '1983-02-06 02:44:43');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `message`, `is_read`, `created_at`) VALUES ('26', '72', '92', 'Omnis qui et sit harum laboriosam accusantium. Expedita dolorum delectus veritatis atque sequi dolorem. Reiciendis sunt impedit officia quisquam temporibus voluptates.', 1, '1988-03-24 03:31:28');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `message`, `is_read`, `created_at`) VALUES ('27', '12', '68', 'Beatae adipisci soluta quidem rerum. Voluptatem sunt omnis non molestias dolorum qui quia.', 0, '1972-08-23 18:22:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `message`, `is_read`, `created_at`) VALUES ('28', '52', '18', 'Enim voluptatem minus rem deleniti sunt quia voluptas. Voluptas et quia officiis rerum iure id. Est et ut qui aut iste quis quo.', 1, '2002-07-15 11:46:51');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `message`, `is_read`, `created_at`) VALUES ('29', '73', '42', 'Aut aut sit occaecati repellendus. Est omnis et enim vel repudiandae aut. Id molestiae sed doloribus inventore sequi ullam in. Veritatis praesentium nesciunt et sed ratione facilis.', 1, '1981-11-21 23:07:32');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `message`, `is_read`, `created_at`) VALUES ('30', '25', '52', 'Natus et ut fugit provident et temporibus. Exercitationem non fugiat cumque et quia doloremque. Sit perferendis consectetur aliquam hic fugit. Quidem facere optio assumenda libero dolorem voluptatem.', 1, '1973-07-03 23:03:17');


DROP TABLE IF EXISTS `friend_requests`;

CREATE TABLE `friend_requests` (
  `initiator_user_id` bigint(20) unsigned NOT NULL,
  `target_user_id` bigint(20) unsigned NOT NULL,
  `status` enum('requested','approved','unfriended','declined') COLLATE utf8_unicode_ci DEFAULT NULL,
  `requested_at` datetime DEFAULT current_timestamp(),
  `confirmed_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`initiator_user_id`,`target_user_id`),
  KEY `initiator_user_id` (`initiator_user_id`),
  KEY `target_user_id` (`target_user_id`),
  CONSTRAINT `friend_requests_ibfk_1` FOREIGN KEY (`initiator_user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `friend_requests_ibfk_2` FOREIGN KEY (`target_user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('3', '24', 'unfriended', '1989-09-30 23:19:07', '2000-01-12 23:54:55');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('4', '10', 'requested', '1984-08-10 04:43:14', '1999-11-27 01:32:15');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('4', '79', 'approved', '2020-11-03 19:45:42', '1972-04-20 13:08:30');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('6', '50', 'requested', '2010-06-16 13:06:42', '1996-05-14 21:53:25');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('7', '18', 'requested', '2003-04-10 18:53:46', '1995-09-02 16:23:27');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('18', '75', 'declined', '1975-05-27 03:53:54', '1993-09-25 00:41:28');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('21', '57', 'approved', '2008-04-18 10:46:26', '1976-03-17 09:52:34');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('27', '49', 'unfriended', '2009-02-18 23:13:11', '2000-04-23 20:05:46');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('30', '60', 'approved', '1976-02-14 17:34:03', '2008-08-15 03:15:26');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('38', '74', 'declined', '1981-02-26 15:50:16', '2003-01-04 22:59:19');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('42', '44', 'requested', '1996-03-02 21:09:35', '2000-08-06 11:40:14');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('45', '42', 'unfriended', '2001-06-07 04:12:55', '2014-11-01 00:03:34');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('51', '81', 'requested', '2002-12-26 01:11:48', '1995-03-06 20:39:29');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('54', '37', 'approved', '1998-11-09 03:19:34', '1972-03-18 23:18:47');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('55', '93', 'declined', '1990-09-21 05:24:18', '1998-09-27 01:15:12');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('56', '59', 'declined', '2017-02-12 13:45:34', '1982-06-20 09:12:19');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('56', '100', 'unfriended', '1999-03-13 02:31:21', '2014-03-30 20:35:50');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('57', '70', 'approved', '1973-01-02 21:19:20', '1973-12-31 10:42:00');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('62', '30', 'unfriended', '1984-02-09 13:51:14', '1972-12-16 03:17:36');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('62', '46', 'unfriended', '2018-11-24 09:44:01', '1995-12-19 19:39:46');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('65', '47', 'approved', '2018-07-21 05:17:52', '1991-02-18 07:20:59');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('67', '13', 'requested', '2018-06-07 01:41:53', '1984-12-24 17:15:02');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('69', '38', 'approved', '1989-09-10 13:38:29', '1982-02-24 19:46:49');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('83', '53', 'approved', '1990-03-19 13:45:08', '1975-06-27 12:55:07');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('86', '21', 'requested', '1973-10-08 03:16:31', '2006-04-15 22:07:42');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('86', '92', 'unfriended', '2004-10-30 06:31:37', '1984-02-19 17:12:59');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('92', '30', 'declined', '2016-03-20 07:23:19', '2012-11-10 09:05:07');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('93', '30', 'unfriended', '2017-12-08 18:31:43', '2002-01-16 20:24:17');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('97', '59', 'unfriended', '1999-06-25 23:11:30', '1976-10-20 20:36:13');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('100', '3', 'declined', '1970-04-16 09:55:36', '1990-07-20 21:19:30');


DROP TABLE IF EXISTS `communities`;

CREATE TABLE `communities` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `communities` (`id`, `name`) VALUES ('10', 'amet');
INSERT INTO `communities` (`id`, `name`) VALUES ('3', 'aperiam');
INSERT INTO `communities` (`id`, `name`) VALUES ('16', 'assumenda');
INSERT INTO `communities` (`id`, `name`) VALUES ('17', 'consequatur');
INSERT INTO `communities` (`id`, `name`) VALUES ('6', 'dignissimos');
INSERT INTO `communities` (`id`, `name`) VALUES ('12', 'est');
INSERT INTO `communities` (`id`, `name`) VALUES ('25', 'et');
INSERT INTO `communities` (`id`, `name`) VALUES ('29', 'et');
INSERT INTO `communities` (`id`, `name`) VALUES ('13', 'ex');
INSERT INTO `communities` (`id`, `name`) VALUES ('7', 'hic');
INSERT INTO `communities` (`id`, `name`) VALUES ('28', 'in');
INSERT INTO `communities` (`id`, `name`) VALUES ('14', 'minus');
INSERT INTO `communities` (`id`, `name`) VALUES ('30', 'necessitatibus');
INSERT INTO `communities` (`id`, `name`) VALUES ('26', 'nihil');
INSERT INTO `communities` (`id`, `name`) VALUES ('27', 'nihil');
INSERT INTO `communities` (`id`, `name`) VALUES ('19', 'perspiciatis');
INSERT INTO `communities` (`id`, `name`) VALUES ('8', 'possimus');
INSERT INTO `communities` (`id`, `name`) VALUES ('22', 'quam');
INSERT INTO `communities` (`id`, `name`) VALUES ('4', 'quia');
INSERT INTO `communities` (`id`, `name`) VALUES ('15', 'quia');
INSERT INTO `communities` (`id`, `name`) VALUES ('23', 'quia');
INSERT INTO `communities` (`id`, `name`) VALUES ('18', 'quisquam');
INSERT INTO `communities` (`id`, `name`) VALUES ('21', 'quo');
INSERT INTO `communities` (`id`, `name`) VALUES ('5', 'reiciendis');
INSERT INTO `communities` (`id`, `name`) VALUES ('2', 'repellat');
INSERT INTO `communities` (`id`, `name`) VALUES ('9', 'rerum');
INSERT INTO `communities` (`id`, `name`) VALUES ('20', 'similique');
INSERT INTO `communities` (`id`, `name`) VALUES ('1', 'sit');
INSERT INTO `communities` (`id`, `name`) VALUES ('24', 'tempore');
INSERT INTO `communities` (`id`, `name`) VALUES ('11', 'veritatis');


DROP TABLE IF EXISTS `users_communities`;

CREATE TABLE `users_communities` (
  `user_id` bigint(20) unsigned NOT NULL,
  `community_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`community_id`),
  KEY `community_id` (`community_id`),
  CONSTRAINT `users_communities_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `users_communities_ibfk_2` FOREIGN KEY (`community_id`) REFERENCES `communities` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('1', '7');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('1', '15');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('2', '22');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('2', '23');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('2', '30');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('3', '27');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('6', '24');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('7', '7');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('8', '16');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('9', '24');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('11', '29');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('15', '18');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('16', '3');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('17', '24');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('19', '5');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('19', '19');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('19', '30');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('20', '21');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('22', '18');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('24', '26');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('26', '20');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('26', '24');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('29', '9');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('29', '19');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('29', '25');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('30', '1');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('30', '24');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('31', '13');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('31', '24');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('33', '3');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('33', '22');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('33', '25');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('34', '17');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('35', '16');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('36', '21');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('36', '24');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('36', '26');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('39', '14');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('39', '16');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('39', '18');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('39', '19');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('40', '8');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('40', '9');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('40', '16');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('42', '19');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('42', '22');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('43', '3');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('44', '17');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('44', '25');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('45', '5');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('47', '17');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('48', '5');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('48', '6');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('48', '10');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('49', '17');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('49', '24');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('50', '1');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('50', '12');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('52', '17');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('54', '2');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('56', '28');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('59', '8');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('60', '28');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('64', '13');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('64', '27');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('65', '24');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('66', '13');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('68', '1');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('68', '18');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('68', '20');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('69', '17');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('70', '21');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('70', '25');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('73', '2');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('76', '21');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('77', '6');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('77', '8');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('77', '9');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('77', '10');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('80', '16');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('80', '30');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('81', '21');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('81', '25');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('85', '2');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('85', '13');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('86', '25');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('88', '25');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('90', '21');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('91', '4');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('92', '12');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('92', '26');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('93', '28');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('94', '8');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('94', '19');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('96', '17');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('97', '12');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('98', '13');


DROP TABLE IF EXISTS `posts`;

CREATE TABLE `posts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `post` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('1', '53', 'Molestias est ratione natus sit quod.', '1981-11-30 02:55:16', '1976-10-17 19:53:40');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('2', '49', 'Consequatur a veritatis doloribus omnis quam dolor.', '1992-11-09 18:24:51', '2001-06-20 06:30:05');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('3', '27', 'Nemo ex suscipit minus expedita.', '2014-06-24 00:57:09', '2007-07-14 10:21:24');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('4', '84', 'Assumenda molestiae dolor natus aut est quo dolor.', '1974-04-15 08:10:50', '1991-11-20 03:27:09');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('5', '66', 'Ipsum nisi dolore aliquid ea optio asperiores necessitatibus consectetur.', '2019-05-12 22:53:46', '1984-08-02 16:16:33');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('6', '11', 'Aliquam quia provident officia est nobis iure quo.', '2008-05-06 14:09:23', '2020-06-29 07:34:19');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('7', '70', 'Nulla ut maxime alias.', '2008-09-26 04:31:55', '1985-08-19 02:32:30');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('8', '36', 'Debitis asperiores pariatur enim optio aut.', '1976-03-19 06:31:20', '1989-08-26 12:52:45');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('9', '94', 'Quibusdam nulla perferendis officiis quibusdam qui et.', '1996-09-18 17:15:09', '1999-04-03 19:57:16');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('10', '38', 'Et ut pariatur dolor pariatur est.', '1999-02-09 06:58:38', '1971-05-11 21:28:21');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('11', '87', 'Rerum voluptas consequatur minus cum voluptas assumenda deserunt.', '1984-10-16 06:12:07', '2009-10-07 09:30:37');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('12', '39', 'Id ut dolores temporibus et et nobis sed eius.', '2011-07-03 22:58:12', '2012-09-30 04:14:03');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('13', '100', 'Sit quibusdam nam molestiae dolor.', '1979-04-23 06:54:13', '2004-06-30 23:28:42');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('14', '47', 'Odio voluptas quo laudantium ut rem fugiat.', '2017-02-10 18:30:40', '2012-06-14 01:31:04');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('15', '38', 'Ex nemo maiores sunt in consequatur sed aliquam.', '2006-02-05 14:35:14', '2016-10-13 17:06:16');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('16', '98', 'Quam qui quam molestiae.', '2017-09-22 14:09:45', '1991-07-01 08:08:51');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('17', '22', 'Non et fugit est quia.', '2014-08-24 14:43:27', '1996-06-30 17:37:20');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('18', '82', 'Illo molestiae nihil repellat praesentium.', '1978-06-03 07:07:46', '2012-08-06 04:41:28');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('19', '89', 'Voluptas facilis dolor maxime quia doloribus adipisci qui.', '2005-11-25 10:13:41', '2006-10-26 01:16:19');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('20', '95', 'In error corporis sit sunt et esse dolor autem.', '1987-04-27 18:54:01', '2007-01-19 07:37:43');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('21', '1', 'Sed sed facere est repudiandae suscipit vel.', '1992-10-18 17:29:21', '1985-08-18 23:18:43');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('22', '32', 'Inventore sapiente sed minus commodi nostrum.', '1998-08-14 10:27:03', '2011-08-21 18:33:36');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('23', '32', 'Soluta doloremque quia ipsum ipsam totam.', '2016-03-28 12:26:09', '1989-05-13 19:08:18');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('24', '79', 'Adipisci quas nostrum voluptas maxime molestiae totam.', '1991-08-10 03:57:32', '1994-02-20 10:33:13');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('25', '73', 'Sed accusamus quisquam accusantium occaecati.', '1970-04-01 20:26:50', '1997-11-28 19:28:22');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('26', '38', 'Aliquid ad ut autem doloremque omnis odio.', '2001-08-16 06:44:05', '1972-09-05 11:10:23');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('27', '96', 'Tempora rem voluptatem voluptas sed.', '2017-01-22 01:58:10', '2000-10-12 09:53:23');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('28', '68', 'Perspiciatis a iure sequi ullam adipisci molestiae facilis.', '1987-09-19 21:53:18', '2001-04-16 20:29:18');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('29', '31', 'Ducimus quam ut aperiam incidunt autem voluptas optio eum.', '1993-03-22 19:36:42', '2006-02-18 23:17:06');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('30', '5', 'Reiciendis nisi id et similique delectus ut repudiandae.', '1979-07-14 04:15:46', '1984-04-28 12:59:12');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('31', '20', 'Illo optio consequatur ut inventore consectetur quod quam.', '2016-12-09 06:06:32', '2014-12-27 13:53:16');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('32', '83', 'Numquam amet perferendis earum cupiditate inventore.', '1978-03-10 03:42:10', '2000-04-13 23:02:06');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('33', '53', 'Iusto quisquam vel suscipit.', '1976-12-23 12:20:02', '2006-08-03 21:40:32');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('34', '47', 'Omnis eius magnam molestiae aut nesciunt officiis.', '2019-07-09 02:35:54', '2008-12-22 01:00:23');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('35', '67', 'Non non deleniti sit consequatur iure quia molestiae.', '1993-03-17 06:12:41', '2003-01-20 04:37:57');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('36', '19', 'Rerum nihil et eligendi voluptate voluptatum blanditiis qui.', '1989-02-28 11:31:58', '2011-02-28 17:57:35');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('37', '58', 'Mollitia et delectus dolor laborum est molestiae quo.', '1981-07-18 19:48:03', '1985-08-01 11:21:48');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('38', '37', 'Voluptate asperiores tempora voluptatibus at eligendi deleniti doloribus.', '2001-11-19 02:40:55', '1981-12-20 02:15:39');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('39', '55', 'Vitae nobis velit dolorem ut dicta ea aliquid beatae.', '1996-01-14 01:57:31', '2017-12-04 23:10:41');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('40', '51', 'Natus maiores molestiae voluptas temporibus.', '1986-07-27 01:13:53', '2018-01-27 01:35:23');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('41', '74', 'Cumque omnis ad porro sint eum vitae omnis.', '2018-06-07 04:34:11', '1976-12-07 11:59:45');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('42', '41', 'Magnam libero ea nobis quia enim ut sed deserunt.', '2014-10-18 21:46:01', '2011-03-19 20:54:42');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('43', '90', 'Possimus tempore amet dolorem nulla excepturi.', '2002-03-26 17:18:07', '1997-08-23 22:09:42');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('44', '74', 'Eos doloremque expedita cumque magni dolor ipsum.', '1979-09-25 17:42:15', '1973-11-18 21:50:35');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('45', '88', 'Dolor incidunt quod quos.', '2007-04-21 09:57:32', '1979-12-03 22:51:26');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('46', '27', 'Cumque alias magnam nulla aut laudantium animi porro.', '1978-02-27 12:40:05', '2000-08-06 16:18:48');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('47', '71', 'A nulla praesentium vel vel ducimus.', '1998-02-05 02:08:25', '1991-01-23 02:36:52');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('48', '9', 'Culpa dolor tenetur ipsam iusto ratione repellendus blanditiis sequi.', '2005-11-15 19:01:54', '1999-07-15 19:11:33');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('49', '9', 'Officiis sit et aliquid eum.', '1979-12-08 11:24:18', '2006-07-23 06:04:01');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('50', '60', 'Sit tempore ipsam dolores neque reprehenderit.', '1975-03-24 02:52:50', '1988-08-17 19:33:50');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('51', '3', 'Dolores rem beatae voluptatem est reprehenderit.', '1996-06-14 17:04:14', '2008-10-31 06:08:52');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('52', '9', 'Tenetur est et quidem non hic quia asperiores tempora.', '2004-04-26 01:28:12', '1994-07-18 01:35:48');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('53', '91', 'Officiis enim ut sit.', '1987-05-27 09:34:23', '2013-11-23 11:33:34');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('54', '35', 'Qui eveniet qui et consequuntur dolorem rerum qui.', '1995-02-15 16:52:21', '2019-01-19 15:22:30');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('55', '88', 'Dolor tempore maxime placeat est voluptatem dolore officiis ratione.', '1971-09-02 04:26:42', '2001-01-20 09:46:53');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('56', '64', 'Earum qui ipsam quis ut.', '1986-04-27 07:35:46', '1981-05-10 05:33:14');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('57', '72', 'Deserunt dolorum repellat dolore ut eos sunt.', '2011-01-02 07:15:18', '2011-09-24 12:53:05');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('58', '83', 'Est vel doloribus cum suscipit.', '1980-07-09 00:44:35', '2009-07-17 00:38:32');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('59', '32', 'Ea reiciendis autem voluptas nam quidem occaecati.', '2012-12-21 16:06:51', '2000-04-10 04:44:27');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('60', '3', 'Nesciunt praesentium et velit molestias fugit.', '2003-07-08 01:59:53', '1995-12-15 00:04:34');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('61', '88', 'Voluptas provident adipisci ut esse similique.', '1981-11-27 00:49:00', '1980-03-25 20:57:01');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('62', '51', 'Corrupti veritatis earum id blanditiis id quos qui.', '1972-05-31 04:07:52', '1979-09-09 06:41:31');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('63', '85', 'Unde qui ducimus est odio nostrum.', '1977-01-01 13:28:44', '2006-12-05 13:00:24');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('64', '41', 'Consequatur enim corrupti dolorum dolor debitis magni quas.', '1992-11-22 23:57:29', '1984-12-21 14:52:29');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('65', '97', 'Sit cumque quae ut.', '1978-08-28 20:53:20', '1987-01-26 23:53:16');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('66', '52', 'Excepturi molestiae dolorum quia aspernatur dolorem.', '1989-01-07 03:32:33', '1975-11-20 16:29:06');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('67', '60', 'Asperiores quae occaecati totam magni.', '2010-02-15 00:05:38', '1974-11-11 18:12:09');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('68', '55', 'Minima distinctio illum quod ut.', '2020-03-13 16:15:05', '2011-08-16 04:41:04');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('69', '88', 'Quo illum et fugit optio nemo ut ut ea.', '2016-05-08 04:36:14', '1994-04-04 18:48:14');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('70', '14', 'Illo est eos animi est non omnis delectus aliquam.', '1985-01-24 08:54:12', '1990-05-01 13:27:43');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('71', '5', 'Explicabo consequuntur ullam praesentium omnis quam.', '1997-09-01 02:07:06', '2000-11-04 11:11:06');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('72', '62', 'Perspiciatis expedita earum eius omnis maiores.', '1988-06-11 17:38:34', '1983-04-21 22:34:26');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('73', '55', 'Nostrum fugiat iure soluta et.', '2008-04-12 21:55:37', '1976-03-09 02:47:38');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('74', '95', 'Deleniti odio ut repellat dicta similique suscipit eaque.', '1981-07-01 13:00:16', '2019-10-01 17:02:43');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('75', '35', 'Dolores et necessitatibus hic et.', '1999-03-06 10:33:50', '1982-07-13 12:30:29');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('76', '42', 'Ad ab laudantium non laudantium quisquam distinctio atque.', '1979-04-11 06:40:38', '1988-10-30 19:18:07');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('77', '22', 'Temporibus nostrum repudiandae sed repudiandae.', '1975-05-16 02:41:04', '2008-11-03 02:38:44');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('78', '6', 'Et vitae reiciendis vitae vel numquam omnis.', '1977-04-27 12:24:54', '2005-12-27 15:35:55');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('79', '50', 'Inventore consequatur et itaque sunt aliquid.', '1999-06-18 12:33:30', '2007-08-04 05:54:58');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('80', '30', 'Minima pariatur ex quae maxime velit.', '2006-01-07 20:57:04', '1995-02-01 01:38:57');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('81', '65', 'Voluptatibus sed distinctio rem ex qui earum et voluptas.', '2002-03-04 06:17:53', '2011-11-21 14:27:03');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('82', '53', 'Deleniti libero voluptas eos voluptates ut facilis.', '2012-03-16 03:59:12', '2010-12-16 10:28:40');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('83', '39', 'Ut optio ut nulla aut ea sit.', '2002-05-03 10:30:44', '1975-10-22 10:36:03');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('84', '56', 'Ullam nihil ut est vel necessitatibus et.', '1987-08-04 16:24:31', '2012-10-16 00:02:01');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('85', '87', 'Sint enim non aut quia in.', '2005-06-05 06:06:36', '1983-02-10 19:54:14');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('86', '26', 'Sit eos molestias vitae quod.', '2007-08-16 11:29:00', '2007-09-15 08:43:46');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('87', '20', 'Aliquid ea sint nesciunt dolorem.', '2018-02-24 06:35:05', '1971-01-25 20:10:26');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('88', '59', 'Necessitatibus in sint molestias dicta consequatur.', '2003-02-22 06:42:15', '2010-03-12 20:28:45');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('89', '9', 'In natus consequatur sed ea enim quasi.', '1977-01-18 07:35:26', '1985-10-23 19:28:53');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('90', '51', 'Autem omnis ut voluptates debitis aliquam.', '2008-11-02 15:27:59', '1991-12-21 19:39:48');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('91', '61', 'Ea ut molestiae magnam aliquid iste eos eum enim.', '1975-03-18 18:03:58', '2005-01-14 13:02:53');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('92', '96', 'In ab animi et omnis porro ut voluptatem.', '1970-10-27 08:17:16', '2014-05-20 02:22:35');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('93', '2', 'Alias quas quasi cumque consequatur.', '1984-07-11 04:54:35', '2018-02-27 08:24:41');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('94', '45', 'Mollitia est ut sed quia.', '1974-05-29 19:34:41', '2000-05-29 22:16:33');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('95', '36', 'Illo quia debitis non soluta.', '2018-12-30 09:55:32', '2019-02-14 00:04:54');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('96', '98', 'Pariatur quo provident sunt voluptatem nisi quia corporis.', '1980-02-10 10:50:31', '2017-03-14 09:45:21');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('97', '97', 'Itaque labore non dolore necessitatibus quaerat quisquam accusantium.', '2012-03-21 13:56:57', '1985-12-01 18:25:06');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('98', '95', 'Voluptas et accusamus ut qui dicta.', '2019-01-17 18:35:33', '2009-06-24 01:53:35');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('99', '53', 'Soluta dolorum corrupti iste voluptatem quibusdam.', '2009-07-25 00:01:03', '2001-07-30 12:22:47');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('100', '84', 'Veniam ex id officia aut.', '2010-03-04 03:13:42', '1978-03-06 02:03:59');



DROP TABLE IF EXISTS `comments`;

CREATE TABLE `comments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `post_id` bigint(20) unsigned NOT NULL,
  `comment` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `post_id` (`post_id`),
  CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('1', '61', '50', 'Eos et beatae dignissimos dolor commodi sit reiciendis.', '1998-12-31 12:53:24', '1989-07-12 04:14:21');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('2', '2', '86', 'Aut id a eius qui.', '1993-02-02 15:15:52', '1999-04-09 20:19:37');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('3', '21', '44', 'Fugit rerum non aut est nostrum vel corrupti.', '1990-01-05 05:44:56', '1970-08-23 20:47:49');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('4', '36', '11', 'Et necessitatibus totam cum voluptas rerum.', '2016-04-02 10:16:39', '1981-11-13 22:27:15');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('5', '38', '96', 'Dolorum aliquam aliquam rem accusantium.', '1973-01-14 07:49:19', '1990-08-24 01:36:26');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('6', '93', '4', 'Odit qui saepe molestiae consequuntur.', '1977-10-08 18:49:52', '1995-01-07 23:42:15');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('7', '46', '88', 'Autem consequatur commodi animi expedita ex.', '1984-12-27 09:06:58', '1989-10-13 07:19:57');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('8', '60', '13', 'Dolorem minus molestiae nihil.', '2013-07-31 20:20:15', '2006-04-21 12:59:50');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('9', '62', '9', 'Debitis voluptates quibusdam incidunt illum.', '1974-05-18 17:04:05', '1976-03-03 13:18:43');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('10', '3', '2', 'Hic velit suscipit est nihil.', '2013-06-01 22:37:21', '1987-11-12 19:24:08');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('11', '43', '12', 'Consectetur veritatis non aut nihil dignissimos sapiente officia.', '2008-02-28 11:59:32', '1979-05-30 13:24:24');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('12', '83', '64', 'Dignissimos et aut necessitatibus.', '1991-03-03 05:14:34', '2011-06-18 15:02:37');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('13', '35', '93', 'Eos sequi ut est dignissimos molestiae.', '1998-06-04 21:19:42', '1980-06-08 16:54:19');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('14', '95', '84', 'Corrupti aliquid qui voluptatem quia officia autem voluptatem.', '2018-07-23 17:59:46', '1977-05-20 07:56:54');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('15', '5', '56', 'Quisquam id impedit reprehenderit eligendi quo.', '1985-11-15 01:46:24', '1978-06-08 06:51:03');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('16', '75', '66', 'Debitis nihil in reiciendis.', '2008-09-07 05:00:25', '1992-11-10 09:22:11');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('17', '6', '77', 'Deleniti aut rerum est nam.', '2008-12-12 04:09:05', '1999-08-09 21:41:15');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('18', '51', '27', 'Maiores aliquam cum est est.', '1993-04-24 01:44:49', '1982-02-11 15:32:44');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('19', '20', '87', 'Sunt ratione impedit sit quisquam maxime facilis libero nemo.', '2008-09-07 00:46:13', '1991-10-30 01:57:16');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('20', '37', '58', 'Inventore minus officiis et soluta enim.', '1970-05-04 02:41:22', '2007-06-30 17:23:41');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('21', '82', '29', 'Nobis et qui eos ullam quos rerum rerum.', '2009-03-12 11:48:35', '2005-11-06 13:56:22');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('22', '62', '27', 'Maiores et aliquid earum ea vel enim et omnis.', '1988-09-25 11:28:10', '1991-01-06 18:37:54');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('23', '16', '21', 'Enim eos facere sit fugiat iusto nihil.', '1991-10-22 21:53:31', '2019-05-09 00:24:05');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('24', '40', '78', 'Repudiandae omnis error voluptas repudiandae voluptates facere.', '1976-04-29 18:49:54', '1990-02-20 17:45:43');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('25', '30', '42', 'Voluptas est excepturi inventore in perferendis sint.', '1974-09-07 10:13:48', '1983-02-21 18:38:01');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('26', '80', '73', 'Eum suscipit maiores expedita deleniti est non sequi.', '1987-02-02 06:35:08', '1990-07-25 05:42:48');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('27', '54', '63', 'Architecto culpa et nisi soluta.', '1996-10-31 11:52:50', '2012-12-30 19:36:25');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('28', '36', '88', 'Quidem molestiae aliquam deserunt ex.', '1988-04-30 08:04:31', '1986-03-08 10:10:18');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('29', '55', '30', 'Eaque blanditiis esse eos beatae consectetur.', '2019-05-21 08:19:17', '1989-08-18 19:14:11');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('30', '71', '59', 'Id non quod unde aut voluptatem deleniti qui.', '1992-04-05 18:30:15', '1994-03-24 04:48:48');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('31', '86', '46', 'Error esse cupiditate mollitia quaerat beatae autem repudiandae.', '2005-10-21 13:22:17', '1984-03-17 21:13:41');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('32', '24', '92', 'Molestiae aperiam esse sed numquam quidem soluta.', '1990-03-11 11:56:16', '2015-04-04 20:20:19');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('33', '23', '75', 'Odit molestiae quae porro qui libero et sit.', '1970-02-23 18:56:41', '1997-02-12 00:45:17');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('34', '18', '42', 'Nulla eum ea dolor.', '2014-05-26 02:06:25', '1988-06-02 06:33:14');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('35', '62', '54', 'Dolorem et et tempora.', '2000-04-16 12:20:10', '1979-03-12 04:36:53');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('36', '100', '44', 'Cupiditate soluta et ex sint est ea.', '1989-03-12 20:40:21', '2003-11-29 09:15:17');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('37', '83', '61', 'Molestiae quas nisi fugit earum soluta.', '2013-04-06 00:44:34', '1973-05-01 22:05:09');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('38', '70', '99', 'Id voluptas quasi nesciunt in tempora quam repellat voluptas.', '2020-07-25 09:29:02', '2007-11-13 14:52:59');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('39', '82', '10', 'Veniam ut ullam quo aspernatur perferendis.', '2015-07-07 21:33:00', '1999-01-24 21:11:51');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('40', '76', '12', 'Error possimus occaecati debitis sit natus debitis.', '1983-05-19 06:35:08', '1999-10-25 12:53:11');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('41', '51', '55', 'Expedita aut eum ut ut.', '2010-10-27 22:04:46', '2014-06-05 12:58:09');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('42', '84', '4', 'Aut inventore rerum laborum aliquam aliquam enim aut.', '1996-03-23 13:50:45', '1978-05-07 04:12:00');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('43', '18', '20', 'Magnam qui porro fugiat sapiente est minus ipsam.', '2016-06-29 21:06:50', '1983-03-09 23:10:09');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('44', '91', '72', 'Excepturi et et labore et quia.', '1971-10-05 19:58:52', '1979-09-14 07:08:25');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('45', '50', '62', 'Eos error ea nisi optio.', '2005-04-08 08:09:11', '2012-11-20 14:14:03');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('46', '31', '36', 'Consequuntur ipsum temporibus possimus et cum sed expedita.', '1977-10-28 22:34:22', '1974-09-13 18:18:22');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('47', '8', '55', 'Debitis velit odit eum.', '2009-07-17 10:35:39', '2018-10-22 09:25:53');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('48', '27', '30', 'Et corporis amet suscipit accusantium sint asperiores.', '1986-09-09 04:54:01', '2014-04-24 07:35:25');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('49', '30', '45', 'Quis beatae perferendis et et.', '1973-08-06 11:58:02', '2001-10-26 20:54:54');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('50', '72', '91', 'Quia alias harum voluptates possimus.', '1983-06-25 14:54:40', '2007-10-20 06:14:41');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('51', '99', '71', 'Libero autem sed quos incidunt laborum.', '2005-07-05 20:51:36', '2014-01-09 04:31:26');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('52', '34', '81', 'Voluptatum illum consequatur omnis voluptas.', '1975-03-03 11:27:44', '1982-08-27 10:10:04');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('53', '32', '4', 'Corrupti itaque dolores error.', '1994-06-29 12:04:46', '2010-07-24 07:00:37');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('54', '80', '14', 'Natus eum neque minima omnis.', '2011-04-15 00:21:36', '1981-03-18 06:32:04');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('55', '13', '56', 'Dolores molestiae fuga expedita nemo harum deserunt nostrum aut.', '1972-12-17 12:42:08', '2007-09-08 22:01:10');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('56', '25', '64', 'Magni enim vitae quas quae similique.', '1974-06-20 07:56:21', '1987-12-18 03:22:35');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('57', '11', '9', 'Sed adipisci velit et.', '2016-05-11 12:02:26', '2020-04-26 04:15:24');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('58', '67', '28', 'Eligendi at ut ducimus asperiores.', '2013-09-19 06:53:26', '1977-12-08 14:35:54');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('59', '29', '58', 'Culpa eligendi odit alias illum.', '1977-04-01 08:03:09', '1986-01-19 10:26:25');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('60', '99', '79', 'Quia necessitatibus aut qui id.', '2018-09-11 03:14:21', '1978-07-08 22:55:57');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('61', '20', '30', 'Iusto tempore fuga exercitationem eaque ad dolores fugit.', '1981-05-07 08:30:34', '1993-01-15 00:15:17');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('62', '14', '27', 'Dolorum nobis ducimus velit occaecati est nisi.', '1970-06-07 16:22:08', '2018-02-05 20:37:27');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('63', '84', '41', 'Eveniet beatae dolorem odit veniam dolores repellendus dolor.', '2012-06-21 06:28:34', '2009-09-28 12:35:33');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('64', '56', '13', 'Vel quis eveniet beatae.', '2005-11-12 12:28:08', '1990-04-20 04:30:09');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('65', '85', '27', 'Qui laudantium deserunt molestiae.', '2013-04-03 04:22:02', '1995-05-09 04:16:20');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('66', '3', '83', 'Aut ullam suscipit sequi deleniti magnam.', '1978-11-19 02:08:02', '2015-12-09 11:07:41');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('67', '98', '37', 'Ut nostrum id itaque iste.', '1994-11-29 08:16:30', '2002-06-13 11:31:46');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('68', '64', '29', 'Facilis modi quo unde et error delectus.', '2006-05-07 20:07:41', '1989-11-15 06:41:18');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('69', '40', '44', 'Voluptas cupiditate itaque quia odio deleniti est.', '1990-09-18 14:29:21', '1970-11-27 09:30:28');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('70', '42', '53', 'Aut dolor ullam temporibus et temporibus tempore explicabo.', '1994-06-22 03:38:09', '1984-09-19 05:15:36');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('71', '99', '67', 'Eum non velit est.', '1991-08-06 05:03:04', '2007-02-09 00:38:33');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('72', '16', '10', 'Eligendi sint eveniet cumque quasi est fuga sit.', '2017-11-24 21:15:01', '1993-08-01 06:21:51');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('73', '76', '82', 'Omnis sit eveniet alias et et qui dicta non.', '1996-09-17 00:34:09', '1990-11-19 06:51:51');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('74', '37', '5', 'Quia sunt sunt aut suscipit est velit deleniti.', '1993-11-11 17:17:02', '1996-04-13 18:57:10');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('75', '40', '36', 'Sapiente ipsa et consequatur ipsam.', '2019-08-04 22:18:10', '1980-07-11 16:29:33');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('76', '83', '59', 'Quo est dolor dolore inventore ut.', '1996-01-20 10:12:23', '1978-02-22 14:45:49');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('77', '65', '96', 'Aut neque quisquam praesentium in quasi quidem molestiae.', '2007-08-14 23:19:18', '1993-11-19 02:36:16');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('78', '85', '49', 'Enim omnis molestias provident facilis voluptatem quisquam provident.', '2003-05-03 09:33:15', '2017-05-08 06:28:56');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('79', '37', '41', 'Praesentium rerum explicabo dolore cum ut doloremque.', '1974-08-14 14:46:39', '1984-11-04 21:54:47');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('80', '61', '21', 'Fugit velit aliquid et dignissimos eos.', '2005-10-11 06:27:40', '1976-07-17 05:33:20');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('81', '67', '64', 'Sapiente quisquam molestiae vero perspiciatis repudiandae ipsa.', '2005-09-14 21:06:10', '1985-07-24 16:09:06');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('82', '4', '64', 'Enim nihil ut ipsa aut pariatur.', '1990-09-17 17:16:23', '2012-12-07 12:32:11');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('83', '100', '68', 'Qui non inventore esse enim voluptatem minus nesciunt.', '1976-01-03 10:25:26', '1983-03-04 10:08:08');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('84', '93', '40', 'Explicabo ut harum itaque incidunt.', '2008-03-23 16:37:13', '1995-06-17 11:21:10');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('85', '12', '35', 'At eaque illum voluptatibus fuga.', '1981-08-03 08:22:02', '2012-12-29 09:52:27');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('86', '92', '11', 'Tenetur nobis alias facere accusantium unde qui fuga dolorum.', '1987-01-17 12:10:40', '2001-04-02 10:00:21');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('87', '2', '8', 'Necessitatibus nemo soluta sunt odio reprehenderit dicta.', '2019-01-16 22:53:51', '2009-07-02 16:47:24');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('88', '20', '77', 'Vitae ea ut enim sit dolores neque.', '2014-10-23 08:12:58', '2003-01-03 09:27:41');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('89', '90', '57', 'Sed at est voluptatem consectetur totam at occaecati.', '1980-05-05 07:00:47', '1995-01-09 09:06:25');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('90', '81', '29', 'Non quo sed ab doloribus rerum ea aliquam.', '2007-06-04 00:03:01', '1977-06-04 06:19:26');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('91', '92', '64', 'Itaque sed quia consequuntur eum aut sapiente non.', '2008-10-19 04:52:49', '1998-02-06 00:23:29');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('92', '88', '57', 'Perspiciatis ipsa enim rerum et.', '2012-12-29 15:54:57', '1988-01-28 04:10:48');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('93', '60', '73', 'Deleniti sit aut officiis ullam.', '1998-06-02 16:28:46', '1989-06-14 08:30:54');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('94', '5', '96', 'Repellat non rem accusamus.', '1995-03-22 12:07:49', '1985-07-04 15:23:55');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('95', '13', '66', 'Id mollitia et architecto voluptas et aliquam omnis doloribus.', '1999-04-23 20:22:27', '1970-10-15 07:28:35');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('96', '16', '80', 'Labore aut repellat natus.', '2003-08-06 07:46:53', '1970-01-11 12:48:15');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('97', '29', '20', 'Accusantium necessitatibus voluptas quod.', '2010-03-27 09:37:17', '2001-09-19 19:24:24');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('98', '44', '29', 'Est repellat itaque tenetur cumque doloremque nulla quas.', '2005-12-11 10:59:46', '2009-05-10 17:47:03');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('99', '87', '37', 'Et magnam esse nihil occaecati ullam fuga explicabo.', '2000-07-23 17:52:27', '2003-12-01 07:51:44');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('100', '69', '98', 'Unde pariatur recusandae impedit doloribus quaerat aut ipsam.', '2014-02-15 12:05:18', '1997-01-27 14:26:31');


DROP TABLE IF EXISTS `photos`;

CREATE TABLE `photos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `filename` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `photos_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `photos` (`id`, `filename`, `user_id`, `description`, `created_at`) VALUES ('1', 'cumque', '30', 'Temporibus natus ipsum aut qui facere. Possimus excepturi dolorem eligendi ea voluptas ut labore. Velit doloremque mollitia dolor tempore maiores hic et.', '1992-03-27 12:09:38');
INSERT INTO `photos` (`id`, `filename`, `user_id`, `description`, `created_at`) VALUES ('2', 'ut', '65', 'Velit unde deleniti consectetur. Error quisquam est aliquid debitis ut amet. Sunt nihil omnis quos numquam aliquid et. Commodi commodi provident accusamus totam velit et ut et.', '1974-12-25 04:55:01');
INSERT INTO `photos` (`id`, `filename`, `user_id`, `description`, `created_at`) VALUES ('3', 'consequatur', '65', 'Porro aut optio quibusdam eaque illo ab labore. Distinctio quidem labore nam est illum. In odit et voluptatem perspiciatis atque quia.', '1996-06-12 22:56:06');
INSERT INTO `photos` (`id`, `filename`, `user_id`, `description`, `created_at`) VALUES ('4', 'maxime', '92', 'Reiciendis earum officia quibusdam illum qui molestiae ducimus quia. Et adipisci quia vel ducimus rerum. Consequatur qui sint optio accusamus consequuntur ut ullam. Beatae esse dolorum quibusdam aut ea sunt repellendus.', '1976-03-17 21:24:39');
INSERT INTO `photos` (`id`, `filename`, `user_id`, `description`, `created_at`) VALUES ('5', 'voluptas', '30', 'Numquam explicabo animi beatae iste doloribus inventore maiores. Quia nesciunt voluptas mollitia voluptatem est aspernatur cupiditate. Aliquam atque harum velit est corporis doloribus. Nihil quas eius minus dolor animi quia ullam.', '2010-08-25 02:11:31');
INSERT INTO `photos` (`id`, `filename`, `user_id`, `description`, `created_at`) VALUES ('6', 'et', '62', 'Quas nulla perferendis in odio error. Sed natus voluptas enim consequatur blanditiis. Provident velit delectus aut aliquam. Earum molestias adipisci laboriosam exercitationem eos reprehenderit.', '1988-11-01 06:13:20');
INSERT INTO `photos` (`id`, `filename`, `user_id`, `description`, `created_at`) VALUES ('7', 'temporibus', '77', 'Consequuntur asperiores numquam architecto soluta architecto eum rem. Tenetur fugiat tenetur ut a ratione porro quibusdam. Consequatur sed ut molestias. Sed qui commodi animi maxime minima.', '2018-03-18 20:20:50');
INSERT INTO `photos` (`id`, `filename`, `user_id`, `description`, `created_at`) VALUES ('8', 'aliquid', '80', 'Necessitatibus at sit minus odit et. Non distinctio quisquam dignissimos aliquam tenetur. Ipsum eum molestias ratione sint beatae. Amet et error vel repellendus sit.', '1982-04-22 15:18:47');
INSERT INTO `photos` (`id`, `filename`, `user_id`, `description`, `created_at`) VALUES ('9', 'praesentium', '10', 'Illo temporibus autem praesentium dolor. Quia unde vel eum. Nisi quis consequuntur et.', '2005-09-16 11:32:25');
INSERT INTO `photos` (`id`, `filename`, `user_id`, `description`, `created_at`) VALUES ('10', 'voluptates', '24', 'Aspernatur non nobis excepturi repellat commodi doloremque veniam facilis. Aspernatur vero doloribus quaerat modi sequi. Ipsam cupiditate tenetur natus velit. Quod quis voluptatibus blanditiis in soluta alias voluptas.', '1996-12-12 03:22:20');
INSERT INTO `photos` (`id`, `filename`, `user_id`, `description`, `created_at`) VALUES ('11', 'quas', '84', 'Et fugiat aliquam quos laborum in vero harum. In dolores quia inventore sit. Ipsa aut labore quis repellat magni.', '1991-10-14 19:17:35');
INSERT INTO `photos` (`id`, `filename`, `user_id`, `description`, `created_at`) VALUES ('12', 'sed', '27', 'Quia dolor est magnam pariatur id. Possimus ut totam explicabo distinctio qui quibusdam tempora. Laboriosam veniam voluptatem quasi exercitationem est soluta. Et voluptate sunt aut recusandae dolorum id.', '1997-11-29 12:56:28');
INSERT INTO `photos` (`id`, `filename`, `user_id`, `description`, `created_at`) VALUES ('13', 'aspernatur', '55', 'Magnam esse recusandae placeat et rerum porro. Vel aut suscipit voluptatum. Unde et harum architecto at ab.', '1994-11-20 23:39:53');
INSERT INTO `photos` (`id`, `filename`, `user_id`, `description`, `created_at`) VALUES ('14', 'officia', '44', 'Deserunt quasi minima delectus sed accusantium modi aut aliquid. Dolor qui et perferendis excepturi harum minus. Totam placeat rerum hic quo eum. Quod sequi aut ducimus dolore aut.', '2003-03-03 20:14:41');
INSERT INTO `photos` (`id`, `filename`, `user_id`, `description`, `created_at`) VALUES ('15', 'eum', '44', 'Tempore accusamus eligendi id dolor. Voluptates ut qui blanditiis dolor. Molestiae impedit voluptatem dolor et. Nostrum sunt totam eius voluptatem quas minus. Sit minima et quis laboriosam quo vero.', '1996-05-29 17:02:31');
INSERT INTO `photos` (`id`, `filename`, `user_id`, `description`, `created_at`) VALUES ('16', 'praesentium', '56', 'Sint cumque quam rerum maiores praesentium adipisci quia quo. Veniam quo enim et quibusdam eius dicta. Qui optio ducimus labore asperiores consequatur.', '1973-04-27 22:42:11');
INSERT INTO `photos` (`id`, `filename`, `user_id`, `description`, `created_at`) VALUES ('17', 'optio', '67', 'Itaque maxime eum et veniam. Eius in fuga totam quia blanditiis. Dolores voluptatum at omnis molestiae. Eveniet perspiciatis totam ipsa similique nihil.', '1971-08-13 20:51:17');
INSERT INTO `photos` (`id`, `filename`, `user_id`, `description`, `created_at`) VALUES ('18', 'aut', '6', 'Nihil velit sunt quibusdam error. Qui autem sunt enim ut.', '1997-11-19 09:25:04');
INSERT INTO `photos` (`id`, `filename`, `user_id`, `description`, `created_at`) VALUES ('19', 'similique', '46', 'Qui qui corporis provident debitis velit voluptatem et. Consequuntur ut quia debitis reprehenderit velit doloremque. Quia asperiores enim cum voluptate quasi iusto explicabo.', '1975-08-11 08:47:15');
INSERT INTO `photos` (`id`, `filename`, `user_id`, `description`, `created_at`) VALUES ('20', 'aut', '41', 'Odio dicta totam dolorum ducimus facilis beatae eius. Neque voluptatem nihil ullam similique inventore. Veniam commodi deleniti sit pariatur est nemo.', '1985-09-05 21:46:33');
INSERT INTO `photos` (`id`, `filename`, `user_id`, `description`, `created_at`) VALUES ('21', 'nulla', '81', 'Id facilis soluta et expedita et voluptatem vel vitae. Eum fugiat consequatur voluptatem nulla eos dicta.', '2012-10-12 17:29:45');
INSERT INTO `photos` (`id`, `filename`, `user_id`, `description`, `created_at`) VALUES ('22', 'nihil', '75', 'A molestiae dolorum quis rem ducimus tempore. Occaecati assumenda explicabo repellendus. Itaque ut ea similique non corporis voluptatem.', '1976-01-22 21:51:10');
INSERT INTO `photos` (`id`, `filename`, `user_id`, `description`, `created_at`) VALUES ('23', 'ut', '23', 'Officiis sed a velit qui. Ex consectetur vero veritatis vel qui quaerat. Aspernatur nulla iure eos quaerat libero. Laudantium officiis et asperiores.', '2009-01-02 03:57:40');
INSERT INTO `photos` (`id`, `filename`, `user_id`, `description`, `created_at`) VALUES ('24', 'dolor', '90', 'Omnis commodi incidunt non quos. Nisi est et est laboriosam voluptatibus velit earum voluptates. Eum suscipit maiores sapiente iusto quia rerum. Veniam nostrum vero officia reiciendis.', '1976-05-11 12:19:52');
INSERT INTO `photos` (`id`, `filename`, `user_id`, `description`, `created_at`) VALUES ('25', 'ut', '2', 'Dolor aut autem sit nesciunt. Placeat veritatis ut cumque est et ea alias aut.', '2004-12-03 19:22:01');
INSERT INTO `photos` (`id`, `filename`, `user_id`, `description`, `created_at`) VALUES ('26', 'vel', '1', 'Doloribus tempore et praesentium non. Perspiciatis placeat molestiae ducimus et quia consequatur tempore eos. Dicta quam excepturi asperiores. Magnam expedita voluptas molestiae.', '1981-01-30 07:00:55');
INSERT INTO `photos` (`id`, `filename`, `user_id`, `description`, `created_at`) VALUES ('27', 'non', '76', 'Praesentium odio perspiciatis nostrum. Quo ipsam consequatur ipsa ipsam. Architecto sint optio non cumque suscipit. Possimus repudiandae rerum et fugit et.', '1983-05-04 03:30:59');
INSERT INTO `photos` (`id`, `filename`, `user_id`, `description`, `created_at`) VALUES ('28', 'eum', '59', 'Iure corrupti et nihil qui expedita dicta. Non quia doloremque ab voluptatem iusto. Velit eaque provident rem asperiores numquam perspiciatis.', '1999-03-15 20:00:50');
INSERT INTO `photos` (`id`, `filename`, `user_id`, `description`, `created_at`) VALUES ('29', 'molestias', '88', 'Explicabo explicabo nobis numquam quo perspiciatis quo. Ut et consectetur ut aut occaecati minima accusamus. Delectus suscipit amet est corrupti aut. Eaque et quasi aut.', '2005-01-07 22:13:57');
INSERT INTO `photos` (`id`, `filename`, `user_id`, `description`, `created_at`) VALUES ('30', 'molestiae', '60', 'Quo exercitationem ab dicta. Et necessitatibus temporibus ullam tempora. Sit nesciunt illum architecto eveniet et.', '1981-05-14 06:36:20');


DROP TABLE IF EXISTS `likes_photos`;

CREATE TABLE `likes_photos` (
  `id_photo` bigint(20) unsigned NOT NULL,
  `id_user` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id_photo`,`id_user`),
  KEY `id_user` (`id_user`),
  CONSTRAINT `likes_photos_ibfk_1` FOREIGN KEY (`id_photo`) REFERENCES `photos` (`id`),
  CONSTRAINT `likes_photos_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `likes_photos` (`id_photo`, `id_user`) VALUES ('1', '66');
INSERT INTO `likes_photos` (`id_photo`, `id_user`) VALUES ('2', '29');
INSERT INTO `likes_photos` (`id_photo`, `id_user`) VALUES ('2', '33');
INSERT INTO `likes_photos` (`id_photo`, `id_user`) VALUES ('2', '39');
INSERT INTO `likes_photos` (`id_photo`, `id_user`) VALUES ('3', '1');
INSERT INTO `likes_photos` (`id_photo`, `id_user`) VALUES ('3', '85');
INSERT INTO `likes_photos` (`id_photo`, `id_user`) VALUES ('3', '94');
INSERT INTO `likes_photos` (`id_photo`, `id_user`) VALUES ('4', '50');
INSERT INTO `likes_photos` (`id_photo`, `id_user`) VALUES ('4', '85');
INSERT INTO `likes_photos` (`id_photo`, `id_user`) VALUES ('4', '95');
INSERT INTO `likes_photos` (`id_photo`, `id_user`) VALUES ('5', '66');
INSERT INTO `likes_photos` (`id_photo`, `id_user`) VALUES ('5', '70');
INSERT INTO `likes_photos` (`id_photo`, `id_user`) VALUES ('5', '93');
INSERT INTO `likes_photos` (`id_photo`, `id_user`) VALUES ('6', '5');
INSERT INTO `likes_photos` (`id_photo`, `id_user`) VALUES ('6', '9');
INSERT INTO `likes_photos` (`id_photo`, `id_user`) VALUES ('6', '28');
INSERT INTO `likes_photos` (`id_photo`, `id_user`) VALUES ('6', '52');
INSERT INTO `likes_photos` (`id_photo`, `id_user`) VALUES ('6', '55');
INSERT INTO `likes_photos` (`id_photo`, `id_user`) VALUES ('6', '67');
INSERT INTO `likes_photos` (`id_photo`, `id_user`) VALUES ('7', '21');
INSERT INTO `likes_photos` (`id_photo`, `id_user`) VALUES ('7', '32');
INSERT INTO `likes_photos` (`id_photo`, `id_user`) VALUES ('7', '93');
INSERT INTO `likes_photos` (`id_photo`, `id_user`) VALUES ('8', '42');
INSERT INTO `likes_photos` (`id_photo`, `id_user`) VALUES ('8', '50');
INSERT INTO `likes_photos` (`id_photo`, `id_user`) VALUES ('8', '97');
INSERT INTO `likes_photos` (`id_photo`, `id_user`) VALUES ('9', '15');
INSERT INTO `likes_photos` (`id_photo`, `id_user`) VALUES ('9', '29');
INSERT INTO `likes_photos` (`id_photo`, `id_user`) VALUES ('9', '63');
INSERT INTO `likes_photos` (`id_photo`, `id_user`) VALUES ('9', '88');
INSERT INTO `likes_photos` (`id_photo`, `id_user`) VALUES ('9', '93');
INSERT INTO `likes_photos` (`id_photo`, `id_user`) VALUES ('10', '7');
INSERT INTO `likes_photos` (`id_photo`, `id_user`) VALUES ('10', '24');
INSERT INTO `likes_photos` (`id_photo`, `id_user`) VALUES ('10', '62');
INSERT INTO `likes_photos` (`id_photo`, `id_user`) VALUES ('10', '83');
INSERT INTO `likes_photos` (`id_photo`, `id_user`) VALUES ('11', '14');
INSERT INTO `likes_photos` (`id_photo`, `id_user`) VALUES ('11', '65');
INSERT INTO `likes_photos` (`id_photo`, `id_user`) VALUES ('12', '14');
INSERT INTO `likes_photos` (`id_photo`, `id_user`) VALUES ('12', '26');
INSERT INTO `likes_photos` (`id_photo`, `id_user`) VALUES ('13', '14');
INSERT INTO `likes_photos` (`id_photo`, `id_user`) VALUES ('13', '16');
INSERT INTO `likes_photos` (`id_photo`, `id_user`) VALUES ('13', '40');
INSERT INTO `likes_photos` (`id_photo`, `id_user`) VALUES ('13', '63');
INSERT INTO `likes_photos` (`id_photo`, `id_user`) VALUES ('13', '65');
INSERT INTO `likes_photos` (`id_photo`, `id_user`) VALUES ('13', '100');
INSERT INTO `likes_photos` (`id_photo`, `id_user`) VALUES ('14', '12');
INSERT INTO `likes_photos` (`id_photo`, `id_user`) VALUES ('14', '64');
INSERT INTO `likes_photos` (`id_photo`, `id_user`) VALUES ('15', '10');
INSERT INTO `likes_photos` (`id_photo`, `id_user`) VALUES ('15', '25');
INSERT INTO `likes_photos` (`id_photo`, `id_user`) VALUES ('15', '47');
INSERT INTO `likes_photos` (`id_photo`, `id_user`) VALUES ('15', '78');
INSERT INTO `likes_photos` (`id_photo`, `id_user`) VALUES ('16', '17');
INSERT INTO `likes_photos` (`id_photo`, `id_user`) VALUES ('16', '20');
INSERT INTO `likes_photos` (`id_photo`, `id_user`) VALUES ('16', '38');
INSERT INTO `likes_photos` (`id_photo`, `id_user`) VALUES ('16', '92');
INSERT INTO `likes_photos` (`id_photo`, `id_user`) VALUES ('17', '26');
INSERT INTO `likes_photos` (`id_photo`, `id_user`) VALUES ('17', '44');
INSERT INTO `likes_photos` (`id_photo`, `id_user`) VALUES ('18', '6');
INSERT INTO `likes_photos` (`id_photo`, `id_user`) VALUES ('18', '26');
INSERT INTO `likes_photos` (`id_photo`, `id_user`) VALUES ('18', '36');
INSERT INTO `likes_photos` (`id_photo`, `id_user`) VALUES ('18', '64');
INSERT INTO `likes_photos` (`id_photo`, `id_user`) VALUES ('18', '91');
INSERT INTO `likes_photos` (`id_photo`, `id_user`) VALUES ('18', '92');
INSERT INTO `likes_photos` (`id_photo`, `id_user`) VALUES ('19', '77');
INSERT INTO `likes_photos` (`id_photo`, `id_user`) VALUES ('20', '50');
INSERT INTO `likes_photos` (`id_photo`, `id_user`) VALUES ('20', '64');
INSERT INTO `likes_photos` (`id_photo`, `id_user`) VALUES ('21', '43');
INSERT INTO `likes_photos` (`id_photo`, `id_user`) VALUES ('21', '53');
INSERT INTO `likes_photos` (`id_photo`, `id_user`) VALUES ('21', '60');
INSERT INTO `likes_photos` (`id_photo`, `id_user`) VALUES ('21', '86');
INSERT INTO `likes_photos` (`id_photo`, `id_user`) VALUES ('21', '96');
INSERT INTO `likes_photos` (`id_photo`, `id_user`) VALUES ('22', '16');
INSERT INTO `likes_photos` (`id_photo`, `id_user`) VALUES ('22', '22');
INSERT INTO `likes_photos` (`id_photo`, `id_user`) VALUES ('22', '38');
INSERT INTO `likes_photos` (`id_photo`, `id_user`) VALUES ('22', '48');
INSERT INTO `likes_photos` (`id_photo`, `id_user`) VALUES ('22', '84');
INSERT INTO `likes_photos` (`id_photo`, `id_user`) VALUES ('23', '53');
INSERT INTO `likes_photos` (`id_photo`, `id_user`) VALUES ('23', '74');
INSERT INTO `likes_photos` (`id_photo`, `id_user`) VALUES ('23', '84');
INSERT INTO `likes_photos` (`id_photo`, `id_user`) VALUES ('24', '5');
INSERT INTO `likes_photos` (`id_photo`, `id_user`) VALUES ('24', '30');
INSERT INTO `likes_photos` (`id_photo`, `id_user`) VALUES ('24', '44');
INSERT INTO `likes_photos` (`id_photo`, `id_user`) VALUES ('24', '56');
INSERT INTO `likes_photos` (`id_photo`, `id_user`) VALUES ('24', '79');
INSERT INTO `likes_photos` (`id_photo`, `id_user`) VALUES ('24', '94');
INSERT INTO `likes_photos` (`id_photo`, `id_user`) VALUES ('25', '40');
INSERT INTO `likes_photos` (`id_photo`, `id_user`) VALUES ('25', '81');
INSERT INTO `likes_photos` (`id_photo`, `id_user`) VALUES ('26', '14');
INSERT INTO `likes_photos` (`id_photo`, `id_user`) VALUES ('26', '61');
INSERT INTO `likes_photos` (`id_photo`, `id_user`) VALUES ('26', '98');
INSERT INTO `likes_photos` (`id_photo`, `id_user`) VALUES ('27', '11');
INSERT INTO `likes_photos` (`id_photo`, `id_user`) VALUES ('27', '23');
INSERT INTO `likes_photos` (`id_photo`, `id_user`) VALUES ('28', '4');
INSERT INTO `likes_photos` (`id_photo`, `id_user`) VALUES ('28', '19');
INSERT INTO `likes_photos` (`id_photo`, `id_user`) VALUES ('29', '1');
INSERT INTO `likes_photos` (`id_photo`, `id_user`) VALUES ('29', '83');
INSERT INTO `likes_photos` (`id_photo`, `id_user`) VALUES ('29', '99');
INSERT INTO `likes_photos` (`id_photo`, `id_user`) VALUES ('30', '1');
INSERT INTO `likes_photos` (`id_photo`, `id_user`) VALUES ('30', '7');
INSERT INTO `likes_photos` (`id_photo`, `id_user`) VALUES ('30', '14');


DROP TABLE IF EXISTS `likes_posts`;

CREATE TABLE `likes_posts` (
  `id_post` bigint(20) unsigned NOT NULL,
  `id_user` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id_post`,`id_user`),
  KEY `id_user` (`id_user`),
  CONSTRAINT `likes_posts_ibfk_1` FOREIGN KEY (`id_post`) REFERENCES `posts` (`id`),
  CONSTRAINT `likes_posts_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `likes_posts` (`id_post`, `id_user`) VALUES ('4', '26');
INSERT INTO `likes_posts` (`id_post`, `id_user`) VALUES ('6', '56');
INSERT INTO `likes_posts` (`id_post`, `id_user`) VALUES ('12', '23');
INSERT INTO `likes_posts` (`id_post`, `id_user`) VALUES ('16', '57');
INSERT INTO `likes_posts` (`id_post`, `id_user`) VALUES ('26', '6');
INSERT INTO `likes_posts` (`id_post`, `id_user`) VALUES ('26', '76');
INSERT INTO `likes_posts` (`id_post`, `id_user`) VALUES ('30', '50');
INSERT INTO `likes_posts` (`id_post`, `id_user`) VALUES ('33', '65');
INSERT INTO `likes_posts` (`id_post`, `id_user`) VALUES ('34', '90');
INSERT INTO `likes_posts` (`id_post`, `id_user`) VALUES ('36', '53');
INSERT INTO `likes_posts` (`id_post`, `id_user`) VALUES ('40', '14');
INSERT INTO `likes_posts` (`id_post`, `id_user`) VALUES ('41', '77');
INSERT INTO `likes_posts` (`id_post`, `id_user`) VALUES ('42', '58');
INSERT INTO `likes_posts` (`id_post`, `id_user`) VALUES ('43', '91');
INSERT INTO `likes_posts` (`id_post`, `id_user`) VALUES ('44', '53');
INSERT INTO `likes_posts` (`id_post`, `id_user`) VALUES ('46', '46');
INSERT INTO `likes_posts` (`id_post`, `id_user`) VALUES ('47', '33');
INSERT INTO `likes_posts` (`id_post`, `id_user`) VALUES ('48', '8');
INSERT INTO `likes_posts` (`id_post`, `id_user`) VALUES ('49', '48');
INSERT INTO `likes_posts` (`id_post`, `id_user`) VALUES ('69', '4');
INSERT INTO `likes_posts` (`id_post`, `id_user`) VALUES ('71', '42');
INSERT INTO `likes_posts` (`id_post`, `id_user`) VALUES ('76', '79');
INSERT INTO `likes_posts` (`id_post`, `id_user`) VALUES ('79', '10');
INSERT INTO `likes_posts` (`id_post`, `id_user`) VALUES ('84', '93');
INSERT INTO `likes_posts` (`id_post`, `id_user`) VALUES ('85', '57');
INSERT INTO `likes_posts` (`id_post`, `id_user`) VALUES ('87', '67');
INSERT INTO `likes_posts` (`id_post`, `id_user`) VALUES ('89', '2');
INSERT INTO `likes_posts` (`id_post`, `id_user`) VALUES ('90', '59');
INSERT INTO `likes_posts` (`id_post`, `id_user`) VALUES ('94', '82');
INSERT INTO `likes_posts` (`id_post`, `id_user`) VALUES ('97', '24');
