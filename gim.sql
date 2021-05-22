-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-05-2021 a las 07:43:48
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
(10, 'Ninguna', 16),
(11, 'Ninguna', 17),
(12, 'Ninguna', 18),
(13, 'Ninguna', 19),
(14, 'Ninguna', 20),
(15, 'Ninguna', 21),
(16, 'Ninguna', 22),
(17, 'Commotio Cordis', 23),
(18, 'Hipertencion', 24);

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
(14, 'Secundaria', 21),
(15, 'Secundaria', 22),
(16, 'Secundaria', 20),
(17, 'Primaria', 19),
(18, 'Primaria', 18),
(19, 'Primaria', 17),
(20, 'Preparatoria', 16),
(21, 'Preparatoria', 23),
(22, 'Primaria', 24);

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
(16, '4', '4', 'M', '', 8),
(17, '4', '4', 'M', '', 7),
(18, '4', '4', 'F', '', 6),
(19, '5', '5', 'F', '', 5),
(20, '6', '6', 'F', '', 4),
(21, '150', '74', 'M', '', 3),
(22, '123', '123', 'F', '', 2),
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
(6, '', '0000-00-00', '', '', 22),
(7, '', '0000-00-00', '', '', 21),
(8, '', '0000-00-00', '', '', 20),
(9, '', '0000-00-00', '', '', 19),
(10, '', '0000-00-00', '', '', 18),
(11, 'Hombro dislocado', '2021-05-06', 'Fisioterapeuta', '5', 16),
(12, 'hombro dislocado', '2021-04-29', 'Fisioterapeuta', '1', 17),
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
-- Estructura de tabla para la tabla `solicitud`
--

CREATE TABLE `solicitud` (
  `IdSolicitud` int(11) NOT NULL,
  `Fecha` date DEFAULT NULL,
  `Hora` varchar(20) DEFAULT NULL,
  `Liga` varchar(300) DEFAULT NULL,
  `Unidad` int(10) DEFAULT NULL,
  `Estado` int(11) DEFAULT NULL,
  `IdUsuario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `solicitud`
--

INSERT INTO `solicitud` (`IdSolicitud`, `Fecha`, `Hora`, `Liga`, `Unidad`, `Estado`, `IdUsuario`) VALUES
(1, '2020-05-15', '15:20:00', 'liga meet', 3, 1, 9),
(3, NULL, NULL, NULL, 3, NULL, NULL),
(4, NULL, NULL, NULL, 3, NULL, NULL),
(5, NULL, NULL, NULL, 3, NULL, NULL),
(7, NULL, NULL, NULL, 4, NULL, NULL),
(8, NULL, NULL, NULL, 3, NULL, NULL),
(10, '2021-05-08', '22:08', 'www.google.com', 5, 2, 8),
(11, '2021-05-22', '05:09', 'www.google.com', 3, 1, 8),
(13, '2021-05-21', '11:02', 'www.google.com', 3, 1, 9),
(14, '2021-05-22', '22:38', 'https://meet.google.com/mgh-ejto-kdw', 4, 1, 9);

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
(1, 'Alejandro', '', 'asd', '2021-05-01', 'alexwolfs997@gmail.com', 2147483647, 'uuu', 4),
(2, 'Alejandro', 'Garcia', 'asd', '2021-05-01', 'alexwolfs997@gmail.com', 2147483647, '88', 5),
(3, 'Alejandro', 'Garcia', 'e', '2021-05-01', 'alexwolfs997@gmail.com', 2147483647, 'aa', 6),
(4, 'asd', 'asd', 'asd', '2021-05-01', 'asdtt@tutor.com', 1234567898, '5', 2),
(5, 'asd', 'asd', 'asd', '2021-04-30', 'asd@hot.com', 654654654, 'aa', 7),
(6, 'Pedro', 'lopez', 'Garcia', '1983-01-11', 'andres@alumno.com', 2147483647, 'papa', 8),
(7, 'Pedro', 'lopez', 'Garcia', '2021-04-30', 'andres@alumno.com', 2147483647, 'papa', 9),
(8, 'asd', 'wer', 'hgj', '2021-04-30', 'al@hotmail.com', 2147483647, 'madre', 10);

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
-- Indices de la tabla `solicitud`
--
ALTER TABLE `solicitud`
  ADD PRIMARY KEY (`IdSolicitud`),
  ADD KEY `IdUsuario` (`IdUsuario`);

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
  MODIFY `IdEnfermedad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `estudio`
--
ALTER TABLE `estudio`
  MODIFY `IdEstudio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

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
-- AUTO_INCREMENT de la tabla `solicitud`
--
ALTER TABLE `solicitud`
  MODIFY `IdSolicitud` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `tutor`
--
ALTER TABLE `tutor`
  MODIFY `IdTutor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

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
-- Filtros para la tabla `solicitud`
--
ALTER TABLE `solicitud`
  ADD CONSTRAINT `solicitud_ibfk_1` FOREIGN KEY (`IdUsuario`) REFERENCES `usuario` (`IdUsuario`);

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
