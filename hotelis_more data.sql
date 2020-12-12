-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 10, 2020 at 11:13 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";
SET FOREIGN_KEY_CHECKS=OFF;

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotelis`
--

-- --------------------------------------------------------

--
-- Table structure for table `cleaners`
--

DROP TABLE IF EXISTS `cleaners`;
CREATE TABLE `cleaners` (
  `id` int(11) NOT NULL,
  `name` varchar(64) DEFAULT NULL,
  `hotel` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `guests`
--

DROP TABLE IF EXISTS `guests`;
CREATE TABLE `guests` (
  `id` int(11) NOT NULL,
  `firstName` varchar(64) DEFAULT NULL,
  `lastName` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `guests`
--

INSERT INTO `guests` (`id`, `firstName`, `lastName`) VALUES
(1, NULL, NULL),
(2, 'Jane', 'Doe'),
(3, 'John', 'Smith');

-- --------------------------------------------------------

--
-- Table structure for table `hotels`
--

DROP TABLE IF EXISTS `hotels`;
CREATE TABLE `hotels` (
  `id` int(11) NOT NULL,
  `name` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hotels`
--

INSERT INTO `hotels` (`id`, `name`) VALUES
(1, 'Ritz'),
(2, 'Liberty'),
(3, 'Grand');

-- --------------------------------------------------------

--
-- Table structure for table `receptions`
--

