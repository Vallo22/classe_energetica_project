-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Creato il: Mag 09, 2021 alle 10:48
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
-- Database: `applicazione_db`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `associazione_intervento_ce`
--

CREATE TABLE `associazione_intervento_ce` (
  `id` bigint(20) NOT NULL,
  `caratteristica_associazione_intervento_id` bigint(20) DEFAULT NULL,
  `intervento_id` bigint(20) DEFAULT NULL,
  `struttura_associazione_id` bigint(20) DEFAULT NULL,
  `modicita_di_costo` int(11) DEFAULT NULL,
  `efficacia` int(11) NOT NULL,
  `sup_intonacate` int(11) NOT NULL,
  `sup_ev_ii` int(11) NOT NULL,
  `sup_iv_ei` int(11) NOT NULL,
  `reversibilita` int(11) NOT NULL,
  `semplicita_di_cantiere` int(11) NOT NULL,
  `esiguita_di_ingombro` int(11) NOT NULL,
  `variante` varchar(255) DEFAULT NULL,
  `prezzo_inton` double NOT NULL,
  `prezzo_vista` double NOT NULL,
  `unita_misura` varchar(255) DEFAULT NULL,
  `prezzo_riepilogo` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `associazione_intervento_ce`
--

INSERT INTO `associazione_intervento_ce` (`id`, `caratteristica_associazione_intervento_id`, `intervento_id`, `struttura_associazione_id`, `modicita_di_costo`, `efficacia`, `sup_intonacate`, `sup_ev_ii`, `sup_iv_ei`, `reversibilita`, `semplicita_di_cantiere`, `esiguita_di_ingombro`, `variante`, `prezzo_inton`, `prezzo_vista`, `unita_misura`, `prezzo_riepilogo`) VALUES
(1, 1, 9, 1, 2, 2, 3, 3, 0, 2, 2, 2, NULL, 0, 61.2, 'mq', 61.2),
(2, 1, 10, 1, 2, 1, 3, 3, 0, 2, 3, 3, NULL, 0, 56, 'mq', 56),
(3, 1, 11, 1, 1, 3, 3, 0, 3, 2, 2, 1, NULL, 0, 71.27, 'mq', 71.27),
(4, 1, 12, 1, 1, 3, 3, 0, 3, 2, 2, 2, NULL, 71.28, 56.8, 'mq', 71.28),
(5, 1, 13, 1, 1, 2, 3, 0, 3, 2, 3, 3, NULL, 0, 56, 'mq', 56),
(6, 1, 14, 1, 3, 2, 3, 3, 3, 1, 1, 3, NULL, 0, 11.26, 'mq', 0),
(7, 3, 16, 1, 2, 3, 3, 2, 2, 2, 2, 3, NULL, 0, 3.53, 'm x cm', 0),
(8, 3, 17, 1, 1, 2, 3, 2, 2, 2, 2, 3, NULL, 0, 6.24, 'm x cm', 0),
(9, 3, 18, 1, 1, 1, 3, 0, 0, 2, 3, 2, NULL, 0, 56.04, 'mq', 112.08),
(10, 3, 19, 1, 1, 1, 2, 2, 2, 2, 3, 3, NULL, 0, 6891.12, 'cad', 0),
(11, 5, 11, 1, 1, 3, 3, 0, 3, 2, 1, 1, NULL, 0, 71.27, 'mq', 0),
(12, 5, 12, 1, 2, 3, 3, 0, 3, 2, 2, 2, NULL, 71.28, 56.8, 'mq', 0),
(13, 5, 13, 1, 2, 2, 3, 0, 3, 2, 3, 3, NULL, 0, 56, 'mq', 0),
(14, 2, 11, 1, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, 0),
(15, 6, 11, 1, 1, 3, 3, 0, 3, 2, 1, 1, NULL, 0, 71.27, 'mq', 0),
(16, 6, 12, 1, 2, 3, 3, 0, 3, 2, 2, 2, NULL, 71.28, 56.8, 'mq', 0),
(17, 6, 13, 1, 2, 2, 3, 0, 3, 2, 3, 3, NULL, 0, 56, 'mq', 0),
(18, 6, 15, 1, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, 0),
(19, 6, 20, 1, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, 0),
(20, 6, 21, 1, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, 0),
(21, 6, 22, 1, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, 0),
(27, 1, 34, 2, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 101.88, 'mq', 0),
(28, 6, 34, 2, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 101.88, 'mq', 0),
(29, 1, 35, 4, 2, 2, 0, 3, 0, 2, 2, 2, NULL, 0, 0, 'mq', 0),
(30, 1, 36, 4, 1, 3, 3, 3, 0, 2, 2, 3, NULL, 0, 101.88, 'mq', 101.88),
(31, 6, 36, 4, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, 0),
(32, 1, 37, 3, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, 0),
(33, 6, 37, 3, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, 0),
(34, 1, 1, 5, 1, 3, 3, 3, 0, 2, 1, 3, NULL, 0, 126.38, 'mq', 126.38),
(35, 1, 2, 5, 1, 3, 3, 3, 0, 2, 1, 3, NULL, 0, 177.88, 'mq', 177.88),
(36, 1, 3, 5, 3, 2, 0, 3, 0, 2, 2, 2, NULL, 0, 64.22, 'mq', 0),
(37, 1, 4, 5, 2, 2, 0, 3, 0, 2, 2, 1, NULL, 0, 112.12, 'mq', 0),
(38, 1, 7, 5, 2, 2, 3, 3, 0, 2, 1, 1, NULL, 0, 108.91, 'mq', 108.91),
(39, 2, 2, 5, 1, 3, 3, 3, 0, 2, 1, 3, NULL, 0, 177.88, 'mq', 0),
(40, 2, 4, 5, 2, 2, 0, 3, 0, 2, 2, 1, NULL, 0, 112.12, 'mq', 0),
(41, 5, 1, 5, 2, 3, 3, 3, 0, 2, 1, 3, NULL, 0, 126.38, 'mq', 0),
(42, 5, 2, 5, 1, 3, 3, 3, 0, 2, 1, 3, NULL, 0, 177.88, 'mq', 0),
(43, 6, 1, 5, 1, 3, 3, 3, 0, 2, 1, 3, NULL, 0, 126.38, 'mq', 0),
(44, 6, 2, 5, 1, 3, 3, 3, 0, 2, 1, 3, NULL, 0, 177.88, 'mq', 0),
(45, 6, 3, 5, 3, 2, 0, 3, 0, 2, 2, 2, NULL, 0, 64.22, 'mq', 0),
(46, 6, 4, 5, 2, 2, 0, 3, 0, 2, 2, 1, NULL, 0, 112.12, 'mq', 0),
(47, 6, 7, 5, 2, 2, 3, 3, 0, 2, 1, 1, NULL, 0, 108.91, 'mq', 0),
(48, 6, 8, 5, 2, 2, 3, 3, 0, 2, 1, 1, NULL, 0, 0, NULL, 0),
(49, 10, 5, 5, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, 0),
(50, 10, 6, 5, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, 0),
(51, 1, 1, 6, 1, 3, 3, 3, 0, 2, 1, 3, NULL, 0, 126.38, 'mq', 0),
(52, 1, 2, 6, 1, 3, 3, 3, 0, 2, 1, 3, NULL, 0, 177.88, 'mq', 0),
(53, 1, 3, 6, 3, 2, 0, 3, 0, 2, 2, 2, NULL, 0, 64.22, 'mq', 0),
(54, 1, 4, 6, 2, 2, 0, 3, 0, 2, 2, 1, NULL, 0, 112.12, 'mq', 0),
(55, 1, 7, 6, 2, 2, 3, 3, 0, 2, 1, 1, NULL, 0, 108.91, 'mq', 0),
(56, 2, 2, 6, 1, 3, 3, 3, 0, 2, 1, 3, NULL, 0, 177.88, 'mq', 0),
(57, 2, 4, 6, 2, 2, 0, 3, 0, 2, 2, 1, NULL, 0, 112.12, 'mq', 0),
(58, 5, 1, 6, 2, 3, 3, 3, 0, 2, 1, 3, NULL, 0, 126.38, 'mq', 0),
(59, 5, 2, 6, 1, 3, 3, 3, 0, 2, 1, 3, NULL, 0, 177.88, 'mq', 0),
(60, 6, 1, 6, 1, 3, 3, 3, 0, 2, 1, 3, NULL, 0, 126.38, 'mq', 0),
(61, 6, 2, 6, 1, 3, 3, 3, 0, 2, 1, 3, NULL, 0, 177.88, 'mq', 0),
(62, 6, 3, 6, 3, 2, 0, 3, 0, 2, 2, 2, NULL, 0, 64.22, 'mq', 0),
(63, 6, 4, 6, 2, 2, 0, 3, 0, 2, 2, 1, NULL, 0, 112.12, 'mq', 0),
(64, 6, 7, 6, 2, 2, 3, 3, 0, 2, 1, 1, NULL, 0, 108.91, 'mq', 0),
(66, 10, 5, 6, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, 0),
(67, 10, 6, 6, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, 0),
(68, 1, 36, 7, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, 0),
(69, 6, 36, 7, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, 0),
(70, 1, 37, 8, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, 0),
(71, 6, 37, 8, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, 0),
(72, 1, 23, 9, 1, 3, 2, 2, 2, 3, 2, 3, NULL, 0, 303.03, 'mq', 303.03),
(73, 1, 24, 9, 2, 2, 3, 3, 3, 2, 3, 3, NULL, 0, 52.68, 'mq', 52.68),
(74, 1, 25, 9, 1, 2, 2, 2, 2, 2, 3, 2, NULL, 0, 284.7, 'mq', 0),
(75, 1, 26, 9, 3, 2, 3, 3, 3, 1, 3, 3, NULL, 0, 38.2, 'mq', 0),
(76, 1, 28, 9, 2, 1, 3, 3, 3, 1, 3, 3, NULL, 0, 70, 'mq', 0),
(77, 4, 23, 9, 1, 3, 2, 2, 2, 3, 2, 3, NULL, 0, 303.03, 'mq', 0),
(78, 4, 24, 9, 2, 3, 3, 3, 3, 2, 3, 3, NULL, 0, 52.68, 'mq', 0),
(79, 4, 25, 9, 1, 3, 2, 2, 2, 2, 3, 2, NULL, 0, 284.7, 'mq', 0),
(80, 4, 26, 9, 3, 3, 3, 3, 3, 1, 3, 3, NULL, 0, 38.2, 'mq', 0),
(81, 4, 27, 9, 3, 3, 3, 3, 3, 1, 3, 3, NULL, 0, 6.87, 'mq', 0),
(82, 7, 30, 9, 2, 2, 3, 3, 3, 1, 3, 3, NULL, 0, 70, 'mq', 0),
(83, 7, 31, 9, 2, 2, 2, 2, 2, 1, 3, 2, NULL, 0, 144.31, 'mq', 0),
(84, 7, 32, 9, 1, 3, 1, 1, 1, 3, 3, 2, NULL, 0, 144.31, 'mq', 0),
(85, 7, 33, 9, 2, 2, 1, 1, 1, 3, 3, 1, NULL, 0, 0, NULL, 0),
(86, 8, 29, 9, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, 0),
(88, 12, 55, 10, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, 56),
(89, 12, 56, 10, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, 56),
(90, 12, 57, 10, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, 64.22),
(91, 12, 58, 10, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, 64.22);

-- --------------------------------------------------------

--
-- Struttura della tabella `associazione_intervento_st`
--

CREATE TABLE `associazione_intervento_st` (
  `id` bigint(20) NOT NULL,
  `efficacia` int(11) NOT NULL,
  `esiguita_di_ingombro` int(11) NOT NULL,
  `modicita_di_costo` int(11) DEFAULT NULL,
  `passaggio` int(11) NOT NULL,
  `prezzo` double NOT NULL,
  `reversibilita` int(11) NOT NULL,
  `semplicita_di_cantiere` int(11) NOT NULL,
  `sup_intonacate` int(11) NOT NULL,
  `sup_vista` int(11) NOT NULL,
  `unita_misura` varchar(255) DEFAULT NULL,
  `variante` varchar(255) DEFAULT NULL,
  `caratteristica_associazione_intervento_id` bigint(20) DEFAULT NULL,
  `intervento_id` bigint(20) DEFAULT NULL,
  `struttura_associazione_id` bigint(20) DEFAULT NULL,
  `prezzo_entr_int` double NOT NULL,
  `prezzo_sup_int` double NOT NULL,
  `prezzo_riepilogo` double NOT NULL,
  `prezzo_riepilogo_due` double NOT NULL,
  `prezzo_riepilogo_tre` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `associazione_intervento_st`
--

INSERT INTO `associazione_intervento_st` (`id`, `efficacia`, `esiguita_di_ingombro`, `modicita_di_costo`, `passaggio`, `prezzo`, `reversibilita`, `semplicita_di_cantiere`, `sup_intonacate`, `sup_vista`, `unita_misura`, `variante`, `caratteristica_associazione_intervento_id`, `intervento_id`, `struttura_associazione_id`, `prezzo_entr_int`, `prezzo_sup_int`, `prezzo_riepilogo`, `prezzo_riepilogo_due`, `prezzo_riepilogo_tre`) VALUES
(1, 0, 0, 0, 1, 55.23, 0, 0, 0, 0, 'mq', NULL, 2, 58, 1, 0, 110.16, 0, 0, 0),
(2, 3, 2, 3, 0, 33.83, 3, 2, 1, 1, 'm', NULL, 3, 54, 1, 0, 0, 0, 0, 0),
(3, 3, 1, 1, 0, 99.82, 1, 2, 1, 1, 'mq', NULL, 3, 55, 1, 0, 154.75, 0, 0, 0),
(4, 3, 3, 2, 0, 260.13, 2, 1, 3, 3, 'mq', NULL, 3, 56, 1, 0, 0, 260.13, 0, 0),
(5, 1, 3, 2, 0, 88.42, 3, 2, 3, 1, 'mq', NULL, 3, 57, 1, 0, 143.35, 143.35, 0, 0),
(6, 1, 3, 2, 0, 0, 1, 3, 3, 2, 'mq', NULL, 3, 59, 1, 0, 0, 728.07, 234.93, 0),
(7, 1, 3, 2, 0, 87.3, 1, 2, 3, 2, 'mq', NULL, 3, 60, 1, 0, 142.23, 142.23, 0, 0),
(8, 3, 3, 2, 0, 236.75, 3, 1, 3, 3, 'mq', NULL, 2, 31, 2, 346.61, 291.68, 0, 0, 0),
(9, 2, 3, 3, 0, 55.23, 1, 3, 3, 3, 'mq', NULL, 1, 32, 2, 0, 110.16, 0, 0, 0),
(10, 1, 3, 2, 0, 158.13, 3, 3, 3, 3, 'mq', NULL, 1, 33, 2, 267.99, 213.06, 213.06, 267.99, 0),
(11, 3, 3, 1, 0, 383.68, 1, 2, 3, 1, 'mq', NULL, 1, 37, 2, 493.54, 438.61, 438.61, 493.54, 0),
(12, 2, 2, 2, 0, 117.7, 2, 2, 1, 1, 'mq', NULL, 1, 38, 2, 0, 0, 0, 0, 0),
(13, 2, 2, 2, 0, 313.03, 1, 3, 3, 0, 'mq', NULL, 1, 39, 2, 0, 0, 313.03, 0, 0),
(14, 3, 3, 1, 0, 133.39, 2, 2, 3, 1, 'mq', NULL, 2, 40, 2, 0, 188.32, 188.32, 0, 0),
(15, 3, 1, 2, 0, 99.82, 1, 1, 2, 2, 'mq', NULL, 1, 43, 2, 0, 154.75, 154.75, 0, 0),
(16, 2, 1, 2, 0, 157, 1, 2, 2, 0, 'mq', NULL, 1, 44, 2, 0, 0, 0, 0, 0),
(18, 0, 0, 0, 1, 190.4, 0, 0, 0, 0, 'mq', NULL, 7, 42, 2, 271.3, 230.85, 230.85, 0, 0),
(19, 3, 3, 3, 0, 0, 3, 2, 2, 2, 'm', NULL, 8, 1, 2, 0, 0, 0, 0, 0),
(20, 2, 3, 3, 0, 29.57, 3, 2, 3, 3, 'm', NULL, 8, 2, 2, 0, 0, 0, 0, 0),
(21, 3, 3, 2, 0, 66.7, 2, 2, 3, 1, 'm', NULL, 8, 3, 2, 0, 80.43, 0, 0, 0),
(22, 3, 3, 1, 0, 184.95, 1, 1, 3, 3, 'm', NULL, 8, 6, 2, 265.85, 205.18, 0, 0, 0),
(23, 3, 1, 3, 0, 77.35, 1, 1, 1, 1, 'mq', NULL, 8, 41, 2, 158.25, 117.8, 0, 0, 0),
(24, 3, 1, 1, 0, 99.82, 1, 1, 2, 2, 'mq', NULL, 8, 43, 2, 0, 154.75, 154.75, 0, 0),
(25, 3, 3, 3, 0, 0, 3, 2, 2, 2, 'm', NULL, 4, 1, 2, 0, 0, 0, 0, 0),
(26, 2, 3, 3, 0, 29.57, 3, 2, 3, 3, 'm', NULL, 4, 2, 2, 0, 0, 0, 0, 0),
(27, 3, 3, 2, 0, 66.7, 2, 2, 3, 1, 'm', NULL, 4, 3, 2, 0, 80.43, 0, 0, 0),
(28, 3, 3, 3, 0, 236.75, 3, 1, 3, 3, 'mq', NULL, 4, 4, 2, 346.61, 291.68, 0, 0, 0),
(29, 1, 3, 3, 0, 87.3, 1, 2, 3, 2, 'mq', NULL, 4, 5, 2, 0, 142.23, 0, 0, 0),
(30, 3, 3, 1, 0, 184.95, 1, 1, 3, 1, 'm', NULL, 4, 6, 2, 265.85, 205.18, 0, 0, 0),
(31, 3, 3, 2, 0, 236.75, 3, 1, 3, 3, 'mq', NULL, 2, 31, 3, 346.61, 291.68, 0, 0, 0),
(32, 2, 3, 3, 0, 55.23, 1, 3, 3, 3, 'mq', NULL, 1, 32, 3, 0, 110.16, 0, 0, 0),
(33, 1, 3, 2, 0, 158.13, 3, 3, 3, 3, 'mq', NULL, 1, 33, 3, 267.99, 213.06, 213.06, 267.99, 0),
(34, 3, 3, 1, 0, 383.68, 1, 2, 3, 1, 'mq', NULL, 1, 37, 3, 493.54, 438.61, 438.61, 493.54, 0),
(35, 2, 2, 2, 0, 117.7, 2, 2, 1, 1, 'mq', NULL, 1, 38, 3, 0, 0, 0, 0, 0),
(36, 2, 2, 2, 0, 313.03, 1, 3, 3, 0, 'mq', NULL, 1, 39, 3, 0, 0, 313.03, 0, 0),
(37, 3, 3, 1, 0, 133.39, 2, 2, 3, 1, 'mq', NULL, 2, 40, 3, 0, 188.32, 188.32, 0, 0),
(38, 3, 1, 2, 0, 99.82, 1, 1, 2, 2, 'mq', NULL, 1, 43, 3, 0, 154.75, 154.75, 0, 0),
(39, 2, 1, 2, 0, 157, 1, 2, 2, 0, 'mq', NULL, 1, 44, 3, 0, 0, 0, 0, 0),
(41, 0, 0, 0, 1, 190.4, 0, 0, 0, 0, 'mq', NULL, 7, 42, 3, 271.3, 230.85, 230.85, 0, 0),
(42, 3, 3, 3, 0, 0, 3, 2, 2, 2, 'm', NULL, 8, 1, 3, 0, 0, 0, 0, 0),
(43, 2, 3, 3, 0, 29.57, 3, 2, 3, 3, 'm', NULL, 8, 2, 3, 0, 0, 0, 0, 0),
(44, 3, 3, 2, 0, 66.7, 2, 2, 3, 1, 'm', NULL, 8, 3, 3, 0, 80.43, 0, 0, 0),
(45, 3, 3, 1, 0, 184.95, 1, 1, 3, 3, 'm', NULL, 8, 6, 3, 165.85, 205.18, 0, 0, 0),
(46, 3, 1, 3, 0, 77.35, 1, 1, 1, 1, 'mq', NULL, 8, 41, 3, 158.25, 117.8, 0, 0, 0),
(47, 3, 3, 3, 0, 113.49, 1, 2, 3, 2, 'mq', NULL, 9, 34, 3, 223.35, 168.42, 168.42, 223.35, 0),
(48, 3, 3, 3, 0, 81.9, 2, 2, 3, 3, 'mq', NULL, 9, 35, 3, 191.76, 136.83, 136.83, 191.76, 0),
(49, 3, 3, 3, 0, 163.4, 2, 2, 1, 1, 'mq', NULL, 9, 36, 3, 273.26, 218.33, 218.33, 273.26, 0),
(50, 3, 3, 3, 0, 0, 3, 2, 2, 2, 'm', NULL, 4, 1, 3, 0, 0, 0, 0, 0),
(51, 2, 3, 3, 0, 29.57, 3, 2, 3, 3, 'm', NULL, 4, 2, 3, 0, 0, 0, 0, 0),
(52, 3, 3, 2, 0, 66.7, 2, 2, 3, 1, 'm', NULL, 4, 3, 3, 0, 80.43, 0, 0, 0),
(53, 3, 3, 3, 0, 236.75, 3, 1, 3, 3, 'mq', NULL, 4, 4, 3, 346.61, 291.68, 0, 0, 0),
(54, 1, 3, 3, 0, 87.3, 1, 2, 3, 2, 'mq', NULL, 4, 5, 3, 0, 142.23, 0, 0, 0),
(55, 3, 3, 1, 0, 184.95, 1, 1, 3, 1, 'm', NULL, 4, 6, 3, 265.85, 205.18, 0, 0, 0),
(56, 2, 3, 2, 0, 90, 3, 3, 2, 2, 'm', NULL, 51, 7, 4, 0, 0, 0, 0, 0),
(57, 3, 2, 3, 0, 63.07, 3, 2, 2, 2, 'm', NULL, 51, 8, 4, 0, 65.96, 0, 0, 0),
(58, 3, 2, 2, 0, 119.32, 2, 1, 3, 3, 'mq', NULL, 52, 9, 4, 0, 0, 119.32, 0, 0),
(59, 3, 2, 2, 0, 129.26, 2, 1, 3, 3, 'mq', NULL, 52, 10, 4, 0, 0, 129.26, 0, 0),
(60, 3, 2, 3, 0, 92.77, 2, 1, 3, 3, 'mq', NULL, 52, 11, 4, 0, 0, 92.77, 0, 0),
(61, 2, 2, 1, 0, 140.69, 1, 1, 3, 3, 'mq', NULL, 52, 12, 4, 0, 0, 140.69, 0, 0),
(62, 0, 0, 0, 2, 0, 0, 0, 0, 0, NULL, NULL, 52, 15, 4, 0, 0, 0, 0, 0),
(63, 0, 0, 0, 2, 0, 0, 0, 0, 0, NULL, NULL, 52, 16, 4, 0, 0, 0, 0, 0),
(64, 0, 0, 0, 2, 0, 0, 0, 0, 0, NULL, NULL, 52, 17, 4, 0, 0, 0, 0, 0),
(65, 0, 0, 0, 2, 0, 0, 0, 0, 0, NULL, NULL, 52, 18, 4, 0, 0, 0, 0, 0),
(66, 0, 0, 0, 2, 0, 0, 0, 0, 0, NULL, NULL, 52, 19, 4, 0, 0, 0, 0, 0),
(67, 0, 0, 0, 2, 0, 0, 0, 0, 0, NULL, NULL, 52, 20, 4, 0, 0, 0, 0, 0),
(68, 0, 0, 0, 2, 0, 0, 0, 0, 0, NULL, NULL, 52, 21, 4, 0, 0, 0, 0, 0),
(69, 0, 0, 0, 2, 0, 0, 0, 0, 0, NULL, NULL, 52, 22, 4, 0, 0, 0, 0, 0),
(70, 0, 0, 0, 1, 63.07, 0, 0, 0, 0, 'm', NULL, 51, 8, 5, 0, 65.96, 0, 0, 0),
(71, 3, 2, 2, 0, 92.77, 2, 1, 3, 3, 'mq', NULL, 52, 11, 5, 0, 0, 92.77, 0, 0),
(72, 2, 2, 1, 0, 140.69, 1, 1, 3, 3, 'mq', NULL, 52, 12, 5, 0, 0, 140.69, 0, 0),
(73, 2, 3, 2, 0, 92.06, 2, 1, 3, 3, 'mq', NULL, 52, 13, 5, 0, 0, 92.06, 0, 0),
(74, 2, 3, 3, 0, 4.24, 3, 3, 3, 1, 'mq', NULL, 52, 14, 5, 0, 40.54, 40.54, 0, 0),
(75, 3, 3, 3, 0, 0, 3, 2, 2, 2, 'm', NULL, 3, 1, 7, 0, 0, 0, 0, 0),
(76, 2, 3, 3, 0, 29.57, 3, 2, 3, 3, 'm', NULL, 3, 2, 7, 0, 0, 0, 0, 0),
(77, 3, 3, 2, 0, 66.7, 2, 2, 3, 1, 'm', NULL, 3, 3, 7, 0, 80.43, 0, 0, 0),
(78, 3, 3, 1, 0, 184.95, 1, 1, 3, 3, 'm', NULL, 101, 6, 7, 265.85, 205.18, 0, 0, 0),
(79, 3, 2, 2, 0, 143.68, 2, 1, 3, 3, 'mq', NULL, 102, 23, 7, 0, 0, 143.68, 0, 0),
(80, 3, 2, 3, 0, 117.13, 2, 1, 3, 3, 'mq', NULL, 102, 24, 7, 0, 0, 117.13, 0, 0),
(81, 2, 2, 1, 0, 175.18, 1, 1, 3, 3, 'mq', NULL, 102, 25, 7, 0, 0, 175.18, 0, 0),
(82, 0, 0, 0, 2, 0, 0, 0, 0, 0, NULL, NULL, 102, 26, 7, 0, 0, 0, 0, 0),
(83, 0, 0, 0, 2, 0, 0, 0, 0, 0, NULL, NULL, 102, 27, 7, 0, 0, 0, 0, 0),
(84, 0, 0, 0, 2, 0, 0, 0, 0, 0, NULL, NULL, 102, 28, 7, 0, 0, 0, 0, 0),
(85, 0, 0, 0, 2, 0, 0, 0, 0, 0, NULL, NULL, 102, 28, 7, 0, 0, 0, 0, 0),
(86, 0, 0, 0, 2, 0, 0, 0, 0, 0, NULL, NULL, 102, 29, 7, 0, 0, 0, 0, 0),
(87, 0, 0, 0, 2, 0, 0, 0, 0, 0, NULL, NULL, 102, 30, 7, 0, 0, 0, 0, 0),
(88, 0, 0, 0, 1, 55.23, 0, 0, 0, 0, 'mq', NULL, 2, 58, 8, 0, 110.16, 0, 0, 0),
(89, 3, 2, 3, 0, 33.83, 3, 2, 1, 1, 'm', NULL, 3, 54, 8, 0, 0, 0, 0, 0),
(90, 3, 1, 1, 0, 99.82, 1, 2, 1, 1, 'mq', NULL, 3, 55, 8, 0, 154.75, 0, 0, 0),
(91, 3, 3, 1, 0, 260.13, 2, 1, 3, 3, 'mq', NULL, 3, 56, 8, 0, 0, 260.13, 0, 0),
(92, 2, 1, 1, 0, 88.42, 2, 1, 1, 1, 'mq', NULL, 3, 57, 8, 0, 143.35, 143.35, 0, 0),
(93, 1, 3, 2, 0, 0, 1, 3, 3, 2, 'mq', NULL, 3, 59, 8, 0, 0, 728.07, 234.93, 0),
(94, 1, 3, 1, 0, 178.07, 1, 1, 3, 3, 'mq', NULL, 3, 62, 8, 0, 0, 178.07, 0, 0),
(95, 0, 0, 0, 1, 243.92, 0, 0, 0, 0, 'mq', NULL, 2, 61, 9, 0, 0, 0, 0, 0),
(96, 3, 2, 3, 0, 33.83, 3, 2, 1, 1, 'm', NULL, 3, 54, 9, 0, 0, 0, 0, 0),
(97, 3, 1, 1, 0, 99.82, 1, 2, 1, 1, 'mq', NULL, 3, 55, 9, 0, 154.75, 0, 0, 0),
(98, 3, 3, 1, 0, 260.13, 2, 1, 3, 3, 'mq', NULL, 3, 56, 9, 0, 0, 260.13, 0, 0),
(99, 1, 3, 1, 0, 178.07, 1, 1, 3, 3, 'mq', NULL, 3, 62, 9, 0, 0, 178.07, 0, 0),
(100, 3, 1, 2, 0, 693.14, 2, 1, 1, 1, 'mq', NULL, 6, 50, 10, 0, 0, 693.14, 0, 0),
(101, 2, 2, 2, 0, 226.63, 3, 2, 1, 1, 'mq', NULL, 6, 51, 10, 0, 0, 226.63, 0, 0),
(102, 2, 3, 3, 0, 327.91, 3, 3, 2, 2, 'mq', NULL, 6, 52, 10, 0, 0, 327.91, 0, 0),
(103, 3, 1, 2, 0, 693.14, 2, 1, 1, 0, 'mq', NULL, 6, 50, 11, 0, 0, 693.14, 0, 0),
(104, 2, 2, 2, 0, 226.63, 3, 2, 1, 0, 'mq', NULL, 6, 51, 11, 0, 0, 226.63, 0, 0),
(105, 2, 3, 3, 0, 327.91, 3, 3, 2, 0, 'mq', NULL, 6, 52, 11, 0, 0, 327.91, 0, 0),
(106, 3, 1, 2, 0, 693.14, 2, 1, 1, 0, 'mq', NULL, 6, 50, 12, 0, 0, 693.14, 0, 0),
(107, 2, 2, 2, 0, 226.63, 3, 2, 1, 0, 'mq', NULL, 6, 51, 12, 0, 0, 226.63, 0, 0),
(108, 2, 3, 3, 0, 327.91, 3, 3, 2, 0, 'mq', NULL, 6, 52, 12, 0, 0, 327.91, 0, 0),
(109, 3, 1, 2, 0, 693.14, 2, 1, 1, 0, 'mq', NULL, 6, 50, 13, 0, 0, 693.14, 0, 0),
(110, 2, 2, 2, 0, 226.63, 3, 2, 1, 0, 'mq', NULL, 6, 51, 13, 0, 0, 226.63, 0, 0),
(111, 2, 3, 3, 0, 327.91, 3, 3, 2, 0, 'mq', NULL, 6, 52, 13, 0, 0, 327.91, 0, 0),
(112, 0, 0, 0, 2, 438.33, 0, 0, 0, 0, 'mq', NULL, 6, 53, 13, 0, 0, 0, 0, 0),
(113, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, 12, 66, 14, 0, 0, 0, 0, 0),
(126, 2, 3, 2, 0, 186.31, 3, 2, 3, 2, 'mq', NULL, 1, 78, 2, 296.17, 241.24, 241.24, 296.17, 0),
(127, 3, 2, 2, 0, 63.07, 3, 2, 2, 2, 'm', NULL, 8, 79, 2, 0, 65.96, 0, 0, 0),
(128, 2, 3, 1, 0, 172.3, 1, 1, 3, 1, 'm', NULL, 8, 80, 2, 0, 0, 0, 0, 0),
(129, 3, 3, 1, 0, 112.78, 1, 1, 3, 1, 'm', NULL, 8, 81, 2, 153.23, 133.01, 0, 0, 0),
(130, 3, 2, 2, 0, 63.07, 3, 2, 2, 2, 'm', NULL, 4, 79, 2, 0, 65.96, 0, 0, 0),
(131, 2, 3, 1, 0, 172.3, 1, 1, 3, 1, 'm', NULL, 4, 80, 2, 0, 0, 0, 0, 0),
(132, 3, 3, 1, 0, 112.78, 1, 1, 3, 1, 'm', NULL, 4, 81, 2, 153.23, 133.01, 0, 0, 0),
(133, 3, 2, 3, 0, 63.07, 3, 2, 2, 2, 'm', NULL, 101, 79, 7, 0, 65.96, 0, 0, 0),
(134, 2, 3, 2, 0, 172.3, 1, 1, 3, 1, 'm', NULL, 101, 80, 7, 0, 0, 0, 0, 0),
(135, 3, 3, 2, 0, 112.78, 1, 1, 3, 1, 'm', NULL, 101, 81, 7, 153.23, 133.01, 0, 0, 0),
(136, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, 2, 77, 4, 0, 0, 0, 0, 0),
(137, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, 2, 77, 7, 0, 0, 0, 0, 0),
(142, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, 2, 77, 10, 0, 0, 0, 0, 0),
(143, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, 2, 77, 11, 0, 0, 0, 0, 0),
(144, 0, 0, 0, 1, 0, 0, 0, 0, 0, '', '', 2, 77, 13, 0, 0, 0, 0, 0),
(145, 0, 0, 0, 1, 0, 0, 0, 0, 0, '', '', 2, 77, 12, 0, 0, 0, 0, 0),
(146, 3, 1, 1, 0, 99.82, 1, 1, 2, 2, 'mq', NULL, 8, 43, 3, 0, 154.75, 154.75, 0, 0),
(147, 2, 3, 2, 0, 186.31, 3, 2, 3, 2, 'mq', NULL, 1, 78, 3, 296.17, 241.24, 241.24, 296.17, 0),
(148, 3, 2, 2, 0, 63.07, 3, 2, 2, 2, 'm', NULL, 4, 79, 3, 0, 65.96, 0, 0, 0),
(149, 2, 3, 1, 0, 172.3, 1, 1, 3, 1, 'm', NULL, 4, 80, 3, 0, 0, 0, 0, 0),
(150, 3, 3, 1, 0, 112.78, 1, 1, 3, 1, 'm', NULL, 4, 81, 3, 153.23, 133.01, 0, 0, 0),
(151, 3, 2, 2, 0, 63.07, 3, 2, 2, 2, 'm', NULL, 8, 79, 3, 0, 65.96, 0, 0, 0),
(152, 2, 3, 1, 0, 172.3, 1, 1, 3, 1, 'm', NULL, 8, 80, 3, 0, 0, 0, 0, 0),
(153, 3, 3, 1, 0, 112.78, 1, 1, 3, 1, 'm', NULL, 8, 81, 3, 153.23, 133.01, 0, 0, 0);

-- --------------------------------------------------------

--
-- Struttura della tabella `associazione_riepilogo`
--

CREATE TABLE `associazione_riepilogo` (
  `id` bigint(20) NOT NULL,
  `associazione_intervento_energetico_id` bigint(20) DEFAULT NULL,
  `associazione_intervento_strutturale_id` bigint(20) DEFAULT NULL,
  `risparmio_euro` double DEFAULT NULL,
  `attrezzature` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `associazione_riepilogo`
--

INSERT INTO `associazione_riepilogo` (`id`, `associazione_intervento_energetico_id`, `associazione_intervento_strutturale_id`, `risparmio_euro`, `attrezzature`) VALUES
(1, 88, 7, 40.45, 'Trabattelli ad uso interno'),
(2, 89, 7, 40.45, 'Trabattelli ad uso interno'),
(3, 34, 79, 112.18, 'Ponteggi esterni e Parapetti'),
(4, 35, 79, 90.68, 'Ponteggi esterni e Parapetti'),
(5, 38, 79, 60.01, 'Ponteggi esterni e Parapetti'),
(6, 34, 80, 112.18, 'Ponteggi esterni e Parapetti'),
(7, 35, 80, 90.68, 'Ponteggi esterni e Parapetti'),
(8, 38, 80, 60.01, 'Ponteggi esterni e Parapetti'),
(9, 34, 81, 112.18, 'Ponteggi esterni e Parapetti'),
(10, 35, 81, 90.68, 'Ponteggi esterni e Parapetti'),
(11, 38, 81, 60.01, 'Ponteggi esterni e Parapetti'),
(12, 30, 58, 87.82, '-'),
(13, 30, 59, 87.82, '-'),
(14, 30, 60, 87.82, '-'),
(15, 30, 71, 87.82, '-'),
(16, 30, 61, 87.82, '-'),
(17, 30, 72, 87.82, '-'),
(18, 30, 73, 87.82, '-'),
(19, 90, 74, 26.46, 'Trabattelli ad uso interno'),
(20, 88, 74, 10.9, 'Trabattelli ad uso interno'),
(21, 91, 74, 26.46, 'Trabattelli ad uso interno'),
(22, 89, 74, 10.9, 'Trabattelli ad uso interno'),
(23, 30, 4, 87.82, '-'),
(24, 30, 91, 87.82, '-'),
(25, 30, 98, 87.82, '-'),
(26, 88, 5, 40.45, 'Trabattelli ad uso interno'),
(27, 89, 5, 40.45, 'Trabattelli ad uso interno'),
(28, 88, 92, 40.45, 'Trabattelli ad uso interno'),
(29, 89, 92, 40.45, 'Trabattelli ad uso interno'),
(30, 30, 94, 87.82, '-'),
(31, 30, 99, 87.82, '-'),
(32, 72, 100, 109.16, '-'),
(33, 72, 103, 109.16, '-'),
(34, 72, 106, 109.16, '-'),
(35, 72, 109, 109.16, '-'),
(36, 72, 101, 109.16, '-'),
(37, 72, 104, 109.16, '-'),
(38, 72, 107, 109.16, '-'),
(39, 72, 110, 109.16, '-'),
(40, 72, 102, 285.83, '-'),
(41, 73, 102, 35.48, '-'),
(42, 72, 105, 285.83, '-'),
(43, 73, 105, 35.48, '-'),
(44, 72, 108, 285.83, '-'),
(45, 73, 108, 35.48, '-'),
(46, 72, 111, 285.83, '-'),
(47, 73, 111, 35.48, '-'),
(48, 1, 10, 54.93, 'Trabattelli ad uso interno'),
(49, 2, 10, 40.45, 'Trabattelli ad uso interno'),
(50, 3, 10, 40.45, 'Ponteggi esterni'),
(51, 4, 10, 54.93, 'Ponteggi esterni'),
(52, 5, 10, 54.93, 'Ponteggi esterni'),
(53, 9, 10, 80.9, 'Trabattelli ad uso interno e Ponteggi esterni'),
(54, 1, 33, 54.93, 'Trabattelli ad uso interno'),
(55, 2, 33, 40.45, 'Trabattelli ad uso interno'),
(56, 3, 33, 40.45, 'Ponteggi esterni'),
(57, 4, 33, 54.93, 'Ponteggi esterni'),
(58, 5, 33, 54.93, 'Ponteggi esterni'),
(59, 9, 33, 80.9, 'Trabattelli ad uso interno e Ponteggi esterni'),
(60, 1, 126, 54.93, 'Trabattelli ad uso interno'),
(61, 2, 126, 40.45, 'Trabattelli ad uso interno'),
(62, 3, 126, 40.45, 'Ponteggi esterni'),
(63, 4, 126, 50.93, 'Ponteggi esterni'),
(64, 5, 126, 50.93, 'Ponteggi esterni'),
(65, 9, 126, 80.9, 'Trabattelli ad uso interno e Ponteggi esterni'),
(66, 1, 147, 54.93, 'Trabattelli ad uso interno'),
(67, 2, 147, 40.45, 'Trabattelli ad uso interno'),
(68, 3, 147, 40.45, 'Ponteggi esterni'),
(69, 4, 147, 54.93, 'Ponteggi esterni'),
(70, 5, 147, 54.93, 'Ponteggi esterni'),
(71, 9, 147, 80.9, 'Trabattelli ad uso interno e Ponteggi esterni'),
(72, 1, 47, 54.93, 'Trabattelli ad uso interno'),
(73, 2, 47, 40.45, 'Trabattelli ad uso interno'),
(74, 3, 47, 40.45, 'Ponteggi esterni'),
(75, 4, 47, 54.93, 'Ponteggi esterni'),
(76, 5, 47, 54.93, 'Ponteggi esterni'),
(77, 9, 47, 80.9, 'Trabattelli ad uso interno e Ponteggi esterni'),
(78, 1, 48, 54.93, 'Trabattelli ad uso interno'),
(79, 2, 48, 40.45, 'Trabattelli ad uso interno'),
(80, 3, 48, 40.45, 'Ponteggi esterni'),
(81, 4, 48, 54.93, 'Ponteggi esterni'),
(82, 5, 48, 54.93, 'Ponteggi esterni'),
(83, 9, 48, 80.9, 'Trabattelli ad uso interno e Ponteggi esterni'),
(84, 1, 49, 54.93, 'Trabattelli ad uso interno'),
(85, 2, 49, 40.45, 'Trabattelli ad uso interno'),
(86, 3, 49, 40.45, 'Ponteggi esterni'),
(87, 4, 49, 54.93, 'Ponteggi esterni'),
(88, 5, 49, 54.93, 'Ponteggi esterni'),
(89, 9, 49, 80.9, 'Trabattelli ad uso interno e Ponteggi esterni'),
(90, 1, 11, 54.93, 'Trabattelli ad uso interno'),
(91, 2, 11, 40.45, 'Trabattelli ad uso interno'),
(92, 3, 11, 40.45, 'Ponteggi esterni'),
(93, 4, 11, 54.93, 'Ponteggi esterni'),
(94, 5, 11, 54.93, 'Ponteggi esterni'),
(95, 9, 11, 80.9, 'Trabattelli ad uso interno e Ponteggi esterni'),
(96, 1, 34, 54.93, 'Trabattelli ad uso interno'),
(97, 2, 34, 40.45, 'Trabattelli ad uso interno'),
(98, 3, 34, 40.45, 'Ponteggi esterni'),
(99, 4, 34, 54.93, 'Ponteggi esterni'),
(100, 5, 34, 54.93, 'Ponteggi esterni'),
(101, 9, 34, 80.9, 'Trabattelli ad uso interno e Ponteggi esterni'),
(102, 1, 13, 54.93, 'Trabattelli ad uso interno'),
(103, 2, 13, 40.45, 'Trabattelli ad uso interno'),
(104, 3, 13, 40.45, 'Ponteggi esterni'),
(105, 4, 13, 54.93, 'Ponteggi esterni'),
(106, 5, 13, 54.93, 'Ponteggi esterni'),
(107, 9, 13, 80.9, 'Trabattelli ad uso interno e Ponteggi esterni'),
(108, 1, 36, 54.93, 'Trabattelli ad uso interno'),
(109, 2, 36, 40.45, 'Trabattelli ad uso interno'),
(110, 3, 36, 40.45, 'Ponteggi esterni'),
(111, 4, 36, 54.93, 'Ponteggi esterni'),
(112, 5, 36, 54.93, 'Ponteggi esterni'),
(113, 9, 36, 80.9, 'Trabattelli ad uso interno e Ponteggi esterni'),
(114, 1, 14, 54.93, 'Trabattelli ad uso interno'),
(115, 2, 14, 40.45, 'Trabattelli ad uso interno'),
(116, 9, 14, 40.45, 'Trabattelli ad uso interno'),
(117, 1, 37, 54.93, 'Trabattelli ad uso interno'),
(118, 2, 37, 40.45, 'Trabattelli ad uso interno'),
(119, 9, 37, 40.45, 'Trabattelli ad uso interno'),
(120, 3, 15, 40.45, 'Ponteggi esterni'),
(121, 4, 15, 54.93, 'Ponteggi esterni'),
(122, 5, 15, 40.45, 'Ponteggi esterni'),
(123, 9, 15, 40.45, 'Ponteggi esterni'),
(124, 3, 24, 40.45, 'Ponteggi esterni'),
(125, 4, 24, 54.93, 'Ponteggi esterni'),
(126, 5, 24, 40.45, 'Ponteggi esterni'),
(127, 9, 24, 40.45, 'Ponteggi esterni'),
(128, 3, 38, 40.45, 'Ponteggi esterni'),
(129, 4, 38, 54.93, 'Ponteggi esterni'),
(130, 5, 38, 40.45, 'Ponteggi esterni'),
(131, 9, 38, 40.45, 'Ponteggi esterni'),
(132, 3, 146, 40.45, 'Ponteggi esterni'),
(133, 4, 146, 54.93, 'Ponteggi esterni'),
(134, 5, 146, 40.45, 'Ponteggi esterni'),
(135, 9, 146, 40.45, 'Ponteggi esterni'),
(136, 30, 6, 87.82, '-'),
(137, 88, 6, 40.45, 'Trabattelli ad uso interno'),
(138, 89, 6, 40.45, 'Trabattelli ad uso interno'),
(139, 30, 93, 87.82, '-'),
(140, 88, 93, 40.45, 'Trabattelli ad uso interno'),
(141, 89, 93, 40.45, 'Trabattelli ad uso interno'),
(142, 1, 18, 40.45, 'Trabattelli ad uso interno'),
(143, 2, 18, 40.45, 'Trabattelli ad uso interno'),
(144, 3, 18, 40.45, 'Ponteggi Esterni'),
(145, 4, 18, 40.45, 'Ponteggi Esterni'),
(146, 5, 18, 40.45, 'Ponteggi Esterni'),
(147, 1, 41, 40.45, 'Trabattelli ad uso interno'),
(148, 2, 41, 40.45, 'Trabattelli ad uso interno'),
(149, 3, 41, 40.45, 'Ponteggi Esterni'),
(150, 4, 41, 40.45, 'Ponteggi Esterni'),
(151, 5, 41, 40.45, 'Ponteggi Esterni'),
(152, 9, 18, 40.45, 'Trabattelli ad uso interno e Ponteggi Esterni'),
(153, 9, 41, 40.45, 'Trabattelli ad uso interno e Ponteggi Esterni');

-- --------------------------------------------------------

--
-- Struttura della tabella `caratteristiche_qualitative_ce`
--

CREATE TABLE `caratteristiche_qualitative_ce` (
  `id` bigint(20) NOT NULL,
  `caratteristiche_qualitative` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `caratteristiche_qualitative_ce`
--

INSERT INTO `caratteristiche_qualitative_ce` (`id`, `caratteristiche_qualitative`) VALUES
(1, 'Scarso potere coibente'),
(2, 'Scarsa capacità di dissipare calore'),
(3, 'Umidità per risalita capillare'),
(4, 'Infiltrazioni d\'aria'),
(5, 'Ponti termici'),
(6, 'Scarsa capacità di accumulare calore'),
(7, 'Irraggiamento estivo non contrastato'),
(8, 'Necessità di ventilazione naturale'),
(9, 'Scarso apporto di luce naturale negli ambienti interni'),
(10, 'Soluzioni da fonti rinnovabili'),
(12, 'null');

-- --------------------------------------------------------

--
-- Struttura della tabella `caratteristiche_qualitative_st`
--

CREATE TABLE `caratteristiche_qualitative_st` (
  `id` bigint(20) NOT NULL,
  `caratteristiche_qualitative` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `caratteristiche_qualitative_st`
--

INSERT INTO `caratteristiche_qualitative_st` (`id`, `caratteristiche_qualitative`) VALUES
(1, 'Scarsa qualità costruttiva'),
(2, 'Elevato degrado'),
(3, 'Spinte orizzontali non contrastate'),
(4, 'Pannelli murari male ammorsati tra loro'),
(6, 'Aperture di elevate dimensioni non controventate'),
(7, 'Presenza di numerose nicchie'),
(8, 'Pareti di elevate dimensioni non controventate'),
(9, 'Pannelli murari a doppio strato con camera d\'aria - decoesione tra i paramenti'),
(12, 'Presenza di elementi non strutturali - valutazione connessione/massa'),
(51, 'Efficacia dei collegamenti tra solai e muratura'),
(52, 'Qualità delle strutture orizzontali'),
(101, 'Efficacia dei collegamenti tra copertura e muratura'),
(102, 'Qualità della copertura');

-- --------------------------------------------------------

--
-- Struttura della tabella `caratteristiche_qualitative_st_meccanismi_associati`
--

CREATE TABLE `caratteristiche_qualitative_st_meccanismi_associati` (
  `caratteristiche_qualitative_st_id` bigint(20) NOT NULL,
  `meccanismi_associati_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `caratteristiche_qualitative_st_meccanismi_associati`
--

INSERT INTO `caratteristiche_qualitative_st_meccanismi_associati` (`caratteristiche_qualitative_st_id`, `meccanismi_associati_id`) VALUES
(1, 1),
(1, 2),
(1, 5),
(1, 8),
(1, 9),
(1, 12),
(2, 11),
(3, 3),
(3, 4),
(3, 6),
(3, 10),
(3, 13),
(3, 14),
(3, 15),
(4, 3),
(4, 4),
(4, 6),
(4, 8),
(4, 9),
(4, 10),
(4, 14),
(4, 16),
(51, 3),
(51, 4),
(51, 5),
(51, 6),
(51, 10),
(51, 16),
(52, 10),
(6, 1),
(6, 2),
(6, 3),
(6, 4),
(6, 12),
(6, 14),
(6, 15),
(7, 1),
(7, 7),
(7, 12),
(8, 1),
(8, 2),
(8, 3),
(8, 4),
(8, 5),
(8, 6),
(8, 8),
(8, 10),
(8, 12),
(8, 14),
(8, 15),
(9, 1),
(9, 2),
(9, 3),
(9, 4),
(9, 5),
(9, 6),
(101, 2),
(101, 3),
(101, 4),
(101, 6),
(101, 13),
(101, 14),
(101, 15),
(102, 2),
(102, 3),
(102, 4),
(102, 13),
(102, 15),
(102, 16),
(12, 12);

-- --------------------------------------------------------

--
-- Struttura della tabella `caratteristiche_qualitative_st_valutazione_punteggio`
--

CREATE TABLE `caratteristiche_qualitative_st_valutazione_punteggio` (
  `caratteristiche_qualitative_st_id` bigint(20) NOT NULL,
  `valutazione_punteggio_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `caratteristiche_qualitative_st_valutazione_punteggio`
--

INSERT INTO `caratteristiche_qualitative_st_valutazione_punteggio` (`caratteristiche_qualitative_st_id`, `valutazione_punteggio_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 4),
(2, 5),
(2, 6),
(3, 7),
(3, 8),
(3, 9),
(4, 10),
(4, 11),
(4, 12),
(6, 19),
(6, 20),
(6, 21),
(7, 22),
(7, 23),
(7, 24),
(8, 25),
(8, 26),
(8, 27),
(9, 28),
(9, 29),
(9, 30),
(12, 37),
(12, 38),
(12, 39),
(51, 13),
(51, 14),
(51, 15),
(52, 16),
(52, 17),
(52, 18),
(101, 31),
(101, 32),
(101, 33),
(102, 34),
(102, 35),
(102, 36);

-- --------------------------------------------------------

--
-- Struttura della tabella `caratteristiche_struttura_st`
--

CREATE TABLE `caratteristiche_struttura_st` (
  `id` bigint(20) NOT NULL,
  `caratteristica_id` bigint(20) DEFAULT NULL,
  `struttura_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `caratteristiche_struttura_st`
--

INSERT INTO `caratteristiche_struttura_st` (`id`, `caratteristica_id`, `struttura_id`) VALUES
(1, 2, 1),
(2, 2, 2),
(3, 2, 3),
(4, 2, 4),
(5, 2, 5),
(6, 2, 7),
(7, 2, 8),
(8, 2, 9),
(9, 2, 10),
(10, 2, 11),
(11, 2, 12),
(12, 2, 13),
(13, 3, 1),
(14, 3, 7),
(15, 3, 8),
(16, 3, 9),
(17, 4, 2),
(18, 4, 3),
(19, 51, 4),
(20, 51, 5),
(21, 6, 10),
(22, 6, 11),
(23, 6, 12),
(24, 6, 13),
(25, 8, 2),
(26, 8, 3),
(27, 9, 3),
(28, 101, 7),
(29, 12, 14);

-- --------------------------------------------------------

--
-- Struttura della tabella `classe_indicatore_ce`
--

CREATE TABLE `classe_indicatore_ce` (
  `id` bigint(20) NOT NULL,
  `descrizione` varchar(255) DEFAULT NULL,
  `punteggio` double NOT NULL,
  `indicatore_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `classe_indicatore_ce`
--

INSERT INTO `classe_indicatore_ce` (`id`, `descrizione`, `punteggio`, `indicatore_id`) VALUES
(1, 'S/V>2,2', 3.96, 1),
(2, '1,56<S/V≤2,02', 3.06, 1),
(3, '1,09<S/V≤1,56', 2.16, 1),
(4, '0,63<S/V≤1,09', 1.26, 1),
(5, 'S/V≤0,63', 0.36, 1),
(6, '>33%', 0.07, 2),
(7, 'tra 26% e 33%', 0.06, 2),
(8, 'tra 19% e 26%', 0.05, 2),
(9, 'tra 12% e 19%', 0.04, 2),
(10, '≤12%', 0.03, 2),
(11, 'edificio isolato', 0.07, 3),
(12, 'edificio con 1 lato attiguo', 0.05, 3),
(13, 'edificio con 2 lati attigui', 0.04, 3),
(14, 'edificio con 3 lati attigui', 0.03, 3),
(15, 'edificio intercluso', 0.02, 3),
(16, 'edificio con lato attiguo a sud', 0.05, 4),
(17, 'edificio con lato esposto sia a sud che nord', 0.03, 4),
(18, 'edificio con lato esposto a sud e attiguo a nord', 0.02, 4),
(19, 'rotazione di 0° rispetto agli assi N-S e E-O con lati esposti N, NEO, NO, NSO, O,SO', 0.011, 5),
(20, 'altri casi', 0.007, 5),
(21, 'rotazione di 0° rispetto agli assi N-S e E-O con esposizioni E, ES, ESO, NE, NES, S', 0.004, 5),
(22, '>3,10 W/m2K', 0.78, 6),
(23, '2,64÷3,10 W/m2K', 0.68, 6),
(24, '2,17÷2,64 W/m2K', 0.57, 6),
(25, '1,70÷2,17 W/m2K', 0.47, 6),
(26, '1,23÷1,70 W/m2K', 0.36, 6),
(27, '0,77÷1,23 W/m2K', 0.26, 6),
(28, '≤0,77 W/m2K', 0.16, 6),
(29, '>2,78 W/m2K', 0.59, 7),
(30, '2,16÷2,78 W/m2K', 0.47, 7),
(31, '1,54÷2,16 W/m2K', 0.35, 7),
(32, '0,92÷1,54 W/m2K', 0.22, 7),
(33, '≤0,92 W/m2K', 0.1, 7),
(34, '>4,40 W/m2K', 0.21, 8),
(35, '3,10÷4,40 W/m2K', 0.16, 8),
(36, '1,80÷3,10 W/m2K', 0.1, 8),
(37, '≤1,80 W/m2K', 0.04, 8),
(38, '>1,76 W/m2K', 0.15, 9),
(39, '1,47÷1,76 W/m2K', 0.13, 9),
(40, '1,19÷1,47 W/m2K', 0.1, 9),
(41, '0,90÷1,19 W/m2K', 0.08, 9),
(42, '0,62÷0,90 W/m2K', 0.06, 9),
(43, '≤0,62 W/m2K', 0.04, 9),
(44, 'Pareti con isolamento dall\'esterno (a cappotto) con aggetti/balconi o pareti a cassa vuota con isolamento nell\'intercapedine (ponte termico non corretto)', 0.08, 10),
(45, 'Pareti a cassa vuota con mattoni forati (senza isolante) o pareti a cassa vuota con isolamento nell\'intercapedine (ponte termico corretto)', 0.06, 10),
(46, 'Pareti con isolamento dall\'esterno (a cappotto) senza aggetti/balconi e ponti termici corretti o pareti omogenee in mattoni pieni o pietra (senza isolante)', 0.03, 10),
(47, '>0,91', 0.14, 11),
(48, '0,84÷0,91', 0.21, 11),
(49, '0,77÷0,84', 0.28, 11),
(50, '0,71÷0,77', 0.35, 11),
(51, '0,64÷0,71', 0.42, 11),
(52, '0,57÷0,64', 0.49, 11),
(53, '≤0,57', 0.56, 11),
(54, '>0,86', 0.03, 12),
(55, '0,74÷0,86', 0.05, 12),
(56, '0,62÷0,74', 0.07, 12),
(57, '≤0,62', 0.09, 12),
(58, '>0,86', 0.03, 13),
(59, '0,74÷0,86', 0.05, 13),
(60, '0,62÷0,74', 0.07, 13),
(61, '≤0,62', 0.09, 13);

-- --------------------------------------------------------

--
-- Struttura della tabella `classe_indicatore_non_ce`
--

CREATE TABLE `classe_indicatore_non_ce` (
  `id` bigint(20) NOT NULL,
  `descrizione` varchar(255) DEFAULT NULL,
  `punteggio` double NOT NULL,
  `indicatore_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `classe_indicatore_non_ce`
--

INSERT INTO `classe_indicatore_non_ce` (`id`, `descrizione`, `punteggio`, `indicatore_id`) VALUES
(1, 'S/V>2,2', 1.8, 1),
(2, '1,56<S/V≤2,02', 1.44, 1),
(3, '1,09<S/V≤1,56', 1.08, 1),
(4, '0,63<S/V≤1,09', 0.72, 1),
(5, 'S/V≤0,63', 0.36, 1),
(6, '>33%', 0.17, 2),
(7, 'tra 26% e 33%', 0.13, 2),
(8, 'tra 19% e 26%', 0.1, 2),
(9, 'tra 12% e 19%', 0.07, 2),
(10, '≤12%', 0.03, 2),
(11, 'edificio isolato', 0.07, 3),
(12, 'edificio con 1 lato attiguo', 0.05, 3),
(13, 'edificio con 2 lati attigui', 0.04, 3),
(14, 'edificio con 3 lati attigui', 0.03, 3),
(15, 'edificio intercluso', 0.02, 3),
(16, 'edificio con lato attiguo a sud', 0.05, 4),
(17, 'edificio con lato esposto sia a sud che nord', 0.03, 4),
(18, 'edificio con lato esposto a sud e attiguo a nord', 0.02, 4),
(19, 'rotazione di 0° rispetto agli assi N-S e E-O con lati esposti N, NEO, NO, NSO, O,SO', 0.011, 5),
(20, 'altri casi', 0.007, 5),
(21, 'rotazione di 0° rispetto agli assi N-S e E-O con esposizioni E, ES, ESO, NE, NES, S', 0.004, 5),
(22, '>3,10 W/m2K', 0.78, 6),
(23, '2,64÷3,10 W/m2K', 0.68, 6),
(24, '2,17÷2,64 W/m2K', 0.57, 6),
(25, '1,70÷2,17 W/m2K', 0.47, 6),
(26, '1,23÷1,70 W/m2K', 0.36, 6),
(27, '0,77÷1,23 W/m2K', 0.26, 6),
(28, '≤0,77 W/m2K', 0.16, 6),
(29, '>2,78 W/m2K', 0.3, 7),
(30, '2,16÷2,78 W/m2K', 0.25, 7),
(31, '1,54÷2,16 W/m2K', 0.2, 7),
(32, '0,92÷1,54 W/m2K', 0.15, 7),
(33, '≤0,92 W/m2K', 0.1, 7),
(34, '>4,40 W/m2K', 0.13, 8),
(35, '3,10÷4,40 W/m2K', 0.1, 8),
(36, '1,80÷3,10 W/m2K', 0.07, 8),
(37, '≤1,80 W/m2K', 0.04, 8),
(38, '>1,76 W/m2K', 0.15, 9),
(39, '1,47÷1,76 W/m2K', 0.13, 9),
(40, '1,19÷1,47 W/m2K', 0.1, 9),
(41, '0,90÷1,19 W/m2K', 0.08, 9),
(42, '0,62÷0,90 W/m2K', 0.06, 9),
(43, '≤0,62 W/m2K', 0.04, 9),
(44, 'Pareti con isolamento dall\'esterno (a cappotto) con aggetti/balconi o pareti a cassa vuota con isolamento nell\'intercapedine (ponte termico non corretto)', 0.08, 10),
(45, 'Pareti a cassa vuota con mattoni forati (senza isolante) o pareti a cassa vuota con isolamento nell\'intercapedine (ponte termico corretto)', 0.06, 10),
(46, 'Pareti con isolamento dall\'esterno (a cappotto) senza aggetti/balconi e ponti termici corretti o pareti omogenee in mattoni pieni o pietra (senza isolante)', 0.03, 10),
(47, '>0,91', 0.14, 11),
(48, '0,84÷0,91', 0.21, 11),
(49, '0,77÷0,84', 0.28, 11),
(50, '0,71÷0,77', 0.35, 11),
(51, '0,64÷0,71', 0.42, 11),
(52, '0,57÷0,64', 0.49, 11),
(53, '≤0,57', 0.56, 11),
(54, '>0,86', 0.03, 12),
(55, '0,74÷0,86', 0.07, 12),
(56, '0,62÷0,74', 0.11, 12),
(57, '≤0,62', 0.14, 12);

-- --------------------------------------------------------

--
-- Struttura della tabella `codice_intervento_ce`
--

CREATE TABLE `codice_intervento_ce` (
  `id` bigint(20) NOT NULL,
  `codice` varchar(255) DEFAULT NULL,
  `descrizione` varchar(255) DEFAULT NULL,
  `appunto` varchar(255) DEFAULT NULL,
  `attrezzatura` varchar(255) DEFAULT NULL,
  `descrizione_attrezzatura` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `codice_intervento_ce`
--

INSERT INTO `codice_intervento_ce` (`id`, `codice`, `descrizione`, `appunto`, `attrezzatura`, `descrizione_attrezzatura`) VALUES
(1, 'a1', 'Isolamento termico all\'estradosso non ventilato\r\n', NULL, 'B e D', 'Ponteggi esterni e Parapetti'),
(2, 'a2', 'Isolamento termico all\'estradosso ventilato\r\n', NULL, 'B e D', 'Ponteggi esterni e Parapetti'),
(3, 'a3', 'Isolamento termico all\'intradosso\r\n', NULL, 'A', 'Trabattelli ad uso interno'),
(4, 'a4', 'Isolamento termico all\'intradosso ventilato\r\n', NULL, 'A', 'Trabattelli ad uso interno'),
(5, 'a5', 'Integrazione del fotovoltaico \r\n(tegole e coppi fotovoltaici)*\r\n', '*gli interventi richiedono una progettazione approfondita e una più attenta valutazione di applicabilità;\r\nnon è possibile attribuire giudizi di prestazione non conoscendo le specifiche scelte progettuali', NULL, '-'),
(6, 'a6', 'Integrazione del solare termico \r\n(collettori solari con decalcomanie forate)*\r\n', '*gli interventi richiedono una progettazione approfondita e una più attenta\r\n                    valutazione di applicabilità;\r\n                    non è possibile attribuire giudizi di prestazione non conoscendo le specifiche scelte progettuali', NULL, '-'),
(7, 'a7', 'Green roof*\r\n', '*l\'intervento richiede una valutazione più approfondita di applicabilità', 'B e D', 'Ponteggi esterni e Parapetti'),
(8, 'a8', 'Roof pond*\r\n', '*l\'intervento richiede una valutazione più approfondita di applicabilità', NULL, '-'),
(9, 'b1', 'Isolamento termico a pannelli sulla superficie interna della parete \r\n', NULL, 'A', 'Trabattelli ad uso interno'),
(10, 'b2', 'Isolamento tramite intonaco termoisolante sulla superficie interna della parete\r\n', NULL, 'A', 'Trabattelli ad uso interno'),
(11, 'b3', 'Isolamento termico a pannelli sulla superficie esterna della parete ventilato\r\n', NULL, 'B', 'Ponteggi esterni'),
(12, 'b4', 'Isolamento termico a pannelli sulla superficie esterna della parete non ventilato\r\n', NULL, 'B', 'Ponteggi esterni'),
(13, 'b5', 'Isolamento tramite intonaco termoisolante sulla superficie esterna della parete\r\n', NULL, 'B', 'Ponteggi esterni'),
(14, 'b6', 'Isolamento termico all\'interno dell\'intercapedine*\r\n', '*questo intervento può essere effettuato su muratura a due paramenti con intercapedine vuota o combinato con l\'intervento strutturale D13', 'A', 'Trabattelli ad uso interno'),
(15, 'b7', 'Sistemi di accumulo a cambiamento di fase* \r\n', '*gli interventi richiedono una progettazione approfondita e una più attenta\r\n                    valutazione di applicabilità;\r\n                    non è possibile attribuire giudizi di prestazione non conoscendo le specifiche scelte progettuali', NULL, '-'),
(16, 'b8', 'Realizzazione di barriere fisiche alla risalita capillare*\r\n', '*l\'intervento può comportare problematiche di tipo statico', NULL, '-'),
(17, 'b9', 'Realizzazione di barriere chimiche alla risalita capillare\r\n', NULL, NULL, '-'),
(18, 'b10', 'Realizzazione di sistemi di evacuazione dell\'umidità tramite intonaci macroporosi\r\n', NULL, 'A e B', 'Trabattelli ad uso interno e Ponteggi esterni'),
(19, 'b11', 'Realizzazione di sistemi di evacuazione dell\'umidità tramite sistemi elettro-fisici\r\n', NULL, NULL, '-'),
(20, 'b12', 'Green wall*\r\n', '*gli interventi richiedono una progettazione approfondita e una più attenta\r\n                    valutazione di applicabilità;\r\n                    non è possibile attribuire giudizi di prestazione non conoscendo le specifiche scelte progettuali', NULL, '-'),
(21, 'b13', 'Muro di Trombe*\r\n', '*gli interventi richiedono una progettazione approfondita e una più attenta\r\n                    valutazione di applicabilità;\r\n                    non è possibile attribuire giudizi di prestazione non conoscendo le specifiche scelte progettuali', NULL, '-'),
(22, 'b14', 'Sistemi di accumulo ad acqua* \r\n', '*gli interventi richiedono una progettazione approfondita e una più attenta\r\n                    valutazione di applicabilità;\r\n                    non è possibile attribuire giudizi di prestazione non conoscendo le specifiche scelte progettuali', NULL, '-'),
(23, 'c1', 'Sostituzione dei serramenti con modelli ad alta prestazione energetica*\r\n', '*l\'intervento riveste anche una funzione coibente', NULL, '-'),
(24, 'c2', 'Sostituzione dei vetri con modelli isolanti o captanti su telaio esistente*\r\n', '*l\'intervento riveste anche una funzione coibente', NULL, '-'),
(25, 'c3', 'Messa in opera di una seconda anta vetrata*\r\n', '*l\'intervento riveste anche una funzione coibente', NULL, '-'),
(26, 'c4', 'Messa in opera di una seconda lastra vetrata*\r\n', '*l\'intervento riveste anche una funzione coibente', NULL, '-'),
(27, 'c5', 'Isolamento e tenuta all\'aria del telaio\r\n', NULL, NULL, '-'),
(28, 'c6', 'Applicazione al vetro di pellicole speciali isolanti o captanti\r\n', NULL, 'C', 'Piattaforma aerea verticale'),
(29, 'c7', 'Meccanizzazione del serramento\r\n', NULL, NULL, '-'),
(30, 'c8', 'Applicazione al vetro di pellicole a controllo solare\r\n', NULL, 'C', 'Piattaforma aerea verticale'),
(31, 'c9', 'Installazione di schermi interni\r\n', NULL, NULL, '-'),
(32, 'c10', 'Installazione di schermi esterni\r\n', NULL, 'C', 'Piattaforma aerea verticale'),
(33, 'c11', 'Applicazione di una mensola di luce*\r\n', '*l\'intervento promuove la diffusione della luce in profondità', NULL, '-'),
(34, 'd1', 'Isolamento termico all\'intradosso del solaio\r\n', NULL, NULL, '-'),
(35, 'd2', 'Isolamento termico all\'intradosso del solaio superiore\r\n', NULL, 'A', 'Trabattelli ad uso interno'),
(36, 'd3', 'Isolamento termico all\'estradosso del solaio superiore\r\n', NULL, NULL, '-'),
(37, 'd4', 'Isolamento termico all\'estradosso del solaio inferiore \r\n', NULL, 'A', 'Trabattelli ad uso interno'),
(38, 'e1', 'Revisione del modello di riscaldamento esistente, con la previsione di soluzioni radianti a pavimento o a parete\r\n', NULL, NULL, '-'),
(39, 'e2', 'Sostituzione dei corpi illuminanti con lampade a risparmio energetico\r\n', NULL, NULL, '-'),
(40, 'e3', 'Inserimento di sistemi automatizzati di gestione e controllo \r\n', NULL, NULL, '-'),
(41, 'e4', 'Installazione di generatori di calore a condensazione\r\n', NULL, NULL, '-'),
(42, 'e5', 'Installazione di pompe di calore\r\n', NULL, NULL, '-'),
(43, 'e6', 'Installazione di testine termostatiche sui terminali di impianto\r\n', NULL, NULL, '-'),
(44, 'e7', 'Inserimento di termostati ambiente\r\n', NULL, NULL, '-'),
(45, 'e8', 'Installazione di sensori di presenza negli ambienti\r\n', NULL, NULL, '-'),
(46, 'e9', 'Installazione di caldaia a biomasse\r\n', NULL, NULL, '-'),
(47, 'e10', 'Installazione di sonde geotermiche\r\n', NULL, NULL, '-'),
(48, 'e11', 'Installazione di impianto di cogenerazione\r\n', NULL, NULL, '-'),
(49, 'e12', 'Installazione di regolatori di flusso collegati a rilevatori di luce\r\n', NULL, NULL, '-'),
(50, 'e13', 'Installazione di sistemi di deumidificazione attiva con macchine a funzionamento elettrico\r\n', NULL, NULL, '-'),
(51, 'f1', 'Introduzione di sistemi di ombreggiamento all\'intorno\r\n', NULL, NULL, '-'),
(52, 'f2', 'Realizzazione di una serra solare\r\n', NULL, NULL, '-'),
(53, 'f3', 'Realizzazione di camini di luce\r\n', NULL, NULL, '-'),
(54, 'f4', 'Realizzazione di un camino di ventilazione\r\n', NULL, NULL, '-'),
(55, 'd2 b', 'Isolamento termico all\'intradosso del solaio superiore', NULL, NULL, NULL),
(56, 'd4 b', 'Isolamento termico all\'estradosso del solaio inferiore \r\n', NULL, NULL, NULL),
(57, 'd2 a', 'Isolamento termico all\'intradosso del solaio superiore', NULL, NULL, NULL),
(58, 'd4 a', 'Isolamento termico all\'estradosso del solaio inferiore \r\n', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struttura della tabella `codice_intervento_st`
--

CREATE TABLE `codice_intervento_st` (
  `id` bigint(20) NOT NULL,
  `codice` varchar(255) DEFAULT NULL,
  `descrizione` varchar(255) DEFAULT NULL,
  `attrezzatura` varchar(255) DEFAULT NULL,
  `descrizione_attrezzatura` varchar(255) DEFAULT NULL,
  `dettaglio` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `codice_intervento_st`
--

INSERT INTO `codice_intervento_st` (`id`, `codice`, `descrizione`, `attrezzatura`, `descrizione_attrezzatura`, `dettaglio`) VALUES
(1, 'A1', 'Inserimento di tiranti ancorati alle murature mediante capochiave -bolzoni o piastre-', 'A e B', 'Trabattelli ad uso interno e Ponteggi esterni', NULL),
(2, 'A2', 'Introduzione di tiranti ancorati alle murature mediante ancoraggi per aderenza', 'A e B', 'Trabattelli ad uso interno e Ponteggi esterni', NULL),
(3, 'A3', 'Inserimento di cerchiature esterne con elementi metallici o materiali compositi', 'B', 'Ponteggi esterni', NULL),
(4, 'A4', 'Scuci-cuci agli ammorsamenti', 'A e B', 'Trabattelli ad uso interno e Ponteggi esterni', NULL),
(5, 'A5', 'Realizzazione di perforazioni armate con barre metalliche', 'B', 'Ponteggi esterni', NULL),
(6, 'A6a', 'Realizzazione di cordoli in sommità', 'A, B ed E', 'Trabattelli ad uso interno, Ponteggi esterni e Puntellatura', NULL),
(7, 'A7', 'Ancoraggio delle teste di travi alle murature tramite elementi metallici o in altro materiale resistente a trazione (capichiave)', 'B', 'Ponteggi esterni', NULL),
(8, 'A8', 'Cordoli di piano in acciaio', 'A', 'Trabattelli ad uso interno', NULL),
(9, 'B1', 'Irrigidimento con introduzione di un secondo tavolato all’estradosso disposto con andamento ortogonale o inclinato', NULL, '-', NULL),
(10, 'B2', 'Irrigidimento con introduzione di bandelle metalliche o di materiali compositi fissate al tavolato con andamento incrociato', NULL, '-', NULL),
(11, 'B3', 'Controventamento realizzato con tiranti metallici', NULL, '-', NULL),
(12, 'B4', 'Irrigidimento attraverso soletta collaborante in calcestruzzo eventualmente alleggerito', NULL, '-', NULL),
(13, 'B5', 'Irrigidimento tramite saldatura dei profili con bandelle metalliche trasversali poste all’estradosso', NULL, '-', NULL),
(14, 'B6', 'Irrigidimento tramite saldatura dei profili con bandelle metalliche trasversali poste all’intradosso', NULL, '-', NULL),
(15, 'B7', 'Inserimento di profili metallici collaboranti', NULL, '-', NULL),
(16, 'B8', 'Applicazione di lamine di materiale composito', NULL, '-', NULL),
(17, 'B9', 'Sostituzione della trave lignea', NULL, '-', NULL),
(18, 'B10', 'Introduzione di travi ascellari (travi collaboranti in profilato metallico) ai lati delle orditure principali in legno', NULL, '-', NULL),
(19, 'B11', 'Rinforzo delle travi lignee con fasce e tiranti d\'intradosso', NULL, '-', NULL),
(20, 'B12', 'Rinforzo delle travi lignee con tirante d\'intradosso e contraffissi (struttura reticolare)', NULL, '-', NULL),
(21, 'B13', 'Trasformazione della trave lignea in una struttura con sezione a T attraverso il collocamento di un tavolato nello spessore del massetto (struttura composta legno-legno)', NULL, '-', NULL),
(22, 'B14', 'Trasformazione della trave lignea in una struttura con sezione a T attraverso l\'introduzione di un profilato metallico collaborante (struttura composta legno-metallo)', NULL, '-', NULL),
(23, 'C1', 'Irrigidimento della falda di copertura con doppio tavolato continuo con assetto preferibilmente a 45°', 'B e D', 'Ponteggi esterni e Parapetti', NULL),
(24, 'C2', 'Irrigidimento della falda di copertura con controventi in acciaio all\'intradosso/estradosso - croci di S.Andrea', 'B e D', 'Ponteggi esterni e Parapetti', NULL),
(25, 'C3', 'Irrigidimento della falda di copertura con cls alleggerito con rete elettrosaldata zincata', 'B e D', 'Ponteggi esterni e Parapetti', NULL),
(26, 'C4', 'Introduzione di tiranti metallici', NULL, '-', NULL),
(27, 'C5', 'Sostituzione della trave lignea', NULL, '-', NULL),
(28, 'C6', 'Applicazione di lamine di materiale composito', NULL, '-', NULL),
(29, 'C7', 'Introduzione di travi ascellari (travi collaboranti in profilato metallico) ai lati delle orditure principali in legno', NULL, '-', NULL),
(30, 'C8', 'Placcaggio con tavole di legno', NULL, '-', NULL),
(31, 'D1', 'Ripristino della continuità muraria attraverso scuci e cuci', 'A e B', 'Trabattelli ad uso interno e Ponteggi esterni', NULL),
(32, 'D2', 'Iniezioni di miscele leganti', 'B', 'Ponteggi esterni', NULL),
(33, 'D3a', 'Ristilatura dei giunti della muratura', 'A e B', 'Trabattelli ad uso interno e Ponteggi esterni', NULL),
(34, 'D4', 'Inserimento di diatoni artificiali in fori di carotaggio: c.a. e acciaio', 'A e B', 'Trabattelli ad uso interno e Ponteggi esterni', NULL),
(35, 'D5', 'Inserimento di pietre passanti', 'A e B', 'Trabattelli ad uso interno e Ponteggi esterni', NULL),
(36, 'D6', 'Inserimento di tirantini antiesplusivi', 'A e B', 'Trabattelli ad uso interno e Ponteggi esterni', NULL),
(37, 'D7', 'Inserimento di tirantature diffuse/CAM', 'A e B', 'Trabattelli ad uso interno e Ponteggi esterni', NULL),
(38, 'D8', 'Inserimento di tiranti verticali post-tesi', 'B', 'Ponteggi esterni', NULL),
(39, 'D9', 'Placcaggio delle murature con intonaco armato su entrambi i paramenti', 'A e B', 'Trabattelli ad uso interno e Ponteggi esterni', NULL),
(40, 'D10', 'Placcaggio con tessuti o lamine in materiale fibroriforzato', 'A', 'Trabattelli ad uso interno ', NULL),
(41, 'D11', 'Inserimento di nuovo setto di spina con relativa fondazione', 'A', 'Trabattelli ad uso interno', '• Per l\'intervento D11 si consideri un costo aggiuntivo relativo all\'adeguamento delle fondazioni'),
(42, 'D12', 'Richiusura di nicchie e bucature', 'A e B', 'Trabattelli ad uso interno e Ponteggi esterni', '• Per l\'intervento D12 si devono considerare due superfici se si richiude un\'apertura (no nicchia)'),
(43, 'D13', 'Realizzazione di una nuova parte affiancata e resa solidale a quella esistente mediante barre in acciaio inox e resina epossidica', 'B', 'Ponteggi esterni', '• Per l\'intervento D13 si consideri un costo aggiuntivo relativo all\'adeguamento delle fondazioni• '),
(44, 'D14', 'Rivestimento delle pareti verticali all\'esterno con cappotto sismico', 'B', 'Ponteggi esterni', NULL),
(45, 'E1', 'Esecuzione di piastra di collegamento delle murature alla base', NULL, '-', NULL),
(46, 'E2', 'Introduzione di pali e micropali da estendere all\'intero edificio', NULL, '-', NULL),
(47, 'E3', 'Consolidamento dei terreni di fondazione per iniezione nel terreno di resine e di malte cementizie', NULL, '-', NULL),
(48, 'E4', 'Realizzazione di sottofondazioni in muratura ammorsate a profondità idonea', NULL, '-', NULL),
(49, 'E5', 'Irrigidimento e cerchiaggio della fondazione attraverso la realizzazione di travi in c.a. affiancate alla fondazione esistente (interno/esterno) e collegate tra loro mediante traversi in c.a.', NULL, '-', NULL),
(50, 'F1', 'Inserimento di elementi di riquadratura: telai in c.a. o in acciaio', 'A e C', 'Trabattelli ad uso interno e Piattaforma aerea verticale', NULL),
(51, 'F2', 'Inserimento di profili in acciaio collegati tra loro da barre filettate in acciaio inox', 'A e C', 'Trabattelli ad uso interno e Piattaforma aerea verticale', NULL),
(52, 'F3', 'Consolidamento con inserimento di fibre in carbonio', 'A e C', 'Trabattelli ad uso interno e Piattaforma aerea verticale', NULL),
(53, 'F4', 'Consolidamento di piattabande tramite splintaggio degli elementi laterizi', 'A e C', 'Trabattelli ad uso interno e Piattaforma aerea verticale', NULL),
(54, 'G1', 'Inserimento di catene alle reni di archi e volte', 'A e B', 'Trabattelli ad uso interno e Ponteggi esterni', NULL),
(55, 'G2', 'Realizzazione di contrafforti esterni', 'B', 'Ponteggi esterni', '• Per l\'intervento G2 si consideri un costo aggiuntivo relativo all\'adeguamento delle fondazioni'),
(56, 'G3', 'Placcaggio all\'estradosso con fasce di materiale composito', 'E', '-', NULL),
(57, 'G4', 'Placcaggio all\'intradosso con fasce di mareriale composito', 'A', 'Trabattelli ad uso interno ', NULL),
(58, 'G5', 'Iniezioni di malta per ripristinare le lesioni', 'A', 'Trabattelli ad uso interno ', NULL),
(59, 'G6', 'Incuneatura di elementi in legno o metallo con sigillatura e iniezione tramite prodotti specifici', 'A', 'Trabattelli ad uso interno ', '* In caso di azione da estradosso non è da considerare nessun costo aggiuntivo per le attrezzature'),
(60, 'G7', 'Realizzazione sulla volta di perforazioni incrociate', 'A', 'Trabattelli ad uso interno ', NULL),
(61, 'G8', 'Rinforzo tramite accostamento di tavole e solidarizzazione degli elementi portanti tramite fascette in ferro chiodate alla struttura lignea', 'E', 'Puntellatura', NULL),
(62, 'G9', 'Alleggerimento/svuotamento del riempimento della volta ed inserimento di frenelli', 'E', 'Puntellatura', NULL),
(63, 'H1', 'Cerchiature e tassellature', NULL, '-', NULL),
(64, 'H2', 'Incamiciatura di calcestruzzo armato', NULL, '-', NULL),
(65, 'H3', 'Incatenamenti e tirantature', NULL, '-', NULL),
(66, 'I1', 'Collegamenti puntuali e diffusi dell\'elemento non strutturale alla struttura muraria', NULL, '-', NULL),
(68, 'L1', 'Inserimento di setti di irrigidimento', NULL, '-', NULL),
(69, 'L2', 'Inserimento di controventi dissipativi', NULL, '-', NULL),
(70, 'L3', 'Isolamento alla base', NULL, '-', NULL),
(71, 'L4', 'Adeguamento di giunti non sismici tra unità strutturali distinte', NULL, '-', NULL),
(72, 'L5', 'Inserimento di giunti sismici in edifici irregolari', NULL, '-', NULL),
(73, 'L6', 'Realizzazione di collegamenti strutturali', NULL, '-', NULL),
(76, 'B15', 'Placcaggio con tavole di legno', NULL, '-', NULL),
(77, 'NULLO', 'Guarda informazioni nella TAB in basso', NULL, NULL, NULL),
(78, 'D3b', 'Ristilatura dei giunti della muratura', 'A e B', 'Trabattelli ad uso interno e Ponteggi esterni', NULL),
(79, 'A6b', 'Realizzazione di cordoli in sommità', 'A', 'Trabattelli ad uso interno', NULL),
(80, 'A6c', 'Realizzazione di cordoli in sommità', 'A, B ed E', 'Trabattelli ad uso interno, Ponteggi esterni e Puntellatura', NULL),
(81, 'A6d', 'Realizzazione di cordoli in sommità', 'A, B ed E', 'Trabattelli ad uso interno, Ponteggi esterni e Puntellatura', NULL);

-- --------------------------------------------------------

--
-- Struttura della tabella `edificio_st`
--

CREATE TABLE `edificio_st` (
  `id` bigint(20) NOT NULL,
  `descrizione` varchar(255) DEFAULT NULL,
  `punteggio` int(255) DEFAULT NULL,
  `valutazione` varchar(255) DEFAULT NULL,
  `tipologia` int(11) NOT NULL,
  `quality_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `edificio_st`
--

INSERT INTO `edificio_st` (`id`, `descrizione`, `punteggio`, `valutazione`, `tipologia`, `quality_id`) VALUES
(1, 'Inerti di piccole dimensioni e malta di scarsa resistenza sul 30%\r\ndel volume della muratura', 3, 'A', 0, 1),
(2, 'Caso precedente + giunti sottili (<10 mm), listature e/o diatoni\r\noppure caso precedente con incidenza minore del 30%', 2, 'M', 0, 1),
(3, 'Giunti sottili, diatoni o listature per oltre il 70% della muratura con inerti medi o grandi', 0, 'B', 0, 1),
(4, 'Cattivo stato di conservazione per almeno il 70% delle murature, della copertura o dei solai di interpiano', 15, 'A', 0, 2),
(5, 'Percentuale tra 30% e 70%', 8, 'M', 0, 2),
(6, 'Percentuale <30%', 0, 'B', 0, 2),
(7, 'Più del 50% di copertura e solai sono spingenti senza cordoli o catene', 4, 'A', 0, 3),
(8, 'Percentuale tra 20% e 50%', 2, 'M', 0, 3),
(9, 'Percentuale <20%', 0, 'B', 0, 3),
(10, 'Connessioni efficaci per meno del 20%', 4, 'A', 0, 4),
(11, 'Percentuale tra 20% e 80%', 2, 'M', 0, 4),
(12, 'Connessioni efficaci per l\'80%', 0, 'B', 0, 4),
(13, 'Collegamenti di piano efficaci per meno del 50%', 8, 'A', 0, 5),
(14, 'Percentuale tra 50% e 80%', 4, 'M', 0, 5),
(15, 'Collegamenti di piano efficaci per l\'80%', 0, 'B', 0, 5),
(16, 'Strutture non adeguate per oltre il 70%', 20, 'A', 0, 6),
(17, 'Percentuale tra 30% e 70%', 10, 'M', 0, 6),
(18, 'Strutture non adeguate meno del 30%', 0, 'B', 0, 6),
(19, 'Bucature per oltre il 50%', 4, 'A', 0, 7),
(20, 'Bucature tra 25% e 50% o per meno del 25% da rafforzare', 2, 'M', 0, 7),
(21, 'Bucature per meno del 25%', 0, 'B', 0, 7),
(22, 'Bucature per oltre il 50%', 4, 'A', 0, 8),
(23, 'Percentuale tra 25% e 50%', 2, 'M', 0, 8),
(24, 'Bucature per meno del 25%', 0, 'B', 0, 8),
(25, 'Rapporto interasse dei muri di spina/spessore >15', 4, 'A', 0, 9),
(26, 'Rapporto tra 10 e 15', 2, 'M', 0, 9),
(27, 'Rapporto <10', 0, 'B', 0, 9),
(28, 'Sviluppo lineare dei pannelli murari a doppio strato con camera d\'aria >15%', 4, 'A', 0, 10),
(29, 'Percentuale tra 5% e 15%', 2, 'M', 0, 10),
(30, 'Sviluppo lineare dei pannelli murari a doppio strato con camera d\'aria <5%', 0, 'B', 0, 10),
(31, 'Collegamenti efficaci per meno del 50%', 4, 'A', 0, 11),
(32, 'Collegamenti efficaci tra il 50% e l\'80%\r\n', 2, 'M', 0, 11),
(33, 'Collegamenti efficaci per almeno l\'80%\r\n', 0, 'B', 0, 11),
(34, 'Strutture non adeguate per oltre il 70%', 8, 'A', 0, 12),
(35, 'Percentuale tra 30% e 70%\r\n', 4, 'M', 0, 12),
(36, 'Strutture non adeguate per meno del 30%\r\n', 0, 'B', 0, 12),
(37, 'Rapporto lato maggiore/lato minore >4', 0, 'A', 0, 13),
(38, 'Rapporto lato maggiore/lato minore tra 3 e 4', 0, 'M', 0, 13),
(39, 'Altri casi\r\n', 0, 'B', 0, 13),
(40, 'Presenza di torrini con h compresa tra il 10% e il 40% dell\'altezza del fabbricato\r\n+ riduzione in pianta >20% rispetto al piano inferiore', 0, 'A', 0, 14),
(41, 'Presenza di torrini con h compresa tra il 10% e il 40% dell\'altezza del fabbricato\r\n+ riduzione in pianta tra il 10% e il 20% rispetto al piano inferiore', 0, 'M', 0, 14),
(42, 'Superfici decrescono con continuità + riduzione <10%', 0, 'B', 0, 14),
(43, 'Elementi non strutturali non ben collegati con dimensioni o massa grandi', 3, 'A', 0, 15),
(44, 'Elementi non strutturali non ben collegati ma con dimensioni o massa piccole', 1, 'M', 0, 15),
(45, 'Elementi non strutturali ben collegati', 0, 'B', 0, 15),
(46, 'Edificio compreso tra edifici di pari h', -5, 'a', 0, 16),
(47, 'Edificio adiacente a edifici più alti o a uno più alto e uno di h uguale', 0, 'b', 0, 16),
(48, 'Edificio adiacente a un edificio più basso e a uno di pari h, o a uno più basso e uno più alto', 4, 'c', 0, 16),
(49, 'Edificio adiacente a due edifici più bassi', 11, 'd', 0, 16),
(50, 'Posizione interclusa e vincolata su tre lati', -15, 'a', 0, 17),
(51, 'Posizione interclusa e vincolata su due lati', -9, 'b', 0, 17),
(52, 'Posizione d\'angolo \r\n', -5, 'c', 0, 17),
(53, 'Posizione di testata', 0, 'd', 0, 17),
(54, 'Assenza di solai sfalsati (differenza di quota pari a 50 cm)', 0, 'a', 0, 18),
(55, 'Presenza di una coppia di solai sfalsati', 2, 'b', 0, 18),
(56, 'Presenza di due coppie di solai sfalsati', 3, 'c', 0, 18),
(57, 'Presenza di più di due coppie di solai sfalsati', 6, 'd', 0, 18),
(58, 'L\'edificio presenta un\'eterogeneità strutturale rispetto all\'edificio adiacente (es. in muratura/c.a)', -4, 'a', 0, 19),
(59, 'L\'edificio confina con un altro in muratura ma con caratteristiche migliori (es. tufo/mur. in blocchi)', -3, 'b', 0, 19),
(60, 'Continuità sia tipologica che strutturale con gli edifici adiacenti', 0, 'c', 0, 19),
(61, 'L\'edificio confina con un altro in muratura ma con caratteristiche peggiori (es. tufo/mur. caotica)', 13, 'd', 0, 19),
(62, 'Differenza tra % di aperture < 5%', -5, 'a', 0, 20),
(63, 'Differenza tra % di aperture compresa tra 5% e 10%', 0, 'b', 0, 20),
(64, 'Differenza tra % di aperture compresa tra 10% e 20%', 6, 'c', 0, 20),
(65, 'Differenza tra % di aperture > 20%', 11, 'd', 0, 20);

-- --------------------------------------------------------

--
-- Struttura della tabella `indicatore_ce`
--

CREATE TABLE `indicatore_ce` (
  `id` bigint(20) NOT NULL,
  `indicatore` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `indicatore_ce`
--

INSERT INTO `indicatore_ce` (`id`, `indicatore`) VALUES
(1, 'Rapporto S/V'),
(2, 'Percentuale di superfici finestrate'),
(3, 'Posizione planimetrica all\'interno dell\'aggregato'),
(4, 'Esposizione delle facciate libere'),
(5, 'Orientamento'),
(6, 'Qualità della copertura'),
(7, 'Qualità delle pareti'),
(8, 'Qualità delle superfici trasparenti'),
(9, 'Qualità del solaio a terra'),
(10, 'Ponti termici'),
(11, 'Rendimento dell\'impianto di climatizzazione invernale'),
(12, 'Rendimento dell\'impianto ACS'),
(13, 'Rendimento dell\'impianto per l\'acqua calda sanitaria');

-- --------------------------------------------------------

--
-- Struttura della tabella `indicatore_non_ce`
--

CREATE TABLE `indicatore_non_ce` (
  `id` bigint(20) NOT NULL,
  `indicatore` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `indicatore_non_ce`
--

INSERT INTO `indicatore_non_ce` (`id`, `indicatore`) VALUES
(1, 'Rapporto S/V'),
(2, 'Percentuale di superfici finestrate'),
(3, 'Posizione planimetrica all\'interno dell\'aggregato'),
(4, 'Esposizione delle facciate libere'),
(5, 'Orientamento'),
(6, 'Qualità della copertura'),
(7, 'Qualità delle pareti'),
(8, 'Qualità delle superfici trasparenti'),
(9, 'Qualità del solaio a terra'),
(10, 'Ponti termici'),
(11, 'Rendimento dell\'impianto di climatizzazione invernale'),
(12, 'Rendimento dell\'impianto ACS');

-- --------------------------------------------------------

--
-- Struttura della tabella `meccanismi_st`
--

CREATE TABLE `meccanismi_st` (
  `id` bigint(20) NOT NULL,
  `codice` int(11) DEFAULT NULL,
  `descrizione` varchar(255) DEFAULT NULL,
  `modi_di_danno_alle_strutture_orizzontali` varchar(255) DEFAULT NULL,
  `modi_di_danno_alle_strutture_verticali` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `meccanismi_st`
--

INSERT INTO `meccanismi_st` (`id`, `codice`, `descrizione`, `modi_di_danno_alle_strutture_orizzontali`, `modi_di_danno_alle_strutture_verticali`) VALUES
(1, 1, 'Da taglio nella parete per azioni nel piano', 'V1, V3,V7, V8, V10, V11,V15, V16', 'H8, H11'),
(2, 2, 'Da taglio nella parete per azioni nel piano localizzato nella zona alta', 'V2, V4, V8, V10, V11, V15', 'H8, H11'),
(3, 3, 'Da ribaltamento dell\'intera parete', 'V9, V10, V11, V14, V21', 'H5, H6, H8, H9, H10, H11, H12'),
(4, 4, 'Da ribaltamento parziale della parete', 'V6, V9, V10, V11, V13, V14, V21', 'H5, H6, H8, H9, H10, H11, H12'),
(5, 5, 'Da instabilità verticale della parete', 'V19, V20', 'H5, H6, H8, H9, H10, H11, H12'),
(6, 6, 'Da rottura a flessione della parete', 'V1, V2, V9, V11, V20', 'H5, H6, H10, H11, H12'),
(7, 7, 'Da scorrimento di piano orizzontale', 'V3, V6, V14', 'H12, H13'),
(8, 8, 'Da cedimento fondale', 'V5, V22, V23', 'H7, H11'),
(9, 9, 'Da irregolarità tra strutture adiacenti', 'V17, V18', 'H12'),
(10, 10, 'Per sfilamento delle travi del solaio dalla parete di supporto', 'V9, V11, V19', 'H10, H12'),
(11, 11, 'Per cedimento di architravi e/o piattabande', 'V6, V13', 'H11'),
(12, 12, 'Da irregolarità del materiale, debolezze locali, etc', 'V1, V6, V13, V16, V17, V18', 'H11'),
(13, 13, 'Da ribaltamento della parete del timpano', 'V12, V19', 'H10'),
(14, 14, 'Da ribaltamento della parte alta del cantonale', 'V4, V6, V13', 'H10, H11'),
(15, 15, 'Da ribaltamento della fascia sottotetto', 'V6, V13, V19', 'H9, H10, H11, H12'),
(16, 16, 'Da rotazione delle spalle di volte e archi', 'V16, V21', 'H1, H2, H3, H4, H7');

-- --------------------------------------------------------

--
-- Struttura della tabella `quality_st`
--

CREATE TABLE `quality_st` (
  `id` bigint(20) NOT NULL,
  `quality` varchar(255) DEFAULT NULL,
  `t_quality_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `quality_st`
--

INSERT INTO `quality_st` (`id`, `quality`, `t_quality_id`) VALUES
(1, 'Scarsa qualità costruttiva', 1),
(2, 'Elevato degrado e/o danneggiamento', 1),
(3, 'Spinte orizzontali non contrastate\r\n\r\n\r\n', 1),
(4, 'Pannelli murari male ammorsati tra loro\r\n\r\n\r\n', 1),
(5, 'Orizzontamenti male ammorsati alle pareti: efficacia dei collegamenti con la muratura\r\n\r\n\r\n', 1),
(6, 'Orizzontamenti male ammorsati alle pareti: qualità delle strutture orizzontali\r\n\r\n\r\n', 1),
(7, 'Aperture di elevate dimensioni da rafforzare o intervallate da maschi di ridotte dimensioni\r\n\r\n\r\n', 1),
(8, 'Presenza di numerose nicchie che riducono significativamente l\'area resistente della muratura\r\n\r\n\r\n', 1),
(9, 'Pareti di elevate dimensioni (larghezza e altezza) non controventate a sufficienza\r\n\r\n\r\n', 1),
(10, 'Pannelli murari a doppio strato con camera d\'aria\r\n\r\n\r\n', 1),
(11, 'Assenza di cordoli e qualità della copertura: efficacia dei collegamenti con la muratura\r\n\r\n\r\n', 1),
(12, 'Assenza di cordoli e qualità della copertura: qualità della copertura\r\n\r\n\r\n', 1),
(13, 'Elevata irregolarità in pianta e/o altezza: irregolarità in pianta\r\n\r\n\r\n', 1),
(14, 'Elevata irregolarità in pianta e/o altezza: irregolarità in altezza\r\n\r\n\r\n', 1),
(15, 'Presenza numerosa di elementi non-strutturali che modificano negativamente il comportamento locale e/o globale\r\n\r\n\r\n', 1),
(16, 'INTERAZIONE IN ALTEZZA ', 2),
(17, 'POSIZIONE PLANIMETRICA DELL\'EDIFICIO NELL\'AGGREGATO\r\n\r\n\r\n\r\n', 2),
(18, 'PRESENZA E NUMERO DI SOLAI SFALSATI CON GLI EDIFICI ADIACENTI\r\n\r\n\r\n\r\n', 2),
(19, 'PRESENZA DI ETEROGENEITÀ TIPOLOGICHE O STRUTTURALI TRA EDIFICI ADIACENTI\r\n\r\n\r\n\r\n', 2),
(20, 'DIFFERENZA TRA % DI APERTURE IN FACCIATA TRA EDIFICI ADIACENTI\r\n\r\n\r\n\r\n', 2);

-- --------------------------------------------------------

--
-- Struttura della tabella `quality_st_edificio`
--

CREATE TABLE `quality_st_edificio` (
  `quality_st_id` bigint(20) NOT NULL,
  `edificio_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `quality_st_edificio`
--

INSERT INTO `quality_st_edificio` (`quality_st_id`, `edificio_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 4),
(2, 5),
(2, 6),
(3, 7),
(3, 8),
(3, 9),
(4, 10),
(4, 11),
(4, 12),
(5, 13),
(5, 14),
(5, 15),
(6, 16),
(6, 17),
(6, 18),
(7, 19),
(7, 20),
(7, 21),
(8, 22),
(8, 23),
(8, 24),
(9, 25),
(9, 26),
(9, 27),
(10, 28),
(10, 29),
(10, 30),
(11, 31),
(11, 32),
(11, 33),
(12, 34),
(12, 35),
(12, 36),
(13, 37),
(13, 38),
(13, 39),
(14, 40),
(14, 41),
(14, 42),
(15, 43),
(15, 44),
(15, 45),
(16, 46),
(16, 47),
(16, 48),
(16, 49),
(17, 50),
(17, 51),
(17, 52),
(17, 53),
(18, 54),
(18, 55),
(18, 56),
(18, 57),
(19, 58),
(19, 59),
(19, 60),
(19, 61),
(20, 62),
(20, 63),
(20, 64),
(20, 65);

-- --------------------------------------------------------

--
-- Struttura della tabella `struttura_ce`
--

CREATE TABLE `struttura_ce` (
  `id` bigint(20) NOT NULL,
  `struttura` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `struttura_ce`
--

INSERT INTO `struttura_ce` (`id`, `struttura`) VALUES
(1, 'Strutture di elevazione verticale'),
(2, 'Strutture di elevazione orizzontale'),
(3, 'Strutture di elevazione inclinate'),
(4, 'Strutture di elevazione spaziali'),
(5, 'Infissi esterni verticali'),
(6, 'null');

-- --------------------------------------------------------

--
-- Struttura della tabella `struttura_due_ce`
--

CREATE TABLE `struttura_due_ce` (
  `id` bigint(20) NOT NULL,
  `struttura_due` varchar(255) DEFAULT NULL,
  `struttura_id_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `struttura_due_ce`
--

INSERT INTO `struttura_due_ce` (`id`, `struttura_due`, `struttura_id_id`) VALUES
(1, 'Strutture a pareti portanti in muratura', 1),
(2, 'Strutture per impalcati piani', 2),
(3, 'Strutture per coperture piane', 2),
(4, 'Strutture per coperture inclinate', 3),
(5, 'Strutture voltate', 4),
(6, 'Infissi esterni verticali', 5),
(7, 'null', 6);

-- --------------------------------------------------------

--
-- Struttura della tabella `struttura_st`
--

CREATE TABLE `struttura_st` (
  `id` bigint(20) NOT NULL,
  `struttura` varchar(255) DEFAULT NULL,
  `tipo_struttura_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `struttura_st`
--

INSERT INTO `struttura_st` (`id`, `struttura`, `tipo_struttura_id`) VALUES
(1, 'Struttura ad arco in muratura', 1),
(2, 'Strutture a pareti portanti in muratura	piena\r\n', 1),
(3, 'Strutture a pareti portanti in muratura	a sacco', 1),
(4, 'Strutture per impalcati piani in legno	\r\n', 2),
(5, 'Strutture per impalcati piani metalliche	\r\n', 2),
(7, 'Strutture per coperture inclinate in legno	\r\n', 3),
(8, 'Strutture voltate in muratura	\r\n', 4),
(9, 'Strutture voltate in camorcanna	\r\n', 4),
(10, 'Aperture con architravi in pietra	\r\n', 5),
(11, 'Aperture con architravi in mattoni	\r\n', 5),
(12, 'Aperture con architravi in legno	\r\n', 5),
(13, 'Aperture con piattabande', 5),
(14, 'Elementi non strutturali', 6);

-- --------------------------------------------------------

--
-- Struttura della tabella `struttura_st_car_quality`
--

CREATE TABLE `struttura_st_car_quality` (
  `struttura_st_id` bigint(20) NOT NULL,
  `car_quality_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `struttura_st_car_quality`
--

INSERT INTO `struttura_st_car_quality` (`struttura_st_id`, `car_quality_id`) VALUES
(1, 2),
(1, 3),
(2, 1),
(2, 2),
(2, 4),
(2, 7),
(2, 8),
(3, 1),
(3, 2),
(3, 4),
(3, 7),
(3, 8),
(3, 9),
(4, 2),
(4, 51),
(4, 52),
(5, 2),
(5, 51),
(5, 52),
(7, 2),
(7, 3),
(7, 101),
(7, 102),
(8, 2),
(8, 3),
(9, 2),
(9, 3),
(10, 2),
(10, 6),
(11, 2),
(11, 6),
(12, 2),
(12, 6),
(13, 2),
(13, 6),
(14, 12);

-- --------------------------------------------------------

--
-- Struttura della tabella `struttura_tre_ce`
--

CREATE TABLE `struttura_tre_ce` (
  `id` bigint(20) NOT NULL,
  `struttura_tre` varchar(255) DEFAULT NULL,
  `struttura_due_id_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `struttura_tre_ce`
--

INSERT INTO `struttura_tre_ce` (`id`, `struttura_tre`, `struttura_due_id_id`) VALUES
(1, 'Strutture a pareti portanti in muratura', 1),
(2, 'Solai a terra', 2),
(3, 'Solai inferiori', 2),
(4, 'Solai superiori', 2),
(5, 'Strutture per coperture piane', 3),
(6, 'Strutture per coperture inclinate', 4),
(7, 'Confinanti con ambienti sottotetto', 5),
(8, 'Confinanti con ambienti non riscaldati inferiori', 5),
(9, 'Infissi esterni verticali', 6),
(10, 'null', 7);

-- --------------------------------------------------------

--
-- Struttura della tabella `struttura_tre_ce_caratt_qualit`
--

CREATE TABLE `struttura_tre_ce_caratt_qualit` (
  `struttura_tre_ce_id` bigint(20) NOT NULL,
  `caratt_qualit_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `struttura_tre_ce_caratt_qualit`
--

INSERT INTO `struttura_tre_ce_caratt_qualit` (`struttura_tre_ce_id`, `caratt_qualit_id`) VALUES
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

-- --------------------------------------------------------

--
-- Struttura della tabella `tipologia_struttura_st`
--

CREATE TABLE `tipologia_struttura_st` (
  `id` bigint(20) NOT NULL,
  `tipologia_struttura` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `tipologia_struttura_st`
--

INSERT INTO `tipologia_struttura_st` (`id`, `tipologia_struttura`) VALUES
(1, 'Muratura di pietra a secco. Orizzontamenti in legno o comunque con scarsa rigidezza e scarso collegamento con le pareti portanti'),
(2, 'Muratura di mattoni di terra cruda (adobe). Orizzontamenti in legno o comunque con scarsa rigidezza e scarso collegamento con le pareti portanti'),
(3, 'Muratura di pietra sbozzata. Orizzontamenti in legno o comunque con scarsa rigidezza e scarso collegamento con le pareti portanti'),
(4, 'Muratura di pietra massiccia per costruzioni monumentali. Orizzontamenti a volta o in legno con scarsa rigidezza'),
(5, 'Muratura di mattoni e pietra lavorata. Orizzontamenti in mattoni o in legno o comunque con scarsa rigidezza e scarso collegamento con le pareti portanti'),
(6, 'Muratura di mattoni e solai di rigidezza elevata. Orizzontamenti in c.a. ben collegati alla muratura\r\n'),
(7, 'Muratura rinforzata e/o confinata. Orizzontamenti in c.a. o comunque con elevata rigidezza');

-- --------------------------------------------------------

--
-- Struttura della tabella `tipologia_struttura_st_car_qual_ems`
--

CREATE TABLE `tipologia_struttura_st_car_qual_ems` (
  `tipologia_struttura_st_id` bigint(20) NOT NULL,
  `car_qual_ems_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `tipologia_struttura_st_car_qual_ems`
--

INSERT INTO `tipologia_struttura_st_car_qual_ems` (`tipologia_struttura_st_id`, `car_qual_ems_id`) VALUES
(3, 2),
(3, 3),
(3, 8),
(3, 51),
(3, 101),
(3, 4),
(3, 6),
(5, 2),
(5, 3),
(5, 8),
(5, 51),
(5, 101),
(5, 12),
(5, 4),
(5, 6),
(6, 2),
(6, 3),
(6, 8),
(6, 9),
(6, 12),
(6, 4),
(6, 6),
(7, 2),
(7, 8),
(7, 12),
(7, 6);

-- --------------------------------------------------------

--
-- Struttura della tabella `type_quality_st`
--

CREATE TABLE `type_quality_st` (
  `id` bigint(20) NOT NULL,
  `tipo_struttura` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `type_quality_st`
--

INSERT INTO `type_quality_st` (`id`, `tipo_struttura`) VALUES
(1, 'Edificio Singolo'),
(2, 'Edificio In Aggregato');

-- --------------------------------------------------------

--
-- Struttura della tabella `type_struttura_st`
--

CREATE TABLE `type_struttura_st` (
  `id` bigint(20) NOT NULL,
  `type_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `type_struttura_st`
--

INSERT INTO `type_struttura_st` (`id`, `type_name`) VALUES
(1, 'Strutture di elevazione verticali'),
(2, 'Strutture di elevazione orizzontali'),
(3, 'Strutture di elevazione inclinate'),
(4, 'Strutture di elevazione spaziali'),
(5, 'Infissi esterni verticali'),
(6, 'Elementi non strutturali');

-- --------------------------------------------------------

--
-- Struttura della tabella `valutazione_punteggio_st`
--

CREATE TABLE `valutazione_punteggio_st` (
  `id` bigint(20) NOT NULL,
  `punteggio` int(11) DEFAULT NULL,
  `valutazione` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `valutazione_punteggio_st`
--

INSERT INTO `valutazione_punteggio_st` (`id`, `punteggio`, `valutazione`) VALUES
(1, 3, 'A'),
(2, 2, 'M'),
(3, 0, 'B'),
(4, 15, 'A'),
(5, 8, 'M'),
(6, 0, 'B'),
(7, 4, 'A'),
(8, 2, 'M'),
(9, 0, 'B'),
(10, 4, 'A'),
(11, 2, 'M'),
(12, 0, 'B'),
(13, 8, 'A'),
(14, 4, 'M'),
(15, 0, 'B'),
(16, 20, 'A'),
(17, 10, 'M'),
(18, 0, 'B'),
(19, 4, 'A'),
(20, 2, 'M'),
(21, 0, 'B'),
(22, 4, 'A'),
(23, 2, 'M'),
(24, 0, 'B'),
(25, 4, 'A'),
(26, 2, 'M'),
(27, 0, 'B'),
(28, 4, 'A'),
(29, 2, 'M'),
(30, 0, 'B'),
(31, 4, 'A'),
(32, 2, 'M'),
(33, 0, 'B'),
(34, 8, 'A'),
(35, 4, 'M'),
(36, 0, 'B'),
(37, 3, 'A'),
(38, 1, 'M'),
(39, 0, 'B');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `associazione_intervento_ce`
--
ALTER TABLE `associazione_intervento_ce`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKf69pmge2ud5tbnx1a8bucebk4` (`caratteristica_associazione_intervento_id`),
  ADD KEY `FKgg9x8sypaf66qi9st6mln8rfv` (`intervento_id`),
  ADD KEY `FK46uhq35u5o5505o35ra1kjor2` (`struttura_associazione_id`);

--
-- Indici per le tabelle `associazione_intervento_st`
--
ALTER TABLE `associazione_intervento_st`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKh7wev5qyn11ar7cp5je0mfsol` (`caratteristica_associazione_intervento_id`),
  ADD KEY `FKc9gs2ok9kwfp1b7l1r0lvaapu` (`intervento_id`),
  ADD KEY `FK960ocw9x1ss67pq837j89runj` (`struttura_associazione_id`);

--
-- Indici per le tabelle `associazione_riepilogo`
--
ALTER TABLE `associazione_riepilogo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKbnif3gatxtdw1jah5y70t4v8p` (`associazione_intervento_energetico_id`),
  ADD KEY `FK36wwhm6i25jr26v9tkj0tdb6b` (`associazione_intervento_strutturale_id`);

--
-- Indici per le tabelle `caratteristiche_qualitative_ce`
--
ALTER TABLE `caratteristiche_qualitative_ce`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `caratteristiche_qualitative_st`
--
ALTER TABLE `caratteristiche_qualitative_st`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `caratteristiche_qualitative_st_meccanismi_associati`
--
ALTER TABLE `caratteristiche_qualitative_st_meccanismi_associati`
  ADD KEY `FKmhnwu3fbphvf9y94jfiytricl` (`meccanismi_associati_id`),
  ADD KEY `FK1xwguk8vw7p88hgahme539hrw` (`caratteristiche_qualitative_st_id`);

--
-- Indici per le tabelle `caratteristiche_qualitative_st_valutazione_punteggio`
--
ALTER TABLE `caratteristiche_qualitative_st_valutazione_punteggio`
  ADD UNIQUE KEY `UK_qymexbjavjhp9wnxosuawv4sl` (`valutazione_punteggio_id`),
  ADD KEY `FKbvi0n5yablrpdq05ciy940muh` (`caratteristiche_qualitative_st_id`);

--
-- Indici per le tabelle `caratteristiche_struttura_st`
--
ALTER TABLE `caratteristiche_struttura_st`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKtm7cigy8jdotyfr163f93jibj` (`caratteristica_id`),
  ADD KEY `FKmx6v21wk8sit1k01sy8w6975h` (`struttura_id`);

--
-- Indici per le tabelle `classe_indicatore_ce`
--
ALTER TABLE `classe_indicatore_ce`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKqdt1pth7dmk00j2xi0holxgci` (`indicatore_id`);

--
-- Indici per le tabelle `classe_indicatore_non_ce`
--
ALTER TABLE `classe_indicatore_non_ce`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKp2t99vmj8c815hbc2o9q2pa3i` (`indicatore_id`);

--
-- Indici per le tabelle `codice_intervento_ce`
--
ALTER TABLE `codice_intervento_ce`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `codice_intervento_st`
--
ALTER TABLE `codice_intervento_st`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `edificio_st`
--
ALTER TABLE `edificio_st`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKipm7snploikid5ubp4xpu8xgl` (`quality_id`);

--
-- Indici per le tabelle `indicatore_ce`
--
ALTER TABLE `indicatore_ce`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `indicatore_non_ce`
--
ALTER TABLE `indicatore_non_ce`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `meccanismi_st`
--
ALTER TABLE `meccanismi_st`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `quality_st`
--
ALTER TABLE `quality_st`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKjr27a6sqv89nt0r005tbe59lf` (`t_quality_id`);

--
-- Indici per le tabelle `quality_st_edificio`
--
ALTER TABLE `quality_st_edificio`
  ADD UNIQUE KEY `UK_eutdn9q1sbojcx0vsq4jyvsud` (`edificio_id`),
  ADD KEY `FKsx3eucxbfdcb3ynqx6xnp3s7t` (`quality_st_id`);

--
-- Indici per le tabelle `struttura_ce`
--
ALTER TABLE `struttura_ce`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `struttura_due_ce`
--
ALTER TABLE `struttura_due_ce`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK9eqhylq6sc1yseu3cglwffnsy` (`struttura_id_id`);

--
-- Indici per le tabelle `struttura_st`
--
ALTER TABLE `struttura_st`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKcwyxbj6ti8rraq4qc7x2tit1d` (`tipo_struttura_id`);

--
-- Indici per le tabelle `struttura_st_car_quality`
--
ALTER TABLE `struttura_st_car_quality`
  ADD KEY `FKjkuvhxkyob816l59wo8ledj1w` (`car_quality_id`),
  ADD KEY `FKqii5rvpvmrui39ko3ihl6e8iv` (`struttura_st_id`);

--
-- Indici per le tabelle `struttura_tre_ce`
--
ALTER TABLE `struttura_tre_ce`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKt7ybagev1aaw5py3n0g10byt4` (`struttura_due_id_id`);

--
-- Indici per le tabelle `struttura_tre_ce_caratt_qualit`
--
ALTER TABLE `struttura_tre_ce_caratt_qualit`
  ADD KEY `FKfm9te8rqyqr9nhw8980c4f6bk` (`caratt_qualit_id`),
  ADD KEY `FK5hyqaks3aec1trm37c1vgbmci` (`struttura_tre_ce_id`);

--
-- Indici per le tabelle `tipologia_struttura_st`
--
ALTER TABLE `tipologia_struttura_st`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `tipologia_struttura_st_car_qual_ems`
--
ALTER TABLE `tipologia_struttura_st_car_qual_ems`
  ADD KEY `FKa9d3bxl65ts30p0b8s491kqhc` (`car_qual_ems_id`),
  ADD KEY `FK1y2huk6whiaehf743rxeiu910` (`tipologia_struttura_st_id`);

--
-- Indici per le tabelle `type_quality_st`
--
ALTER TABLE `type_quality_st`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `type_struttura_st`
--
ALTER TABLE `type_struttura_st`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `valutazione_punteggio_st`
--
ALTER TABLE `valutazione_punteggio_st`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `associazione_intervento_ce`
--
ALTER TABLE `associazione_intervento_ce`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT per la tabella `associazione_intervento_st`
--
ALTER TABLE `associazione_intervento_st`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=154;

--
-- AUTO_INCREMENT per la tabella `associazione_riepilogo`
--
ALTER TABLE `associazione_riepilogo`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=154;

--
-- AUTO_INCREMENT per la tabella `caratteristiche_qualitative_ce`
--
ALTER TABLE `caratteristiche_qualitative_ce`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT per la tabella `caratteristiche_qualitative_st`
--
ALTER TABLE `caratteristiche_qualitative_st`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT per la tabella `caratteristiche_struttura_st`
--
ALTER TABLE `caratteristiche_struttura_st`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT per la tabella `classe_indicatore_ce`
--
ALTER TABLE `classe_indicatore_ce`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT per la tabella `classe_indicatore_non_ce`
--
ALTER TABLE `classe_indicatore_non_ce`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT per la tabella `codice_intervento_ce`
--
ALTER TABLE `codice_intervento_ce`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT per la tabella `codice_intervento_st`
--
ALTER TABLE `codice_intervento_st`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT per la tabella `edificio_st`
--
ALTER TABLE `edificio_st`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT per la tabella `indicatore_ce`
--
ALTER TABLE `indicatore_ce`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT per la tabella `indicatore_non_ce`
--
ALTER TABLE `indicatore_non_ce`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT per la tabella `meccanismi_st`
--
ALTER TABLE `meccanismi_st`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT per la tabella `quality_st`
--
ALTER TABLE `quality_st`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT per la tabella `struttura_ce`
--
ALTER TABLE `struttura_ce`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT per la tabella `struttura_due_ce`
--
ALTER TABLE `struttura_due_ce`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT per la tabella `struttura_st`
--
ALTER TABLE `struttura_st`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT per la tabella `struttura_tre_ce`
--
ALTER TABLE `struttura_tre_ce`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT per la tabella `tipologia_struttura_st`
--
ALTER TABLE `tipologia_struttura_st`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT per la tabella `type_quality_st`
--
ALTER TABLE `type_quality_st`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT per la tabella `type_struttura_st`
--
ALTER TABLE `type_struttura_st`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT per la tabella `valutazione_punteggio_st`
--
ALTER TABLE `valutazione_punteggio_st`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `associazione_intervento_ce`
--
ALTER TABLE `associazione_intervento_ce`
  ADD CONSTRAINT `FK46uhq35u5o5505o35ra1kjor2` FOREIGN KEY (`struttura_associazione_id`) REFERENCES `struttura_tre_ce` (`id`),
  ADD CONSTRAINT `FKf69pmge2ud5tbnx1a8bucebk4` FOREIGN KEY (`caratteristica_associazione_intervento_id`) REFERENCES `caratteristiche_qualitative_ce` (`id`),
  ADD CONSTRAINT `FKgg9x8sypaf66qi9st6mln8rfv` FOREIGN KEY (`intervento_id`) REFERENCES `codice_intervento_ce` (`id`);

--
-- Limiti per la tabella `associazione_intervento_st`
--
ALTER TABLE `associazione_intervento_st`
  ADD CONSTRAINT `FK960ocw9x1ss67pq837j89runj` FOREIGN KEY (`struttura_associazione_id`) REFERENCES `struttura_st` (`id`),
  ADD CONSTRAINT `FKc9gs2ok9kwfp1b7l1r0lvaapu` FOREIGN KEY (`intervento_id`) REFERENCES `codice_intervento_st` (`id`),
  ADD CONSTRAINT `FKh7wev5qyn11ar7cp5je0mfsol` FOREIGN KEY (`caratteristica_associazione_intervento_id`) REFERENCES `caratteristiche_qualitative_st` (`id`);

--
-- Limiti per la tabella `associazione_riepilogo`
--
ALTER TABLE `associazione_riepilogo`
  ADD CONSTRAINT `FK36wwhm6i25jr26v9tkj0tdb6b` FOREIGN KEY (`associazione_intervento_strutturale_id`) REFERENCES `associazione_intervento_st` (`id`),
  ADD CONSTRAINT `FKbnif3gatxtdw1jah5y70t4v8p` FOREIGN KEY (`associazione_intervento_energetico_id`) REFERENCES `associazione_intervento_ce` (`id`);

--
-- Limiti per la tabella `caratteristiche_qualitative_st_meccanismi_associati`
--
ALTER TABLE `caratteristiche_qualitative_st_meccanismi_associati`
  ADD CONSTRAINT `FK1xwguk8vw7p88hgahme539hrw` FOREIGN KEY (`caratteristiche_qualitative_st_id`) REFERENCES `caratteristiche_qualitative_st` (`id`),
  ADD CONSTRAINT `FKmhnwu3fbphvf9y94jfiytricl` FOREIGN KEY (`meccanismi_associati_id`) REFERENCES `meccanismi_st` (`id`);

--
-- Limiti per la tabella `caratteristiche_qualitative_st_valutazione_punteggio`
--
ALTER TABLE `caratteristiche_qualitative_st_valutazione_punteggio`
  ADD CONSTRAINT `FK8g9j28c33gclefhpi6xd93p89` FOREIGN KEY (`valutazione_punteggio_id`) REFERENCES `valutazione_punteggio_st` (`id`),
  ADD CONSTRAINT `FKbvi0n5yablrpdq05ciy940muh` FOREIGN KEY (`caratteristiche_qualitative_st_id`) REFERENCES `caratteristiche_qualitative_st` (`id`);

--
-- Limiti per la tabella `caratteristiche_struttura_st`
--
ALTER TABLE `caratteristiche_struttura_st`
  ADD CONSTRAINT `FKmx6v21wk8sit1k01sy8w6975h` FOREIGN KEY (`struttura_id`) REFERENCES `struttura_st` (`id`),
  ADD CONSTRAINT `FKtm7cigy8jdotyfr163f93jibj` FOREIGN KEY (`caratteristica_id`) REFERENCES `caratteristiche_qualitative_st` (`id`);

--
-- Limiti per la tabella `classe_indicatore_ce`
--
ALTER TABLE `classe_indicatore_ce`
  ADD CONSTRAINT `FKqdt1pth7dmk00j2xi0holxgci` FOREIGN KEY (`indicatore_id`) REFERENCES `indicatore_ce` (`id`);

--
-- Limiti per la tabella `classe_indicatore_non_ce`
--
ALTER TABLE `classe_indicatore_non_ce`
  ADD CONSTRAINT `FKp2t99vmj8c815hbc2o9q2pa3i` FOREIGN KEY (`indicatore_id`) REFERENCES `indicatore_non_ce` (`id`);

--
-- Limiti per la tabella `edificio_st`
--
ALTER TABLE `edificio_st`
  ADD CONSTRAINT `FKipm7snploikid5ubp4xpu8xgl` FOREIGN KEY (`quality_id`) REFERENCES `quality_st` (`id`);

--
-- Limiti per la tabella `quality_st`
--
ALTER TABLE `quality_st`
  ADD CONSTRAINT `FKjr27a6sqv89nt0r005tbe59lf` FOREIGN KEY (`t_quality_id`) REFERENCES `type_quality_st` (`id`);

--
-- Limiti per la tabella `quality_st_edificio`
--
ALTER TABLE `quality_st_edificio`
  ADD CONSTRAINT `FKl2onyk7l87rv7b9v26l8w5g9e` FOREIGN KEY (`edificio_id`) REFERENCES `edificio_st` (`id`),
  ADD CONSTRAINT `FKsx3eucxbfdcb3ynqx6xnp3s7t` FOREIGN KEY (`quality_st_id`) REFERENCES `quality_st` (`id`);

--
-- Limiti per la tabella `struttura_due_ce`
--
ALTER TABLE `struttura_due_ce`
  ADD CONSTRAINT `FK9eqhylq6sc1yseu3cglwffnsy` FOREIGN KEY (`struttura_id_id`) REFERENCES `struttura_ce` (`id`);

--
-- Limiti per la tabella `struttura_st`
--
ALTER TABLE `struttura_st`
  ADD CONSTRAINT `FKcwyxbj6ti8rraq4qc7x2tit1d` FOREIGN KEY (`tipo_struttura_id`) REFERENCES `type_struttura_st` (`id`);

--
-- Limiti per la tabella `struttura_st_car_quality`
--
ALTER TABLE `struttura_st_car_quality`
  ADD CONSTRAINT `FKjkuvhxkyob816l59wo8ledj1w` FOREIGN KEY (`car_quality_id`) REFERENCES `caratteristiche_qualitative_st` (`id`),
  ADD CONSTRAINT `FKqii5rvpvmrui39ko3ihl6e8iv` FOREIGN KEY (`struttura_st_id`) REFERENCES `struttura_st` (`id`);

--
-- Limiti per la tabella `struttura_tre_ce`
--
ALTER TABLE `struttura_tre_ce`
  ADD CONSTRAINT `FKt7ybagev1aaw5py3n0g10byt4` FOREIGN KEY (`struttura_due_id_id`) REFERENCES `struttura_due_ce` (`id`);

--
-- Limiti per la tabella `struttura_tre_ce_caratt_qualit`
--
ALTER TABLE `struttura_tre_ce_caratt_qualit`
  ADD CONSTRAINT `FK5hyqaks3aec1trm37c1vgbmci` FOREIGN KEY (`struttura_tre_ce_id`) REFERENCES `struttura_tre_ce` (`id`),
  ADD CONSTRAINT `FKfm9te8rqyqr9nhw8980c4f6bk` FOREIGN KEY (`caratt_qualit_id`) REFERENCES `caratteristiche_qualitative_ce` (`id`);

--
-- Limiti per la tabella `tipologia_struttura_st_car_qual_ems`
--
ALTER TABLE `tipologia_struttura_st_car_qual_ems`
  ADD CONSTRAINT `FK1y2huk6whiaehf743rxeiu910` FOREIGN KEY (`tipologia_struttura_st_id`) REFERENCES `tipologia_struttura_st` (`id`),
  ADD CONSTRAINT `FKa9d3bxl65ts30p0b8s491kqhc` FOREIGN KEY (`car_qual_ems_id`) REFERENCES `caratteristiche_qualitative_st` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
