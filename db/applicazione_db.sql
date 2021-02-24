-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Creato il: Feb 24, 2021 alle 18:41
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
  `variante` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `associazione_intervento_ce`
--

INSERT INTO `associazione_intervento_ce` (`id`, `caratteristica_associazione_intervento_id`, `intervento_id`, `struttura_associazione_id`, `modicita_di_costo`, `efficacia`, `sup_intonacate`, `sup_ev_ii`, `sup_iv_ei`, `reversibilita`, `semplicita_di_cantiere`, `esiguita_di_ingombro`, `variante`) VALUES
(1, 1, 9, 1, 2, 2, 3, 3, 0, 2, 2, 2, NULL),
(2, 1, 10, 1, 2, 1, 3, 3, 0, 2, 3, 3, NULL),
(3, 1, 11, 1, 1, 3, 3, 0, 3, 2, 2, 1, NULL),
(4, 1, 12, 1, 1, 3, 3, 0, 3, 2, 2, 2, NULL),
(5, 1, 13, 1, 1, 2, 3, 0, 3, 2, 3, 3, NULL),
(6, 1, 14, 1, 3, 2, 3, 3, 3, 1, 1, 3, NULL),
(7, 3, 16, 1, 2, 3, 3, 2, 2, 2, 2, 3, NULL),
(8, 3, 17, 1, 1, 2, 3, 2, 2, 2, 2, 3, NULL),
(9, 3, 18, 1, 1, 1, 3, 0, 0, 2, 3, 2, NULL),
(10, 3, 19, 1, 1, 1, 2, 2, 2, 2, 3, 3, NULL),
(11, 5, 11, 1, 1, 3, 3, 0, 3, 2, 1, 1, NULL),
(12, 5, 12, 1, 2, 3, 3, 0, 3, 2, 2, 2, NULL),
(13, 5, 13, 1, 2, 2, 3, 0, 3, 2, 3, 3, NULL),
(14, 2, 11, 1, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(15, 6, 11, 1, 1, 3, 3, 0, 3, 2, 1, 1, NULL),
(16, 6, 12, 1, 2, 3, 3, 0, 3, 2, 2, 2, NULL),
(17, 6, 13, 1, 2, 2, 3, 0, 3, 2, 3, 3, NULL),
(18, 6, 15, 1, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(19, 6, 20, 1, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(20, 6, 21, 1, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(21, 6, 22, 1, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(27, 1, 34, 2, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(28, 6, 34, 2, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(29, 1, 35, 4, 2, 2, 0, 3, 0, 2, 2, 2, NULL),
(30, 1, 36, 4, 1, 3, 3, 3, 0, 2, 2, 3, NULL),
(31, 6, 36, 4, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(32, 1, 37, 3, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(33, 6, 37, 3, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(34, 1, 1, 5, 1, 3, 3, 3, 0, 2, 1, 3, NULL),
(35, 1, 2, 5, 1, 3, 3, 3, 0, 2, 1, 3, NULL),
(36, 1, 3, 5, 3, 2, 3, 0, 0, 2, 2, 2, NULL),
(37, 1, 4, 5, 2, 2, 3, 0, 0, 2, 2, 1, NULL),
(38, 1, 7, 5, 2, 2, 3, 3, 0, 2, 1, 1, NULL),
(39, 2, 2, 5, 1, 3, 3, 3, 0, 2, 1, 3, NULL),
(40, 2, 4, 5, 2, 2, 3, 0, 0, 2, 2, 1, NULL),
(41, 5, 1, 5, 2, 3, 3, 3, 0, 2, 1, 3, NULL),
(42, 5, 2, 5, 1, 3, 3, 3, 0, 2, 1, 3, NULL),
(43, 6, 1, 5, 1, 3, 3, 3, 0, 2, 1, 3, NULL),
(44, 6, 2, 5, 1, 3, 3, 3, 0, 2, 1, 3, NULL),
(45, 6, 3, 5, 3, 2, 3, 0, 0, 2, 2, 2, NULL),
(46, 6, 4, 5, 2, 2, 3, 0, 0, 2, 2, 1, NULL),
(47, 6, 7, 5, 2, 2, 3, 3, 0, 2, 1, 1, NULL),
(48, 6, 8, 5, 2, 2, 3, 3, 0, 2, 1, 1, NULL),
(49, 10, 5, 5, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(50, 10, 6, 5, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(51, 1, 1, 6, 1, 3, 3, 3, 0, 2, 1, 3, NULL),
(52, 1, 2, 6, 1, 3, 3, 3, 0, 2, 1, 3, NULL),
(53, 1, 3, 6, 3, 2, 3, 0, 0, 2, 2, 2, NULL),
(54, 1, 4, 6, 2, 2, 3, 0, 0, 2, 2, 1, NULL),
(55, 1, 7, 6, 2, 2, 3, 3, 0, 2, 1, 1, NULL),
(56, 2, 2, 6, 1, 3, 3, 3, 0, 2, 1, 3, NULL),
(57, 2, 4, 6, 2, 2, 3, 0, 0, 2, 2, 1, NULL),
(58, 5, 1, 6, 2, 3, 3, 3, 0, 2, 1, 3, NULL),
(59, 5, 2, 6, 1, 3, 3, 3, 0, 2, 1, 3, NULL),
(60, 6, 1, 6, 1, 3, 3, 3, 0, 2, 1, 3, NULL),
(61, 6, 2, 6, 1, 3, 3, 3, 0, 2, 1, 3, NULL),
(62, 6, 3, 6, 3, 2, 3, 0, 0, 2, 2, 2, NULL),
(63, 6, 4, 6, 2, 2, 3, 0, 0, 2, 2, 1, NULL),
(64, 6, 7, 6, 2, 2, 3, 3, 0, 2, 1, 1, NULL),
(66, 10, 5, 6, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(67, 10, 6, 6, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(68, 1, 36, 7, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(69, 6, 36, 7, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(70, 1, 37, 8, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(71, 6, 37, 8, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(72, 1, 23, 9, 1, 3, 2, 2, 2, 3, 2, 3, NULL),
(73, 1, 24, 9, 2, 2, 3, 3, 3, 2, 3, 3, NULL),
(74, 1, 25, 9, 1, 2, 2, 2, 2, 2, 3, 2, NULL),
(75, 1, 26, 9, 3, 2, 3, 3, 3, 1, 3, 3, NULL),
(76, 1, 28, 9, 2, 1, 3, 3, 3, 1, 3, 3, NULL),
(77, 4, 23, 9, 1, 3, 2, 2, 2, 3, 2, 3, NULL),
(78, 4, 24, 9, 2, 3, 3, 3, 3, 2, 3, 3, NULL),
(79, 4, 25, 9, 1, 3, 2, 2, 2, 2, 3, 2, NULL),
(80, 4, 26, 9, 3, 3, 3, 3, 3, 1, 3, 3, NULL),
(81, 4, 27, 9, 3, 3, 3, 3, 3, 1, 3, 3, NULL),
(82, 7, 30, 9, 2, 2, 3, 3, 3, 1, 3, 3, NULL),
(83, 7, 31, 9, 2, 2, 2, 2, 2, 1, 3, 2, NULL),
(84, 7, 32, 9, 1, 3, 1, 1, 1, 3, 3, 2, NULL),
(85, 7, 33, 9, 2, 2, 1, 1, 1, 3, 3, 1, NULL),
(86, 8, 29, 9, 0, 0, 0, 0, 0, 0, 0, 0, NULL);

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
  `struttura_associazione_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `associazione_intervento_st`
--

INSERT INTO `associazione_intervento_st` (`id`, `efficacia`, `esiguita_di_ingombro`, `modicita_di_costo`, `passaggio`, `prezzo`, `reversibilita`, `semplicita_di_cantiere`, `sup_intonacate`, `sup_vista`, `unita_misura`, `variante`, `caratteristica_associazione_intervento_id`, `intervento_id`, `struttura_associazione_id`) VALUES
(1, 0, 0, 0, 1, 94.31, 0, 0, 0, 0, 'm', NULL, 2, 58, 1),
(2, 3, 2, 3, 0, 33.83, 3, 2, 1, 1, 'm', NULL, 3, 54, 1),
(3, 3, 1, 1, 0, 166.54, 1, 2, 1, 1, 'mq', NULL, 3, 55, 1),
(4, 3, 3, 2, 0, 120.66, 2, 1, 3, 3, 'mq', NULL, 3, 56, 1),
(5, 1, 3, 2, 0, 0, 3, 2, 3, 1, NULL, NULL, 3, 57, 1),
(6, 1, 3, 2, 0, 65.23, 1, 3, 3, 2, 'mq', NULL, 3, 59, 1),
(7, 1, 3, 2, 0, 87.3, 1, 2, 3, 2, 'mq', NULL, 3, 60, 1),
(8, 3, 3, 2, 0, 236.75, 3, 1, 3, 3, 'mq', NULL, 1, 31, 2),
(9, 2, 3, 3, 0, 55.23, 1, 3, 3, 3, 'mq', NULL, 1, 32, 2),
(10, 1, 3, 2, 0, 158.13, 3, 3, 3, 3, 'mq', 'a', 1, 33, 2),
(11, 3, 3, 1, 0, 320.94, 1, 2, 3, 1, 'mq', NULL, 1, 37, 2),
(12, 2, 2, 2, 0, 0, 2, 2, 1, 1, NULL, NULL, 1, 38, 2),
(13, 2, 2, 2, 0, 203.17, 1, 3, 3, 0, 'mq', NULL, 1, 39, 2),
(14, 3, 3, 1, 0, 266.78, 2, 2, 3, 1, 'mq', NULL, 1, 40, 2),
(15, 3, 1, 2, 0, 166.54, 1, 1, 2, 2, 'mq', NULL, 1, 43, 2),
(16, 2, 1, 2, 0, 157, 1, 2, 2, 0, 'mq', NULL, 1, 44, 2),
(17, 0, 0, 0, 1, 236.75, 0, 0, 0, 0, 'mq', NULL, 2, 31, 2),
(18, 0, 0, 0, 1, 238, 0, 0, 0, 0, 'mq', NULL, 7, 42, 2),
(19, 3, 3, 3, 0, 33.83, 3, 2, 2, 2, 'm', NULL, 8, 1, 2),
(20, 2, 3, 3, 0, 33.83, 3, 2, 3, 3, 'm', NULL, 8, 2, 2),
(21, 3, 3, 2, 0, 66.7, 2, 2, 3, 1, 'mq', NULL, 8, 3, 2),
(22, 3, 3, 1, 0, 157.78, 1, 1, 3, 3, 'm', 'a', 8, 6, 2),
(23, 3, 1, 3, 0, 309.38, 1, 1, 1, 1, 'mq', NULL, 8, 41, 2),
(24, 3, 1, 1, 0, 166.54, 1, 1, 2, 2, 'mq', NULL, 8, 43, 2),
(25, 3, 3, 3, 0, 33.83, 3, 2, 2, 2, 'm', NULL, 4, 1, 2),
(26, 2, 3, 3, 0, 33.83, 3, 2, 3, 3, 'm', NULL, 4, 2, 2),
(27, 3, 3, 2, 0, 66.7, 2, 2, 3, 1, 'mq', NULL, 4, 3, 2),
(28, 3, 3, 3, 0, 236.75, 3, 1, 3, 3, 'mq', NULL, 4, 4, 2),
(29, 1, 3, 3, 0, 87.3, 1, 2, 3, 2, 'mq', NULL, 4, 5, 2),
(30, 3, 3, 1, 0, 157.78, 1, 1, 3, 1, 'm', 'a', 4, 6, 2),
(31, 0, 0, 0, 1, 236.75, 0, 0, 0, 0, 'mq', NULL, 1, 31, 3),
(32, 0, 0, 0, 1, 55.23, 0, 0, 0, 0, 'mq', NULL, 1, 32, 3),
(33, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, 1, 33, 3),
(34, 0, 0, 0, 1, 320.94, 0, 0, 0, 0, 'mq', NULL, 1, 37, 3),
(35, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, 1, 38, 3),
(36, 0, 0, 0, 1, 203.17, 0, 0, 0, 0, 'mq', NULL, 1, 39, 3),
(37, 0, 0, 0, 1, 266.78, 0, 0, 0, 0, 'mq', NULL, 1, 40, 3),
(38, 0, 0, 0, 1, 166.54, 0, 0, 0, 0, 'mq', NULL, 1, 43, 3),
(39, 0, 0, 0, 1, 157, 0, 0, 0, 0, 'mq', NULL, 1, 44, 3),
(40, 0, 0, 0, 1, 236.75, 0, 0, 0, 0, 'mq', NULL, 2, 31, 3),
(41, 0, 0, 0, 1, 238, 0, 0, 0, 0, 'mq', NULL, 7, 42, 3),
(42, 0, 0, 0, 1, 33.83, 0, 0, 0, 0, 'm', NULL, 8, 1, 3),
(43, 0, 0, 0, 1, 33.83, 0, 0, 0, 0, 'm', NULL, 8, 2, 3),
(44, 0, 0, 0, 1, 66.7, 0, 0, 0, 0, 'mq', NULL, 8, 3, 3),
(45, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, 8, 6, 3),
(46, 0, 0, 0, 1, 309.38, 0, 0, 0, 0, 'mq', NULL, 8, 41, 3),
(47, 3, 3, 3, 0, 97.7, 1, 2, 3, 2, 'mq', NULL, 9, 34, 3),
(48, 3, 3, 3, 0, 97.7, 2, 2, 3, 3, 'mq', NULL, 9, 35, 3),
(49, 3, 3, 3, 0, 0, 2, 2, 1, 1, NULL, NULL, 9, 36, 3),
(50, 0, 0, 0, 1, 33.83, 0, 0, 0, 0, 'm', NULL, 4, 1, 3),
(51, 0, 0, 0, 1, 33.83, 0, 0, 0, 0, 'm', NULL, 4, 2, 3),
(52, 0, 0, 0, 1, 66.7, 0, 0, 0, 0, 'mq', NULL, 4, 3, 3),
(53, 0, 0, 0, 1, 236.75, 0, 0, 0, 0, 'mq', NULL, 9, 4, 3),
(54, 0, 0, 0, 1, 87.3, 0, 0, 0, 0, 'mq', NULL, 9, 5, 3),
(55, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, 9, 6, 3),
(56, 2, 3, 2, 0, 90, 3, 3, 2, 2, 'm', NULL, 51, 7, 4),
(57, 3, 2, 3, 0, 71.13, 3, 2, 2, 2, 'm', NULL, 51, 8, 4),
(58, 3, 2, 2, 0, 41.63, 2, 1, 3, 3, 'mq', NULL, 52, 9, 4),
(59, 3, 2, 2, 0, 51.57, 2, 1, 3, 3, 'mq', NULL, 52, 10, 4),
(60, 3, 2, 3, 0, 15.08, 2, 1, 3, 3, 'mq', NULL, 52, 11, 4),
(61, 2, 2, 1, 0, 63, 1, 1, 3, 3, 'mq', NULL, 52, 12, 4),
(62, 0, 0, 0, 1, 140.96, 0, 0, 0, 0, 'm', NULL, 52, 15, 4),
(63, 0, 0, 0, 1, 50.5, 0, 0, 0, 0, 'm', NULL, 52, 16, 4),
(64, 0, 0, 0, 1, 1152.73, 0, 0, 0, 0, 'mc', NULL, 52, 17, 4),
(65, 0, 0, 0, 1, 140.96, 0, 0, 0, 0, 'm', NULL, 52, 18, 4),
(66, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, 52, 19, 4),
(67, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, 52, 20, 4),
(68, 0, 0, 0, 1, 140.96, 0, 0, 0, 0, 'm', NULL, 52, 21, 4),
(69, 0, 0, 0, 1, 140.96, 0, 0, 0, 0, 'm', NULL, 52, 22, 4),
(70, 0, 0, 0, 1, 71.13, 0, 0, 0, 0, 'm', NULL, 51, 8, 5),
(71, 3, 2, 2, 0, 15.08, 2, 1, 3, 3, 'mq', NULL, 52, 11, 5),
(72, 2, 2, 1, 0, 63, 1, 1, 3, 3, 'mq', NULL, 52, 12, 5),
(73, 2, 3, 2, 0, 14.37, 2, 1, 3, 3, 'mq', NULL, 52, 13, 5),
(74, 2, 3, 3, 0, 4.24, 3, 3, 3, 1, 'mq', NULL, 52, 14, 5),
(75, 3, 3, 3, 0, 33.83, 3, 2, 2, 2, 'm', NULL, 3, 1, 7),
(76, 2, 3, 3, 0, 33.83, 3, 2, 3, 3, 'm', NULL, 3, 2, 7),
(77, 3, 3, 2, 0, 66.7, 2, 2, 3, 1, 'mq', NULL, 3, 3, 7),
(78, 3, 3, 1, 0, 157.78, 1, 1, 3, 3, 'm', 'a', 101, 6, 7),
(79, 3, 2, 2, 0, 115.27, 2, 1, 3, 3, 'mq', NULL, 102, 23, 7),
(80, 3, 2, 3, 0, 88.72, 2, 1, 3, 3, 'mq', NULL, 102, 24, 7),
(81, 2, 2, 1, 0, 0, 1, 1, 3, 3, NULL, NULL, 102, 25, 7),
(82, 0, 0, 0, 1, 1152.73, 0, 0, 0, 0, 'mc', NULL, 102, 26, 7),
(83, 0, 0, 0, 1, 1152.73, 0, 0, 0, 0, 'mc', NULL, 102, 27, 7),
(84, 0, 0, 0, 1, 50.5, 0, 0, 0, 0, 'm', NULL, 102, 28, 7),
(85, 0, 0, 0, 1, 50.5, 0, 0, 0, 0, 'm', NULL, 102, 28, 7),
(86, 0, 0, 0, 1, 140.96, 0, 0, 0, 0, 'm', NULL, 102, 29, 7),
(87, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, 102, 30, 7),
(88, 0, 0, 0, 1, 94.31, 0, 0, 0, 0, 'm', NULL, 2, 58, 8),
(89, 3, 2, 3, 0, 33.83, 3, 2, 1, 1, 'm', NULL, 3, 54, 8),
(90, 3, 1, 1, 0, 166.54, 1, 2, 1, 1, 'mq', NULL, 3, 55, 8),
(91, 3, 3, 1, 0, 120.66, 2, 1, 3, 3, 'mq', NULL, 3, 56, 8),
(92, 2, 1, 1, 0, 0, 2, 1, 1, 1, NULL, NULL, 3, 57, 8),
(93, 1, 3, 2, 0, 65.23, 1, 3, 3, 2, 'mq', NULL, 3, 59, 8),
(94, 1, 3, 1, 0, 90.25, 1, 1, 3, 3, 'mq', NULL, 3, 62, 8),
(95, 0, 0, 0, 1, 65.85, 0, 0, 0, 0, 'mq', NULL, 2, 61, 9),
(96, 3, 2, 3, 0, 33.83, 3, 2, 1, 1, 'm', NULL, 3, 54, 9),
(97, 3, 1, 1, 0, 166.54, 1, 2, 1, 1, 'mq', NULL, 3, 55, 9),
(98, 3, 3, 1, 0, 120.66, 2, 1, 3, 3, 'mq', NULL, 3, 56, 9),
(99, 1, 3, 1, 0, 90.25, 1, 1, 3, 3, 'mq', NULL, 3, 62, 9),
(100, 3, 1, 2, 0, 180, 2, 1, 1, 1, 'm', NULL, 6, 50, 10),
(101, 2, 2, 2, 0, 140.96, 3, 2, 1, 1, 'm', NULL, 6, 51, 10),
(102, 2, 3, 3, 0, 50.5, 3, 3, 2, 2, 'm', NULL, 6, 52, 10),
(103, 3, 1, 2, 0, 180, 2, 1, 1, 0, 'm', NULL, 6, 50, 11),
(104, 2, 2, 2, 0, 140.96, 3, 2, 1, 0, 'm', NULL, 6, 51, 11),
(105, 2, 3, 3, 0, 50.5, 3, 3, 2, 0, 'm', NULL, 6, 52, 11),
(106, 3, 1, 2, 0, 180, 2, 1, 1, 0, 'm', NULL, 6, 50, 12),
(107, 2, 2, 2, 0, 140.96, 3, 2, 1, 0, 'm', NULL, 6, 51, 12),
(108, 2, 3, 3, 0, 50.5, 3, 3, 2, 0, NULL, NULL, 6, 52, 12),
(109, 3, 1, 2, 0, 180, 2, 1, 1, 0, 'm', NULL, 6, 50, 13),
(110, 2, 2, 2, 0, 140.96, 3, 2, 1, 0, 'm', NULL, 6, 51, 13),
(111, 2, 3, 3, 0, 50.5, 3, 3, 2, 0, 'm', NULL, 6, 52, 13),
(112, 0, 0, 0, 1, 395, 0, 0, 0, 0, 'm', NULL, 6, 53, 13),
(113, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, 12, 66, 14),
(114, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, 12, 67, 14),
(115, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, 2, 74, 1),
(116, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, 2, 74, 2),
(117, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, 2, 74, 3),
(118, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, 2, 75, 4),
(119, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, 2, 75, 7),
(120, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, 2, 74, 8),
(121, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, 2, 74, 10),
(122, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, 2, 74, 11),
(123, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, 2, 75, 12),
(124, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL, NULL, 2, 74, 13),
(126, 2, 3, 2, 0, 186.31, 3, 2, 3, 2, 'mq', 'b', 1, 33, 2),
(127, 3, 2, 2, 0, 71.13, 3, 2, 2, 2, 'm', 'b', 8, 6, 2),
(128, 2, 3, 1, 0, 131.85, 1, 1, 3, 1, 'm', 'c', 8, 6, 2),
(129, 3, 3, 1, 0, 112.78, 1, 1, 3, 1, 'm', 'd', 8, 6, 2),
(130, 3, 2, 2, 0, 71.13, 3, 2, 2, 2, 'm', 'b', 4, 6, 2),
(131, 2, 3, 1, 0, 131.85, 1, 1, 3, 1, 'm', 'c', 4, 6, 2),
(132, 3, 3, 1, 0, 112.78, 1, 1, 3, 1, 'm', 'd', 4, 6, 2),
(133, 3, 2, 3, 0, 71.13, 3, 2, 2, 2, 'm', 'b', 101, 6, 7),
(134, 2, 3, 2, 0, 131.85, 1, 1, 3, 1, 'm', 'c', 101, 6, 7),
(135, 3, 3, 2, 0, 112.78, 1, 1, 3, 1, 'm', 'd', 101, 6, 7);

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
(10, 'Soluzioni da fonti rinnovabili');

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
  `punteggio` int(11) NOT NULL,
  `indicatore_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `classe_indicatore_ce`
--

INSERT INTO `classe_indicatore_ce` (`id`, `descrizione`, `punteggio`, `indicatore_id`) VALUES
(26, 'edificio isolato', 0, 3),
(27, 'edificio con un lato attiguo', 0, 3),
(28, 'edifico con due lati attigui', 0, 3),
(29, 'edificio con tre lati attigui', 0, 3),
(30, 'edificio intercluso', 0, 3),
(31, 'edificio con lato attiguo a sud', 0, 4),
(32, 'edificio con lato esposto sia a sud che nord', 0, 4),
(33, 'edificio con lato esposto a sud e attiguo a nord', 0, 4),
(34, 'rotazione di 0° rispetto agli assi N-S e E-O con lati esposti N, NEO, NO, NSO, O,SO', 0, 5),
(35, 'altri casi', 0, 5),
(36, 'rotazione di 0° rispetto agli assi N-S e E-O con esposizioni E, ES, ESO, NE, NES, S', 0, 5);

-- --------------------------------------------------------

--
-- Struttura della tabella `codice_intervento_ce`
--

CREATE TABLE `codice_intervento_ce` (
  `id` bigint(20) NOT NULL,
  `codice` varchar(255) DEFAULT NULL,
  `descrizione` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `codice_intervento_ce`
--

INSERT INTO `codice_intervento_ce` (`id`, `codice`, `descrizione`) VALUES
(1, 'A1', 'Isolamento termico all\'estradosso non ventilato\r\n'),
(2, 'A2', 'Isolamento termico all\'estradosso ventilato\r\n'),
(3, 'A3', 'Isolamento termico all\'intradosso\r\n'),
(4, 'A4', 'Isolamento termico all\'intradosso ventilato\r\n'),
(5, 'A5', 'Integrazione del fotovoltaico \r\n(tegole e coppi fotovoltaici)*\r\n'),
(6, 'A6', 'Integrazione del solare termico \r\n(collettori solari con decalcomanie forate)*\r\n'),
(7, 'A7', 'Green roof*\r\n'),
(8, 'A8', 'Roof pond*\r\n'),
(9, 'B1', 'Isolamento termico a pannelli sulla superficie interna della parete \r\n'),
(10, 'B2', 'Isolamento tramite intonaco termoisolante sulla superficie interna della parete\r\n'),
(11, 'B3', 'Isolamento termico a pannelli sulla superficie esterna della parete ventilato\r\n'),
(12, 'B4', 'Isolamento termico a pannelli sulla superficie esterna della parete non ventilato\r\n'),
(13, 'B5', 'Isolamento tramite intonaco termoisolante sulla superficie esterna della parete\r\n'),
(14, 'B6', 'Isolamento termico all\'interno dell\'intercapedine*\r\n'),
(15, 'B7', 'Sistemi di accumulo a cambiamento di fase* \r\n'),
(16, 'B8', 'Realizzazione di barriere fisiche alla risalita capillare*\r\n'),
(17, 'B9', 'Realizzazione di barriere chimiche alla risalita capillare\r\n'),
(18, 'B10', 'Realizzazione di sistemi di evacuazione dell\'umidità tramite intonaci macroporosi\r\n'),
(19, 'B11', 'Realizzazione di sistemi di evacuazione dell\'umidità tramite sistemi elettro-fisici\r\n'),
(20, 'B12', 'Green wall*\r\n'),
(21, 'B13', 'Muro di Trombe*\r\n'),
(22, 'B14', 'Sistemi di accumulo ad acqua* \r\n'),
(23, 'C1', 'Sostituzione dei serramenti con modelli ad alta prestazione energetica*\r\n'),
(24, 'C2', 'Sostituzione dei vetri con modelli isolanti o captanti su telaio esistente*\r\n'),
(25, 'C3', 'Messa in opera di una seconda anta vetrata*\r\n'),
(26, 'C4', 'Messa in opera di una seconda lastra vetrata*\r\n'),
(27, 'C5', 'Isolamento e tenuta all\'aria del telaio\r\n'),
(28, 'C6', 'Applicazione al vetro di pellicole speciali isolanti o captanti\r\n'),
(29, 'C7', 'Meccanizzazione del serramento\r\n'),
(30, 'C8', 'Applicazione al vetro di pellicole a controllo solare\r\n'),
(31, 'C9', 'Installazione di schermi interni\r\n'),
(32, 'C10', 'Installazione di schermi esterni\r\n'),
(33, 'C11', 'Applicazione di una mensola di luce*\r\n'),
(34, 'D1', 'Isolamento termico all\'intradosso del solaio\r\n'),
(35, 'D2', 'Isolamento termico all\'intradosso del solaio superiore\r\n'),
(36, 'D3', 'Isolamento termico all\'estradosso del solaio superiore\r\n'),
(37, 'D4', 'Isolamento termico all\'estradosso del solaio inferiore \r\n'),
(38, 'E1', 'Revisione del modello di riscaldamento esistente, con la previsione di soluzioni radianti a pavimento o a parete\r\n'),
(39, 'E2', 'Sostituzione dei corpi illuminanti con lampade a risparmio energetico\r\n'),
(40, 'E3', 'Inserimento di sistemi automatizzati di gestione e controllo \r\n'),
(41, 'E4', 'Installazione di generatori di calore a condensazione\r\n'),
(42, 'E5', 'Installazione di pompe di calore\r\n'),
(43, 'E6', 'Installazione di testine termostatiche sui terminali di impianto\r\n'),
(44, 'E7', 'Inserimento di termostati ambiente\r\n'),
(45, 'E8', 'Installazione di sensori di presenza negli ambienti\r\n'),
(46, 'E9', 'Installazione di caldaia a biomasse\r\n'),
(47, 'E10', 'Installazione di sonde geotermiche\r\n'),
(48, 'E11', 'Installazione di impianto di cogenerazione\r\n'),
(49, 'E12', 'Installazione di regolatori di flusso collegati a rilevatori di luce\r\n'),
(50, 'E13', 'Installazione di sistemi di deumidificazione attiva con macchine a funzionamento elettrico\r\n'),
(51, 'F1', 'Introduzione di sistemi di ombreggiamento all\'intorno\r\n'),
(52, 'F2', 'Realizzazione di una serra solare\r\n'),
(53, 'F3', 'Realizzazione di camini di luce\r\n'),
(54, 'F4', 'Realizzazione di un camino di ventilazione\r\n');

-- --------------------------------------------------------

--
-- Struttura della tabella `codice_intervento_st`
--

CREATE TABLE `codice_intervento_st` (
  `id` bigint(20) NOT NULL,
  `codice` varchar(255) DEFAULT NULL,
  `descrizione` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `codice_intervento_st`
--

INSERT INTO `codice_intervento_st` (`id`, `codice`, `descrizione`) VALUES
(1, 'A1', 'Inserimento di tiranti ancorati alle murature mediante capochiave -bolzoni o piastre-'),
(2, 'A2', 'Introduzione di tiranti ancorati alle murature mediante ancoraggi per aderenza'),
(3, 'A3', 'Inserimento di cerchiature esterne con elementi metallici o materiali compositi'),
(4, 'A4', 'Scuci-cuci agli ammorsamenti'),
(5, 'A5', 'Realizzazione di perforazioni armate con barre metalliche'),
(6, 'A6', 'Realizzazione di cordoli in sommità'),
(7, 'A7', 'Ancoraggio delle teste di travi alle murature tramite elementi metallici o in altro materiale resistente a trazione (capichiave)'),
(8, 'A8', 'Cordoli di piano in acciaio'),
(9, 'B1', 'Irrigidimento con introduzione di un secondo tavolato all’estradosso disposto con andamento ortogonale o inclinato'),
(10, 'B2', 'Irrigidimento con introduzione di bandelle metalliche o di materiali compositi fissate al tavolato con andamento incrociato'),
(11, 'B3', 'Controventamento realizzato con tiranti metallici'),
(12, 'B4', 'Irrigidimento attraverso soletta collaborante in calcestruzzo eventualmente alleggerito'),
(13, 'B5', 'Irrigidimento tramite saldatura dei profili con bandelle metalliche trasversali poste all’estradosso'),
(14, 'B6', 'Irrigidimento tramite saldatura dei profili con bandelle metalliche trasversali poste all’intradosso'),
(15, 'B7', 'Inserimento di profili metallici collaboranti'),
(16, 'B8', 'Applicazione di lamine di materiale composito'),
(17, 'B9', 'Sostituzione della trave lignea'),
(18, 'B10', 'Introduzione di travi ascellari (travi collaboranti in profilato metallico) ai lati delle orditure principali in legno'),
(19, 'B11', 'Rinforzo delle travi lignee con fasce e tiranti d\'intradosso'),
(20, 'B12', 'Rinforzo delle travi lignee con tirante d\'intradosso e contraffissi (struttura reticolare)'),
(21, 'B13', 'Trasformazione della trave lignea in una struttura con sezione a T attraverso il collocamento di un tavolato nello spessore del massetto (struttura composta legno-legno)'),
(22, 'B14', 'Trasformazione della trave lignea in una struttura con sezione a T attraverso l\'introduzione di un profilato metallico collaborante (struttura composta legno-metallo)'),
(23, 'C1', 'Irrigidimento della falda di copertura con doppio tavolato continuo con assetto preferibilmente a 45°'),
(24, 'C2', 'Irrigidimento della falda di copertura con controventi in acciaio all\'intradosso/estradosso - croci di S.Andrea'),
(25, 'C3', 'Irrigidimento della falda di copertura con cls alleggerito con rete elettrosaldata zincata'),
(26, 'C4', 'Introduzione di tiranti metallici'),
(27, 'C5', 'Sostituzione della trave lignea'),
(28, 'C6', 'Applicazione di lamine di materiale composito'),
(29, 'C7', 'Introduzione di travi ascellari (travi collaboranti in profilato metallico) ai lati delle orditure principali in legno'),
(30, 'C8', 'Placcaggio con tavole di legno'),
(31, 'D1', 'Ripristino della continuità muraria attraverso scuci e cuci'),
(32, 'D2', 'Iniezioni di miscele leganti'),
(33, 'D3', 'Ristilatura dei giunti della muratura'),
(34, 'D4', 'Inserimento di diatoni artificiali in fori di carotaggio: c.a. e acciaio'),
(35, 'D5', 'Inserimento di pietre passanti'),
(36, 'D6', 'Inserimento di tirantini antiesplusivi'),
(37, 'D7', 'Inserimento di tirantature diffuse/CAM'),
(38, 'D8', 'Inserimento di tiranti verticali post-tesi'),
(39, 'D9', 'Placcaggio delle murature con intonaco armato su entrambi i paramenti'),
(40, 'D10', 'Placcaggio con tessuti o lamine in materiale fibroriforzato'),
(41, 'D11', 'Inserimento di nuovo setto di spina con relativa fondazione'),
(42, 'D12', 'Richiusura di nicchie e bucature'),
(43, 'D13', 'Realizzazione di una nuova parte affiancata e resa solidale a quella esistente mediante barre in acciaio inox e resina epossidica'),
(44, 'D14', 'Rivestimento delle pareti verticali all\'esterno con cappotto sismico'),
(45, 'E1', 'Esecuzione di piastra di collegamento delle murature alla base'),
(46, 'E2', 'Introduzione di pali e micropali da estendere all\'intero edificio'),
(47, 'E3', 'Consolidamento dei terreni di fondazione per iniezione nel terreno di resine e di malte cementizie'),
(48, 'E4', 'Realizzazione di sottofondazioni in muratura ammorsate a profondità idonea'),
(49, 'E5', 'Irrigidimento e cerchiaggio della fondazione attraverso la realizzazione di travi in c.a. affiancate alla fondazione esistente (interno/esterno) e collegate tra loro mediante traversi in c.a.'),
(50, 'F1', 'Inserimento di elementi di riquadratura: telai in c.a. o in acciaio'),
(51, 'F2', 'Inserimento di profili in acciaio collegati tra loro da barre filettate in acciaio inox'),
(52, 'F3', 'Consolidamento con inserimento di fibre in carbonio'),
(53, 'F4', 'Consolidamento di piattabande tramite splintaggio degli elementi laterizi'),
(54, 'G1', 'Inserimento di catene alle reni di archi e volte'),
(55, 'G2', 'Realizzazione di contrafforti esterni'),
(56, 'G3', 'Placcaggio all\'estradosso con fasce di materiale composito'),
(57, 'G4', 'Placcaggio all\'intradosso con fasce di mareriale composito'),
(58, 'G5', 'Iniezioni di malta per ripristinare le lesioni'),
(59, 'G6', 'Incuneatura di elementi in legno o metallo con sigillatura e iniezione tramite prodotti specifici'),
(60, 'G7', 'Realizzazione sull\'arco di perforazioni incrociate'),
(61, 'G8', 'Rinforzo tramite accostamento di tavole e solidarizzazione degli elementi portanti tramite fascette in ferro chiodate alla struttura lignea'),
(62, 'G9', 'Alleggerimento/svuotamento del riempimento della volta ed inserimento di frenelli'),
(63, 'H1', 'Cerchiature e tassellature'),
(64, 'H2', 'Incamiciatura di calcestruzzo armato'),
(65, 'H3', 'Incatenamenti e tirantature'),
(66, 'I1', 'Collegamenti puntuali e diffusi dell\'elemento non strutturale alla struttura muraria'),
(67, 'I2', 'Calastrelli in acciaio per comignoli'),
(68, 'L1', 'Inserimento di setti di irrigidimento'),
(69, 'L2', 'Inserimento di controventi dissipativi'),
(70, 'L3', 'Isolamento alla base'),
(71, 'L4', 'Adeguamento di giunti non sismici tra unità strutturali distinte'),
(72, 'L5', 'Inserimento di giunti sismici in edifici irregolari'),
(73, 'L6', 'Realizzazione di collegamenti strutturali'),
(74, 'Tab.01', NULL),
(75, 'Tab.02', NULL),
(76, 'B15', 'Placcaggio con tavole di legno');

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
(20, 'Percentuale tra 25% e 50%', 2, 'M', 0, 7),
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
(12, 'Rendimento dell\'impianto di climatizzazione estiva'),
(13, 'Rendimento dell\'impianto per l\'acqua calda sanitaria');

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
(7, 'Aperture di elevate dimensioni intervallate da maschi di ridotte dimensioni\r\n\r\n\r\n', 1),
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
(5, 'Infissi esterni verticali');

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
(6, 'Infissi esterni verticali', 5);

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
(9, 'Infissi esterni verticali', 6);

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
  ADD KEY `FKcv0llisc9wfd2vewap8gb87bd` (`indicatore_id`);

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
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT per la tabella `associazione_intervento_st`
--
ALTER TABLE `associazione_intervento_st`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;

--
-- AUTO_INCREMENT per la tabella `caratteristiche_qualitative_ce`
--
ALTER TABLE `caratteristiche_qualitative_ce`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

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
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT per la tabella `codice_intervento_ce`
--
ALTER TABLE `codice_intervento_ce`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT per la tabella `codice_intervento_st`
--
ALTER TABLE `codice_intervento_st`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

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
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT per la tabella `struttura_due_ce`
--
ALTER TABLE `struttura_due_ce`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT per la tabella `struttura_st`
--
ALTER TABLE `struttura_st`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT per la tabella `struttura_tre_ce`
--
ALTER TABLE `struttura_tre_ce`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

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
  ADD CONSTRAINT `FKcv0llisc9wfd2vewap8gb87bd` FOREIGN KEY (`indicatore_id`) REFERENCES `indicatore_ce` (`id`);

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