DROP TABLE IF EXISTS `receptions`;
CREATE TABLE `receptions` (
  `id` int(11) NOT NULL,
  `hotelFK` int(11) DEFAULT NULL,
  `description` text DEFAULT '',
  `hotel` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

DROP TABLE IF EXISTS `rooms`;
CREATE TABLE `rooms` (
  `id` int(11) NOT NULL,
  `roomNumber` int(11) DEFAULT NULL,
  `floor` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `toClean` tinyint(1) DEFAULT NULL,
  `guest` int(11) DEFAULT NULL,
  `hotel` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `roomNumber`, `floor`, `price`, `toClean`, `guest`, `hotel`) VALUES
(1, 101, 1, 150, 0, 1, 3),
(2, 102, 1, 150, 0, 1, 3);



--
-- Indexes for dumped tables
--

--
-- Indexes for table `cleaners`
--
ALTER TABLE `cleaners`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_CleanerInHotel` (`hotel`);

--
-- Indexes for table `guests`
--
ALTER TABLE `guests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hotels`
--
ALTER TABLE `hotels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `receptions`
--
ALTER TABLE `receptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_ReceptionInHotel` (`hotel`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_GuestInRoom` (`guest`),
  ADD KEY `FK_RoomInHotel` (`hotel`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cleaners`
--
ALTER TABLE `cleaners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `guests`
--
ALTER TABLE `guests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `hotels`
--
ALTER TABLE `hotels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `receptions`
--
ALTER TABLE `receptions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cleaners`
--
ALTER TABLE `cleaners`
  ADD CONSTRAINT `FK_CleanerInHotel` FOREIGN KEY (`hotel`) REFERENCES `hotels` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `receptions`
--
ALTER TABLE `receptions`
  ADD CONSTRAINT `FK_ReceptionInHotel` FOREIGN KEY (`hotel`) REFERENCES `hotels` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `rooms`
--
ALTER TABLE `rooms`
  ADD CONSTRAINT `FK_GuestInRoom` FOREIGN KEY (`guest`) REFERENCES `guests` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_RoomInHotel` FOREIGN KEY (`hotel`) REFERENCES `hotels` (`id`) ON DELETE CASCADE;

SET FOREIGN_KEY_CHECKS=ON;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;


insert into guests (firstName, lastName) values ('Gottfried', 'Baskwell');
insert into guests (firstName, lastName) values ('Stefanie', 'Hellyar');
insert into guests (firstName, lastName) values ('Aurie', 'Abelov');
insert into guests (firstName, lastName) values ('Renell', 'Steaning');
insert into guests (firstName, lastName) values ('Inesita', 'Whyler');
insert into guests (firstName, lastName) values ('Lewiss', 'Bourdice');
insert into guests (firstName, lastName) values ('Milton', 'Losselyong');
insert into guests (firstName, lastName) values ('Laurens', 'Pakeman');
insert into guests (firstName, lastName) values ('Kermy', 'Edinburough');
insert into guests (firstName, lastName) values ('Arlin', 'Bahl');
insert into guests (firstName, lastName) values ('Lauralee', 'Brentnall');
insert into guests (firstName, lastName) values ('Ysabel', 'Sharpless');
insert into guests (firstName, lastName) values ('Josepha', 'Whyberd');
insert into guests (firstName, lastName) values ('Ingamar', 'Bemment');
insert into guests (firstName, lastName) values ('Hasheem', 'Derges');
insert into guests (firstName, lastName) values ('Burlie', 'Garrand');
insert into guests (firstName, lastName) values ('Valina', 'Ferrero');
insert into guests (firstName, lastName) values ('Florenza', 'Tenney');
insert into guests (firstName, lastName) values ('Florinda', 'Kitcat');
insert into guests (firstName, lastName) values ('Candi', 'Bassingden');
insert into guests (firstName, lastName) values ('Brucie', 'Spaunton');
insert into guests (firstName, lastName) values ('Daniele', 'Paridge');
insert into guests (firstName, lastName) values ('Bent', 'Kelby');
insert into guests (firstName, lastName) values ('Addi', 'Fitchew');
insert into guests (firstName, lastName) values ('Shaun', 'Dorey');
insert into guests (firstName, lastName) values ('Noelani', 'Purdon');
insert into guests (firstName, lastName) values ('Haleigh', 'Bernocchi');
insert into guests (firstName, lastName) values ('Dominick', 'Hamblett');
insert into guests (firstName, lastName) values ('Therese', 'Ledgerton');
insert into guests (firstName, lastName) values ('Buck', 'Cavilla');
insert into guests (firstName, lastName) values ('Dawn', 'Pagram');
insert into guests (firstName, lastName) values ('Clarey', 'Hamnet');
insert into guests (firstName, lastName) values ('Wesley', 'Bison');
insert into guests (firstName, lastName) values ('Ferdinande', 'Crosthwaite');
insert into guests (firstName, lastName) values ('Lynette', 'Sysland');
insert into guests (firstName, lastName) values ('Carina', 'Buske');
insert into guests (firstName, lastName) values ('Ezra', 'Picot');
insert into guests (firstName, lastName) values ('Trudi', 'Mudie');
insert into guests (firstName, lastName) values ('Antoinette', 'Bowcher');
insert into guests (firstName, lastName) values ('Rodney', 'Cruttenden');
insert into guests (firstName, lastName) values ('Modesta', 'Drews');
insert into guests (firstName, lastName) values ('Stacia', 'Dumberrill');
insert into guests (firstName, lastName) values ('Georgianna', 'Crock');
insert into guests (firstName, lastName) values ('Dasya', 'Sambedge');
insert into guests (firstName, lastName) values ('Christin', 'Canet');
insert into guests (firstName, lastName) values ('Obie', 'Shorto');
insert into guests (firstName, lastName) values ('Jeni', 'Pargeter');
insert into guests (firstName, lastName) values ('Blondy', 'De Bischof');
insert into guests (firstName, lastName) values ('Susannah', 'Bewlay');
insert into guests (firstName, lastName) values ('Margarita', 'Spindler');
insert into guests (firstName, lastName) values ('Bengt', 'MacGiany');
insert into guests (firstName, lastName) values ('Juliann', 'Atherley');
insert into guests (firstName, lastName) values ('Rene', 'Arlott');
insert into guests (firstName, lastName) values ('Lars', 'Hauch');
insert into guests (firstName, lastName) values ('Prissie', 'Purveys');
insert into guests (firstName, lastName) values ('Kurtis', 'Fleis');
insert into guests (firstName, lastName) values ('Emory', 'Ourtic');
insert into guests (firstName, lastName) values ('Geri', 'Sheahan');
insert into guests (firstName, lastName) values ('Saundra', 'Jendrys');
insert into guests (firstName, lastName) values ('Zebulen', 'Gooding');
insert into guests (firstName, lastName) values ('Angil', 'Sotham');
insert into guests (firstName, lastName) values ('Durward', 'Ciementini');
insert into guests (firstName, lastName) values ('Uriah', 'Eagle');
insert into guests (firstName, lastName) values ('Olenka', 'Hightown');
insert into guests (firstName, lastName) values ('Egon', 'MacKibbon');
insert into guests (firstName, lastName) values ('Belvia', 'Gilks');
insert into guests (firstName, lastName) values ('Devonna', 'Sessions');
insert into guests (firstName, lastName) values ('Wheeler', 'Le Marquand');
insert into guests (firstName, lastName) values ('Derron', 'Bevis');
insert into guests (firstName, lastName) values ('Geraldine', 'Troucher');
insert into guests (firstName, lastName) values ('Clarey', 'McCormack');
insert into guests (firstName, lastName) values ('Culver', 'Glyde');
insert into guests (firstName, lastName) values ('Waring', 'Spalding');
insert into guests (firstName, lastName) values ('Chadd', 'Naulls');
insert into guests (firstName, lastName) values ('Anastassia', 'Manie');
insert into guests (firstName, lastName) values ('Sharron', 'Hallin');
insert into guests (firstName, lastName) values ('Ben', 'Byk');
insert into guests (firstName, lastName) values ('Myrilla', 'Petrussi');
insert into guests (firstName, lastName) values ('Orazio', 'Purchall');
insert into guests (firstName, lastName) values ('Valida', 'Timmes');
insert into guests (firstName, lastName) values ('Darda', 'Polotti');
insert into guests (firstName, lastName) values ('Jae', 'Beaufoy');
insert into guests (firstName, lastName) values ('Cesare', 'Pacitti');
insert into guests (firstName, lastName) values ('Jamal', 'Itzkov');
insert into guests (firstName, lastName) values ('Gunner', 'Fairbourn');
insert into guests (firstName, lastName) values ('Iolande', 'McKimmey');
insert into guests (firstName, lastName) values ('Nike', 'Varcoe');
insert into guests (firstName, lastName) values ('Ethelbert', 'Molan');
insert into guests (firstName, lastName) values ('Tamas', 'Leve');
insert into guests (firstName, lastName) values ('Lin', 'Tomaszek');
insert into guests (firstName, lastName) values ('Babara', 'Mapp');
insert into guests (firstName, lastName) values ('Claudia', 'Wildor');
insert into guests (firstName, lastName) values ('Audie', 'Stilwell');
insert into guests (firstName, lastName) values ('Sadie', 'Harral');
insert into guests (firstName, lastName) values ('Dolly', 'Stebbings');
insert into guests (firstName, lastName) values ('Winston', 'Wigley');
insert into guests (firstName, lastName) values ('Rik', 'Russon');
insert into guests (firstName, lastName) values ('Julianne', 'Haskell');
insert into guests (firstName, lastName) values ('Brendan', 'Borit');
insert into guests (firstName, lastName) values ('Elna', 'Gomby');
insert into guests (firstName, lastName) values ('Banky', 'Neesam');
insert into guests (firstName, lastName) values ('Cyb', 'Howell');
insert into guests (firstName, lastName) values ('Hattie', 'Scaddon');
insert into guests (firstName, lastName) values ('Celesta', 'Baptist');
insert into guests (firstName, lastName) values ('Libby', 'Abercrombie');
insert into guests (firstName, lastName) values ('Sargent', 'Bernholt');
insert into guests (firstName, lastName) values ('Bobbi', 'Spurret');
insert into guests (firstName, lastName) values ('Esteban', 'Brou');
insert into guests (firstName, lastName) values ('Odille', 'Dealtry');
insert into guests (firstName, lastName) values ('Hershel', 'Wall');
insert into guests (firstName, lastName) values ('Doretta', 'Munroe');
insert into guests (firstName, lastName) values ('Clair', 'Wybron');
insert into guests (firstName, lastName) values ('Kenon', 'Constable');
insert into guests (firstName, lastName) values ('Lavinie', 'Hearnshaw');
insert into guests (firstName, lastName) values ('Burg', 'Kennham');
insert into guests (firstName, lastName) values ('Miguela', 'Waything');
insert into guests (firstName, lastName) values ('Jodi', 'Fosdyke');
insert into guests (firstName, lastName) values ('Tiff', 'Pevie');
insert into guests (firstName, lastName) values ('Arnuad', 'Benninger');
insert into guests (firstName, lastName) values ('Clarey', 'Lesaunier');
insert into guests (firstName, lastName) values ('Saunder', 'Mowatt');
insert into guests (firstName, lastName) values ('Rivalee', 'Sherwen');
insert into guests (firstName, lastName) values ('Hurley', 'Burge');
insert into guests (firstName, lastName) values ('Horten', 'Bygate');
insert into guests (firstName, lastName) values ('Trace', 'Gwilliams');
insert into guests (firstName, lastName) values ('Loraine', 'Mawer');
insert into guests (firstName, lastName) values ('Barbara', 'Licquorish');
insert into guests (firstName, lastName) values ('Allix', 'Capel');
insert into guests (firstName, lastName) values ('Amos', 'Kezor');
insert into guests (firstName, lastName) values ('Milo', 'Lammin');
insert into guests (firstName, lastName) values ('Luz', 'Lethbrig');
insert into guests (firstName, lastName) values ('Nicolea', 'Soan');
insert into guests (firstName, lastName) values ('Tawnya', 'Minchella');
insert into guests (firstName, lastName) values ('Dougy', 'Blakeman');
insert into guests (firstName, lastName) values ('Clea', 'Marshallsay');
insert into guests (firstName, lastName) values ('Blondy', 'Divine');
insert into guests (firstName, lastName) values ('Tito', 'Farnham');
insert into guests (firstName, lastName) values ('Danette', 'Willmot');
insert into guests (firstName, lastName) values ('Laetitia', 'Nilles');
insert into guests (firstName, lastName) values ('Janis', 'Leither');
insert into guests (firstName, lastName) values ('Stace', 'Renol');
insert into guests (firstName, lastName) values ('Bev', 'Peagrim');
insert into guests (firstName, lastName) values ('Bridget', 'Halbord');
insert into guests (firstName, lastName) values ('Kacie', 'Loidl');
insert into guests (firstName, lastName) values ('Gypsy', 'Hanby');
insert into guests (firstName, lastName) values ('Kelli', 'Lackie');
insert into guests (firstName, lastName) values ('Lorie', 'Gowanlock');
insert into guests (firstName, lastName) values ('Shem', 'Whates');
insert into guests (firstName, lastName) values ('Bondon', 'Enric');
insert into guests (firstName, lastName) values ('Annalee', 'Noen');
insert into guests (firstName, lastName) values ('Lela', 'Extance');
insert into guests (firstName, lastName) values ('Giles', 'Drummond');
insert into guests (firstName, lastName) values ('Vail', 'Letham');
insert into guests (firstName, lastName) values ('Suzy', 'Chadwick');
insert into guests (firstName, lastName) values ('Rafaela', 'Timms');
insert into guests (firstName, lastName) values ('Clarine', 'Blackaby');
insert into guests (firstName, lastName) values ('Dolli', 'Brearley');
insert into guests (firstName, lastName) values ('Etty', 'Scudders');
insert into guests (firstName, lastName) values ('Cosette', 'Bouda');
insert into guests (firstName, lastName) values ('Culley', 'Loney');
insert into guests (firstName, lastName) values ('Sonnie', 'Ickowics');
insert into guests (firstName, lastName) values ('Heall', 'Stopps');
insert into guests (firstName, lastName) values ('Nessi', 'Junkin');
insert into guests (firstName, lastName) values ('Clarita', 'Schruyer');
insert into guests (firstName, lastName) values ('Yorke', 'Bischof');
insert into guests (firstName, lastName) values ('Lisetta', 'Donovan');
insert into guests (firstName, lastName) values ('Catharine', 'Eastham');
insert into guests (firstName, lastName) values ('Zaria', 'Tregust');
insert into guests (firstName, lastName) values ('Cati', 'McCard');
insert into guests (firstName, lastName) values ('Candis', 'Merrigan');
insert into guests (firstName, lastName) values ('Moss', 'Martelet');
insert into guests (firstName, lastName) values ('Roch', 'Dowbakin');
insert into guests (firstName, lastName) values ('Worthington', 'Enstone');
insert into guests (firstName, lastName) values ('Adaline', 'Thouless');
insert into guests (firstName, lastName) values ('Hanson', 'Caulder');
insert into guests (firstName, lastName) values ('Loralie', 'Burthom');
insert into guests (firstName, lastName) values ('Reeta', 'Bracci');
insert into guests (firstName, lastName) values ('Ingra', 'Bernhard');
insert into guests (firstName, lastName) values ('Almire', 'Jagson');
insert into guests (firstName, lastName) values ('Vivia', 'Lorraway');
insert into guests (firstName, lastName) values ('Lusa', 'Millhouse');
insert into guests (firstName, lastName) values ('Ignaz', 'Zisneros');
insert into guests (firstName, lastName) values ('Mirelle', 'Wason');
insert into guests (firstName, lastName) values ('Lyndsie', 'Radage');
insert into guests (firstName, lastName) values ('Clementia', 'Gutherson');
insert into guests (firstName, lastName) values ('Dennie', 'Twede');
insert into guests (firstName, lastName) values ('Matthaeus', 'Skoughman');
insert into guests (firstName, lastName) values ('Drusi', 'Quimby');
insert into guests (firstName, lastName) values ('Caddric', 'Rowet');
insert into guests (firstName, lastName) values ('Abbe', 'Gorke');
insert into guests (firstName, lastName) values ('Jehanna', 'Berrigan');
insert into guests (firstName, lastName) values ('Dominique', 'Cortese');
insert into guests (firstName, lastName) values ('Imojean', 'Lawlan');
insert into guests (firstName, lastName) values ('Kamilah', 'Gresty');
insert into guests (firstName, lastName) values ('Piper', 'McBratney');
insert into guests (firstName, lastName) values ('Ania', 'Girvin');
insert into guests (firstName, lastName) values ('Deonne', 'Bradbury');
insert into guests (firstName, lastName) values ('Theodosia', 'Klimentyev');
insert into guests (firstName, lastName) values ('Liliane', 'Berardt');
insert into guests (firstName, lastName) values ('Pall', 'De Andreis');
insert into guests (firstName, lastName) values ('Eimile', 'Goudie');
insert into guests (firstName, lastName) values ('Dinnie', 'Tomanek');
insert into guests (firstName, lastName) values ('Hussein', 'Reeday');
insert into guests (firstName, lastName) values ('Corine', 'Eveling');
insert into guests (firstName, lastName) values ('Roobbie', 'Crennan');
insert into guests (firstName, lastName) values ('Ki', 'Rudledge');
insert into guests (firstName, lastName) values ('Quinta', 'Walcar');
insert into guests (firstName, lastName) values ('Arnie', 'Murdoch');
insert into guests (firstName, lastName) values ('Alphonse', 'Lehrle');
insert into guests (firstName, lastName) values ('Katie', 'O''Cuddie');
insert into guests (firstName, lastName) values ('Osborn', 'Coan');
insert into guests (firstName, lastName) values ('Aurel', 'Andrault');
insert into guests (firstName, lastName) values ('Edgard', 'Kidstoun');
insert into guests (firstName, lastName) values ('Maryl', 'Chipperfield');
insert into guests (firstName, lastName) values ('Herc', 'O''Kuddyhy');
insert into guests (firstName, lastName) values ('Clyve', 'Gabotti');
insert into guests (firstName, lastName) values ('Kinny', 'Tenman');
insert into guests (firstName, lastName) values ('Elnar', 'Jory');
insert into guests (firstName, lastName) values ('Georas', 'Rubinsohn');
insert into guests (firstName, lastName) values ('Rudiger', 'Evered');
insert into guests (firstName, lastName) values ('Staffard', 'Hinken');
insert into guests (firstName, lastName) values ('Sargent', 'Klass');
insert into guests (firstName, lastName) values ('Gussy', 'Carthew');
insert into guests (firstName, lastName) values ('Tanner', 'Redmille');
insert into guests (firstName, lastName) values ('Georgine', 'Emmens');
insert into guests (firstName, lastName) values ('Dani', 'Izzett');
insert into guests (firstName, lastName) values ('Denney', 'Crockett');
insert into guests (firstName, lastName) values ('Mordecai', 'Crampin');
insert into guests (firstName, lastName) values ('Giulietta', 'Poston');
insert into guests (firstName, lastName) values ('Kaia', 'Laviste');
insert into guests (firstName, lastName) values ('Dominique', 'Tacon');
insert into guests (firstName, lastName) values ('Louisa', 'Ullrich');
insert into guests (firstName, lastName) values ('Natty', 'Magarrell');
insert into guests (firstName, lastName) values ('Celina', 'Gordon-Giles');
insert into guests (firstName, lastName) values ('Rosa', 'Padgham');
insert into guests (firstName, lastName) values ('Nowell', 'Smaridge');
insert into guests (firstName, lastName) values ('Anderson', 'Dwight');
insert into guests (firstName, lastName) values ('Agatha', 'Kippling');
insert into guests (firstName, lastName) values ('Jacquelynn', 'Deekes');
insert into guests (firstName, lastName) values ('Isak', 'Gallo');
insert into guests (firstName, lastName) values ('Dilly', 'Eslinger');
insert into guests (firstName, lastName) values ('Arabel', 'Malcolm');
insert into guests (firstName, lastName) values ('Gayle', 'Goodchild');
insert into guests (firstName, lastName) values ('Anissa', 'Monkleigh');
insert into guests (firstName, lastName) values ('Madeleine', 'Weatherhogg');
insert into guests (firstName, lastName) values ('Brandise', 'Franklyn');
insert into guests (firstName, lastName) values ('Fernandina', 'Boothman');
insert into guests (firstName, lastName) values ('Dionisio', 'Mabey');
insert into guests (firstName, lastName) values ('Harlen', 'Mattiussi');
insert into guests (firstName, lastName) values ('Jacquette', 'Oxtarby');
insert into guests (firstName, lastName) values ('Thatch', 'Boxall');
insert into guests (firstName, lastName) values ('Katerina', 'Magrane');
insert into guests (firstName, lastName) values ('Florida', 'Rosettini');
insert into guests (firstName, lastName) values ('Shay', 'Payn');
insert into guests (firstName, lastName) values ('Griff', 'Marchetti');
insert into guests (firstName, lastName) values ('Bianka', 'Gynn');
insert into guests (firstName, lastName) values ('Dierdre', 'Costard');
insert into guests (firstName, lastName) values ('Abe', 'Buttriss');
insert into guests (firstName, lastName) values ('Reggi', 'Sibbert');
insert into guests (firstName, lastName) values ('Ginevra', 'Gres');
insert into guests (firstName, lastName) values ('Susanne', 'Drinnan');
insert into guests (firstName, lastName) values ('Berta', 'Ellson');
insert into guests (firstName, lastName) values ('Brandais', 'Lloyds');
insert into guests (firstName, lastName) values ('Jacky', 'Tweede');
insert into guests (firstName, lastName) values ('Gray', 'Rattery');
insert into guests (firstName, lastName) values ('Reginald', 'Jereatt');
insert into guests (firstName, lastName) values ('Cherida', 'Braffington');
insert into guests (firstName, lastName) values ('Urban', 'Godlee');
insert into guests (firstName, lastName) values ('Dominique', 'Slyman');
insert into guests (firstName, lastName) values ('Dalia', 'Dechelette');
insert into guests (firstName, lastName) values ('Danielle', 'Grant');
insert into guests (firstName, lastName) values ('Anderson', 'Domerc');
insert into guests (firstName, lastName) values ('Mitchell', 'Forcade');
insert into guests (firstName, lastName) values ('Marna', 'Seel');
insert into guests (firstName, lastName) values ('Benedick', 'Limpricht');
insert into guests (firstName, lastName) values ('Rutger', 'Sam');
insert into guests (firstName, lastName) values ('Courtney', 'Dzeniskevich');
insert into guests (firstName, lastName) values ('Shela', 'Longford');
insert into guests (firstName, lastName) values ('Leoine', 'McKeating');
insert into guests (firstName, lastName) values ('Essie', 'Tolfrey');
insert into guests (firstName, lastName) values ('Lew', 'Gilders');
insert into guests (firstName, lastName) values ('Isidore', 'Raymen');
insert into guests (firstName, lastName) values ('Hadley', 'Caccavari');
insert into guests (firstName, lastName) values ('Emeline', 'Mottram');
insert into guests (firstName, lastName) values ('Ede', 'Whiles');
insert into guests (firstName, lastName) values ('Wilbur', 'Kimmitt');
insert into guests (firstName, lastName) values ('Reynard', 'Setchfield');
insert into guests (firstName, lastName) values ('Sandro', 'Mansel');
insert into guests (firstName, lastName) values ('Judd', 'Creak');
insert into guests (firstName, lastName) values ('Orville', 'Bateson');
insert into guests (firstName, lastName) values ('Rolando', 'Rugg');
insert into guests (firstName, lastName) values ('Humfrid', 'Dolton');
insert into guests (firstName, lastName) values ('Anatole', 'Benettelli');
insert into guests (firstName, lastName) values ('Virgilio', 'Shone');
insert into guests (firstName, lastName) values ('Beverley', 'Wrout');
insert into guests (firstName, lastName) values ('Ettie', 'Jakovijevic');
insert into guests (firstName, lastName) values ('Auria', 'Semble');
insert into guests (firstName, lastName) values ('Robby', 'Bernardes');
insert into guests (firstName, lastName) values ('Nicola', 'de Quesne');
insert into guests (firstName, lastName) values ('Conchita', 'Goter');
insert into guests (firstName, lastName) values ('Daryn', 'Bernat');
insert into guests (firstName, lastName) values ('Timmi', 'Monckton');
insert into guests (firstName, lastName) values ('Sid', 'Trevenu');
insert into guests (firstName, lastName) values ('Lona', 'Bridgen');
insert into guests (firstName, lastName) values ('Ira', 'Stockdale');
insert into guests (firstName, lastName) values ('Berenice', 'Colville');
insert into guests (firstName, lastName) values ('Vonny', 'Alastair');
insert into guests (firstName, lastName) values ('Gilly', 'Coney');
insert into guests (firstName, lastName) values ('Jobi', 'Sor');
insert into guests (firstName, lastName) values ('Germain', 'Ondrus');
insert into guests (firstName, lastName) values ('Kile', 'Girardoni');
insert into guests (firstName, lastName) values ('Hank', 'Kennelly');
insert into guests (firstName, lastName) values ('Tracey', 'Clapperton');
insert into guests (firstName, lastName) values ('Ernst', 'Nelane');
insert into guests (firstName, lastName) values ('Neall', 'Tibald');
insert into guests (firstName, lastName) values ('West', 'Smale');
insert into guests (firstName, lastName) values ('Ardyce', 'Snyder');
insert into guests (firstName, lastName) values ('Eldridge', 'Chicchetto');
insert into guests (firstName, lastName) values ('Carlo', 'Gantzer');
insert into guests (firstName, lastName) values ('Nan', 'Ratt');
insert into guests (firstName, lastName) values ('Babbie', 'McGillivray');
insert into guests (firstName, lastName) values ('Alexina', 'Gregolotti');
insert into guests (firstName, lastName) values ('Wolfie', 'Middup');
insert into guests (firstName, lastName) values ('Lind', 'Hannaway');
insert into guests (firstName, lastName) values ('Willem', 'Folbig');
insert into guests (firstName, lastName) values ('Guss', 'Banham');
insert into guests (firstName, lastName) values ('Viki', 'Pepis');
insert into guests (firstName, lastName) values ('Yuma', 'Silverthorn');
insert into guests (firstName, lastName) values ('Celestine', 'Matthiae');
insert into guests (firstName, lastName) values ('Nicolina', 'Miquelet');
insert into guests (firstName, lastName) values ('Morley', 'Cardero');
insert into guests (firstName, lastName) values ('Keeley', 'Canto');
insert into guests (firstName, lastName) values ('Farrell', 'Kleynermans');
insert into guests (firstName, lastName) values ('Marthe', 'Hearsum');
insert into guests (firstName, lastName) values ('Lauri', 'Cufflin');
insert into guests (firstName, lastName) values ('Dieter', 'Izatt');
insert into guests (firstName, lastName) values ('Arri', 'Jeste');
insert into guests (firstName, lastName) values ('Trudi', 'Pendred');
insert into guests (firstName, lastName) values ('Rhiamon', 'Care');
insert into guests (firstName, lastName) values ('Hilary', 'Wrench');
insert into guests (firstName, lastName) values ('Vinson', 'Rubinsztein');
insert into guests (firstName, lastName) values ('Effie', 'Dowson');
insert into guests (firstName, lastName) values ('Malinde', 'Houseman');
insert into guests (firstName, lastName) values ('Clevie', 'Reignolds');
insert into guests (firstName, lastName) values ('Vonni', 'Tremmel');
insert into guests (firstName, lastName) values ('Lebbie', 'Gilson');
insert into guests (firstName, lastName) values ('Clementina', 'Thacker');
insert into guests (firstName, lastName) values ('Jessy', 'Delacroux');
insert into guests (firstName, lastName) values ('Leta', 'Dalziel');
insert into guests (firstName, lastName) values ('Madelon', 'Showte');
insert into guests (firstName, lastName) values ('Claudette', 'Bough');
insert into guests (firstName, lastName) values ('Davis', 'Ingall');
insert into guests (firstName, lastName) values ('Mariya', 'Jennens');
insert into guests (firstName, lastName) values ('Shea', 'Clingan');
insert into guests (firstName, lastName) values ('Jedd', 'Peschet');
insert into guests (firstName, lastName) values ('Grier', 'Learoid');
insert into guests (firstName, lastName) values ('Ermentrude', 'Sumption');
insert into guests (firstName, lastName) values ('Buck', 'Woolrich');
insert into guests (firstName, lastName) values ('Legra', 'Guyver');
insert into guests (firstName, lastName) values ('Dido', 'Baldetti');
insert into guests (firstName, lastName) values ('Petronella', 'Twamley');
insert into guests (firstName, lastName) values ('Catlee', 'Habbin');
insert into guests (firstName, lastName) values ('Chariot', 'Raoux');
insert into guests (firstName, lastName) values ('Harrie', 'MacCafferky');
insert into guests (firstName, lastName) values ('Marja', 'Brandassi');
insert into guests (firstName, lastName) values ('Claus', 'Saberton');
insert into guests (firstName, lastName) values ('Essie', 'Millier');
insert into guests (firstName, lastName) values ('Ethan', 'Proven');
insert into guests (firstName, lastName) values ('Brina', 'Organer');
insert into guests (firstName, lastName) values ('Sheena', 'Storr');
insert into guests (firstName, lastName) values ('Scotty', 'Kerbey');
insert into guests (firstName, lastName) values ('Cathyleen', 'Houdhury');
insert into guests (firstName, lastName) values ('Odella', 'Dogg');
insert into guests (firstName, lastName) values ('Ikey', 'Davidavidovics');
insert into guests (firstName, lastName) values ('Julia', 'Hatchett');
insert into guests (firstName, lastName) values ('Marlin', 'Weiser');
insert into guests (firstName, lastName) values ('Kordula', 'Lambal');
insert into guests (firstName, lastName) values ('Tani', 'Andreolli');
insert into guests (firstName, lastName) values ('Kessia', 'Skilling');
insert into guests (firstName, lastName) values ('Donnamarie', 'Sallarie');
insert into guests (firstName, lastName) values ('Winnie', 'Goulter');
insert into guests (firstName, lastName) values ('Margaretta', 'Fennelow');
insert into guests (firstName, lastName) values ('Bendix', 'Tring');
insert into guests (firstName, lastName) values ('Klaus', 'Masic');
insert into guests (firstName, lastName) values ('Carson', 'Cunah');
insert into guests (firstName, lastName) values ('Daveta', 'Wooffitt');
insert into guests (firstName, lastName) values ('Mariann', 'Keneleyside');
insert into guests (firstName, lastName) values ('Tanny', 'Chesser');
insert into guests (firstName, lastName) values ('Carolynn', 'Gerrelt');
insert into guests (firstName, lastName) values ('Tybie', 'Hedylstone');
insert into guests (firstName, lastName) values ('Cathrin', 'Camelli');
insert into guests (firstName, lastName) values ('Mirabella', 'Knaggs');
insert into guests (firstName, lastName) values ('Athene', 'Birkett');
insert into guests (firstName, lastName) values ('Hunt', 'Spurnier');
insert into guests (firstName, lastName) values ('Gypsy', 'Jamson');
insert into guests (firstName, lastName) values ('Mahmoud', 'Grundey');
insert into guests (firstName, lastName) values ('Charita', 'Decruse');
insert into guests (firstName, lastName) values ('Charyl', 'Peddie');
insert into guests (firstName, lastName) values ('Melisandra', 'Outridge');
insert into guests (firstName, lastName) values ('Dame', 'Prettyjohn');
insert into guests (firstName, lastName) values ('Glyn', 'Gothup');
insert into guests (firstName, lastName) values ('Berty', 'Handrok');
insert into guests (firstName, lastName) values ('Darcy', 'Borleace');
insert into guests (firstName, lastName) values ('Kerry', 'Ellingworth');
insert into guests (firstName, lastName) values ('Pammy', 'Bater');
insert into guests (firstName, lastName) values ('Bailey', 'Pedican');
insert into guests (firstName, lastName) values ('Malena', 'Moatt');
insert into guests (firstName, lastName) values ('Jud', 'Sweetland');
insert into guests (firstName, lastName) values ('Robbert', 'Knivett');
insert into guests (firstName, lastName) values ('Kimbra', 'Dall');
insert into guests (firstName, lastName) values ('Ingar', 'Craufurd');
insert into guests (firstName, lastName) values ('Merwyn', 'Tregido');
insert into guests (firstName, lastName) values ('Francyne', 'Mahoney');
insert into guests (firstName, lastName) values ('Wendi', 'Strowther');
insert into guests (firstName, lastName) values ('Renate', 'Josefs');
insert into guests (firstName, lastName) values ('Eloise', 'Callam');
insert into guests (firstName, lastName) values ('Monique', 'Ox');
insert into guests (firstName, lastName) values ('Clovis', 'Shewring');
insert into guests (firstName, lastName) values ('Edsel', 'Jodrelle');
insert into guests (firstName, lastName) values ('Duffy', 'Corrigan');
insert into guests (firstName, lastName) values ('Morlee', 'Spoor');
insert into guests (firstName, lastName) values ('Correy', 'Wallas');
insert into guests (firstName, lastName) values ('Elana', 'Flisher');
insert into guests (firstName, lastName) values ('Carmon', 'Quickenden');
insert into guests (firstName, lastName) values ('Wallace', 'Tapping');
insert into guests (firstName, lastName) values ('Cyrill', 'Janusz');
insert into guests (firstName, lastName) values ('Mitzi', 'Cowwell');
insert into guests (firstName, lastName) values ('Jason', 'Roly');
insert into guests (firstName, lastName) values ('Tedie', 'Wealthall');
insert into guests (firstName, lastName) values ('Rhodie', 'Igounet');
insert into guests (firstName, lastName) values ('Lorette', 'Lattimore');
insert into guests (firstName, lastName) values ('Robena', 'Brewett');
insert into guests (firstName, lastName) values ('Halsey', 'Pithie');
insert into guests (firstName, lastName) values ('Tiffany', 'Rooke');
insert into guests (firstName, lastName) values ('Novelia', 'Domanski');
insert into guests (firstName, lastName) values ('Loise', 'Langeren');
insert into guests (firstName, lastName) values ('Guy', 'Donavan');
insert into guests (firstName, lastName) values ('Kerby', 'Sultana');
insert into guests (firstName, lastName) values ('Garrott', 'Dunbobbin');
insert into guests (firstName, lastName) values ('Aloisia', 'Drinkel');
insert into guests (firstName, lastName) values ('Eleen', 'M''cowis');
insert into guests (firstName, lastName) values ('Aymer', 'Coleson');
insert into guests (firstName, lastName) values ('Celka', 'Moulds');
insert into guests (firstName, lastName) values ('Archambault', 'Buret');
insert into guests (firstName, lastName) values ('Mitchell', 'Becarra');
insert into guests (firstName, lastName) values ('Reinwald', 'Moneti');
insert into guests (firstName, lastName) values ('Raoul', 'Newall');
insert into guests (firstName, lastName) values ('Ignazio', 'Shovelbottom');
insert into guests (firstName, lastName) values ('Harriette', 'Sivil');
insert into guests (firstName, lastName) values ('Bernadene', 'Butterworth');
insert into guests (firstName, lastName) values ('Tull', 'Peever');
insert into guests (firstName, lastName) values ('Traci', 'Crottagh');
insert into guests (firstName, lastName) values ('Lizzy', 'Noods');
insert into guests (firstName, lastName) values ('Hervey', 'Tolliday');
insert into guests (firstName, lastName) values ('Kele', 'Peaseman');
insert into guests (firstName, lastName) values ('Opalina', 'Henrionot');
insert into guests (firstName, lastName) values ('Haleigh', 'Treven');
insert into guests (firstName, lastName) values ('Tobit', 'Danilevich');
insert into guests (firstName, lastName) values ('Bessie', 'M''Quharge');
insert into guests (firstName, lastName) values ('Florry', 'Dameisele');
insert into guests (firstName, lastName) values ('Solomon', 'Colleck');
insert into guests (firstName, lastName) values ('Candi', 'Cucuzza');
insert into guests (firstName, lastName) values ('Jarret', 'Dartan');
insert into guests (firstName, lastName) values ('Trueman', 'Greeveson');
insert into guests (firstName, lastName) values ('Tamas', 'Doyle');
insert into guests (firstName, lastName) values ('Vin', 'Scotland');
insert into guests (firstName, lastName) values ('Nessy', 'Ayris');
insert into guests (firstName, lastName) values ('Mercie', 'Snoddy');
insert into guests (firstName, lastName) values ('Ashil', 'Cyster');
insert into guests (firstName, lastName) values ('Misha', 'Grayland');
insert into guests (firstName, lastName) values ('Lucine', 'MacNess');
insert into guests (firstName, lastName) values ('Ben', 'Rosenthaler');
insert into guests (firstName, lastName) values ('Garrott', 'Coey');
insert into guests (firstName, lastName) values ('Rodolfo', 'Algar');
insert into guests (firstName, lastName) values ('Giralda', 'Skypp');
insert into guests (firstName, lastName) values ('Elton', 'Enterle');
insert into guests (firstName, lastName) values ('Beitris', 'Hume');
insert into guests (firstName, lastName) values ('Brunhilde', 'Sheppey');
insert into guests (firstName, lastName) values ('Les', 'Leeming');
insert into guests (firstName, lastName) values ('Eustacia', 'Stalley');
insert into guests (firstName, lastName) values ('Janine', 'Senett');
insert into guests (firstName, lastName) values ('Ruben', 'Gosart');
insert into guests (firstName, lastName) values ('Gordon', 'Vaan');
insert into guests (firstName, lastName) values ('Prentice', 'Glenfield');
insert into guests (firstName, lastName) values ('Carlyle', 'Dear');
insert into guests (firstName, lastName) values ('Lianna', 'Hudspeth');
insert into guests (firstName, lastName) values ('Martynne', 'Handscomb');
insert into guests (firstName, lastName) values ('Dasya', 'Jarritt');
insert into guests (firstName, lastName) values ('Lesly', 'Mathely');
insert into guests (firstName, lastName) values ('Josy', 'Pettiford');
insert into guests (firstName, lastName) values ('Luigi', 'Sawer');
insert into guests (firstName, lastName) values ('Drucie', 'Madoc-Jones');
insert into guests (firstName, lastName) values ('Sibeal', 'Oswald');
insert into guests (firstName, lastName) values ('Rasla', 'Sancho');
insert into guests (firstName, lastName) values ('Daveen', 'Janouch');
insert into guests (firstName, lastName) values ('Randell', 'Stihl');
insert into guests (firstName, lastName) values ('Elmo', 'Breakspear');
insert into guests (firstName, lastName) values ('Glenna', 'Englefield');
insert into guests (firstName, lastName) values ('Kele', 'Merrisson');
insert into guests (firstName, lastName) values ('Idette', 'Sotham');

insert into hotels (name) values ('Farmer’s Daughter Hotel');
insert into hotels (name) values ('Ace Hotel');
insert into hotels (name) values ('Great Gravity Hotel');
insert into hotels (name) values ('Your Tokyo Hotel');
insert into hotels (name) values ('5 Star Getaway');
insert into hotels (name) values ('Hotel Cirrus Shake');
insert into hotels (name) values ('Ube Hotel');
insert into hotels (name) values ('Going to Haven');
insert into hotels (name) values ('SleepyCrew Hub');
insert into hotels (name) values ('Gotham Hotel');
insert into hotels (name) values ('Giggle Resort');
insert into hotels (name) values ('The Enchanted Garden');
insert into hotels (name) values ('Hotel Lemonade');
insert into hotels (name) values ('Hotel Joy Stick');
insert into hotels (name) values ('Breeze Blows Hotel');
insert into hotels (name) values ('Wordly Traveller Hotel');
insert into hotels (name) values ('Cable Car Hotel');
insert into hotels (name) values ('Hotel Vitality');
insert into hotels (name) values ('Land’s End Resort');
insert into hotels (name) values ('Walkabout Beach Hotel');
insert into hotels (name) values ('Familiar Inn');
insert into hotels (name) values ('Sun and Sand Hotel');
insert into hotels (name) values ('The Better Inn');
insert into hotels (name) values ('Hotel Fusion');
insert into hotels (name) values ('The Enchanted Garden');
insert into hotels (name) values ('The Welcome Mat');
insert into hotels (name) values ('Priority Hospitality');
insert into hotels (name) values ('Country Charm Hotel');
insert into hotels (name) values ('Always Welcome');
insert into hotels (name) values ('The Glory Hotel');
insert into hotels (name) values ('Sandy Bloom');
insert into hotels (name) values ('Dream Desert Hotel');
insert into hotels (name) values ('Urban Boutique Hotel');
insert into hotels (name) values ('Mayflower Boutique Hotel');
insert into hotels (name) values ('Bentley’s Boutique Hotel');
insert into hotels (name) values ('Oceana Boutique Hotel');
insert into hotels (name) values ('La Sky Boutique Hotel');
insert into hotels (name) values ('Ivy Boutique Hotel');
insert into hotels (name) values ('The Maxwell Hotel');
insert into hotels (name) values ('Cachet Boutique Hotel');
insert into hotels (name) values ('Temptation Inn and Boutique');
insert into hotels (name) values ('Chip Inn');
insert into hotels (name) values ('Rydeaux Boutique');
insert into hotels (name) values ('The Scarlett House Hotels');
insert into hotels (name) values ('The Gourmet Hotel');
insert into hotels (name) values ('Fresh Wave Boutique Hotel');
insert into hotels (name) values ('The Better Hotel');
insert into hotels (name) values ('TagayTay Boutique Hotel');
insert into hotels (name) values ('Grand & Epic Boutique Hotel');
insert into hotels (name) values ('La Serene Boutique Hotel');
insert into hotels (name) values ('Red Flag Boutique Hotel');
insert into hotels (name) values ('Moss View Boutique Hotel');
insert into hotels (name) values ('Zion Boutique');
insert into hotels (name) values ('Seascape Boutique Inn');
insert into hotels (name) values ('Insta Feel Boutique Hotel');
insert into hotels (name) values ('The Cozy Cottage');
insert into hotels (name) values ('Comfort Inn');
insert into hotels (name) values ('The Ivy Boutique Hotel');
insert into hotels (name) values ('Marriott');
insert into hotels (name) values ('The Luxury Collection Hotels & Resorts');
insert into hotels (name) values ('St Regis Hotels');
insert into hotels (name) values ('Hyatt');
insert into hotels (name) values ('Rosewood Hotels & Resorts');
insert into hotels (name) values ('Aman Resorts');
insert into hotels (name) values ('Four Seasons');
insert into hotels (name) values ('Voyage Resort');
insert into hotels (name) values ('Ramada Hollywood');
insert into hotels (name) values ('Hilton Hotels');
insert into hotels (name) values ('Hampton Inn & Suites');
insert into hotels (name) values ('Fitzgerald Hotel');
insert into hotels (name) values ('Ibis');
insert into hotels (name) values ('Holiday Inn');
insert into hotels (name) values ('Crowne Plaza Hotels');

insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (240, 6, 4, 1, 1, 52);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (923, 3, 636, 1, 74, 20);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (267, 3, 548, 0, 163, 71);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (261, 8, 346, 1, 1, 47);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (786, 9, 711, 0, 1, 21);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (876, 5, 371, 1, 73, 42);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (686, 9, 694, 1, 1, 36);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (536, 1, 545, 0, 1, 42);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (192, 6, 315, 0, 503, 16);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (483, 3, 810, 1, 202, 26);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (322, 8, 668, 0, 1, 11);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (926, 3, 993, 1, 1, 4);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (480, 7, 71, 0, 1, 68);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (707, 4, 307, 1, 236, 25);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (553, 5, 827, 1, 289, 6);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (376, 6, 950, 0, 1, 25);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (640, 3, 648, 1, 252, 6);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (477, 7, 24, 1, 360, 25);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (508, 6, 799, 1, 91, 40);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (570, 4, 348, 1, 1, 41);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (339, 1, 40, 1, 1, 31);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (559, 5, 796, 1, 1, 27);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (477, 3, 325, 0, 470, 49);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (20, 2, 282, 0, 1, 61);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (757, 4, 503, 1, 1, 30);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (391, 4, 614, 1, 257, 63);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (959, 8, 446, 0, 1, 73);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (879, 3, 50, 0, 1, 19);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (914, 5, 199, 0, 264, 45);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (811, 7, 611, 0, 1, 21);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (120, 6, 138, 0, 1, 70);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (183, 5, 441, 1, 1, 13);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (910, 3, 360, 0, 475, 22);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (567, 4, 234, 1, 184, 31);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (621, 7, 724, 0, 1, 37);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (891, 4, 226, 0, 1, 7);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (226, 4, 411, 1, 1, 11);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (611, 2, 739, 1, 215, 74);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (752, 2, 809, 0, 160, 35);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (481, 7, 660, 0, 1, 34);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (809, 6, 276, 0, 1, 73);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (926, 6, 922, 1, 493, 54);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (44, 3, 51, 1, 198, 45);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (559, 7, 144, 0, 478, 9);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (446, 5, 464, 1, 1, 54);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (345, 3, 329, 1, 24, 18);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (572, 8, 747, 1, 248, 48);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (12, 5, 657, 0, 235, 25);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (682, 7, 768, 0, 463, 1);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (460, 5, 747, 1, 448, 15);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (935, 6, 993, 1, 310, 57);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (665, 4, 14, 0, 1, 31);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (711, 9, 497, 0, 361, 34);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (39, 3, 454, 1, 1, 39);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (433, 9, 900, 0, 1, 65);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (344, 2, 220, 1, 217, 44);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (205, 8, 823, 1, 239, 68);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (734, 6, 541, 1, 62, 74);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (654, 7, 440, 0, 327, 71);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (266, 2, 346, 0, 6, 63);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (50, 9, 975, 0, 1, 23);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (711, 5, 768, 1, 1, 10);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (325, 9, 331, 1, 63, 8);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (816, 7, 850, 0, 325, 36);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (198, 7, 166, 1, 455, 20);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (612, 2, 10, 0, 1, 34);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (242, 6, 733, 0, 1, 60);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (632, 2, 68, 0, 223, 34);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (650, 9, 766, 0, 182, 53);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (291, 4, 579, 1, 1, 34);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (812, 7, 851, 0, 305, 15);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (536, 1, 817, 0, 376, 68);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (966, 7, 572, 1, 388, 30);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (853, 5, 637, 0, 172, 56);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (861, 5, 262, 0, 1, 52);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (927, 4, 65, 1, 1, 27);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (551, 8, 127, 1, 214, 26);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (530, 3, 343, 0, 1, 69);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (907, 4, 239, 0, 326, 2);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (36, 3, 654, 1, 1, 72);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (583, 7, 266, 1, 472, 21);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (156, 8, 842, 0, 313, 35);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (444, 8, 376, 1, 1, 10);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (617, 5, 292, 0, 1, 73);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (898, 6, 641, 0, 494, 45);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (140, 8, 269, 1, 49, 3);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (748, 5, 416, 1, 1, 64);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (310, 2, 574, 0, 1, 51);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (232, 2, 795, 0, 1, 7);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (856, 9, 349, 1, 1, 49);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (367, 9, 736, 0, 165, 62);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (609, 6, 239, 0, 415, 73);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (965, 6, 679, 0, 1, 10);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (625, 6, 934, 0, 166, 70);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (468, 9, 446, 1, 273, 44);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (333, 1, 487, 1, 1, 60);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (643, 4, 600, 0, 1, 75);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (334, 4, 675, 1, 1, 23);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (244, 4, 247, 1, 75, 50);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (560, 2, 321, 1, 1, 76);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (408, 5, 477, 0, 1, 9);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (115, 7, 9, 1, 361, 12);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (835, 6, 620, 1, 1, 2);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (482, 7, 216, 0, 1, 2);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (278, 6, 8, 0, 1, 14);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (390, 4, 532, 0, 1, 27);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (756, 8, 172, 0, 267, 53);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (883, 7, 985, 0, 1, 62);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (385, 3, 883, 0, 1, 59);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (472, 8, 463, 1, 1, 48);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (284, 4, 497, 0, 1, 10);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (559, 6, 473, 1, 1, 8);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (496, 7, 20, 0, 1, 67);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (667, 1, 154, 1, 1, 1);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (765, 5, 349, 0, 1, 35);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (692, 2, 286, 1, 450, 18);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (645, 2, 271, 1, 1, 20);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (415, 4, 951, 1, 167, 59);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (781, 8, 457, 1, 60, 73);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (369, 8, 410, 0, 1, 51);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (930, 2, 757, 0, 1, 16);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (585, 1, 714, 1, 364, 34);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (529, 3, 809, 1, 290, 1);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (693, 1, 229, 1, 1, 8);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (797, 3, 792, 1, 177, 55);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (925, 4, 638, 1, 1, 65);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (196, 9, 624, 1, 1, 62);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (548, 9, 60, 0, 1, 24);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (763, 5, 969, 1, 1, 45);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (563, 5, 239, 0, 1, 66);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (389, 2, 665, 1, 1, 23);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (406, 4, 136, 0, 1, 51);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (629, 3, 719, 0, 1, 57);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (310, 6, 607, 1, 1, 20);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (479, 5, 298, 0, 1, 67);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (636, 9, 34, 1, 1, 22);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (981, 8, 331, 0, 1, 8);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (131, 2, 994, 1, 1, 37);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (972, 3, 832, 1, 1, 54);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (911, 5, 748, 1, 393, 48);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (942, 2, 755, 1, 135, 7);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (416, 6, 191, 1, 1, 74);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (608, 3, 873, 0, 1, 52);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (304, 8, 905, 1, 1, 62);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (390, 4, 399, 0, 308, 31);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (489, 2, 237, 0, 1, 57);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (40, 6, 5, 0, 1, 24);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (284, 3, 303, 0, 243, 49);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (609, 5, 698, 1, 185, 43);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (530, 1, 835, 1, 228, 72);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (426, 9, 688, 0, 1, 13);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (931, 9, 469, 0, 327, 50);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (213, 7, 473, 1, 215, 59);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (952, 8, 718, 1, 1, 8);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (54, 4, 722, 1, 16, 72);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (90, 6, 115, 1, 278, 54);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (838, 8, 136, 0, 420, 31);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (464, 3, 364, 0, 206, 18);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (416, 8, 216, 1, 1, 22);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (548, 7, 648, 0, 1, 54);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (695, 9, 597, 1, 1, 5);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (382, 5, 932, 0, 1, 43);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (991, 2, 846, 1, 351, 40);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (788, 1, 107, 0, 361, 54);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (544, 4, 445, 1, 477, 22);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (94, 4, 466, 1, 396, 28);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (718, 3, 528, 0, 231, 54);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (942, 1, 218, 0, 1, 64);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (166, 6, 968, 0, 28, 11);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (578, 2, 320, 1, 201, 65);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (615, 8, 991, 0, 39, 58);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (742, 2, 134, 1, 1, 55);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (193, 9, 59, 0, 337, 52);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (696, 2, 851, 1, 295, 71);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (477, 9, 715, 1, 1, 50);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (797, 9, 35, 0, 247, 73);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (141, 1, 458, 0, 303, 24);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (795, 1, 662, 1, 150, 9);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (658, 1, 451, 1, 1, 42);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (812, 8, 735, 1, 1, 57);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (663, 9, 199, 0, 1, 49);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (509, 9, 623, 0, 305, 56);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (752, 2, 256, 1, 255, 7);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (332, 1, 172, 0, 1, 16);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (469, 9, 608, 0, 1, 30);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (770, 9, 788, 1, 142, 2);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (795, 6, 640, 1, 1, 59);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (961, 7, 978, 1, 1, 37);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (309, 5, 830, 1, 1, 38);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (557, 4, 481, 1, 1, 20);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (368, 8, 344, 0, 1, 57);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (816, 6, 907, 1, 1, 68);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (908, 4, 967, 0, 229, 12);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (345, 9, 213, 1, 178, 40);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (659, 5, 800, 1, 1, 50);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (985, 6, 692, 1, 1, 72);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (332, 7, 433, 1, 82, 19);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (941, 4, 555, 0, 140, 71);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (975, 7, 119, 0, 125, 30);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (123, 8, 978, 0, 1, 46);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (314, 5, 157, 0, 1, 51);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (722, 5, 264, 0, 314, 10);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (602, 1, 945, 0, 125, 37);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (124, 9, 248, 0, 143, 61);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (950, 1, 884, 1, 1, 15);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (14, 3, 528, 1, 123, 28);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (466, 8, 709, 0, 502, 74);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (452, 4, 52, 0, 1, 71);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (868, 9, 948, 0, 435, 15);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (368, 5, 177, 0, 333, 37);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (463, 4, 316, 0, 15, 74);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (301, 1, 429, 0, 352, 62);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (487, 2, 514, 1, 1, 50);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (776, 5, 100, 1, 1, 10);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (409, 5, 207, 1, 1, 22);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (304, 8, 270, 0, 211, 75);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (484, 4, 546, 1, 1, 17);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (663, 9, 801, 0, 1, 9);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (726, 3, 681, 0, 320, 71);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (74, 1, 806, 1, 1, 26);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (535, 5, 230, 1, 1, 72);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (408, 4, 735, 0, 1, 72);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (373, 6, 886, 0, 431, 19);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (566, 3, 372, 0, 406, 29);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (20, 4, 553, 0, 1, 67);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (212, 2, 907, 0, 49, 19);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (920, 8, 57, 0, 68, 44);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (989, 2, 408, 0, 1, 34);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (362, 9, 831, 1, 82, 27);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (447, 3, 627, 1, 437, 74);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (464, 6, 677, 0, 1, 66);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (112, 9, 508, 1, 163, 50);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (87, 7, 270, 1, 1, 3);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (812, 3, 614, 0, 1, 2);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (796, 8, 799, 1, 238, 23);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (531, 8, 995, 1, 335, 27);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (75, 3, 877, 1, 1, 7);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (60, 6, 937, 1, 1, 64);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (975, 6, 720, 0, 1, 65);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (310, 6, 765, 0, 1, 54);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (653, 9, 649, 0, 135, 5);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (74, 2, 750, 0, 350, 16);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (702, 2, 138, 1, 196, 71);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (381, 4, 303, 1, 371, 11);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (14, 7, 843, 1, 224, 29);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (491, 9, 566, 1, 86, 35);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (765, 6, 598, 0, 1, 40);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (379, 3, 512, 0, 475, 25);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (166, 5, 843, 0, 1, 59);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (308, 4, 115, 0, 1, 59);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (153, 4, 445, 0, 409, 74);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (627, 8, 24, 0, 150, 41);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (594, 6, 177, 1, 320, 65);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (916, 3, 759, 0, 1, 42);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (782, 8, 166, 0, 1, 13);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (984, 3, 697, 1, 1, 11);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (746, 6, 364, 1, 278, 54);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (604, 6, 870, 0, 1, 66);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (651, 6, 687, 0, 480, 42);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (726, 6, 562, 1, 168, 41);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (847, 7, 55, 1, 1, 68);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (496, 5, 645, 0, 177, 17);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (655, 3, 937, 0, 1, 57);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (35, 7, 942, 1, 70, 60);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (931, 3, 590, 0, 267, 10);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (689, 9, 473, 0, 24, 54);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (245, 2, 581, 0, 446, 73);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (998, 4, 985, 0, 1, 16);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (648, 9, 940, 0, 446, 34);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (670, 9, 183, 0, 1, 44);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (656, 8, 892, 0, 301, 7);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (212, 9, 700, 0, 188, 1);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (968, 9, 143, 1, 402, 69);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (721, 5, 696, 0, 85, 36);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (607, 7, 108, 0, 1, 48);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (622, 5, 292, 1, 1, 44);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (562, 3, 846, 0, 1, 48);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (824, 9, 623, 0, 470, 64);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (749, 7, 178, 0, 441, 59);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (670, 9, 403, 1, 92, 41);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (223, 5, 266, 1, 1, 75);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (511, 7, 710, 1, 1, 11);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (778, 7, 985, 0, 502, 41);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (966, 9, 111, 0, 1, 54);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (478, 1, 219, 0, 275, 61);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (496, 9, 833, 1, 225, 33);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (571, 1, 590, 1, 259, 28);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (627, 3, 180, 0, 399, 62);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (380, 1, 825, 1, 1, 25);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (714, 9, 582, 0, 216, 18);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (525, 5, 693, 0, 2, 11);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (28, 8, 123, 1, 137, 69);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (723, 9, 345, 0, 380, 67);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (262, 6, 428, 1, 1, 45);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (273, 9, 938, 1, 122, 17);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (189, 4, 732, 1, 316, 19);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (886, 1, 155, 1, 1, 23);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (359, 6, 855, 0, 28, 43);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (836, 2, 268, 0, 281, 63);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (321, 2, 96, 0, 80, 66);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (156, 9, 209, 0, 499, 30);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (245, 7, 306, 1, 107, 8);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (277, 1, 155, 0, 1, 24);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (613, 2, 741, 0, 347, 36);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (208, 6, 830, 0, 1, 23);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (600, 9, 158, 1, 1, 36);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (70, 9, 734, 1, 1, 19);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (965, 2, 201, 0, 57, 64);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (614, 8, 266, 0, 1, 74);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (426, 8, 198, 1, 1, 65);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (716, 5, 500, 0, 71, 50);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (594, 5, 903, 0, 167, 32);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (773, 9, 470, 0, 250, 6);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (39, 6, 980, 1, 176, 54);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (975, 3, 322, 0, 1, 6);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (267, 1, 866, 1, 1, 27);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (448, 9, 481, 0, 420, 1);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (801, 4, 123, 0, 15, 25);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (188, 5, 301, 0, 1, 32);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (195, 1, 907, 0, 1, 58);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (757, 6, 442, 0, 1, 63);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (484, 2, 135, 0, 1, 59);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (234, 9, 507, 0, 418, 40);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (525, 8, 51, 0, 84, 59);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (268, 5, 145, 0, 1, 22);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (832, 1, 917, 1, 150, 18);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (318, 6, 119, 0, 1, 45);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (833, 9, 20, 1, 77, 16);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (277, 3, 483, 1, 363, 46);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (32, 4, 895, 1, 64, 19);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (990, 9, 741, 0, 1, 12);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (698, 7, 499, 0, 301, 65);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (922, 6, 793, 1, 67, 5);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (493, 9, 342, 0, 1, 27);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (554, 9, 326, 1, 1, 66);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (205, 9, 139, 1, 1, 50);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (987, 8, 442, 0, 1, 31);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (47, 7, 773, 0, 125, 62);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (919, 1, 592, 0, 121, 18);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (504, 7, 819, 0, 227, 73);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (49, 8, 375, 1, 85, 46);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (215, 8, 692, 0, 1, 56);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (305, 4, 305, 1, 1, 19);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (563, 3, 169, 0, 1, 46);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (776, 3, 590, 1, 1, 75);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (553, 4, 127, 1, 1, 47);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (221, 5, 423, 1, 374, 29);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (377, 4, 713, 0, 415, 40);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (874, 7, 494, 1, 1, 40);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (252, 3, 96, 1, 1, 61);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (571, 4, 311, 1, 147, 22);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (91, 3, 604, 1, 1, 18);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (292, 2, 818, 1, 1, 40);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (408, 9, 728, 1, 417, 36);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (790, 2, 110, 0, 1, 55);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (422, 2, 883, 1, 1, 9);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (577, 2, 296, 1, 1, 23);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (979, 7, 151, 1, 387, 24);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (7, 5, 243, 0, 1, 18);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (714, 1, 560, 0, 69, 32);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (532, 7, 6, 0, 355, 9);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (768, 5, 626, 0, 1, 62);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (176, 1, 917, 1, 1, 13);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (116, 9, 161, 0, 1, 49);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (66, 5, 896, 1, 199, 14);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (281, 2, 991, 1, 476, 69);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (741, 8, 199, 0, 17, 17);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (31, 3, 717, 0, 211, 28);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (400, 3, 366, 1, 200, 17);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (614, 5, 759, 0, 189, 15);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (48, 4, 998, 0, 1, 54);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (611, 9, 453, 1, 277, 22);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (626, 6, 810, 0, 389, 24);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (112, 1, 898, 0, 71, 5);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (761, 2, 461, 0, 1, 65);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (352, 3, 663, 0, 123, 68);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (1, 3, 638, 0, 248, 1);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (86, 7, 600, 1, 127, 63);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (864, 5, 617, 1, 1, 23);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (876, 4, 825, 0, 1, 14);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (12, 4, 992, 1, 194, 27);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (120, 7, 322, 1, 67, 52);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (974, 6, 147, 0, 1, 62);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (402, 4, 393, 0, 133, 14);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (67, 8, 150, 1, 1, 35);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (527, 1, 591, 1, 70, 48);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (331, 1, 611, 1, 1, 14);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (509, 7, 285, 0, 455, 38);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (71, 5, 666, 1, 468, 55);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (729, 4, 571, 1, 158, 8);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (497, 7, 184, 0, 1, 42);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (620, 2, 382, 0, 1, 15);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (385, 1, 79, 0, 22, 9);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (344, 5, 531, 1, 1, 52);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (515, 7, 377, 0, 478, 58);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (397, 7, 914, 0, 444, 29);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (498, 2, 204, 0, 1, 8);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (555, 6, 213, 0, 1, 40);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (609, 4, 821, 1, 264, 23);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (391, 6, 18, 0, 91, 9);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (964, 4, 275, 0, 460, 28);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (984, 3, 416, 1, 1, 42);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (194, 6, 455, 0, 124, 15);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (669, 2, 950, 0, 299, 32);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (943, 9, 829, 0, 1, 1);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (23, 9, 522, 0, 1, 34);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (211, 2, 934, 1, 360, 49);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (375, 5, 188, 0, 491, 66);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (136, 2, 860, 1, 23, 65);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (556, 9, 308, 1, 246, 30);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (144, 8, 903, 0, 428, 25);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (594, 7, 515, 0, 183, 60);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (443, 1, 516, 1, 366, 72);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (820, 7, 107, 0, 391, 68);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (332, 4, 211, 0, 1, 55);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (872, 1, 492, 0, 493, 56);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (44, 3, 629, 0, 312, 66);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (23, 1, 410, 0, 130, 62);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (176, 6, 367, 0, 357, 60);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (713, 1, 70, 1, 1, 64);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (437, 8, 512, 0, 491, 6);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (683, 7, 815, 1, 294, 41);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (784, 6, 7, 1, 1, 15);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (668, 4, 671, 0, 1, 12);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (414, 2, 782, 1, 489, 27);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (985, 4, 999, 0, 497, 12);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (13, 8, 896, 1, 1, 12);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (535, 7, 139, 1, 1, 37);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (475, 8, 329, 1, 1, 1);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (660, 5, 269, 1, 210, 74);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (704, 8, 381, 1, 1, 56);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (776, 6, 206, 1, 318, 5);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (636, 2, 507, 0, 307, 31);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (826, 9, 886, 1, 1, 54);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (320, 6, 537, 0, 410, 51);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (246, 3, 617, 1, 235, 7);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (206, 4, 903, 1, 40, 17);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (70, 4, 226, 0, 1, 68);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (90, 9, 236, 0, 1, 42);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (252, 4, 254, 0, 219, 68);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (104, 5, 913, 0, 324, 57);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (53, 1, 310, 0, 1, 27);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (765, 8, 103, 0, 1, 54);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (239, 9, 147, 1, 1, 34);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (344, 9, 896, 1, 1, 69);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (469, 8, 502, 1, 1, 20);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (903, 6, 377, 0, 1, 74);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (735, 7, 624, 1, 292, 68);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (843, 2, 369, 1, 71, 63);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (73, 9, 267, 0, 1, 56);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (891, 3, 756, 0, 1, 73);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (11, 4, 44, 1, 1, 7);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (424, 3, 242, 0, 463, 57);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (532, 5, 486, 0, 232, 66);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (978, 7, 784, 0, 1, 6);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (462, 8, 808, 1, 1, 39);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (380, 4, 555, 0, 390, 58);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (146, 1, 848, 1, 1, 58);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (95, 5, 354, 1, 392, 1);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (782, 5, 670, 0, 1, 26);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (523, 2, 917, 1, 1, 30);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (11, 7, 343, 0, 155, 25);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (891, 2, 673, 1, 255, 44);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (181, 8, 914, 1, 105, 16);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (182, 7, 720, 0, 484, 72);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (511, 7, 468, 0, 490, 56);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (99, 9, 758, 0, 364, 61);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (119, 7, 343, 1, 1, 33);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (922, 2, 60, 0, 276, 3);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (690, 5, 988, 1, 4, 18);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (356, 1, 115, 0, 318, 1);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (56, 9, 493, 1, 1, 60);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (192, 2, 556, 0, 1, 20);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (402, 9, 933, 1, 1, 60);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (691, 3, 117, 1, 1, 11);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (215, 5, 258, 0, 396, 16);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (215, 4, 27, 0, 1, 26);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (965, 4, 543, 1, 1, 9);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (503, 6, 721, 0, 1, 62);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (67, 2, 368, 0, 1, 54);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (717, 3, 716, 1, 191, 42);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (669, 3, 963, 1, 413, 55);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (920, 6, 772, 0, 369, 17);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (230, 3, 371, 0, 1, 64);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (883, 1, 95, 0, 428, 43);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (312, 8, 231, 1, 25, 29);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (54, 8, 295, 1, 1, 75);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (23, 8, 592, 0, 457, 28);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (10, 6, 105, 1, 13, 38);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (424, 1, 400, 1, 1, 27);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (192, 6, 49, 0, 471, 17);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (444, 8, 445, 1, 305, 10);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (385, 6, 801, 1, 1, 73);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (400, 7, 89, 1, 1, 15);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (850, 9, 197, 1, 1, 69);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (748, 3, 428, 1, 276, 38);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (300, 4, 886, 0, 1, 23);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (126, 7, 56, 1, 1, 42);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (752, 8, 510, 0, 433, 46);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (211, 5, 301, 1, 1, 59);
