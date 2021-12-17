-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-12-2021 a las 01:33:43
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
-- Estructura de tabla para la tabla `adminctwaytopay`
--

CREATE TABLE `adminctwaytopay` (
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
-- Volcado de datos para la tabla `adminctwaytopay`
--

INSERT INTO `adminctwaytopay` (`id`, `code`, `description`, `active`, `created_at`, `updated_at`, `users_c_id`, `users_u_id`) VALUES
(1, '27', 'A satisfacción del acreedor', 1, '2021-12-14 19:14:58', NULL, 0, NULL),
(2, '30', 'Aplicación de anticipos', 1, '2021-12-14 19:14:58', NULL, 0, NULL),
(3, '02', 'Cheque nominativo', 1, '2021-12-14 19:14:58', NULL, 0, NULL),
(4, '17', 'Compensación', 1, '2021-12-14 19:14:58', NULL, 0, NULL),
(5, '15', 'Condonación', 1, '2021-12-14 19:14:58', NULL, 0, NULL),
(6, '24', 'Confusión', 1, '2021-12-14 19:14:58', NULL, 0, NULL),
(7, '12', 'Dación en pago', 1, '2021-12-14 19:14:58', NULL, 0, NULL),
(8, '06', 'Dinero electrónico', 1, '2021-12-14 19:14:58', NULL, 0, NULL),
(9, '01', 'Efectivo', 1, '2021-12-14 19:14:58', NULL, 0, NULL),
(10, '31', 'Intermediario pagos', 1, '2021-12-14 19:14:58', NULL, 0, NULL),
(11, '05', 'Monedero electrónico', 1, '2021-12-14 19:14:58', NULL, 0, NULL),
(12, '23', 'Novación', 1, '2021-12-14 19:14:58', NULL, 0, NULL),
(13, '14', 'Pago por consignación', 1, '2021-12-14 19:14:58', NULL, 0, NULL),
(14, '13', 'Pago por subrogación', 1, '2021-12-14 19:14:58', NULL, 0, NULL),
(15, '99', 'Por definir', 1, '2021-12-14 19:14:58', NULL, 0, NULL),
(16, '26', 'Prescripción o caducidad', 1, '2021-12-14 19:14:58', NULL, 0, NULL),
(17, '25', 'Remisión de deuda', 1, '2021-12-14 19:14:58', NULL, 0, NULL),
(18, '04', 'Tarjeta de crédito', 1, '2021-12-14 19:14:58', NULL, 0, NULL),
(19, '28', 'Tarjeta de débito', 1, '2021-12-14 19:14:58', NULL, 0, NULL),
(20, '29', 'Tarjeta de servicios', 1, '2021-12-14 19:14:58', NULL, 0, NULL),
(21, '03', 'Transferencia electrónica de fondos', 1, '2021-12-14 19:14:58', NULL, 0, NULL),
(22, '08', 'Vales de despensa', 1, '2021-12-14 19:14:58', NULL, 0, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `adminctwaytopay`
--
ALTER TABLE `adminctwaytopay`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ID_adminCtWayToPay_IND` (`id`),
  ADD UNIQUE KEY `WayToPay_code_u` (`code`),
  ADD UNIQUE KEY `WayToPay_description_u` (`description`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `adminctwaytopay`
--
ALTER TABLE `adminctwaytopay`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
