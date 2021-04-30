-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-04-2021 a las 04:33:35
-- Versión del servidor: 10.4.16-MariaDB
-- Versión de PHP: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `gim`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `enfermedades`
--

CREATE TABLE `enfermedades` (
  `IdEnfermedad` int(11) NOT NULL,
  `Descripcion` varchar(30) DEFAULT NULL,
  `IdHistorialM` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `enfermedades`
--

INSERT INTO `enfermedades` (`IdEnfermedad`, `Descripcion`, `IdHistorialM`) VALUES
(5, 'ninguna', NULL),
(6, '123', NULL),
(7, '123', NULL),
(8, '123', NULL),
(9, '456', NULL),
(10, '789', NULL),
(11, '123', NULL),
(12, '123123', NULL),
(13, '123123', NULL),
(14, 'Ninguna', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudio`
--

CREATE TABLE `estudio` (
  `IdEstudio` int(11) NOT NULL,
  `Descripcion` varchar(30) DEFAULT NULL,
  `IdHistorialM` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `estudio`
--

INSERT INTO `estudio` (`IdEstudio`, `Descripcion`, `IdHistorialM`) VALUES
(1, 'Primaria', NULL),
(2, '', NULL),
(3, 'Secundaria', NULL),
(4, 'Preparatoria', NULL),
(5, '123', NULL),
(6, '123', NULL),
(7, '123', NULL),
(8, '123', NULL),
(9, '1234', NULL),
(10, '1245', NULL),
(11, '159', NULL),
(12, '159', NULL),
(13, '123', NULL),
(14, '123', NULL),
(15, '159', NULL),
(16, '160', NULL),
(17, '789', NULL),
(18, '888', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historialme`
--

CREATE TABLE `historialme` (
  `IdHistorialM` int(11) NOT NULL,
  `Estatura` varchar(3) DEFAULT NULL,
  `Peso` varchar(3) DEFAULT NULL,
  `Sexo` varchar(5) DEFAULT NULL,
  `Cirugias` varchar(20) DEFAULT NULL,
  `IdUsuario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `historialme`
--

INSERT INTO `historialme` (`IdHistorialM`, `Estatura`, `Peso`, `Sexo`, `Cirugias`, `IdUsuario`) VALUES
(8, '121', '132', '', '', NULL),
(11, '123', '123', '', 'werr', NULL),
(12, '789', '456', '', '', NULL),
(13, '789', '456', '', '', NULL),
(14, '153', '153', '', 'qwer', NULL),
(15, '77', '77', 'F', 'hh', NULL),
(16, '4', '4', 'M', '', NULL),
(17, '4', '4', 'M', '', NULL),
(18, '4', '4', 'F', '', NULL),
(19, '5', '5', 'F', '', NULL),
(20, '6', '6', 'F', '', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lesion`
--

CREATE TABLE `lesion` (
  `IdLesion` int(11) NOT NULL,
  `Nombre` varchar(30) DEFAULT NULL,
  `FechaLesion` date DEFAULT NULL,
  `Rehabilitacion` varchar(30) DEFAULT NULL,
  `TiempoRehabili` varchar(10) DEFAULT NULL,
  `IdHistorialM` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `lesion`
--

INSERT INTO `lesion` (`IdLesion`, `Nombre`, `FechaLesion`, `Rehabilitacion`, `TiempoRehabili`, `IdHistorialM`) VALUES
(1, 'sdf', '2021-03-31', 'sdf', 'sdf', NULL),
(2, '', '0000-00-00', '', '', NULL),
(3, '', '0000-00-00', '', '', NULL),
(4, '', '0000-00-00', '', '', NULL),
(5, '', '0000-00-00', '', '', NULL),
(6, '', '0000-00-00', '', '', NULL),
(7, '', '0000-00-00', '', '', NULL),
(8, '', '0000-00-00', '', '', NULL),
(9, '', '0000-00-00', '', '', NULL),
(10, '', '0000-00-00', '', '', NULL),
(11, '', '0000-00-00', '', '', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `IdRol` int(11) NOT NULL,
  `descripcion` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`IdRol`, `descripcion`) VALUES
(1, 'Entrenador'),
(2, 'Estudiante');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tutor`
--

CREATE TABLE `tutor` (
  `IdTutor` int(11) NOT NULL,
  `Nombre` varchar(15) DEFAULT NULL,
  `ApelidoP` varchar(10) DEFAULT NULL,
  `ApellidoM` varchar(10) DEFAULT NULL,
  `FechaNacimiento` date DEFAULT NULL,
  `Email` varchar(31) DEFAULT NULL,
  `Telefono` int(10) DEFAULT NULL,
  `Parentesco` varchar(20) DEFAULT NULL,
  `IdUsuario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `IdUsuario` int(11) NOT NULL,
  `Nombre` varchar(15) DEFAULT NULL,
  `ApellidoP` varchar(10) DEFAULT NULL,
  `ApellidoM` varchar(10) DEFAULT NULL,
  `FechaNacimiento` date DEFAULT NULL,
  `Email` varchar(31) DEFAULT NULL,
  `Clave` char(60) DEFAULT NULL,
  `Ciudad` varchar(20) DEFAULT NULL,
  `Asociacion` varchar(30) DEFAULT NULL,
  `Direccion` varchar(50) DEFAULT NULL,
  `IdRol` int(11) DEFAULT NULL,
  `IdHistorialM` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`IdUsuario`, `Nombre`, `ApellidoP`, `ApellidoM`, `FechaNacimiento`, `Email`, `Clave`, `Ciudad`, `Asociacion`, `Direccion`, `IdRol`, `IdHistorialM`) VALUES
(2, 'alejandro', 'lopez', 'asd', '2021-04-01', 'ale@hotmail.com', '$2y$10$Gmg3YnmUPWsb7OzPR8woqOrmRjxSrVXqMf2wX93eNo11/t12auJwK', 'Tijuana', 'ITT', 'asdasdasd', 2, NULL),
(3, 'an', 'as', 'as', '2021-04-01', 'as@hotmail.com', '$2y$10$2oWst2wzcqwHImLyOLIWQOz8Et1P0P1/aVa.QRJpwcNJ/MB.t6x0u', 'Tijuana', '', 'asdasd', 2, NULL),
(4, 'Eduardo', 'as', 'as', '2021-04-08', 'ass@hotmail.com', '$2y$10$qvmookmSs7LCAUDbOcOGn.jF.MvsG7NB1IqSsoLUdfU/jNTEyj.wi', 'Tijuana', 'CAR', 'asdafdafdafafdadsfadfadfafd', 1, NULL),
(5, 'asd', 'asd', 'ads', '2021-04-03', 'ads@hotmail.com', '$2y$10$WZDySvgmT1cbbaXMWzrvA.MR4VRVPTWKX7rkz9bb2hpHWfptg3AXS', 'tj', '', 'asdadsa', 2, NULL),
(6, 'aa', 'aa', 'aa', '2021-04-03', 'aa@hotmail.com', '$2y$10$JydLTlYx827Il7aaXWQZh.aAYwTK5NZ9SG1SNJNBrJUa8ewpOtXja', 'asd', '', 'asdasdasdasd', 2, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `enfermedades`
--
ALTER TABLE `enfermedades`
  ADD PRIMARY KEY (`IdEnfermedad`),
  ADD KEY `IdHistorialM` (`IdHistorialM`);

--
-- Indices de la tabla `estudio`
--
ALTER TABLE `estudio`
  ADD PRIMARY KEY (`IdEstudio`),
  ADD KEY `IdHistorialM` (`IdHistorialM`);

--
-- Indices de la tabla `historialme`
--
ALTER TABLE `historialme`
  ADD PRIMARY KEY (`IdHistorialM`),
  ADD KEY `IdUsuario` (`IdUsuario`);

--
-- Indices de la tabla `lesion`
--
ALTER TABLE `lesion`
  ADD PRIMARY KEY (`IdLesion`),
  ADD KEY `IdHistorialM` (`IdHistorialM`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`IdRol`);

--
-- Indices de la tabla `tutor`
--
ALTER TABLE `tutor`
  ADD PRIMARY KEY (`IdTutor`),
  ADD KEY `IdUsuario` (`IdUsuario`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`IdUsuario`),
  ADD UNIQUE KEY `Email` (`Email`),
  ADD KEY `IdRol` (`IdRol`),
  ADD KEY `IdHistorialM` (`IdHistorialM`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `enfermedades`
--
ALTER TABLE `enfermedades`
  MODIFY `IdEnfermedad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `estudio`
--
ALTER TABLE `estudio`
  MODIFY `IdEstudio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `historialme`
--
ALTER TABLE `historialme`
  MODIFY `IdHistorialM` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `lesion`
--
ALTER TABLE `lesion`
  MODIFY `IdLesion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `tutor`
--
ALTER TABLE `tutor`
  MODIFY `IdTutor` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `IdUsuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `enfermedades`
--
ALTER TABLE `enfermedades`
  ADD CONSTRAINT `enfermedades_ibfk_1` FOREIGN KEY (`IdHistorialM`) REFERENCES `historialme` (`IdHistorialM`);

--
-- Filtros para la tabla `estudio`
--
ALTER TABLE `estudio`
  ADD CONSTRAINT `estudio_ibfk_1` FOREIGN KEY (`IdHistorialM`) REFERENCES `historialme` (`IdHistorialM`);

--
-- Filtros para la tabla `historialme`
--
ALTER TABLE `historialme`
  ADD CONSTRAINT `historialme_ibfk_3` FOREIGN KEY (`IdUsuario`) REFERENCES `usuario` (`IdUsuario`);

--
-- Filtros para la tabla `lesion`
--
ALTER TABLE `lesion`
  ADD CONSTRAINT `lesion_ibfk_1` FOREIGN KEY (`IdHistorialM`) REFERENCES `historialme` (`IdHistorialM`);

--
-- Filtros para la tabla `tutor`
--
ALTER TABLE `tutor`
  ADD CONSTRAINT `tutor_ibfk_1` FOREIGN KEY (`IdUsuario`) REFERENCES `usuario` (`IdUsuario`);

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`IdRol`) REFERENCES `rol` (`IdRol`),
  ADD CONSTRAINT `usuario_ibfk_2` FOREIGN KEY (`IdHistorialM`) REFERENCES `historialme` (`IdHistorialM`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
