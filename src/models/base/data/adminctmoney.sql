-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-12-2021 a las 01:29:37
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `pruebas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `adminctmoney`
--

CREATE TABLE `adminctmoney` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(3) NOT NULL,
  `description` varchar(250) NOT NULL,
  `active` tinyint(1) UNSIGNED DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `users_c_id` int(10) UNSIGNED NOT NULL,
  `users_u_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `adminctmoney`
--

INSERT INTO `adminctmoney` (`id`, `code`, `description`, `active`, `created_at`, `updated_at`, `users_c_id`, `users_u_id`) VALUES
(1, 'USD', 'Dolar americano', 1, '2021-12-14 19:38:51', NULL, 0, NULL),
(2, 'CAD', 'Dolar Canadiense', 1, '2021-12-14 19:38:51', NULL, 0, NULL),
(3, 'EUR', 'Euro', 1, '2021-12-14 19:38:51', NULL, 0, NULL),
(4, 'GBP', 'Libra Esterlina', 1, '2021-12-14 19:38:51', NULL, 0, NULL),
(5, 'MXN', 'Peso Mexicano', 1, '2021-12-14 19:38:51', NULL, 0, NULL),
(6, 'JPY', 'Yen', 1, '2021-12-14 19:38:51', NULL, 0, NULL),
(7, 'CNY', 'Yuan Renminbi', 1, '2021-12-14 19:38:51', NULL, 0, NULL),
(8, 'USD', 'Dolar americano', 1, '2021-12-14 19:39:02', NULL, 0, NULL),
(9, 'CAD', 'Dolar Canadiense', 1, '2021-12-14 19:39:02', NULL, 0, NULL),
(10, 'EUR', 'Euro', 1, '2021-12-14 19:39:02', NULL, 0, NULL),
(11, 'GBP', 'Libra Esterlina', 1, '2021-12-14 19:39:02', NULL, 0, NULL),
(12, 'MXN', 'Peso Mexicano', 1, '2021-12-14 19:39:02', NULL, 0, NULL),
(13, 'JPY', 'Yen', 1, '2021-12-14 19:39:02', NULL, 0, NULL),
(14, 'CNY', 'Yuan Renminbi', 1, '2021-12-14 19:39:02', NULL, 0, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `adminctmoney`
--
ALTER TABLE `adminctmoney`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ID_adminCtMoney_IND` (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `adminctmoney`
--
ALTER TABLE `adminctmoney`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
