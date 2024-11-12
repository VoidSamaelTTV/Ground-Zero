CREATE TABLE `d3_potions` (
	`id` INT(11) NOT NULL AUTO_INCREMENT,
	`identifier` VARCHAR(255) NOT NULL COLLATE 'utf8_general_ci',
	`experience` INT(11) NULL DEFAULT '0',
	PRIMARY KEY (`id`) USING BTREE
)
COLLATE='utf8_general_ci'
ENGINE=InnoDB
AUTO_INCREMENT=6
;
