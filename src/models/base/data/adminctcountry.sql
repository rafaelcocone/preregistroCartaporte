-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-12-2021 a las 01:27:06
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
-- Estructura de tabla para la tabla `adminctcountry`
--

CREATE TABLE `adminctcountry` (
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
-- Volcado de datos para la tabla `adminctcountry`
--

INSERT INTO `adminctcountry` (`id`, `code`, `description`, `active`, `created_at`, `updated_at`, `users_c_id`, `users_u_id`) VALUES
(1, 'AFG', 'Afganistán', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(2, 'ALB', 'Albania', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(3, 'DEU', 'Alemania', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(4, 'AND', 'Andorra', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(5, 'AGO', 'Angola', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(6, 'AIA', 'Anguila', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(7, 'ATA', 'Antártida', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(8, 'ATG', 'Antigua y Barbuda', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(9, 'SAU', 'Arabia Saudita', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(10, 'DZA', 'Argelia', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(11, 'ARG', 'Argentina', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(12, 'ARM', 'Armenia', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(13, 'ABW', 'Aruba', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(14, 'AUS', 'Australia', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(15, 'AUT', 'Austria', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(16, 'AZE', 'Azerbaiyán', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(17, 'BHS', 'Bahamas (las)', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(18, 'BGD', 'Bangladés', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(19, 'BRB', 'Barbados', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(20, 'BHR', 'Baréin', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(21, 'BEL', 'Bélgica', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(22, 'BLZ', 'Belice', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(23, 'BEN', 'Benín', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(24, 'BMU', 'Bermudas', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(25, 'BLR', 'Bielorrusia', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(26, 'BOL', 'Bolivia, Estado Plurinacional de', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(27, 'BES', 'Bonaire, San Eustaquio y Saba', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(28, 'BIH', 'Bosnia y Herzegovina', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(29, 'BWA', 'Botsuana', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(30, 'BRA', 'Brasil', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(31, 'BRN', 'Brunéi Darussalam', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(32, 'BGR', 'Bulgaria', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(33, 'BFA', 'Burkina Faso', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(34, 'BDI', 'Burundi', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(35, 'BTN', 'Bután', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(36, 'CPV', 'Cabo Verde', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(37, 'KHM', 'Camboya', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(38, 'CMR', 'Camerún', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(39, 'CAN', 'Canadá', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(40, 'QAT', 'Catar', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(41, 'TCD', 'Chad', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(42, 'CHL', 'Chile', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(43, 'CHN', 'China', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(44, 'CYP', 'Chipre', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(45, 'COL', 'Colombia', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(46, 'COM', 'Comoras', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(47, 'COG', 'Congo', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(48, 'COD', 'Congo (la República Democrática del)', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(49, 'KOR', 'Corea (la República de)', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(50, 'PRK', 'Corea (la República Democrática Popular de)', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(51, 'CRI', 'Costa Rica', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(52, 'CIV', 'Côte dIvoire', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(53, 'HRV', 'Croacia', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(54, 'CUB', 'Cuba', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(55, 'CUW', 'Curaçao', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(56, 'DNK', 'Dinamarca', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(57, 'DMA', 'Dominica', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(58, 'ECU', 'Ecuador', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(59, 'EGY', 'Egipto', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(60, 'SLV', 'El Salvador', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(61, 'ARE', 'Emiratos Árabes Unidos (Los)', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(62, 'ERI', 'Eritrea', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(63, 'SVK', 'Eslovaquia', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(64, 'SVN', 'Eslovenia', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(65, 'ESP', 'España', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(66, 'USA', 'Estados Unidos de America', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(67, 'EST', 'Estonia', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(68, 'ETH', 'Etiopía', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(69, 'PHL', 'Filipinas (las)', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(70, 'FIN', 'Finlandia', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(71, 'FJI', 'Fiyi', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(72, 'FRA', 'Francia', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(73, 'GAB', 'Gabón', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(74, 'GMB', 'Gambia (La)', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(75, 'GEO', 'Georgia', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(76, 'SGS', 'Georgia del sur y las islas sandwich del sur', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(77, 'GHA', 'Ghana', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(78, 'GIB', 'Gibraltar', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(79, 'GRD', 'Granada', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(80, 'GRC', 'Grecia', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(81, 'GRL', 'Groenlandia', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(82, 'GLP', 'Guadalupe', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(83, 'GUM', 'Guam', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(84, 'GTM', 'Guatemala', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(85, 'GUF', 'Guayana Francesa', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(86, 'GGY', 'Guernsey', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(87, 'GIN', 'Guinea', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(88, 'GNQ', 'Guinea Ecuatorial', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(89, 'GNB', 'Guinea', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(90, 'GUY', 'Guyana', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(91, 'HTI', 'Haití', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(92, 'HND', 'Honduras', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(93, 'HKG', 'Hong Kong', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(94, 'HUN', 'Hungría', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(95, 'IND', 'India', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(96, 'IDN', 'Indonesia', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(97, 'IRQ', 'Irak', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(98, 'IRN', 'Irán (la República Islámica de)', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(99, 'IRL', 'Irlanda', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(100, 'BVT', 'Isla Bouvet', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(101, 'IMN', 'Isla de Man', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(102, 'CXR', 'Isla de Navidad', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(103, 'HMD', 'Isla Heard e Islas McDonald', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(104, 'NFK', 'Isla Norfolk', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(105, 'ISL', 'Islandia', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(106, 'ALA', 'Islas Åland', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(107, 'CYM', 'Islas Caimán (las)', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(108, 'CCK', 'Islas Cocos (Keeling)', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(109, 'COK', 'Islas Cook (las)', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(110, 'UMI', 'Islas de Ultramar Menores de Estados Unidos (las)', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(111, 'FRO', 'Islas Feroe (las)', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(112, 'FLK', 'Islas Malvinas [Falkland] (las)', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(113, 'MNP', 'Islas Marianas del Norte (las)', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(114, 'MHL', 'Islas Marshall (las)', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(115, 'SLB', 'Islas Salomón (las)', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(116, 'TCA', 'Islas Turcas y Caicos (las)', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(117, 'VGB', 'Islas Vírgenes (Británicas)', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(118, 'VIR', 'Islas Vírgenes (EE.UU.)', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(119, 'ISR', 'Israel', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(120, 'ITA', 'Italia', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(121, 'JAM', 'Jamaica', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(122, 'JPN', 'Japón', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(123, 'JEY', 'Jersey', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(124, 'JOR', 'Jordania', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(125, 'KAZ', 'Kazajistán', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(126, 'KEN', 'Kenia', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(127, 'KGZ', 'Kirguistán', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(128, 'KIR', 'Kiribati', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(129, 'KWT', 'Kuwait', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(130, 'LAO', 'Lao, (la) República Democrática Popular', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(131, 'LSO', 'Lesoto', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(132, 'LVA', 'Letonia', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(133, 'LBN', 'Líbano', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(134, 'LBR', 'Liberia', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(135, 'LBY', 'Libia', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(136, 'LIE', 'Liechtenstein', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(137, 'LTU', 'Lituania', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(138, 'LUX', 'Luxemburgo', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(139, 'MAC', 'Macao', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(140, 'MKD', 'Macedonia (la antigua República Yugoslava de)', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(141, 'MDG', 'Madagascar', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(142, 'MYS', 'Malasia', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(143, 'MWI', 'Malaui', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(144, 'MDV', 'Maldivas', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(145, 'MLI', 'Malí', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(146, 'MLT', 'Malta', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(147, 'MAR', 'Marruecos', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(148, 'MTQ', 'Martinica', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(149, 'MUS', 'Mauricio', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(150, 'MRT', 'Mauritania', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(151, 'MYT', 'Mayotte', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(152, 'MEX', 'México', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(153, 'FSM', 'Micronesia (los Estados Federados de)', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(154, 'MDA', 'Moldavia (la República de)', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(155, 'MCO', 'Mónaco', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(156, 'MNG', 'Mongolia', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(157, 'MNE', 'Montenegro', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(158, 'MSR', 'Montserrat', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(159, 'MOZ', 'Mozambique', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(160, 'MMR', 'Myanmar', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(161, 'NAM', 'Namibia', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(162, 'NRU', 'Nauru', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(163, 'NPL', 'Nepal', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(164, 'NIC', 'Nicaragua', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(165, 'NER', 'Níger (el)', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(166, 'NGA', 'Nigeria', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(167, 'NIU', 'Niue', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(168, 'NOR', 'Noruega', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(169, 'NCL', 'Nueva Caledonia', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(170, 'NZL', 'Nueva Zelanda', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(171, 'OMN', 'Omán', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(172, 'NLD', 'Países Bajos (los)', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(173, 'ZZZ', 'Países no declarados', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(174, 'PAK', 'Pakistán', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(175, 'PLW', 'Palaos', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(176, 'PSE', 'Palestina, Estado de', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(177, 'PAN', 'Panamá', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(178, 'PNG', 'Papúa Nueva Guinea', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(179, 'PRY', 'Paraguay', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(180, 'PER', 'Perú', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(181, 'PCN', 'Pitcairn', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(182, 'PYF', 'Polinesia Francesa', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(183, 'POL', 'Polonia', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(184, 'PRT', 'Portugal', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(185, 'PRI', 'Puerto Rico', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(186, 'GBR', 'Reino Unido (el)', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(187, 'CAF', 'República Centroafricana (la)', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(188, 'CZE', 'República Checa (la)', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(189, 'DOM', 'República Dominicana (la)', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(190, 'REU', 'Reunión', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(191, 'RWA', 'Ruanda', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(192, 'ROU', 'Rumania', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(193, 'RUS', 'Rusia, (la) Federación de', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(194, 'ESH', 'Sahara Occidental', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(195, 'WSM', 'Samoa', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(196, 'ASM', 'Samoa Americana', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(197, 'BLM', 'San Bartolomé', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(198, 'KNA', 'San Cristóbal y Nieves', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(199, 'SMR', 'San Marino', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(200, 'MAF', 'San Martín (parte francesa)', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(201, 'SPM', 'San Pedro y Miquelón', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(202, 'VCT', 'San Vicente y las Granadinas', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(203, 'SHN', 'Santa Helena, Ascensión y Tristán de Acuña', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(204, 'LCA', 'Santa Lucía', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(205, 'VAT', 'Santa Sede[Estado de la Ciudad del Vaticano] (la)', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(206, 'STP', 'Santo Tomé y Príncipe', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(207, 'SEN', 'Senegal', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(208, 'SRB', 'Serbia', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(209, 'SYC', 'Seychelles', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(210, 'SLE', 'Sierra leona', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(211, 'SGP', 'Singapur', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(212, 'SXM', 'Sint Maarten (parte holandesa)', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(213, 'SYR', 'Siria, (la) República Árabe', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(214, 'SOM', 'Somalia', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(215, 'LKA', 'Sri Lanka', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(216, 'SWZ', 'Suazilandia', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(217, 'ZAF', 'Sudáfrica', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(218, 'SDN', 'Sudán (el)', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(219, 'SSD', 'Sudán del Sur', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(220, 'SWE', 'Suecia', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(221, 'CHE', 'Suiza', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(222, 'SUR', 'Surinam', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(223, 'SJM', 'Svalbard y Jan Mayen', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(224, 'THA', 'Tailandia', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(225, 'TWN', 'Taiwán (Provincia de China)', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(226, 'TZA', 'Tanzania, República Unida de', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(227, 'TJK', 'Tayikistán', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(228, 'IOT', 'Territorio Británico del Océano Índico (el)', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(229, 'ATF', 'Territorios Australes Franceses (los)', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(230, 'TLS', 'Timor', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(231, 'TGO', 'Togo', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(232, 'TKL', 'Tokelau', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(233, 'TON', 'Tonga', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(234, 'TTO', 'Trinidad y Tobago', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(235, 'TUN', 'Túnez', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(236, 'TKM', 'Turkmenistán', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(237, 'TUR', 'Turquía', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(238, 'TUV', 'Tuvalu', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(239, 'UKR', 'Ucrania', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(240, 'UGA', 'Uganda', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(241, 'URY', 'Uruguay', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(242, 'UZB', 'Uzbekistán', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(243, 'VUT', 'Vanuatu', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(244, 'VEN', 'Venezuela, República Bolivariana de', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(245, 'VNM', 'Viet Nam', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(246, 'WLF', 'Wallis y Futuna', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(247, 'YEM', 'Yemen', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(248, 'DJI', 'Yibuti', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(249, 'ZMB', 'Zambia', 1, '2021-12-14 19:41:00', NULL, 0, NULL),
(250, 'ZWE', 'Zimbabue', 1, '2021-12-14 19:41:00', NULL, 0, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `adminctcountry`
--
ALTER TABLE `adminctcountry`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ID_adminCtCountry_IND` (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `adminctcountry`
--
ALTER TABLE `adminctcountry`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=251;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
