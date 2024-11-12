CREATE TABLE IF NOT EXISTS `av_tebex` (
  `transaction` longtext NOT NULL,
  `months` tinyint(2) DEFAULT NULL,
  `level` tinyint(4) DEFAULT NULL,
  `redeemed` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE IF NOT EXISTS `av_vip` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(100) DEFAULT NULL,
  `level` tinyint(4) DEFAULT NULL,
  `expiration` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=latin1;
