-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-12-2021 a las 01:32:23
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
-- Estructura de tabla para la tabla `admincttypemotortransport`
--

CREATE TABLE `admincttypemotortransport` (
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
-- Volcado de datos para la tabla `admincttypemotortransport`
--

INSERT INTO `admincttypemotortransport` (`id`, `code`, `description`, `active`, `created_at`, `updated_at`, `users_c_id`, `users_u_id`) VALUES
(1, 'VL', 'Vehículo ligero de carga (2 llantas en el eje delantero y 2 llantas en el eje trasero)', 1, '2021-12-14 21:16:38', NULL, 0, NULL),
(2, 'C2', 'Camión Unitario (2 llantas en el eje delantero y 4 llantas en el eje trasero)', 1, '2021-12-14 21:16:38', NULL, 0, NULL),
(3, 'C3', 'Camión Unitario (2 llantas en el eje delantero y 6 o 8 llantas en los dos ejes traseros)', 1, '2021-12-14 21:16:38', NULL, 0, NULL),
(4, 'C2R', 'Camión', 1, '2021-12-14 21:16:38', NULL, 0, NULL),
(5, 'C3R', 'Camión', 1, '2021-12-14 21:16:38', NULL, 0, NULL),
(6, 'C2R', 'Camión', 1, '2021-12-14 21:16:38', NULL, 0, NULL),
(7, 'C3R', 'Camión', 1, '2021-12-14 21:16:38', NULL, 0, NULL),
(8, 'T2S', 'Tractocamión Articulado (6 llantas en el tractocamión, 4 llantas en el semirremolque)', 1, '2021-12-14 21:16:38', NULL, 0, NULL),
(9, 'T2S', 'Tractocamión Articulado (6 llantas en el tractocamión, 8 llantas en el semirremolque)', 1, '2021-12-14 21:16:38', NULL, 0, NULL),
(10, 'T2S', 'Tractocamión Articulado (6 llantas en el tractocamión, 12 llantas en el semirremolque)', 1, '2021-12-14 21:16:38', NULL, 0, NULL),
(11, 'T3S', 'Tractocamión Articulado (10 llantas en el tractocamión, 4 llantas en el semirremolque)', 1, '2021-12-14 21:16:38', NULL, 0, NULL),
(12, 'T3S', 'Tractocamión Articulado (10 llantas en el tractocamión, 8 llantas en el semirremolque)', 1, '2021-12-14 21:16:38', NULL, 0, NULL),
(13, 'T3S', 'Tractocamión Articulado (10 llantas en el tractocamión, 12 llantas en el semirremolque)', 1, '2021-12-14 21:16:38', NULL, 0, NULL),
(14, 'T2S', 'Tractocamión Semirremolque', 1, '2021-12-14 21:16:38', NULL, 0, NULL),
(15, 'T2S', 'Tractocamión Semirremolque', 1, '2021-12-14 21:16:38', NULL, 0, NULL),
(16, 'T2S', 'Tractocamión Semirremolque', 1, '2021-12-14 21:16:38', NULL, 0, NULL),
(17, 'T3S', 'Tractocamión Semirremolque', 1, '2021-12-14 21:16:38', NULL, 0, NULL),
(18, 'T3S', 'Tractocamión Semirremolque', 1, '2021-12-14 21:16:38', NULL, 0, NULL),
(19, 'T3S', 'Tractocamión Semirremolque', 1, '2021-12-14 21:16:38', NULL, 0, NULL),
(20, 'T3S', 'Tractocamión Semirremolque', 1, '2021-12-14 21:16:38', NULL, 0, NULL),
(21, 'T3S', 'Tractocamión Semirremolque', 1, '2021-12-14 21:16:38', NULL, 0, NULL),
(22, 'T2S', 'Tractocamión Semirremolque', 1, '2021-12-14 21:16:38', NULL, 0, NULL),
(23, 'T3S', 'Tractocamión Semirremolque', 1, '2021-12-14 21:16:38', NULL, 0, NULL),
(24, 'T3S', 'Tractocamión Semirremolque', 1, '2021-12-14 21:16:38', NULL, 0, NULL),
(25, 'OTR', 'Especializado de carga Voluminosa y/o Gran Peso', 1, '2021-12-14 21:16:38', NULL, 0, NULL),
(26, 'OTR', 'Servicio de Grúas', 1, '2021-12-14 21:16:38', NULL, 0, NULL),
(27, 'GPL', 'Grúa de Pluma Tipo A', 1, '2021-12-14 21:16:38', NULL, 0, NULL),
(28, 'GPL', 'Grúa de Pluma Tipo B', 1, '2021-12-14 21:16:38', NULL, 0, NULL),
(29, 'GPL', 'Grúa de Pluma Tipo C', 1, '2021-12-14 21:16:38', NULL, 0, NULL),
(30, 'GPL', 'Grúa de Pluma Tipo D', 1, '2021-12-14 21:16:38', NULL, 0, NULL),
(31, 'GPL', 'Grúa de Plataforma Tipo A', 1, '2021-12-14 21:16:38', NULL, 0, NULL),
(32, 'GPL', 'Grúa de Plataforma Tipo B', 1, '2021-12-14 21:16:38', NULL, 0, NULL),
(33, 'GPL', 'Grúa de Plataforma Tipo C', 1, '2021-12-14 21:16:38', NULL, 0, NULL),
(34, 'GPL', 'Grúa de Plataforma Tipo D', 1, '2021-12-14 21:16:38', NULL, 0, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `admincttypemotortransport`
--
ALTER TABLE `admincttypemotortransport`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ID_adminCtTypeMotorTransport_IND` (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `admincttypemotortransport`
--
ALTER TABLE `admincttypemotortransport`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
