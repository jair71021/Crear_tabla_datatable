-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-05-2021 a las 16:22:02
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `medico`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_persona`
--

CREATE TABLE `t_persona` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellidopaterno` varchar(50) NOT NULL,
  `apellidomaterno` varchar(50) NOT NULL,
  `telefono` varchar(12) NOT NULL,
  `email` varchar(50) NOT NULL,
  `fechadenacimiento` varchar(50) NOT NULL,
  `sexo` varchar(50) NOT NULL,
  `nacionalidad` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `t_persona`
--

INSERT INTO `t_persona` (`id`, `nombre`, `apellidopaterno`, `apellidomaterno`, `telefono`, `email`, `fechadenacimiento`, `sexo`, `nacionalidad`) VALUES
(1, 'Jair', 'suarez', 'romero', '5512345678', 'jair@gmail.com', '5/04/1978', 'masculino', 'italiano'),
(2, 'Benjamín ', 'Galindo', 'Flores', '5575251934', 'benjaminga.f@gmail.com', '25/09/1966', 'Masculino', 'Francesa'),
(3, 'Maria ', 'Padilla', 'Robles', '5678154623', 'padillamaria@gmail.com', '20/08/1986', 'Fenemino', 'Española'),
(4, 'Mara', 'Estrada', 'Gonzalez', '5514569822', 'maraeg@yahoo.com', '9/09/1994', 'Fenemino', 'Mexicana'),
(5, 'Juan Carlos', 'Baranda', 'Napoles', '5517656785', 'jcbn@gmail.com', '20/08/1966', 'Masculino', 'Cubano');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `t_persona`
--
ALTER TABLE `t_persona`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `t_persona`
--
ALTER TABLE `t_persona`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
