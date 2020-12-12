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

insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (9801, 4, 574, 1, 226, 2);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (5483, 2, 531, 1, 79, 61);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (6675, 9, 788, 1, 18, 18);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (5951, 7, 177, 0, 136, 20);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (2489, 7, 266, 1, 240, 73);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (8132, 2, 86, 1, 434, 37);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (687, 2, 66, 1, 112, 23);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (7048, 7, 193, 1, 292, 74);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (3081, 7, 830, 1, 274, 7);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (7727, 2, 560, 0, 36, 27);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (2060, 1, 764, 0, 333, 28);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (22, 7, 82, 1, 87, 28);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (4315, 2, 135, 1, 208, 76);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (8400, 6, 757, 0, 280, 65);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (1958, 5, 806, 1, 227, 50);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (3994, 5, 118, 0, 12, 4);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (7676, 8, 829, 1, 392, 72);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (7461, 2, 704, 1, 77, 25);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (4827, 7, 983, 1, 14, 23);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (5268, 9, 606, 0, 328, 45);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (2258, 9, 763, 0, 146, 15);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (8244, 5, 644, 1, 63, 5);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (1186, 3, 554, 1, 131, 34);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (6241, 2, 609, 1, 481, 48);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (3548, 7, 887, 0, 413, 45);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (2476, 2, 399, 1, 431, 51);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (7873, 2, 423, 1, 263, 11);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (8171, 1, 823, 1, 55, 23);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (1414, 3, 177, 0, 283, 26);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (8893, 3, 523, 1, 139, 45);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (9563, 1, 694, 1, 54, 31);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (1900, 5, 893, 1, 434, 40);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (3660, 9, 12, 0, 364, 20);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (1967, 7, 18, 0, 179, 15);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (6977, 1, 653, 0, 303, 23);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (3591, 2, 187, 0, 352, 58);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (1142, 9, 121, 1, 41, 71);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (6931, 4, 588, 1, 147, 34);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (965, 5, 170, 0, 174, 57);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (366, 8, 343, 0, 277, 53);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (5835, 2, 693, 0, 93, 52);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (3042, 6, 17, 0, 170, 9);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (539, 6, 214, 1, 227, 57);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (2548, 3, 898, 0, 148, 4);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (8564, 1, 918, 1, 163, 8);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (5436, 9, 533, 0, 353, 55);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (3204, 4, 769, 0, 181, 64);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (5013, 5, 265, 0, 266, 13);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (8805, 2, 250, 0, 419, 27);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (808, 6, 634, 1, 259, 8);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (6381, 7, 72, 0, 291, 34);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (4746, 5, 50, 0, 453, 70);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (1320, 1, 235, 0, 406, 22);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (768, 1, 707, 1, 457, 44);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (4784, 8, 40, 1, 366, 29);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (5509, 5, 355, 1, 473, 15);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (2607, 2, 676, 1, 236, 49);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (7708, 9, 455, 1, 463, 10);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (517, 7, 118, 0, 369, 19);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (1691, 9, 959, 1, 364, 7);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (3593, 2, 440, 0, 381, 38);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (821, 3, 770, 0, 244, 28);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (2430, 8, 139, 1, 223, 6);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (2970, 3, 425, 0, 475, 21);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (7089, 8, 866, 1, 115, 58);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (2766, 2, 858, 1, 252, 39);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (119, 4, 898, 1, 331, 12);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (3483, 8, 419, 1, 71, 61);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (6330, 6, 128, 0, 70, 1);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (3747, 2, 622, 1, 415, 14);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (6826, 5, 521, 0, 200, 76);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (7434, 7, 252, 1, 219, 33);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (4465, 8, 200, 1, 16, 60);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (3523, 3, 119, 0, 306, 52);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (9668, 6, 787, 1, 338, 48);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (7272, 3, 896, 1, 194, 71);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (4317, 2, 842, 0, 102, 45);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (4444, 9, 929, 1, 353, 9);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (3536, 5, 695, 0, 323, 37);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (2186, 1, 23, 1, 90, 70);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (3852, 2, 526, 1, 388, 28);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (8202, 1, 359, 0, 413, 73);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (5156, 5, 835, 0, 364, 31);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (5559, 1, 884, 1, 396, 4);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (7839, 8, 506, 1, 393, 76);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (5177, 6, 200, 1, 336, 67);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (682, 1, 67, 0, 181, 25);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (8949, 6, 260, 1, 24, 38);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (4125, 4, 826, 1, 261, 60);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (6393, 3, 102, 0, 9, 15);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (9342, 4, 86, 1, 248, 56);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (6833, 6, 692, 0, 341, 23);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (8276, 2, 18, 0, 468, 64);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (420, 4, 299, 0, 218, 49);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (1639, 9, 832, 1, 55, 29);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (1239, 3, 824, 1, 224, 42);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (8435, 5, 230, 1, 460, 3);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (1451, 9, 655, 1, 476, 53);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (2768, 5, 519, 0, 251, 39);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (3408, 8, 572, 0, 382, 20);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (7856, 7, 932, 0, 120, 14);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (4579, 2, 303, 0, 493, 58);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (3283, 3, 427, 1, 49, 5);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (1345, 9, 371, 0, 314, 58);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (7286, 8, 598, 0, 224, 12);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (1957, 2, 183, 0, 264, 57);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (9207, 5, 619, 0, 80, 27);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (177, 1, 637, 1, 470, 12);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (8512, 6, 88, 0, 265, 44);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (1104, 5, 742, 0, 183, 10);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (9343, 4, 918, 0, 420, 44);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (4973, 1, 94, 0, 249, 69);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (2715, 4, 508, 1, 49, 51);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (8121, 4, 243, 1, 354, 58);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (5619, 6, 81, 1, 256, 44);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (7283, 1, 327, 1, 356, 58);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (6363, 2, 32, 1, 396, 40);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (1125, 3, 986, 0, 222, 28);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (9103, 5, 107, 0, 368, 61);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (2988, 2, 470, 0, 197, 74);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (3600, 4, 642, 0, 416, 43);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (7907, 7, 773, 0, 493, 7);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (4225, 5, 880, 0, 276, 20);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (8483, 6, 404, 1, 356, 37);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (1892, 5, 783, 0, 159, 4);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (2824, 8, 612, 1, 230, 64);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (7018, 1, 274, 1, 136, 60);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (9425, 3, 325, 0, 339, 10);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (8992, 5, 190, 0, 422, 3);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (5711, 7, 115, 0, 72, 1);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (3707, 9, 164, 1, 274, 51);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (558, 4, 59, 0, 245, 60);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (1536, 7, 624, 1, 476, 15);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (7032, 1, 240, 0, 229, 43);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (7575, 6, 610, 0, 400, 28);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (1344, 1, 858, 1, 168, 46);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (9930, 9, 632, 1, 262, 34);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (104, 7, 843, 0, 144, 22);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (2452, 7, 388, 0, 172, 22);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (5550, 8, 438, 1, 417, 63);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (9787, 7, 8, 0, 123, 34);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (6951, 6, 678, 0, 214, 20);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (6657, 2, 198, 1, 49, 7);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (2968, 6, 842, 0, 422, 63);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (6092, 6, 356, 0, 369, 29);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (9760, 1, 564, 1, 220, 42);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (6493, 2, 368, 1, 451, 47);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (7486, 3, 909, 0, 22, 27);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (8776, 8, 441, 1, 335, 46);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (9568, 1, 23, 0, 247, 54);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (2427, 7, 679, 0, 185, 41);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (9666, 1, 871, 0, 72, 71);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (7456, 9, 934, 1, 478, 7);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (4551, 4, 970, 0, 128, 19);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (8803, 1, 710, 0, 104, 12);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (272, 7, 406, 1, 413, 61);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (943, 3, 733, 1, 12, 44);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (9112, 6, 15, 1, 314, 47);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (6586, 7, 307, 1, 355, 16);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (836, 1, 171, 0, 7, 68);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (2823, 8, 314, 1, 203, 56);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (5385, 5, 551, 1, 336, 6);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (1515, 8, 90, 1, 278, 10);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (4708, 6, 693, 0, 400, 38);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (7981, 4, 160, 1, 83, 59);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (5277, 3, 351, 1, 304, 39);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (2924, 9, 747, 1, 450, 6);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (6555, 7, 63, 1, 414, 62);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (1019, 1, 123, 0, 178, 5);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (5828, 8, 360, 0, 383, 16);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (435, 7, 701, 1, 496, 42);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (4396, 1, 366, 1, 440, 45);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (8151, 3, 728, 1, 32, 75);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (7221, 1, 635, 0, 33, 43);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (9719, 3, 612, 0, 411, 24);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (5579, 8, 787, 1, 107, 35);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (5142, 5, 518, 0, 471, 1);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (9377, 5, 430, 1, 60, 1);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (4160, 9, 750, 1, 422, 45);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (2072, 2, 442, 0, 368, 65);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (1701, 6, 559, 1, 357, 61);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (8829, 4, 663, 1, 324, 62);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (7551, 4, 630, 0, 427, 3);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (1817, 8, 38, 1, 445, 22);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (459, 7, 584, 0, 138, 26);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (5566, 6, 212, 0, 226, 39);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (7640, 7, 939, 0, 157, 58);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (6113, 2, 293, 0, 153, 25);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (5657, 3, 367, 1, 137, 69);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (7709, 4, 881, 0, 46, 10);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (5473, 4, 394, 1, 326, 21);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (3684, 6, 853, 0, 469, 49);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (9849, 4, 223, 0, 82, 6);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (1684, 8, 732, 1, 254, 41);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (9197, 8, 374, 1, 237, 25);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (3907, 1, 754, 0, 187, 5);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (347, 8, 952, 1, 333, 15);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (6555, 5, 733, 1, 70, 67);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (7869, 3, 101, 0, 396, 4);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (5280, 9, 792, 0, 220, 12);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (8016, 2, 638, 0, 334, 75);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (3443, 7, 117, 1, 2, 20);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (3180, 2, 207, 1, 204, 73);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (5458, 9, 26, 0, 98, 12);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (3084, 3, 271, 0, 24, 7);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (1043, 7, 681, 0, 472, 20);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (8322, 2, 882, 0, 73, 37);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (9306, 9, 218, 1, 173, 69);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (8082, 7, 320, 1, 385, 11);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (4654, 8, 389, 0, 248, 72);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (9528, 9, 27, 1, 378, 25);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (5079, 3, 1, 0, 69, 46);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (8208, 9, 380, 0, 17, 5);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (8479, 4, 672, 0, 456, 1);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (2598, 5, 108, 1, 126, 52);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (2198, 5, 536, 0, 380, 31);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (6431, 3, 528, 0, 74, 55);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (9839, 3, 500, 1, 67, 33);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (8469, 5, 198, 0, 157, 62);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (8057, 8, 627, 0, 492, 39);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (4746, 9, 941, 1, 456, 2);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (3337, 7, 420, 1, 105, 75);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (5491, 7, 535, 0, 112, 26);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (5052, 7, 74, 0, 391, 39);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (5254, 5, 861, 0, 223, 62);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (1366, 5, 773, 1, 429, 2);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (2857, 5, 302, 0, 168, 66);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (3919, 1, 264, 0, 294, 47);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (2243, 3, 151, 0, 246, 3);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (3142, 9, 299, 1, 86, 33);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (8523, 1, 650, 0, 37, 44);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (2787, 1, 721, 0, 207, 64);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (7508, 4, 865, 1, 98, 42);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (7768, 9, 937, 0, 135, 40);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (1459, 2, 830, 0, 369, 31);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (2929, 1, 461, 1, 32, 71);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (7947, 4, 88, 1, 381, 43);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (3836, 2, 63, 1, 155, 40);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (3374, 5, 146, 1, 131, 36);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (9488, 9, 280, 0, 230, 3);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (5434, 5, 532, 0, 489, 62);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (4457, 5, 838, 1, 232, 38);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (688, 2, 420, 1, 346, 51);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (3393, 9, 24, 0, 252, 30);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (8851, 2, 847, 0, 124, 20);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (571, 5, 948, 1, 445, 65);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (946, 7, 377, 1, 494, 46);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (6883, 9, 576, 0, 384, 23);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (4082, 1, 600, 0, 366, 73);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (5516, 9, 49, 1, 455, 43);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (15, 8, 968, 0, 333, 50);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (684, 3, 10, 1, 44, 70);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (6287, 9, 226, 0, 442, 64);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (5368, 9, 225, 1, 196, 7);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (9951, 9, 409, 0, 26, 21);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (4110, 5, 44, 0, 184, 48);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (1250, 2, 993, 0, 434, 44);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (6027, 9, 822, 0, 382, 6);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (4774, 6, 997, 0, 87, 41);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (3371, 5, 415, 0, 260, 33);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (8566, 5, 934, 1, 395, 70);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (5873, 6, 113, 1, 299, 75);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (4996, 9, 44, 0, 200, 37);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (9320, 9, 368, 1, 63, 48);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (2283, 6, 777, 0, 233, 65);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (3812, 1, 995, 1, 112, 31);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (9477, 1, 535, 0, 315, 53);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (3909, 8, 506, 1, 327, 25);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (821, 8, 379, 1, 242, 57);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (5734, 9, 543, 1, 98, 17);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (3371, 6, 369, 1, 390, 12);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (53, 9, 339, 1, 300, 34);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (7219, 1, 36, 0, 142, 54);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (9626, 4, 85, 1, 237, 74);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (4680, 9, 239, 1, 4, 68);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (1019, 3, 402, 1, 344, 48);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (9980, 1, 823, 1, 313, 16);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (1484, 4, 485, 1, 443, 75);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (4657, 9, 77, 1, 293, 47);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (8773, 2, 88, 1, 20, 58);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (2514, 3, 145, 0, 110, 31);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (7594, 4, 131, 1, 283, 52);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (6521, 3, 368, 1, 29, 73);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (1790, 9, 890, 0, 80, 26);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (8315, 9, 475, 1, 154, 60);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (3508, 4, 111, 1, 153, 60);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (5587, 1, 856, 1, 39, 61);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (4572, 5, 92, 0, 298, 74);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (9923, 2, 556, 1, 59, 25);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (4400, 2, 129, 1, 416, 47);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (8962, 6, 281, 0, 295, 21);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (750, 6, 374, 1, 386, 7);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (6097, 6, 855, 0, 319, 7);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (6062, 9, 661, 0, 72, 4);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (2789, 7, 418, 0, 18, 17);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (5152, 8, 943, 0, 457, 38);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (326, 3, 99, 0, 159, 48);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (5020, 8, 17, 0, 111, 11);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (8401, 4, 726, 0, 369, 73);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (8582, 1, 478, 0, 147, 31);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (6926, 9, 767, 1, 359, 46);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (6094, 5, 938, 0, 181, 23);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (822, 9, 734, 1, 282, 19);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (5838, 9, 873, 1, 75, 36);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (3413, 1, 463, 0, 292, 73);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (5491, 1, 226, 0, 30, 22);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (1732, 4, 910, 1, 83, 32);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (6568, 5, 930, 1, 192, 50);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (4583, 4, 486, 1, 145, 17);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (8006, 3, 661, 1, 230, 11);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (96, 3, 331, 1, 280, 31);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (868, 6, 759, 1, 279, 36);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (6481, 7, 688, 1, 272, 29);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (2005, 2, 318, 1, 190, 42);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (5715, 4, 783, 1, 446, 32);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (5494, 3, 585, 1, 4, 29);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (1579, 9, 967, 1, 378, 51);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (8418, 1, 488, 0, 112, 46);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (7150, 1, 172, 0, 76, 56);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (1822, 9, 178, 1, 311, 46);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (2743, 2, 777, 0, 43, 12);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (4489, 3, 968, 1, 36, 76);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (1334, 4, 182, 1, 349, 38);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (3756, 3, 550, 1, 60, 49);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (9138, 5, 96, 1, 224, 32);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (6644, 3, 153, 1, 64, 52);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (7784, 4, 15, 0, 122, 37);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (8895, 9, 930, 0, 352, 63);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (5359, 2, 540, 1, 288, 52);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (5157, 1, 207, 0, 135, 7);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (1529, 3, 316, 1, 469, 23);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (5871, 1, 436, 0, 158, 73);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (3047, 2, 12, 0, 390, 55);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (5991, 6, 964, 1, 320, 27);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (477, 1, 830, 1, 259, 58);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (7761, 4, 275, 0, 351, 44);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (4922, 4, 132, 0, 372, 38);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (2801, 3, 628, 0, 183, 71);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (8294, 2, 945, 0, 128, 38);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (4256, 4, 193, 1, 341, 43);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (4546, 7, 725, 1, 388, 46);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (9042, 9, 565, 0, 376, 11);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (6662, 7, 699, 0, 250, 54);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (2805, 4, 950, 1, 385, 14);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (1268, 9, 159, 0, 254, 73);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (8933, 1, 459, 1, 330, 26);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (6756, 6, 774, 1, 308, 60);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (1310, 9, 437, 0, 120, 48);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (4428, 9, 997, 1, 139, 8);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (849, 8, 977, 1, 233, 69);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (1293, 7, 92, 1, 239, 9);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (8292, 4, 957, 1, 239, 76);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (7258, 6, 519, 1, 499, 66);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (5487, 5, 241, 1, 170, 42);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (8777, 2, 827, 1, 343, 31);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (4066, 7, 608, 0, 405, 45);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (5612, 3, 926, 1, 236, 9);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (8072, 9, 189, 1, 413, 73);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (4066, 6, 917, 1, 426, 66);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (3572, 9, 680, 1, 219, 36);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (6999, 9, 984, 0, 370, 26);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (1260, 1, 337, 1, 4, 35);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (3279, 9, 902, 0, 190, 40);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (3639, 6, 868, 1, 245, 65);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (3706, 8, 241, 0, 188, 37);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (4049, 7, 799, 1, 265, 3);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (2598, 5, 737, 1, 101, 23);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (1933, 3, 149, 0, 236, 19);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (3496, 5, 787, 1, 70, 34);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (7250, 5, 369, 1, 217, 66);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (9922, 2, 998, 1, 174, 17);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (787, 7, 90, 1, 96, 45);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (3447, 1, 511, 1, 382, 30);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (77, 6, 741, 1, 136, 21);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (5370, 7, 300, 1, 105, 75);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (7121, 5, 894, 0, 409, 64);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (5093, 3, 721, 1, 305, 5);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (205, 5, 169, 1, 180, 36);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (9141, 2, 407, 1, 391, 40);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (7779, 4, 341, 1, 170, 37);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (6503, 5, 119, 1, 335, 49);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (8534, 4, 53, 0, 416, 63);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (3748, 8, 553, 0, 364, 57);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (782, 4, 960, 1, 344, 56);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (8158, 8, 544, 0, 417, 6);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (6887, 2, 296, 0, 248, 26);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (2015, 1, 537, 1, 67, 62);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (8002, 8, 760, 1, 137, 13);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (3813, 2, 171, 1, 461, 6);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (2491, 8, 666, 0, 16, 42);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (5821, 3, 230, 1, 246, 7);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (5298, 2, 419, 1, 368, 44);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (296, 9, 255, 0, 367, 4);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (3300, 8, 412, 0, 422, 62);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (3022, 6, 903, 1, 24, 15);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (2096, 3, 631, 0, 214, 30);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (1023, 5, 721, 0, 442, 34);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (984, 7, 355, 0, 233, 32);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (3089, 2, 734, 1, 234, 70);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (3159, 6, 559, 1, 474, 18);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (9956, 9, 433, 0, 481, 70);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (292, 2, 213, 0, 433, 58);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (6128, 7, 485, 1, 89, 48);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (8448, 7, 652, 1, 230, 12);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (8414, 9, 522, 1, 417, 21);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (5219, 7, 645, 1, 472, 17);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (1416, 7, 252, 0, 54, 2);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (2153, 1, 567, 0, 349, 46);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (4390, 4, 9, 0, 192, 66);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (227, 9, 813, 0, 97, 65);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (9036, 3, 503, 1, 459, 30);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (4747, 5, 612, 0, 48, 36);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (8610, 6, 282, 1, 190, 49);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (7000, 9, 374, 0, 359, 11);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (3063, 9, 238, 1, 488, 47);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (2834, 1, 37, 1, 253, 17);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (9708, 1, 897, 0, 97, 67);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (9898, 5, 102, 0, 467, 31);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (6617, 9, 503, 0, 36, 14);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (9594, 3, 931, 1, 99, 60);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (2964, 8, 359, 0, 398, 34);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (5707, 3, 860, 0, 357, 11);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (7925, 2, 310, 0, 215, 59);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (4139, 7, 954, 0, 178, 65);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (6649, 9, 162, 1, 43, 31);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (4519, 2, 962, 1, 243, 70);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (6213, 6, 548, 1, 109, 63);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (4799, 3, 523, 1, 205, 71);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (4770, 4, 176, 1, 259, 1);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (446, 5, 460, 0, 59, 53);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (2761, 2, 712, 1, 373, 64);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (6115, 1, 805, 0, 334, 8);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (8696, 7, 987, 0, 192, 75);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (8845, 9, 85, 1, 425, 52);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (2465, 6, 686, 1, 106, 37);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (9347, 4, 50, 1, 396, 72);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (501, 8, 868, 0, 251, 47);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (3395, 8, 587, 0, 22, 67);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (6123, 7, 629, 1, 395, 4);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (2431, 1, 803, 1, 414, 7);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (6610, 8, 89, 1, 203, 62);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (1507, 2, 263, 0, 459, 70);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (2847, 6, 41, 0, 412, 56);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (5444, 7, 217, 1, 250, 10);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (7183, 1, 716, 1, 463, 20);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (5209, 2, 417, 0, 98, 11);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (2641, 5, 696, 1, 75, 56);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (7734, 6, 667, 1, 269, 14);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (9831, 6, 455, 1, 75, 11);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (1970, 5, 387, 0, 28, 45);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (7609, 5, 871, 1, 197, 44);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (801, 7, 809, 1, 466, 25);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (7287, 7, 330, 0, 394, 24);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (1082, 7, 708, 0, 319, 6);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (276, 2, 32, 0, 186, 45);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (6930, 2, 445, 1, 458, 15);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (2067, 1, 948, 1, 288, 66);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (1893, 1, 532, 1, 27, 51);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (9812, 3, 29, 0, 462, 51);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (2907, 8, 996, 1, 296, 25);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (5024, 9, 526, 1, 202, 65);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (3471, 6, 965, 1, 389, 8);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (7987, 3, 94, 0, 22, 70);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (5118, 5, 765, 1, 390, 29);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (1634, 8, 234, 0, 445, 56);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (5494, 9, 832, 1, 63, 37);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (7580, 4, 869, 1, 143, 6);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (5011, 2, 44, 0, 432, 65);
insert into rooms (roomNumber, floor, price, toClean, guest, hotel) values (1019, 1, 895, 1, 56, 21);
