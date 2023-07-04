-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-07-2023 a las 17:31:43
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `reservadb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reservas`
--

CREATE TABLE `reservas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `apellido` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `telefono` int(11) NOT NULL,
  `fecha_salida` datetime NOT NULL,
  `fecha_llegada` datetime NOT NULL,
  `estado` tinyint(1) DEFAULT 1,
  `createdAt` datetime NOT NULL DEFAULT current_timestamp(),
  `updatedAt` datetime NOT NULL DEFAULT current_timestamp(),
  `deletedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `reservas`
--

INSERT INTO `reservas` (`id`, `nombre`, `apellido`, `email`, `telefono`, `fecha_salida`, `fecha_llegada`, `estado`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, 'franco', 'bustos', 'jaim@gmail.com', 3203224, '2023-07-19 00:00:00', '2023-07-27 00:00:00', 0, '2023-07-04 15:19:32', '2023-07-04 15:26:57', NULL),
(2, 'franco', 'bustos', 'jaim@gmail.com', 3203224, '2023-07-12 00:00:00', '2023-07-27 00:00:00', 0, '2023-07-04 15:27:18', '2023-07-04 15:28:41', NULL),
(3, 'franco', 'bustos', 'jaim@gmail.com', 3203224, '2023-07-12 00:00:00', '2023-07-27 00:00:00', 0, '2023-07-04 15:27:20', '2023-07-04 15:29:05', NULL),
(4, 'yo', 'bulto', 'jaim@gmail.com', 3203224, '2023-07-13 00:00:00', '2023-07-19 00:00:00', 0, '2023-07-04 15:28:35', '2023-07-04 15:29:15', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `reservas`
--
ALTER TABLE `reservas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `reservas`
--
ALTER TABLE `reservas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
