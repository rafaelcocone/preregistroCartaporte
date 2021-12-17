-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-12-2021 a las 01:32:57
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
-- Estructura de tabla para la tabla `admincttyperelationship`
--

CREATE TABLE `admincttyperelationship` (
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
-- Volcado de datos para la tabla `admincttyperelationship`
--

INSERT INTO `admincttyperelationship` (`id`, `code`, `description`, `active`, `created_at`, `updated_at`, `users_c_id`, `users_u_id`) VALUES
(1, '01', 'Nota de crédito de los documentos relacionados', 1, '2021-12-14 20:03:56', NULL, 0, NULL),
(2, '02', 'Nota de débito de los documentos relacionados', 1, '2021-12-14 20:03:56', NULL, 0, NULL),
(3, '03', 'Devolución de mercancía sobre facturas o traslados previos', 1, '2021-12-14 20:03:56', NULL, 0, NULL),
(4, '04', 'Sustitución de los CFDI previos', 1, '2021-12-14 20:03:56', NULL, 0, NULL),
(5, '05', 'Traslados de mercancias facturados previamente', 1, '2021-12-14 20:03:56', NULL, 0, NULL),
(6, '06', 'Factura generada por los traslados previos', 1, '2021-12-14 20:03:56', NULL, 0, NULL),
(7, '07', 'CFDI por aplicación de anticipo', 1, '2021-12-14 20:03:56', NULL, 0, NULL),
(8, '08', 'Factura generada por pagos en parcialidades', 1, '2021-12-14 20:03:56', NULL, 0, NULL),
(9, '09', 'Factura generada por pagos diferidos', 1, '2021-12-14 20:03:56', NULL, 0, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `admincttyperelationship`
--
ALTER TABLE `admincttyperelationship`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ID_adminCtTypeRelationship_IND` (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `admincttyperelationship`
--
ALTER TABLE `admincttyperelationship`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
