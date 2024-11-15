CREATE TABLE IF NOT EXISTS `global_blips` (
	`id` INT(11) NOT NULL AUTO_INCREMENT,
	`name` VARCHAR(50) NOT NULL DEFAULT 'blip' COLLATE 'utf8mb4_general_ci',
	`x` FLOAT(12) NOT NULL DEFAULT '0',
	`y` FLOAT(12) NOT NULL DEFAULT '0',
	`z` FLOAT(12) NOT NULL DEFAULT '0',
	`streetName` VARCHAR(50) NOT NULL DEFAULT '0' COLLATE 'utf8mb4_general_ci',
	`sprite` SMALLINT(6) NOT NULL DEFAULT '0',
	`scale` FLOAT(12) NOT NULL DEFAULT '0',
	`alpha` TINYINT(4) UNSIGNED NOT NULL DEFAULT '0',
	`color` SMALLINT(6) NOT NULL DEFAULT '0',
	`ticked` BIT(1) NOT NULL DEFAULT b'0',
	`outline` BIT(1) NOT NULL DEFAULT b'0',
	`display` TINYINT(3) NOT NULL DEFAULT '0',
	`identifier` VARCHAR(80) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`type` VARCHAR(10) NOT NULL COLLATE 'utf8mb4_general_ci',
	`height` FLOAT(12) NOT NULL DEFAULT '50',
	`width` FLOAT(12) NOT NULL DEFAULT '50',
	PRIMARY KEY (`id`) USING BTREE
)
COLLATE='utf8mb4_general_ci'
ENGINE=InnoDB
;