-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-12-2021 a las 01:32:36
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
-- Estructura de tabla para la tabla `admincttypepacking`
--

CREATE TABLE `admincttypepacking` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(6) NOT NULL,
  `description` varchar(250) NOT NULL,
  `active` tinyint(1) UNSIGNED DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `users_c_id` int(10) UNSIGNED NOT NULL,
  `users_u_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `admincttypepacking`
--

INSERT INTO `admincttypepacking` (`id`, `code`, `description`, `active`, `created_at`, `updated_at`, `users_c_id`, `users_u_id`) VALUES
(1, '1A1', 'Bidones (Tambores) de Acero 1 de tapa no desmontable', 1, '2021-12-14 22:21:02', NULL, 0, NULL),
(2, '1A2', 'Bidones (Tambores) de Acero 1 de tapa desmontable', 1, '2021-12-14 22:21:02', NULL, 0, NULL),
(3, '1B1', 'Bidones (Tambores) de Aluminio de tapa no desmontable', 1, '2021-12-14 22:21:02', NULL, 0, NULL),
(4, '1B2', 'Bidones (Tambores) de Aluminio de tapa desmontable', 1, '2021-12-14 22:21:02', NULL, 0, NULL),
(5, '1D', 'Bidones (Tambores) de Madera contrachapada', 1, '2021-12-14 22:21:02', NULL, 0, NULL),
(6, '1G', 'Bidones (Tambores) de Cartón', 1, '2021-12-14 22:21:02', NULL, 0, NULL),
(7, '1H1', 'Bidones (Tambores) de Plástico de tapa no desmontable', 1, '2021-12-14 22:21:02', NULL, 0, NULL),
(8, '1H2', 'Bidones (Tambores) de Plástico de tapa desmontable', 1, '2021-12-14 22:21:02', NULL, 0, NULL),
(9, '1N1', 'Bidones (Tambores) de Metal que no sea acero ni aluminio de tapa no desmontable', 1, '2021-12-14 22:21:02', NULL, 0, NULL),
(10, '1N2', 'Bidones (Tambores) de Metal que no sea acero ni aluminio de tapa desmontable', 1, '2021-12-14 22:21:02', NULL, 0, NULL),
(11, '3A1', 'Jerricanes (Porrones) de Acero de tapa no desmontable', 1, '2021-12-14 22:21:02', NULL, 0, NULL),
(12, '3A2', 'Jerricanes (Porrones) de Acero de tapa desmontable', 1, '2021-12-14 22:21:02', NULL, 0, NULL),
(13, '3B1', 'Jerricanes (Porrones) de Aluminio de tapa no desmontable', 1, '2021-12-14 22:21:02', NULL, 0, NULL),
(14, '3B2', 'Jerricanes (Porrones) de Aluminio de tapa desmontable', 1, '2021-12-14 22:21:02', NULL, 0, NULL),
(15, '3H1', 'Jerricanes (Porrones) de Plástico de tapa no desmontable', 1, '2021-12-14 22:21:02', NULL, 0, NULL),
(16, '3H2', 'Jerricanes (Porrones) de Plástico de tapa desmontable', 1, '2021-12-14 22:21:02', NULL, 0, NULL),
(17, '4A', 'Cajas de Acero', 1, '2021-12-14 22:21:02', NULL, 0, NULL),
(18, '4B', 'Cajas de Aluminio', 1, '2021-12-14 22:21:02', NULL, 0, NULL),
(19, '4C1', 'Cajas de Madera natural ordinaria', 1, '2021-12-14 22:21:02', NULL, 0, NULL),
(20, '4C2', 'Cajas de Madera natural de paredes a prueba de polvos (estancas a los pulverulentos)', 1, '2021-12-14 22:21:02', NULL, 0, NULL),
(21, '4D', 'Cajas de Madera contrachapada', 1, '2021-12-14 22:21:02', NULL, 0, NULL),
(22, '4F', 'Cajas de Madera reconstituida', 1, '2021-12-14 22:21:02', NULL, 0, NULL),
(23, '4G', 'Cajas de Cartón', 1, '2021-12-14 22:21:02', NULL, 0, NULL),
(24, '4H1', 'Cajas de Plástico Expandido', 1, '2021-12-14 22:21:02', NULL, 0, NULL),
(25, '4H2', 'Cajas de Plástico Rígido', 1, '2021-12-14 22:21:02', NULL, 0, NULL),
(26, '5H1', 'Sacos (Bolsas) de Tejido de plástico sin forro ni revestimientos interiores', 1, '2021-12-14 22:21:02', NULL, 0, NULL),
(27, '5H2', 'Sacos (Bolsas) de Tejido de plástico a prueba de polvos (estancos a los pulverulentos)', 1, '2021-12-14 22:21:02', NULL, 0, NULL),
(28, '5H3', 'Sacos (Bolsas) de Tejido de plástico resistente al agua', 1, '2021-12-14 22:21:02', NULL, 0, NULL),
(29, '5H4', 'Sacos (Bolsas) de Película de plástico', 1, '2021-12-14 22:21:02', NULL, 0, NULL),
(30, '5L1', 'Sacos (Bolsas) de Tela sin forro ni revestimientos interiores', 1, '2021-12-14 22:21:02', NULL, 0, NULL),
(31, '5L2', 'Sacos (Bolsas) de Tela a prueba de polvos (estancos a los pulverulentos)', 1, '2021-12-14 22:21:02', NULL, 0, NULL),
(32, '5L3', 'Sacos (Bolsas) de Tela resistentes al agua', 1, '2021-12-14 22:21:02', NULL, 0, NULL),
(33, '5M1', 'Sacos (Bolsas) de Papel de varias hojas', 1, '2021-12-14 22:21:02', NULL, 0, NULL),
(34, '5M2', 'Sacos (Bolsas) de Papel de varias hojas, resistentes al agua', 1, '2021-12-14 22:21:02', NULL, 0, NULL),
(35, '6HA1', 'Envases y embalajes compuestos de Recipiente de plástico, con bidón (tambor) de acero', 1, '2021-12-14 22:21:02', NULL, 0, NULL),
(36, '6HA2', 'Envases y embalajes compuestos de Recipiente de plástico, con una jaula o caja de acero', 1, '2021-12-14 22:21:02', NULL, 0, NULL),
(37, '6HB1', 'Envases y embalajes compuestos de Recipiente de plástico, con un bidón (tambor) exterior de aluminio', 1, '2021-12-14 22:21:02', NULL, 0, NULL),
(38, '6HB2', 'Envases y embalajes compuestos de Recipiente de plástico, con una jaula o caja de aluminio', 1, '2021-12-14 22:21:02', NULL, 0, NULL),
(39, '6HC', 'Envases y embalajes compuestos de Recipiente de plástico, con una caja de madera', 1, '2021-12-14 22:21:02', NULL, 0, NULL),
(40, '6HD1', 'Envases y embalajes compuestos de Recipiente de plástico, con un bidón (tambor) de madera contrachapada', 1, '2021-12-14 22:21:02', NULL, 0, NULL),
(41, '6HD2', 'Envases y embalajes compuestos de Recipiente de plástico, con una caja de madera contrachapada', 1, '2021-12-14 22:21:02', NULL, 0, NULL),
(42, '6HG1', 'Envases y embalajes compuestos de Recipiente de plástico, con un bidón (tambor) de cartón', 1, '2021-12-14 22:21:02', NULL, 0, NULL),
(43, '6HG2', 'Envases y embalajes compuestos de Recipiente de plástico, con una caja de cartón', 1, '2021-12-14 22:21:02', NULL, 0, NULL),
(44, '6HH1', 'Envases y embalajes compuestos de Recipiente de plástico, con un bidón (tambor) de plástico', 1, '2021-12-14 22:21:02', NULL, 0, NULL),
(45, '6HH2', 'Envases y embalajes compuestos de Recipiente de plástico, con caja de plástico rígido', 1, '2021-12-14 22:21:02', NULL, 0, NULL),
(46, '6PA1', 'Envases y embalajes compuestos de Recipiente de vidrio, porcelana o de gres, con un bidón (tambor) de acero', 1, '2021-12-14 22:21:02', NULL, 0, NULL),
(47, '6PA2', 'Envases y embalajes compuestos de Recipiente de vidrio, porcelana o de gres, con una jaula o una caja de acero', 1, '2021-12-14 22:21:02', NULL, 0, NULL),
(48, '6PB1', 'Envases y embalajes compuestos de Recipiente de vidrio, porcelana o de gres, con un bidón (tambor) exterior de aluminio', 1, '2021-12-14 22:21:02', NULL, 0, NULL),
(49, '6PB2', 'Envases y embalajes compuestos de Recipiente de vidrio, porcelana o de gres, con una jaula o una caja de aluminio', 1, '2021-12-14 22:21:02', NULL, 0, NULL),
(50, '6PC', 'Envases y embalajes compuestos de Recipiente de vidrio, porcelana o de gres, con una caja de madera', 1, '2021-12-14 22:21:02', NULL, 0, NULL),
(51, '6PD 1', 'Envases y embalajes compuestos de Recipiente de vidrio, porcelana o de gres, con bidón (tambor) de madera contrachapada', 1, '2021-12-14 22:21:02', NULL, 0, NULL),
(52, '6PD2', 'Envases y embalajes compuestos de Recipiente de vidrio, porcelana o de gres, con canasta de mimbre', 1, '2021-12-14 22:21:02', NULL, 0, NULL),
(53, '6PG1', 'Envases y embalajes compuestos de Recipiente de vidrio, porcelana o de gres, con un bidón (tambor) de cartón', 1, '2021-12-14 22:21:02', NULL, 0, NULL),
(54, '6PG2', 'Envases y embalajes compuestos de Recipiente de vidrio, porcelana o de gres, con una caja de cartón', 1, '2021-12-14 22:21:02', NULL, 0, NULL),
(55, '6PH1', 'Envases y embalajes compuestos de Recipiente de vidrio, porcelana o de gres, con un envase y embalaje de plástico expandido', 1, '2021-12-14 22:21:02', NULL, 0, NULL),
(56, '6PH2', 'Envases y embalajes compuestos de Recipiente de vidrio, porcelana o de gres, con un envase y embalaje de plástico rígido', 1, '2021-12-14 22:21:02', NULL, 0, NULL),
(57, '7H1', 'Bultos de Plástico', 1, '2021-12-14 22:21:02', NULL, 0, NULL),
(58, '7L1', 'Bultos de Tela', 1, '2021-12-14 22:21:02', NULL, 0, NULL),
(59, 'Z01', 'No aplica', 1, '2021-12-14 22:21:02', NULL, 0, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `admincttypepacking`
--
ALTER TABLE `admincttypepacking`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ID_adminCtTypePacking_IND` (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `admincttypepacking`
--
ALTER TABLE `admincttypepacking`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
