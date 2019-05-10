-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: mysql363.hosting.combell.com:3306
-- Gegenereerd op: 10 mei 2019 om 10:11
-- Serverversie: 5.7.22-22
-- PHP-versie: 7.1.25-1+0~20181207224605.11+jessie~1.gbpf65b84

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ID211210_datakempen`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `Aanvragen`
--

CREATE TABLE `Aanvragen` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `Afgekeurd`
--

CREATE TABLE `Afgekeurd` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `Goedgekeurd`
--

CREATE TABLE `Goedgekeurd` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `Inschrijvingen`
--

CREATE TABLE `Inschrijvingen` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `Klanten`
--

CREATE TABLE `Klanten` (
  `id` int(11) NOT NULL,
  `naam` varchar(50) NOT NULL,
  `voornaam` varchar(50) NOT NULL,
  `gsm` int(20) NOT NULL,
  `geboortedatum` date NOT NULL,
  `mail` varchar(255) NOT NULL,
  `adres` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `Producten`
--

CREATE TABLE `Producten` (
  `id_producten` int(11) NOT NULL,
  `toestel` varchar(50) NOT NULL,
  `beschrijving` varchar(255) NOT NULL,
  `gereserveerd` tinyint(2) NOT NULL,
  `defect` tinyint(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `Producten`
--

INSERT INTO `Producten` (`id_producten`, `toestel`, `beschrijving`, `gereserveerd`, `defect`) VALUES
(7, '3D Printer', 'Toestel om projecten in kunststof te printen.', 0, 0),
(8, 'Lasercutter', 'Snijdt aan de hand van een laser.', 0, 0),
(9, 'VR Headset', 'Ontdek de wereld van Virtual Reality.', 0, 0),
(10, 'Dummytext', 'Dit is een dummytext.', 0, 0),
(11, 'Dummytext 2', 'Dit is ook een dummytext.', 0, 0),
(12, 'Dummytext 3', 'Nog een dummytext.', 0, 0),
(13, 'Dummytext 4', 'Nog dummytext.', 0, 0),
(14, 'Dummytext 5', 'Dummytexttt', 0, 0),
(15, 'Dummytext 6', '^v^', 0, 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `Reservaties`
--

CREATE TABLE `Reservaties` (
  `id_reservaties` int(11) NOT NULL,
  `datum` datetime NOT NULL,
  `corner` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `Workshop`
--

CREATE TABLE `Workshop` (
  `id` int(11) NOT NULL,
  `naam` varchar(255) NOT NULL,
  `datum` datetime NOT NULL,
  `plaats` varchar(255) NOT NULL,
  `inschrijvingen` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `Workshop`
--

INSERT INTO `Workshop` (`id`, `naam`, `datum`, `plaats`, `inschrijvingen`) VALUES
(10, 'Lasercutten 4 dummies', '0000-00-00 00:00:00', '', 0),
(11, '3D Printmarathon', '0000-00-00 00:00:00', '', 0),
(12, 'VR Party', '0000-00-00 00:00:00', '', 0),
(13, 'Potten bakken met 3D Printers', '0000-00-00 00:00:00', '', 0),
(14, 'Fabben in het Lab', '0000-00-00 00:00:00', '', 0),
(15, 'Voetbal kijken in VR', '0000-00-00 00:00:00', '', 0),
(16, 'Laptop tatoo tutorial', '0000-00-00 00:00:00', '', 0),
(17, 'Comedy Night', '0000-00-00 00:00:00', '', 0),
(18, 'Dummytext', '0000-00-00 00:00:00', '', 0);

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `Aanvragen`
--
ALTER TABLE `Aanvragen`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `Afgekeurd`
--
ALTER TABLE `Afgekeurd`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `Goedgekeurd`
--
ALTER TABLE `Goedgekeurd`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `Inschrijvingen`
--
ALTER TABLE `Inschrijvingen`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `Klanten`
--
ALTER TABLE `Klanten`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `Producten`
--
ALTER TABLE `Producten`
  ADD PRIMARY KEY (`id_producten`);

--
-- Indexen voor tabel `Reservaties`
--
ALTER TABLE `Reservaties`
  ADD PRIMARY KEY (`id_reservaties`);

--
-- Indexen voor tabel `Workshop`
--
ALTER TABLE `Workshop`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `Aanvragen`
--
ALTER TABLE `Aanvragen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `Afgekeurd`
--
ALTER TABLE `Afgekeurd`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `Goedgekeurd`
--
ALTER TABLE `Goedgekeurd`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `Inschrijvingen`
--
ALTER TABLE `Inschrijvingen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `Klanten`
--
ALTER TABLE `Klanten`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `Producten`
--
ALTER TABLE `Producten`
  MODIFY `id_producten` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT voor een tabel `Reservaties`
--
ALTER TABLE `Reservaties`
  MODIFY `id_reservaties` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `Workshop`
--
ALTER TABLE `Workshop`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
