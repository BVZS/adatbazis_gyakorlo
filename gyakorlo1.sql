-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2024. Nov 09. 12:33
-- Kiszolgáló verziója: 10.4.32-MariaDB
-- PHP verzió: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `gyakorlo1`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `anyag`
--

CREATE TABLE `anyag` (
  `id` int(11) NOT NULL,
  `nev` varchar(20) NOT NULL,
  `m_egys` varchar(3) NOT NULL,
  `egys_ar` smallint(6) NOT NULL,
  `db` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `anyag`
--

INSERT INTO `anyag` (`id`, `nev`, `m_egys`, `egys_ar`, `db`) VALUES
(1, 'a1', 'm', 200, 10),
(2, 'a2', 'cm', 235, 120),
(3, 'a3', 'cm', 1567, 16),
(4, 'a4', 'mm', 15550, 23),
(5, 'a5', 'cm', 1200, 12),
(6, 'a6', 'cm', 150, 45),
(7, 'a7', 'mm', 1250, 15),
(8, 'a8', 'm', 255, 12),
(9, 'a9', 'cm', 480, 14),
(10, 'a10', 'mm', 12450, 15),
(11, 'a11', 'mm', 120, 55),
(12, 'a12', 'cm', 12345, 16),
(13, 'a13', 'm', 1255, 14),
(14, 'a21', 'cm', 235, 120),
(15, 'a31', 'cm', 1567, 16),
(16, 'a41', 'mm', 15550, 23),
(17, 'a51', 'cm', 1200, 12),
(18, 'a61', 'cm', 150, 45),
(19, 'a71', 'mm', 1250, 15),
(20, 'a81', 'm', 255, 12),
(21, 'a91', 'cm', 480, 14),
(22, 'a101', 'mm', 12450, 15),
(23, 'a111', 'mm', 120, 55),
(24, 'a121', 'cm', 12345, 16),
(25, 'a131', 'm', 1255, 14);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `melyik_hol`
--

CREATE TABLE `melyik_hol` (
  `a_id` int(11) NOT NULL,
  `r_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `melyik_hol`
--

INSERT INTO `melyik_hol` (`a_id`, `r_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 1),
(2, 2),
(3, 4);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `rendeles`
--

CREATE TABLE `rendeles` (
  `id` int(11) NOT NULL,
  `termek` varchar(10) NOT NULL,
  `db` tinyint(4) NOT NULL,
  `teljesitve` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `rendeles`
--

INSERT INTO `rendeles` (`id`, `termek`, `db`, `teljesitve`) VALUES
(1, 't1', 55, 0),
(2, 't2', 25, 0),
(3, 't2', 10, 1),
(4, 't2', 10, 0),
(5, 't2', 10, 1),
(6, 't2', 10, 0);

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `anyag`
--
ALTER TABLE `anyag`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nev` (`nev`);

--
-- A tábla indexei `melyik_hol`
--
ALTER TABLE `melyik_hol`
  ADD PRIMARY KEY (`a_id`,`r_id`) USING BTREE;

--
-- A tábla indexei `rendeles`
--
ALTER TABLE `rendeles`
  ADD PRIMARY KEY (`id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `anyag`
--
ALTER TABLE `anyag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT a táblához `rendeles`
--
ALTER TABLE `rendeles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
