-- phpMyAdmin SQL Dump
-- version 5.0.4deb2+deb11u1
-- https://www.phpmyadmin.net/
--
-- Vært: localhost:3306
-- Genereringstid: 22. 09 2022 kl. 11:13:54
-- Serverversion: 10.5.15-MariaDB-0+deb11u1
-- PHP-version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sensor_data`
--

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `data`
--

CREATE TABLE `data` (
  `D_ID` int(11) NOT NULL,
  `D_Time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `D_Temp` int(11) NOT NULL,
  `D_Humy` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Data dump for tabellen `data`
--

INSERT INTO `data` (`D_ID`, `D_Time`, `D_Temp`, `D_Humy`) VALUES
(86, '2022-09-15 06:23:05', 24, 46),
(87, '2022-09-15 06:23:05', 24, 46),
(88, '2022-09-15 06:23:05', 24, 46),
(89, '2022-09-15 06:23:05', 24, 46),
(90, '2022-09-15 06:23:05', 25, 46),
(91, '2022-09-15 06:23:05', 25, 46),
(92, '2022-09-15 06:23:05', 24, 46),
(93, '2022-09-15 06:23:05', 24, 47),
(94, '2022-09-15 06:23:05', 45, 45),
(95, '2022-09-15 11:52:25', 22, 53),
(96, '2022-09-15 11:54:25', 24, 43),
(97, '2022-09-20 09:35:07', 45, 45),
(98, '2022-09-20 09:37:22', 21, 75),
(99, '2022-09-20 09:39:22', 22, 79);

--
-- Begrænsninger for dumpede tabeller
--

--
-- Indeks for tabel `data`
--
ALTER TABLE `data`
  ADD PRIMARY KEY (`D_ID`);

--
-- Brug ikke AUTO_INCREMENT for slettede tabeller
--

--
-- Tilføj AUTO_INCREMENT i tabel `data`
--
ALTER TABLE `data`
  MODIFY `D_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
