-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Czas generowania: 26 Sty 2016, 01:08
-- Wersja serwera: 5.6.24
-- Wersja PHP: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Baza danych: `myshop`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `kategoria`
--

CREATE TABLE IF NOT EXISTS `kategoria` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `kategoria`
--

INSERT INTO `kategoria` (`id`, `name`, `description`) VALUES
(1, 'Elektronika', 'Rzeczy elektroniczne'),
(2, 'Moda i uroda', 'Odziez, bizuteria, uroda'),
(3, 'Kultura i rozrywka', 'Ksiazki, gry, muzyka, filmy'),
(4, 'Dom i zdrowie', 'Budownictwo, meble, ogrod, zdrowie');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `klient`
--

CREATE TABLE IF NOT EXISTS `klient` (
  `id` int(11) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `phone` varchar(15) NOT NULL,
  `email` varchar(30) NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `role` varchar(100) NOT NULL DEFAULT 'ROLE_USER'
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `klient`
--

INSERT INTO `klient` (`id`, `username`, `password`, `phone`, `email`, `enabled`, `role`) VALUES
(1, 'Damian', 'haslo', '123123123', 'cos@gmail.com', 1, 'ROLE_USER'),
(5, 'Marcin', 'haslo', '123124', 'dasd@gmail.com', 1, 'ROLE_USER'),
(7, 'Admin', 'admin', '', '', 1, 'ROLE_USER');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `produkt`
--

CREATE TABLE IF NOT EXISTS `produkt` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `description` text CHARACTER SET ucs2 COLLATE ucs2_polish_ci NOT NULL,
  `price` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `produkt`
--

INSERT INTO `produkt` (`id`, `name`, `description`, `price`, `cat_id`) VALUES
(2, 'Kolczyki', 'Pozlacane kolczyki z brylantami', 2000, 2),
(5, 'Telefon', 'Samsung', 1600, 1),
(6, 'Kuchenka', 'Kuchenka mikrofalowa', 124, 1),
(7, 'Pralka', 'Super mega pralka sama pioraca', 1600, 1),
(8, 'Zmywarka', 'Zmywarko-szuszarka', 324, 1),
(9, 'T-shirt', 'Meski t-shirt', 245, 2),
(10, 'Zegarek', 'Smartwatch z funkcja dzwonienia', 5523, 2),
(11, 'Perfumy', 'Damskie perfumy PLAYBOY', 42, 2),
(12, 'Ksiazka', 'Ksiazka Harry Portfel i 2 grosze', 2, 3),
(13, 'Plyta', 'Plyta Michaela Jacksona z 20 utworami', 55, 3),
(14, 'Gra', 'Gra Uncharted na PS3', 190, 3),
(15, 'Bilet', 'Bilet do kina dla pary', 40, 3),
(16, 'Zarowka', 'Zarowka swiecaca w ciemnosciach', 40, 4),
(17, 'Wyrzynarka', 'Urzadzenie potrafiace wszystko', 40, 4),
(18, 'Stol', 'Mebel z powylamywanymi nogami', 10, 4),
(19, 'Acodin', 'Lek na kaszel i nie tylko', 400, 4);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indexes for table `kategoria`
--
ALTER TABLE `kategoria`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `klient`
--
ALTER TABLE `klient`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `produkt`
--
ALTER TABLE `produkt`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `kategoria`
--
ALTER TABLE `kategoria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT dla tabeli `klient`
--
ALTER TABLE `klient`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT dla tabeli `produkt`
--
ALTER TABLE `produkt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
