ALTER TABLE `rooms`DROP FOREIGN KEY `FK_GuestInRoom`;
ALTER TABLE `rooms`DROP FOREIGN KEY `FK_RoomInHotel`; 
ALTER TABLE `receptions`DROP FOREIGN KEY `FK_ReceptionInHotel`; 
ALTER TABLE `cleaners`DROP FOREIGN KEY `FK_CleanerInHotel`;  

DROP TABLE `rooms`;
DROP TABLE `guests`;
DROP TABLE `receptions`;
DROP TABLE `cleaners`;
DROP TABLE `hotels`;

CREATE TABLE `rooms` (
	`id` INT AUTO_INCREMENT ,
	`roomNumber` INT,
	`floor` INT,
	`price` INT,
	`toClean` BOOLEAN,
	`guest` INT,
    `hotel` INT,
	PRIMARY KEY (`id`)
);

CREATE TABLE `guests` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`firstName` VARCHAR(64),
	`lastName` VARCHAR(64) ,
	PRIMARY KEY (`id`)
);

CREATE TABLE `receptions` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`description` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '',
    `hotel` INT,
	PRIMARY KEY (`id`)  
);

CREATE TABLE `cleaners` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`name` VARCHAR(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
    `hotel` INT,
	PRIMARY KEY (`id`)
);

CREATE TABLE `hotels` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`name` VARCHAR(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
	PRIMARY KEY (`id`)
);

ALTER TABLE `rooms`
ADD CONSTRAINT `FK_GuestInRoom` 
FOREIGN KEY (guest) REFERENCES guests(id);

ALTER TABLE `rooms`
ADD CONSTRAINT `FK_RoomInHotel`
FOREIGN KEY (hotel) REFERENCES hotels(id);

ALTER TABLE `receptions`
ADD CONSTRAINT `FK_ReceptionInHotel`
FOREIGN KEY (hotel) REFERENCES hotels(id);

ALTER TABLE `cleaners`
ADD CONSTRAINT `FK_CleanerInHotel`
FOREIGN KEY (hotel) REFERENCES hotels(id);