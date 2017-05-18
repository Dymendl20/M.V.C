CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `texte` text NOT NULL,
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `pseudo` varchar(20) NOT NULL,
  `mail` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- Contenu de la table `comments`
--

INSERT INTO `comments` (`id`, `texte`, `post_id`, `user_id`, `pseudo`, `mail`, `created_at`) VALUES
(1, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n				tempor incididunt ut labore et dolore magna aliqua.', 6, 1, 'athakim', '', '2013-01-03 00:00:00'),
(2, 'dolor in reprehenderit in voluptate velit esse\r\n				cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\n				proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 2, 1, 'athakim', '', '2013-01-03 00:00:00'),
(3, 'Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\n				consequat. Duis aute irure', 6, 6, 'test', '', '2013-01-03 00:00:00'),
(4, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n				tempor incididunt ut labore et dolore magna aliqua.', 3, 1, 'athakim', '', '2013-01-03 00:00:00'),
(5, 'azrezarzearez', 6, 1, 'athakim', '', '2013-01-03 21:10:39'),
(10, 'test de commentaire', 6, 1, 'athakim', '', '2013-01-04 15:31:05'),
(13, 'em nibh. Praesent sem ipsum, hendrerit non hendrerit eu, placerat ac velit. Vestibulum lacus velit, consequat iaculis vulputate id, elementum ac massa. In sit amet felis tortor. Vestibulum mollis pretium turpis nec tincidunt. Curabitur fringilla convallis quam sed facilisis. Aenean elit dui, eleifend in auctor non, pretium id libero. Proin mollis, nisl sed mattis interdum, dui est bibendum diam, at pharetra orci urna non nisi. Nam quis molestie felis. Aliquam viverra felis nec metus volutpat vitae suscipit elit pulvinar. Quisque diam justo, suscipit at malesuada in, commodo sit amet ligula. In hac habitasse platea dictumst. Maecenas accumsan arcu et purus consequat non po', 1, 6, 'athh', 'athakimf@free.fr', '2013-02-03 23:35:03'),
(14, 'em nibh. Praesent sem ipsum, hendrerit non hendrerit eu, placerat ac velit. Vestibulum lacus velit, consequat iaculis vulputate id, elementum ac massa. In sit amet felis tortor. Vestibulum mollis pretium turpis nec tincidunt. Curabitur fringilla convallis quam sed facilisis. Aenean elit dui, eleifend in auctor non, pretium id libero. Proin mollis, nisl sed mattis interdum, dui est bibendum diam, at pharetra orci urna non nisi. Nam quis molestie felis. Aliquam viverra felis nec metus volutpat vitae suscipit elit pulvinar. Quisque diam justo, suscipit at malesuada in, commodo sit amet ligula. In hac habitasse platea dictumst. Maecenas accumsan arcu et purus consequat non po', 1, 6, 'athr', 'athakimr@free.fr', '2013-02-03 23:35:10'),
(15, 'test de vcom', 1, 6, 'ath', 'athakim@free.fr', '2013-02-19 19:47:16'),
(16, 'sdqsdqsd', 3, 6, 'ath', 'athakim@free.fr', '2013-02-19 19:50:41');

-- --------------------------------------------------------

--
-- Structure de la table `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `titre` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(200) NOT NULL,
  `created_at` datetime NOT NULL,
  `category_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Contenu de la table `posts`
--

INSERT INTO `posts` (`id`, `titre`, `description`, `image`, `created_at`, `category_id`, `user_id`) VALUES
(1, 'FINAL FANTAY VII', 'In hendrerit quam vel erat luctus cursus. Proin congue aliquet purus sodales gravida. Fusce ligula elit,hakim  laoreet ac vestibulum in, lobortis id leo. Quisque nec massa lectus, lobortis laoreet ante. Proin fringilla quam at justo semper ac interdum massa pellentesque. Cras vitae purus sed mi bibendum euismod. Sed euismod iaculis euismod. Sed bibendum nunc vel tellus aliquam quis pulvinar turpis semper. In hendrerit quam vel erat luctus cursus.', 'img/img1.png', '2013-01-03 00:00:00', 1, 1),
(2, 'CALL OF DUTY BLACK OPS II', 'In hendrerit quam vel erat luctus cursus. Proin congue aliquet purus sodales gravida. Fusce ligula elit, laoreet ac vestibulum in, lobortis id leo. Quisque nec massa lectus, lobortis laoreet ante. Proin fringilla quam at justo semper ac interdum massa pellentesque. Cras vitae purus sed mi bibendum euismod. Sed euismod iaculis euismod. Sed bibendum nunc vel tellus aliquam quis pulvinar turpis semper. In hendrerit quam vel erat luctus cursus.', 'img/img2.png', '2013-01-03 00:00:00', 2, 2),
(3, 'FIFA 2013', '<p>In hendrerit q<em><strong>uam vel erat lu</strong></em>ctus cursus. Proin congue aliquet purus sodales gravida. Fusce ligula elit, laoreet ac vestibulum in, lobortis id leo. Quisque nec massa lectus, lobortis laoreet ante. Proin fringilla quam at justo semper ac interdum massa pellentesque. Cras vitae purus sed mi bibendum euismod. Sed euismod iaculis euismod. Sed bibendum nunc vel tellus aliquam quis pulvinar turpis semper. In hendrerit quam vel erat luctus cursus.</p>', 'img/img3.png', '2013-01-26 00:00:00', 2, 1),
(4, 'Assassin''s', 'In hendrerit quam vel erat luctus cursus. Proin congue aliquet purus sodales gravida. Fusce ligula elit, laoreet ac vestibulum in, lobortis id leo. Quisque nec massa lectus, lobortis laoreet ante. Proin fringilla quam at justo semper ac interdum massa pellentesque. Cras vitae purus sed mi bibendum euismod. Sed euismod iaculis euismod. Sed bibendum nunc vel tellus aliquam quis pulvinar turpis semper. In hendrerit quam vel erat luctus cursus.', 'img/img4.png', '2013-01-03 00:00:00', 1, 2),
(5, 'Factory 3', 'In hendrerit quam vel erat luctus cursus. Proin congue aliquet purus sodales gravida. Fusce ligula elit, laoreet ac vestibulum in, lobortis id leo. Quisque nec massa lectus, lobortis laoreet ante. Proin fringilla quam at justo semper ac interdum massa pellentesque. Cras vitae purus sed mi bibendum euismod. Sed euismod iaculis euismod. Sed bibendum nunc vel tellus aliquam quis pulvinar turpis semper. In hendrerit quam vel erat luctus cursus.', 'img/img5.png', '2013-01-03 00:00:00', 3, 1),
(6, 'MEDAL', 'In hendrerit quam vel erat luctus cursus. Proin congue aliquet purus sodales gravida. Fusce ligula elit, laoreet ac vestibulum in, lobortis id leo. Quisque nec massa lectus, lobortis laoreet ante. Proin fringilla quam at justo semper ac interdum massa pellentesque. Cras vitae purus sed mi bibendum euismod. Sed euismod iaculis euismod. Sed bibendum nunc vel tellus aliquam quis pulvinar turpis semper. In hendrerit quam vel erat luctus cursus.\r\nIn hendrerit quam vel erat luctus cursus. Proin congue aliquet purus sodales gravida. Fusce ligula elit, laoreet ac vestibulum in, lobortis id leo. Quisque nec massa lectus, lobortis laoreet ante. Proin fringilla quam at justo semper ac interdum massa pellentesque. Cras vitae purus sed mi bibendum euismod. Sed euismod iaculis euismod. Sed bibendum nunc vel tellus aliquam quis pulvinar turpis semper. In hendrerit quam vel erat luctus cursus.In hendrerit quam vel erat luctus cursus. Proin congue aliquet purus sodales gravida. Fusce ligula elit, laoreet ac vestibulum in, lobortis id leo. Quisque nec massa lectus, lobortis laoreet ante. Proin fringilla quam at justo semper ac interdum massa pellentesque. Cras vitae purus sed mi bibendum euismod. Sed euismod iaculis euismod. Sed bibendum nunc vel tellus aliquam quis pulvinar turpis semper. In hendrerit quam vel erat luctus cursus.\r\nIn hendrerit quam vel erat luctus cursus. Proin congue aliquet purus sodales gravida. Fusce ligula elit, laoreet ac vestibulum in, lobortis id leo. Quisque nec massa lectus, lobortis laoreet ante. Proin fringilla quam at justo semper ac interdum massa pellentesque. Cras vitae purus sed mi bibendum euismod. Sed euismod iaculis euismod. Sed bibendum nunc vel tellus aliquam quis pulvinar turpis semper. In hendrerit quam vel erat luctus cursus.\r\n\r\nIn hendrerit quam vel erat luctus cursus. Proin congue aliquet purus sodales gravida. Fusce ligula elit, laoreet ac vestibulum in, lobortis id leo. Quisque nec massa lectus, lobortis laoreet ante. Proin fringilla quam at justo semper ac interdum massa pellentesque. Cras vitae purus sed mi bibendum euismod. Sed euismod iaculis euismod. Sed bibendum nunc vel tellus aliquam quis pulvinar turpis semper. In hendrerit quam vel erat luctus cursus.\r\nIn hendrerit quam vel erat luctus cursus. Proin congue aliquet purus sodales gravida. Fusce ligula elit, laoreet ac vestibulum in, lobortis id leo. Quisque nec massa lectus, lobortis laoreet ante. Proin fringilla quam at justo semper ac interdum massa pellentesque. Cras vitae purus sed mi bibendum euismod. Sed euismod iaculis euismod. Sed bibendum nunc vel tellus aliquam quis pulvinar turpis semper. In hendrerit quam vel erat luctus cursus.In hendrerit quam vel erat luctus cursus. Proin congue aliquet purus sodales gravida. Fusce ligula elit, laoreet ac vestibulum in, lobortis id leo. Quisque nec massa lectus, lobortis laoreet ante. Proin fringilla quam at justo semper ac interdum massa pellentesque. Cras vitae purus sed mi bibendum euismod. Sed euismod iaculis euismod. Sed bibendum nunc vel tellus aliquam quis pulvinar turpis semper. In hendrerit quam vel erat luctus cursus.', 'img/img6.png', '2013-01-03 00:00:00', 4, 6);

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `bio` text NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `avatar` varchar(200) NOT NULL DEFAULT 'img/avatar.png',
  `role` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `prenom` varchar(200) NOT NULL,
  `last_login` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `active` tinyint(1) NOT NULL,
  `token` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Contenu de la table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `bio`, `created_at`, `updated_at`, `avatar`, `role`, `name`, `prenom`, `last_login`, `active`, `token`) VALUES
(1, 'athakim', '84f8cc7a036efac002027f64c6b740f6f2bbbb9a', 'admin@admin.com', '', '2013-02-21 21:08:45', '2013-02-21 21:09:46', 'img/avatar.png', 'admin', '', '', '2013-02-21 20:09:46', 1, 'a2bb35efae36bdc1f2937eeee9cbdec117d6967e'),
(4, 'tex', '', '', '', '2013-02-03 23:32:39', '0000-00-00 00:00:00', 'img/avatar.png', '', '', '', '2013-02-03 22:37:35', 0, ''),
(5, 'tex2', '', '', '', '2013-02-03 23:29:00', '0000-00-00 00:00:00', 'img/avatar.png', '', '', '', '2013-02-03 22:37:51', 0, ''),
(6, 'ath', '38552f365ddd2e746ac6bcf9889814f0fb98e0c1', 'athakim@msn.fr', 'icies tellus lectus ac arcu. Etiam consectetur, risus et aliquam sagittis, ipsum velit faucibus odio, et varius neque odio a sapien. Praesent aliquet lectus lobortis elit tinci\r\n\r\nEtiam eget tellus sed augue vestibulum interdum eu sit amet sapien. Maecenas vitae odio nibh, at interdum purus. Maecenas pellentesque tempor vestibulum. Sed nec risus eu lacus consequat aliquam. Proin facilisis convallis justo sed mollis. Sed a posuere nibh. Cras faucibus sem et ante aliquet blandit. Nunc', '2013-02-01 20:01:45', '2013-02-03 23:41:11', 'img/uploads/7292f71dbfc935ba158788a0eb9391f5.png', '', '', 'Hakim', '2013-02-21 20:06:41', 1, 'd7ca1ee5400120432d8221990727718bf494d142');
