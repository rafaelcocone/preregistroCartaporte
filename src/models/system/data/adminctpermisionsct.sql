-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-12-2021 a las 01:30:08
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
-- Estructura de tabla para la tabla `adminctpermisionsct`
--

CREATE TABLE `adminctpermisionsct` (
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
-- Volcado de datos para la tabla `adminctpermisionsct`
--

INSERT INTO `adminctpermisionsct` (`id`, `code`, `description`, `active`, `created_at`, `updated_at`, `users_c_id`, `users_u_id`) VALUES
(1, 'TPAF01', 'Autotransporte Federal de carga general.', 1, '2021-12-14 21:08:33', NULL, 0, NULL),
(2, 'TPAF02', 'Transporte privado de carga.', 1, '2021-12-14 21:08:33', NULL, 0, NULL),
(3, 'TPAF03', 'Autotransporte Federal de Carga Especializada de materiales y residuos peligrosos.', 1, '2021-12-14 21:08:33', NULL, 0, NULL),
(4, 'TPAF04', 'Transporte de automóviles sin rodar en vehículo tipo góndola.', 1, '2021-12-14 21:08:33', NULL, 0, NULL),
(5, 'TPAF05', 'Transporte de carga de gran peso y/o volumen de hasta 90 toneladas.', 1, '2021-12-14 21:08:33', NULL, 0, NULL),
(6, 'TPAF06', 'Transporte de carga especializada de gran peso y/o volumen de más 90 toneladas.', 1, '2021-12-14 21:08:33', NULL, 0, NULL),
(7, 'TPAF07', 'Transporte Privado de materiales y residuos peligrosos.', 1, '2021-12-14 21:08:33', NULL, 0, NULL),
(8, 'TPAF08', 'Autotransporte internacional de carga de largo recorrido.', 1, '2021-12-14 21:08:33', NULL, 0, NULL),
(9, 'TPAF09', 'Autotransporte internacional de carga especializada de materiales y residuos peligrosos de largo recorrido.', 1, '2021-12-14 21:08:33', NULL, 0, NULL),
(10, 'TPAF10', 'Autotransporte Federal de Carga General cuyo ámbito de aplicación comprende la franja fronteriza con Estados Unidos.', 1, '2021-12-14 21:08:33', NULL, 0, NULL),
(11, 'TPAF11', 'Autotransporte Federal de Carga Especializada cuyo ámbito de aplicación comprende la franja fronteriza con Estados Unidos.', 1, '2021-12-14 21:08:33', NULL, 0, NULL),
(12, 'TPAF12', 'Servicio auxiliar de arrastre en las vías generales de comunicación.', 1, '2021-12-14 21:08:33', NULL, 0, NULL),
(13, 'TPAF13', 'Servicio auxiliar de servicios de arrastre, arrastre y salvamento, y depósito de vehículos en las vías generales de comunicación.', 1, '2021-12-14 21:08:33', NULL, 0, NULL),
(14, 'TPAF14', 'Servicio de paquetería y mensajería en las vías generales de comunicación.', 1, '2021-12-14 21:08:33', NULL, 0, NULL),
(15, 'TPAF15', 'Transporte especial para el tránsito de grúas industriales con peso máximo de 90 toneladas.', 1, '2021-12-14 21:08:33', NULL, 0, NULL),
(16, 'TPAF16', 'Servicio federal para empresas arrendadoras servicio público federal.', 1, '2021-12-14 21:08:33', NULL, 0, NULL),
(17, 'TPAF17', 'Empresas trasladistas de vehículos nuevos.', 1, '2021-12-14 21:08:33', NULL, 0, NULL),
(18, 'TPAF18', 'Empresas fabricantes o distribuidoras de vehículos nuevos.', 1, '2021-12-14 21:08:33', NULL, 0, NULL),
(19, 'TPAF19', 'Autorización expresa para circular en los caminos y puentes de jurisdicción federal con configuraciones de tractocamión doblemente articulado.', 1, '2021-12-14 21:08:33', NULL, 0, NULL),
(20, 'TPAF20', 'Autotransporte Federal de Carga Especializada de fondos y valores.', 1, '2021-12-14 21:08:33', NULL, 0, NULL),
(21, 'TPTM01', 'Permiso temporal para navegación de cabotaje', 1, '2021-12-14 21:08:33', NULL, 0, NULL),
(22, 'TPTA01', 'Concesión y/o autorización para el servicio regular nacional y/o internacional para empresas mexicanas', 1, '2021-12-14 21:08:33', NULL, 0, NULL),
(23, 'TPTA02', 'Permiso para el servicio aéreo regular de empresas extranjeras', 1, '2021-12-14 21:08:33', NULL, 0, NULL),
(24, 'TPTA03', 'Permiso para el servicio nacional e internacional no regular de fletamento', 1, '2021-12-14 21:08:33', NULL, 0, NULL),
(25, 'TPTA04', 'Permiso para el servicio nacional e internacional no regular de taxi aéreo', 1, '2021-12-14 21:08:33', NULL, 0, NULL),
(26, 'TPXX00', 'Permiso no contemplado en el catálogo.', 1, '2021-12-14 21:08:33', NULL, 0, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `adminctpermisionsct`
--
ALTER TABLE `adminctpermisionsct`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ID_adminCtPermisionSCT_IND` (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `adminctpermisionsct`
--
ALTER TABLE `adminctpermisionsct`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
