-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 22, 2025 at 09:33 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dderksen_fietswinkel`
--

-- --------------------------------------------------------

--
-- Table structure for table `beheerder`
--

CREATE TABLE `beheerder` (
  `ID` int(11) NOT NULL,
  `voornaam` varchar(255) NOT NULL,
  `achternaam` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `wachtwoord` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `beheerder`
--

INSERT INTO `beheerder` (`ID`, `voornaam`, `achternaam`, `email`, `wachtwoord`) VALUES
(1, 'Dylan', 'Derksen', 'derksendhk@gmail.com', 'Welkom01'),
(2, 'Cas', 'Oldenhave', 'cas.oldenhave@student.graafschapcollege.nl', 'Welkom01');

-- --------------------------------------------------------

--
-- Table structure for table `bestellingen`
--

CREATE TABLE `bestellingen` (
  `ID` int(11) NOT NULL,
  `klantid` int(11) NOT NULL,
  `producktid` int(11) NOT NULL,
  `aantal` int(11) NOT NULL,
  `afgeleverd` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fietsen`
--

CREATE TABLE `fietsen` (
  `ID` int(11) NOT NULL,
  `prijs` int(11) NOT NULL,
  `titel` varchar(255) NOT NULL,
  `beschrijving` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `afbeelding` varchar(255) NOT NULL,
  `merk` varchar(255) NOT NULL,
  `model` varchar(255) NOT NULL,
  `kleur` varchar(255) NOT NULL,
  `versnellingen` int(11) NOT NULL,
  `elektrisch` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fietsen`
--

INSERT INTO `fietsen` (`ID`, `prijs`, `titel`, `beschrijving`, `type`, `afbeelding`, `merk`, `model`, `kleur`, `versnellingen`, `elektrisch`) VALUES
(2, 599, 'batavus heren', 'nieuwe batavus heren fiets maar m', 'heren', 'https://www.rijwielshopbargeres.nl/wp-content/uploads/2020/12/BC500887_56b516353a.jpg', 'batavus', 'stads heren', 'army groen', 7, '0'),
(3, 699, 'cube race ', 'nieuwe cube racefiets maat L', 'heren', 'https://www.allterraincycles.co.uk/Images/Original/154935_1.jpg', 'Cube', 'racefiets heren', 'grijs/neon groen', 22, 'nee'),
(4, 399, 'dames rockrider', 'nieuwe dames rockrider mtb', 'dames', 'https://www.onlinesportwereld.nl/wp-content/uploads/2020/04/Rockrider-Mountainbike-dames-ST-540-27.5-2x9-speed-shimanosram-grijsroze-1536x1536.jpg', 'rockrider', 'st120', 'wit', 9, 'nee');

-- --------------------------------------------------------

--
-- Table structure for table `klanten`
--

CREATE TABLE `klanten` (
  `ID` int(11) NOT NULL,
  `voornaam` varchar(255) NOT NULL,
  `achternaam` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `wachtwoord` varchar(255) NOT NULL,
  `land` varchar(255) NOT NULL,
  `stad` varchar(255) NOT NULL,
  `postcode` varchar(255) NOT NULL,
  `straatnaam` varchar(255) NOT NULL,
  `huisnummer` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `klanten`
--

INSERT INTO `klanten` (`ID`, `voornaam`, `achternaam`, `email`, `wachtwoord`, `land`, `stad`, `postcode`, `straatnaam`, `huisnummer`) VALUES
(1, 'Dylan', 'Derksen', 'derksendhk@gmail.com', 'Welkom01', 'Nederland', 'Sheerenberg', '7041SM', 'Don Rualaan', 153),
(9, 'Cas', 'Oldenhave', 'cas@gmail.com', 'Welkom01', 'Nederland', 'doetinchem', '2011sd', 'kennedylaan', 153);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `beheerder`
--
ALTER TABLE `beheerder`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `bestellingen`
--
ALTER TABLE `bestellingen`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `fietsen`
--
ALTER TABLE `fietsen`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `klanten`
--
ALTER TABLE `klanten`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `beheerder`
--
ALTER TABLE `beheerder`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `bestellingen`
--
ALTER TABLE `bestellingen`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fietsen`
--
ALTER TABLE `fietsen`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `klanten`
--
ALTER TABLE `klanten`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
