-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-05-2021 a las 05:48:55
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
(14, 'Ninguna', NULL),
(15, 'Ninguna', NULL),
(16, 'Ninguna', NULL),
(17, 'Commotio Cordis', 23);

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
(18, '888', NULL),
(19, 'primaria', NULL),
(20, 'Preparatoria', NULL),
(21, 'Preparatoria', 23);

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
(8, '121', '132', '', '', 0),
(11, '123', '123', '', 'werr', 0),
(12, '789', '456', '', '', 0),
(13, '789', '456', '', '', 0),
(14, '153', '153', '', 'qwer', 0),
(15, '77', '77', 'F', 'hh', 0),
(16, '4', '4', 'M', '', 0),
(17, '4', '4', 'M', '', 0),
(18, '4', '4', 'F', '', 0),
(19, '5', '5', 'F', '', 0),
(20, '6', '6', 'F', '', 0),
(21, '150', '74', 'M', '', 0),
(22, '123', '123', 'F', '', NULL),
(23, '180', '80', 'M', '', 9),
(24, '180', '75', 'M', 'Hernia', 10);

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
(11, '', '0000-00-00', '', '', NULL),
(12, 'hombro dislocado', '2021-04-29', 'Fisioterapeuta', '1', NULL),
(13, 'Rodilla', '2021-05-01', 'Fisioterapeuta', '1', 23),
(14, 'Rodilla', '2021-05-06', 'Fisioterapeuta', '1dia', 24);

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

--
-- Volcado de datos para la tabla `tutor`
--

INSERT INTO `tutor` (`IdTutor`, `Nombre`, `ApelidoP`, `ApellidoM`, `FechaNacimiento`, `Email`, `Telefono`, `Parentesco`, `IdUsuario`) VALUES
(1, 'Alejandro', '', 'asd', '2021-05-01', 'alexwolfs997@gmail.com', 2147483647, 'uuu', NULL),
(2, 'Alejandro', 'Garcia', 'asd', '2021-05-01', 'alexwolfs997@gmail.com', 2147483647, '88', NULL),
(3, 'Alejandro', 'Garcia', 'e', '2021-05-01', 'alexwolfs997@gmail.com', 2147483647, 'aa', NULL),
(4, 'asd', 'asd', 'asd', '2021-05-01', 'asdtt@tutor.com', 1234567898, '5', NULL),
(5, 'asd', 'asd', 'asd', '2021-04-30', 'asd@hot.com', 654654654, 'aa', NULL),
(6, 'Pedro', 'lopez', 'Garcia', '1983-01-11', 'andres@alumno.com', 2147483647, 'papa', NULL),
(7, 'Pedro', 'lopez', 'Garcia', '2021-04-30', 'andres@alumno.com', 2147483647, 'papa', 9);

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
  `IdRol` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`IdUsuario`, `Nombre`, `ApellidoP`, `ApellidoM`, `FechaNacimiento`, `Email`, `Clave`, `Ciudad`, `Asociacion`, `Direccion`, `IdRol`) VALUES
(2, 'alejandro', 'lopez', 'asd', '2021-04-01', 'ale@hotmail.com', '$2y$10$Gmg3YnmUPWsb7OzPR8woqOrmRjxSrVXqMf2wX93eNo11/t12auJwK', 'Tijuana', 'ITT', 'asdasdasd', 2),
(3, 'an', 'as', 'as', '2021-04-01', 'as@hotmail.com', '$2y$10$2oWst2wzcqwHImLyOLIWQOz8Et1P0P1/aVa.QRJpwcNJ/MB.t6x0u', 'Tijuana', '', 'asdasd', 2),
(4, 'Eduardo', 'as', 'as', '2021-04-08', 'ass@hotmail.com', '$2y$10$qvmookmSs7LCAUDbOcOGn.jF.MvsG7NB1IqSsoLUdfU/jNTEyj.wi', 'Tijuana', 'CAR', 'asdafdafdafafdadsfadfadfafd', 1),
(5, 'asd', 'asd', 'ads', '2021-04-03', 'ads@hotmail.com', '$2y$10$WZDySvgmT1cbbaXMWzrvA.MR4VRVPTWKX7rkz9bb2hpHWfptg3AXS', 'tj', '', 'asdadsa', 2),
(6, 'aa', 'aa', 'aa', '2021-04-03', 'aa@hotmail.com', '$2y$10$JydLTlYx827Il7aaXWQZh.aAYwTK5NZ9SG1SNJNBrJUa8ewpOtXja', 'asd', '', 'asdasdasdasd', 2),
(7, 'alex', 'ss', 'ss', '2021-04-01', 'am@maestro.com', '$2y$10$xdRIiGtFpFrwvCu6L6vctuDWak/0jpDWluAinh3rjtYJpPcZhM0mK', 'tj', 'car', 'kkkkkk', 1),
(8, 'alexalum', 'alum', 'alum', '2021-05-01', 'alum@alumno.com', '$2y$10$ZOso2.e4aK2GcRYRJv11ie6Qj65o5JQL6xMO1Ti.nCV21WXHpXj3K', 'tj', '', 'alum', 2),
(9, 'Andres', 'Perez', 'Cordero', '2021-04-30', 'andres@alumno.com', '$2y$10$eMD6pBReEX.BRct/N8jwiOPw.gla4ay.mwJZ4H5RWQ.Ic4Chl.cfS', 'Rito', '', 'Juand', 2),
(10, 'Jesus', 'Gonzalez', 'Gonzalez', '2007-01-09', 'Doctor@hotmail.com', '$2y$10$zvMW39/7d6W7OtbrsyyynuB27mp.TflMYqyK4HgFw4x6SQhCXbJqW', 'TJ', 'ITT', 'asdjkhsdas', 2);

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
  ADD KEY `IdRol` (`IdRol`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `enfermedades`
--
ALTER TABLE `enfermedades`
  MODIFY `IdEnfermedad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `estudio`
--
ALTER TABLE `estudio`
  MODIFY `IdEstudio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `historialme`
--
ALTER TABLE `historialme`
  MODIFY `IdHistorialM` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `lesion`
--
ALTER TABLE `lesion`
  MODIFY `IdLesion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `tutor`
--
ALTER TABLE `tutor`
  MODIFY `IdTutor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `IdUsuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

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
  ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`IdRol`) REFERENCES `rol` (`IdRol`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
