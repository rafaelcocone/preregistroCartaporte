-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-12-2021 a las 01:33:23
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
-- Estructura de tabla para la tabla `adminctuseofcdfi`
--

CREATE TABLE `adminctuseofcdfi` (
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
-- Volcado de datos para la tabla `adminctuseofcdfi`
--

INSERT INTO `adminctuseofcdfi` (`id`, `code`, `description`, `active`, `created_at`, `updated_at`, `users_c_id`, `users_u_id`) VALUES
(1, 'G01', 'Adquisición de mercancias', 1, '2021-12-14 19:35:35', NULL, 0, NULL),
(2, 'D06', 'Aportaciones voluntarias al SAR.', 1, '2021-12-14 19:35:35', NULL, 0, NULL),
(3, 'I07', 'Comunicaciones satelitales', 1, '2021-12-14 19:35:35', NULL, 0, NULL),
(4, 'I06', 'Comunicaciones telefónicas', 1, '2021-12-14 19:35:35', NULL, 0, NULL),
(5, 'I01', 'Construcciones', 1, '2021-12-14 19:35:35', NULL, 0, NULL),
(6, 'I05', 'Dados, troqueles, moldes, matrices y herramental', 1, '2021-12-14 19:35:35', NULL, 0, NULL),
(7, 'D09', 'Depósitos en cuentas para el ahorro, primas que tengan como base planes de pensiones.', 1, '2021-12-14 19:35:35', NULL, 0, NULL),
(8, 'G02', 'Devoluciones, descuentos o bonificaciones', 1, '2021-12-14 19:35:35', NULL, 0, NULL),
(9, 'D04', 'Donativos.', 1, '2021-12-14 19:35:35', NULL, 0, NULL),
(10, 'I04', 'Equipo de computo y accesorios', 1, '2021-12-14 19:35:35', NULL, 0, NULL),
(11, 'I03', 'Equipo de transporte', 1, '2021-12-14 19:35:35', NULL, 0, NULL),
(12, 'D08', 'Gastos de transportación escolar obligatoria.', 1, '2021-12-14 19:35:35', NULL, 0, NULL),
(13, 'G03', 'Gastos en general', 1, '2021-12-14 19:35:35', NULL, 0, NULL),
(14, 'D03', 'Gastos funerales.', 1, '2021-12-14 19:35:35', NULL, 0, NULL),
(15, 'D02', 'Gastos médicos por incapacidad o discapacidad', 1, '2021-12-14 19:35:35', NULL, 0, NULL),
(16, 'D01', 'Honorarios médicos, dentales y gastos hospitalarios.', 1, '2021-12-14 19:35:35', NULL, 0, NULL),
(17, 'D05', 'Intereses reales efectivamente pagados por créditos hipotecarios (casa habitación).', 1, '2021-12-14 19:35:35', NULL, 0, NULL),
(18, 'I02', 'Mobilario y equipo de oficina por inversiones', 1, '2021-12-14 19:35:35', NULL, 0, NULL),
(19, 'I08', 'Otra maquinaria y equipo', 1, '2021-12-14 19:35:35', NULL, 0, NULL),
(20, 'D10', 'Pagos por servicios educativos (colegiaturas)', 1, '2021-12-14 19:35:35', NULL, 0, NULL),
(21, 'P01', 'Por definir', 1, '2021-12-14 19:35:35', NULL, 0, NULL),
(22, 'D07', 'Primas por seguros de gastos médicos.', 1, '2021-12-14 19:35:35', NULL, 0, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `adminctuseofcdfi`
--
ALTER TABLE `adminctuseofcdfi`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ID_adminCtUseOfCDFI_IND` (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `adminctuseofcdfi`
--
ALTER TABLE `adminctuseofcdfi`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
