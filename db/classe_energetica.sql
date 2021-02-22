-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Creato il: Feb 12, 2021 alle 17:43
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
-- Struttura della tabella `associazione_intervento`
--

CREATE TABLE `associazione_intervento` (
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
-- Dump dei dati per la tabella `associazione_intervento`
--

INSERT INTO `associazione_intervento` (`id`, `caratteristica_associazione_intervento_id`, `intervento_id`, `struttura_associazione_id`, `modicita_di_costo`, `efficacia`, `sup_intonacate`, `sup_ev_ii`, `sup_iv_ei`, `reversibilita`, `semplicita_di_cantiere`, `esiguita_di_ingombro`, `variante`) VALUES
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
-- Struttura della tabella `classe_indicatore`
--

CREATE TABLE `classe_indicatore` (
  `id` bigint(20) NOT NULL,
  `descrizione` varchar(255) DEFAULT NULL,
  `punteggio` int(11) NOT NULL,
  `indicatore_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `classe_indicatore`
--

INSERT INTO `classe_indicatore` (`id`, `descrizione`, `punteggio`, `indicatore_id`) VALUES
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
-- Struttura della tabella `codice_intervento`
--

CREATE TABLE `codice_intervento` (
  `id` bigint(20) NOT NULL,
  `codice` varchar(255) DEFAULT NULL,
  `descrizione` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `codice_intervento`
--

INSERT INTO `codice_intervento` (`id`, `codice`, `descrizione`) VALUES
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
-- Struttura della tabella `indicatore`
--

CREATE TABLE `indicatore` (
  `id` bigint(20) NOT NULL,
  `indicatore` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `indicatore`
--

INSERT INTO `indicatore` (`id`, `indicatore`) VALUES
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
-- Indici per le tabelle `associazione_intervento`
--
ALTER TABLE `associazione_intervento`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKf69pmge2ud5tbnx1a8bucebk4` (`caratteristica_associazione_intervento_id`),
  ADD KEY `FKgg9x8sypaf66qi9st6mln8rfv` (`intervento_id`),
  ADD KEY `FK46uhq35u5o5505o35ra1kjor2` (`struttura_associazione_id`);

--
-- Indici per le tabelle `caratteristiche_qualitative`
--
ALTER TABLE `caratteristiche_qualitative`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `classe_indicatore`
--
ALTER TABLE `classe_indicatore`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKcv0llisc9wfd2vewap8gb87bd` (`indicatore_id`);

--
-- Indici per le tabelle `codice_intervento`
--
ALTER TABLE `codice_intervento`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `indicatore`
--
ALTER TABLE `indicatore`
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
-- AUTO_INCREMENT per la tabella `associazione_intervento`
--
ALTER TABLE `associazione_intervento`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT per la tabella `caratteristiche_qualitative`
--
ALTER TABLE `caratteristiche_qualitative`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT per la tabella `classe_indicatore`
--
ALTER TABLE `classe_indicatore`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT per la tabella `codice_intervento`
--
ALTER TABLE `codice_intervento`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT per la tabella `indicatore`
--
ALTER TABLE `indicatore`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

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
-- Limiti per la tabella `associazione_intervento`
--
ALTER TABLE `associazione_intervento`
  ADD CONSTRAINT `FK46uhq35u5o5505o35ra1kjor2` FOREIGN KEY (`struttura_associazione_id`) REFERENCES `struttura_tre` (`id`),
  ADD CONSTRAINT `FKf69pmge2ud5tbnx1a8bucebk4` FOREIGN KEY (`caratteristica_associazione_intervento_id`) REFERENCES `caratteristiche_qualitative` (`id`),
  ADD CONSTRAINT `FKgg9x8sypaf66qi9st6mln8rfv` FOREIGN KEY (`intervento_id`) REFERENCES `codice_intervento` (`id`);

--
-- Limiti per la tabella `classe_indicatore`
--
ALTER TABLE `classe_indicatore`
  ADD CONSTRAINT `FKcv0llisc9wfd2vewap8gb87bd` FOREIGN KEY (`indicatore_id`) REFERENCES `indicatore` (`id`);

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
