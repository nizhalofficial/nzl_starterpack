CREATE TABLE IF NOT EXISTS `starterpack_claims` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `player_id` VARCHAR(50) NOT NULL,
    `claimed` TINYINT(1) DEFAULT 0,
    PRIMARY KEY (`id`)
);
