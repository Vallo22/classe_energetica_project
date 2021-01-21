-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Creato il: Gen 21, 2021 alle 17:20
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
-- Struttura della tabella `caratteristiche_qualitative`
--

CREATE TABLE `caratteristiche_qualitative` (
  `id` bigint(20) NOT NULL,
  `caratteristiche_qualitative` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `caratteristiche_qualitative`
--

INSERT INTO `caratteristiche_qualitative` (`id`, `caratteristiche_qualitative`) VALUES
(1, 'Scarso potere coibente'),
(2, 'Scarsa capacità di dissipare calore'),
(3, 'Umidità per risalita capillare'),
(4, 'Infiltrazioni d\'aria'),
(5, 'Ponti termici'),
(6, 'Scarsa capacità di accumulare calore'),
(7, 'Irraggiamento estivo non contrastato'),
(8, 'Necessità di ventilazione naturale'),
(9, 'Scarso apporto di luce naturale negli ambienti interni'),
(10, 'Soluzioni da fonti rinnovabili');

-- --------------------------------------------------------

--
-- Struttura della tabella `codice_intervento`
--

CREATE TABLE `codice_intervento` (
  `id` bigint(20) NOT NULL,
  `codice` varchar(255) DEFAULT NULL,
  `descrizione` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(5, 'Infissi esterni verticali');

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
(5, 'Strutture voltate', 4),
(6, 'Infissi esterni verticali', 5);

-- --------------------------------------------------------

--
-- Struttura della tabella `struttura_tre`
--

CREATE TABLE `struttura_tre` (
  `id` bigint(20) NOT NULL,
  `struttura_tre` varchar(255) DEFAULT NULL,
  `struttura_due_id_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `struttura_tre`
--

INSERT INTO `struttura_tre` (`id`, `struttura_tre`, `struttura_due_id_id`) VALUES
(1, 'Strutture a pareti portanti in muratura', 1),
(2, 'Solai a terra', 2),
(3, 'Solai inferiori', 2),
(4, 'Solai superiori', 2),
(5, 'Strutture per coperture piane', 3),
(6, 'Strutture per coperture inclinate', 4),
(7, 'Confinanti con ambienti sottotetto', 5),
(8, 'Confinanti con ambienti non riscaldati inferiori', 5),
(9, 'Infissi esterni verticali', 6);

-- --------------------------------------------------------

--
-- Struttura della tabella `struttura_tre_caratt_qualit`
--

CREATE TABLE `struttura_tre_caratt_qualit` (
  `struttura_tre_id` bigint(20) NOT NULL,
  `caratt_qualit_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `struttura_tre_caratt_qualit`
--

INSERT INTO `struttura_tre_caratt_qualit` (`struttura_tre_id`, `caratt_qualit_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 5),
(1, 6),
(2, 1),
(2, 6),
(3, 1),
(3, 6),
(4, 1),
(4, 6),
(5, 1),
(5, 2),
(5, 5),
(5, 6),
(5, 10),
(6, 1),
(6, 2),
(6, 5),
(6, 6),
(6, 10),
(7, 1),
(7, 6),
(8, 1),
(8, 6),
(9, 1),
(9, 4),
(9, 7),
(9, 8);

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `caratteristiche_qualitative`
--
ALTER TABLE `caratteristiche_qualitative`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `codice_intervento`
--
ALTER TABLE `codice_intervento`
  ADD PRIMARY KEY (`id`);

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
-- Indici per le tabelle `struttura_tre`
--
ALTER TABLE `struttura_tre`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKt7ybagev1aaw5py3n0g10byt4` (`struttura_due_id_id`);

--
-- Indici per le tabelle `struttura_tre_caratt_qualit`
--
ALTER TABLE `struttura_tre_caratt_qualit`
  ADD KEY `FKfm9te8rqyqr9nhw8980c4f6bk` (`caratt_qualit_id`),
  ADD KEY `FK5hyqaks3aec1trm37c1vgbmci` (`struttura_tre_id`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `caratteristiche_qualitative`
--
ALTER TABLE `caratteristiche_qualitative`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT per la tabella `codice_intervento`
--
ALTER TABLE `codice_intervento`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `struttura`
--
ALTER TABLE `struttura`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT per la tabella `struttura_due`
--
ALTER TABLE `struttura_due`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT per la tabella `struttura_tre`
--
ALTER TABLE `struttura_tre`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `struttura_due`
--
ALTER TABLE `struttura_due`
  ADD CONSTRAINT `FK9eqhylq6sc1yseu3cglwffnsy` FOREIGN KEY (`struttura_id_id`) REFERENCES `struttura` (`id`);

--
-- Limiti per la tabella `struttura_tre`
--
ALTER TABLE `struttura_tre`
  ADD CONSTRAINT `FKt7ybagev1aaw5py3n0g10byt4` FOREIGN KEY (`struttura_due_id_id`) REFERENCES `struttura_due` (`id`);

--
-- Limiti per la tabella `struttura_tre_caratt_qualit`
--
ALTER TABLE `struttura_tre_caratt_qualit`
  ADD CONSTRAINT `FK5hyqaks3aec1trm37c1vgbmci` FOREIGN KEY (`struttura_tre_id`) REFERENCES `struttura_tre` (`id`),
  ADD CONSTRAINT `FKfm9te8rqyqr9nhw8980c4f6bk` FOREIGN KEY (`caratt_qualit_id`) REFERENCES `caratteristiche_qualitative` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
