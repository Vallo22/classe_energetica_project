-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Creato il: Gen 14, 2021 alle 17:37
-- Versione del server: 10.4.17-MariaDB
-- Versione PHP: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `classe_energetica`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `struttura`
--

CREATE TABLE `struttura` (
  `id` bigint(20) NOT NULL,
  `struttura` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `struttura`
--

INSERT INTO `struttura` (`id`, `struttura`) VALUES
(1, 'Strutture di elevazione verticale'),
(2, 'Strutture di elevazione orizzontale'),
(3, 'Strutture di elevazione inclinate'),
(4, 'Strutture di elevazione spaziali'),
(5, 'Aperture');

-- --------------------------------------------------------

--
-- Struttura della tabella `struttura_due`
--

CREATE TABLE `struttura_due` (
  `id` bigint(20) NOT NULL,
  `struttura_due` varchar(255) DEFAULT NULL,
  `struttura_id_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `struttura_due`
--

INSERT INTO `struttura_due` (`id`, `struttura_due`, `struttura_id_id`) VALUES
(1, 'Strutture a pareti portanti in muratura', 1),
(2, 'Strutture per impalcati piani', 2),
(3, 'Strutture per coperture piane', 2),
(4, 'Strutture per coperture inclinate', 3),
(5, 'Strutture voltate', 4);

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `struttura`
--
ALTER TABLE `struttura`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `struttura_due`
--
ALTER TABLE `struttura_due`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK9eqhylq6sc1yseu3cglwffnsy` (`struttura_id_id`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `struttura`
--
ALTER TABLE `struttura`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT per la tabella `struttura_due`
--
ALTER TABLE `struttura_due`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `struttura_due`
--
ALTER TABLE `struttura_due`
  ADD CONSTRAINT `FK9eqhylq6sc1yseu3cglwffnsy` FOREIGN KEY (`struttura_id_id`) REFERENCES `struttura` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;