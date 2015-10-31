drop database chat;

CREATE DATABASE chat;

USE chat;

-- CREATE TABLE messages (
--   id INTEGER PRIMARY KEY,
--   tweet TEXT
-- );

  /* Describe your table here.*/
/* Create other tables and define schemas for them here! */




/*  Execute this file from the command line by typing:
 *    mysql -u root < server/schema.sql
 *  to create the database and the tables.*/

-- ---
-- Globals
-- ---

-- SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
-- SET FOREIGN_KEY_CHECKS=0;

-- ---
-- Table 'Messages'
-- 
-- ---

DROP TABLE IF EXISTS `Messages`;
    
CREATE TABLE `Messages` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `message_text` MEDIUMTEXT NULL DEFAULT NULL,
  `id_user` INTEGER NULL DEFAULT NULL,
  `id_rooms` INTEGER NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'user'
-- 
-- ---

DROP TABLE IF EXISTS `user`;
    
CREATE TABLE `user` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `uername` MEDIUMTEXT NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'rooms'
-- 
-- ---

DROP TABLE IF EXISTS `rooms`;
    
CREATE TABLE `rooms` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `roomname` MEDIUMTEXT NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'room/users'
-- 
-- ---

DROP TABLE IF EXISTS `room/users`;
    
CREATE TABLE `room/users` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `id_user` INTEGER NULL DEFAULT NULL,
  `id_rooms` INTEGER NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Foreign Keys 
-- ---

ALTER TABLE `Messages` ADD FOREIGN KEY (id_user) REFERENCES `user` (`id`);
ALTER TABLE `Messages` ADD FOREIGN KEY (id_rooms) REFERENCES `rooms` (`id`);
ALTER TABLE `room/users` ADD FOREIGN KEY (id_user) REFERENCES `user` (`id`);
-- ALTER TABLE `room/users` ADD FOREIGN KEY (id_rooms) REFERENCES `rooms` (`id`);

-- ---
-- Table Properties
-- ---

-- ALTER TABLE `Messages` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `user` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `rooms` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `room/users` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ---
-- Test Data
-- ---

-- INSERT INTO `Messages` (`id`,`message_text`,`id_user`,`id_rooms`) VALUES
-- ('01','hello sir','01','01');
-- INSERT INTO `user` (`id`,`uername`) VALUES
-- ('','');
-- INSERT INTO `rooms` (`id`,`roomname`) VALUES
-- ('','');
-- INSERT INTO `room/users` (`id`,`id_user`,`id_rooms`) VALUES
-- ('','','');