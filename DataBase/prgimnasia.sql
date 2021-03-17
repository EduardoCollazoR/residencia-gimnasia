-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-02-2021 a las 03:32:32
-- Versión del servidor: 10.4.17-MariaDB
-- Versión de PHP: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `prgimnasia`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asociacion`
--

CREATE TABLE `asociacion` (
  `Id_Asociacion` int(11) NOT NULL,
  `Asociacion` varchar(20) DEFAULT NULL,
  `Tipo` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `asociacion`
--

INSERT INTO `asociacion` (`Id_Asociacion`, `Asociacion`, `Tipo`) VALUES
(1, 'N/A', 'N/A'),
(2, 'CAR', 'PUBLICA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciudad`
--

CREATE TABLE `ciudad` (
  `Id_Ciudad` varchar(3) NOT NULL,
  `Ciudad` varchar(20) DEFAULT NULL,
  `Id_Pais` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ciudad`
--

INSERT INTO `ciudad` (`Id_Ciudad`, `Ciudad`, `Id_Pais`) VALUES
('TJ', 'TIJUANA', 'MX');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `curso`
--

CREATE TABLE `curso` (
  `Clv_Curso` int(11) NOT NULL,
  `Curso` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entrenador`
--

CREATE TABLE `entrenador` (
  `Id_Entrenador` int(11) NOT NULL,
  `Clave` varchar(10) DEFAULT NULL,
  `Nombre` varchar(40) DEFAULT NULL,
  `ApellidoP` varchar(20) DEFAULT NULL,
  `ApellidoM` varchar(20) DEFAULT NULL,
  `FechaNacimiento` date DEFAULT NULL,
  `Id_Ciudad` varchar(3) DEFAULT NULL,
  `Id_Asociacion` int(11) DEFAULT NULL,
  `Telefono` varchar(15) DEFAULT NULL,
  `Correo` varchar(40) DEFAULT NULL,
  `Direccion` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `entrenador`
--

INSERT INTO `entrenador` (`Id_Entrenador`, `Clave`, `Nombre`, `ApellidoP`, `ApellidoM`, `FechaNacimiento`, `Id_Ciudad`, `Id_Asociacion`, `Telefono`, `Correo`, `Direccion`) VALUES
(1, 'Maryuri0', 'Maryuri', 'Chavez', 'Duarte', '1995-12-17', 'TJ', 1, '6642008983', 'maryuri@tectijuana.edu.mx', 'Rosarito #2268');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entrenador_usuarios`
--

CREATE TABLE `entrenador_usuarios` (
  `Id_Entrenador` int(11) NOT NULL,
  `ID_Usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `entrenador_usuarios`
--

INSERT INTO `entrenador_usuarios` (`Id_Entrenador`, `ID_Usuario`) VALUES
(1, 340),
(1, 341);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evaluacion`
--

CREATE TABLE `evaluacion` (
  `Id_Evaluacion` int(11) NOT NULL,
  `Evaluacion` varchar(50) DEFAULT NULL,
  `Ejercicio` varchar(50) DEFAULT NULL,
  `Id_Modulo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `evaluacion`
--

INSERT INTO `evaluacion` (`Id_Evaluacion`, `Evaluacion`, `Ejercicio`, `Id_Modulo`) VALUES
(1, 'prueba 1 : Historia', 'Test', 1),
(2, 'prueba 2 : Historia de la gimnasia en México', 'Test', 1),
(3, 'prueba 3 : Pioneros del movimiento de gimnasia', 'Test', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evaluacion_usuario`
--

CREATE TABLE `evaluacion_usuario` (
  `Id_Eval_Usuario` int(11) NOT NULL,
  `Id_Evaluacion` int(11) NOT NULL,
  `ID_Usuario` int(11) NOT NULL,
  `Id_Entrenador` int(11) NOT NULL,
  `Puntuacion` int(11) DEFAULT NULL,
  `comentario` varchar(100) DEFAULT NULL,
  `Estatus` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `evaluacion_usuario`
--

INSERT INTO `evaluacion_usuario` (`Id_Eval_Usuario`, `Id_Evaluacion`, `ID_Usuario`, `Id_Entrenador`, `Puntuacion`, `comentario`, `Estatus`) VALUES
(138, 3, 340, 1, 0, 'Test', b'0'),
(139, 3, 340, 1, 40, 'Test', b'0'),
(140, 3, 340, 1, 60, 'Test', b'0'),
(141, 3, 340, 1, 60, 'Test', b'0'),
(142, 3, 340, 1, 40, 'Test', b'0'),
(143, 3, 340, 1, 80, 'Test', b'1'),
(144, 3, 340, 1, 100, 'Test', b'1'),
(145, 3, 340, 1, 80, 'Test', b'1'),
(146, 3, 340, 1, 60, 'Test', b'0'),
(147, 3, 340, 1, 60, 'Test', b'0'),
(148, 3, 340, 1, 60, 'Test', b'0'),
(149, 3, 340, 1, 100, 'Test', b'1'),
(150, 3, 340, 1, 80, 'Test', b'1'),
(151, 3, 340, 1, 100, 'Test', b'1'),
(152, 3, 340, 1, 20, 'Test', b'0'),
(153, 3, 340, 1, 60, 'Test', b'0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fractura`
--

CREATE TABLE `fractura` (
  `Id_Fractura` int(11) NOT NULL,
  `Fractura` varchar(30) DEFAULT NULL,
  `Tipo` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `generador`
--

CREATE TABLE `generador` (
  `Recurso ID` varchar(20) NOT NULL,
  `Nombre Recurso` varchar(255) NOT NULL,
  `Gen ID` varchar(255) NOT NULL,
  `Capacidad Efectiva` int(11) NOT NULL,
  `Factor Conversión` float NOT NULL,
  `Es Menor` varchar(10) NOT NULL,
  `Tipo Despacho` varchar(255) NOT NULL,
  `Tipo Generación` varchar(255) NOT NULL,
  `Fecha Operación` datetime NOT NULL,
  `Estado Generador` varchar(20) NOT NULL,
  `Nombre Agente` varchar(255) NOT NULL,
  `Combustible Por Defecto` varchar(255) NOT NULL,
  `Clasificación` varchar(20) NOT NULL,
  `Departamento` varchar(255) NOT NULL,
  `Municipio` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `generador`
--

INSERT INTO `generador` (`Recurso ID`, `Nombre Recurso`, `Gen ID`, `Capacidad Efectiva`, `Factor Conversión`, `Es Menor`, `Tipo Despacho`, `Tipo Generación`, `Fecha Operación`, `Estado Generador`, `Nombre Agente`, `Combustible Por Defecto`, `Clasificación`, `Departamento`, `Municipio`) VALUES
('Cog0001', 'COGENERADOR BIOAISE 1', 'BIOE', 1000, 0, 'NO', 'NO DESPACHADO CENTRALMENTE', 'COGENERADOR', '1998-08-01 00:00:00', 'INACTIVO', 'BIOAISE S.A.', 'GAS', 'COGENERADOR', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modulo`
--

CREATE TABLE `modulo` (
  `Id_Modulo` int(11) NOT NULL,
  `Modulo` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `modulo`
--

INSERT INTO `modulo` (`Id_Modulo`, `Modulo`) VALUES
(1, 'Modulo 1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nivel`
--

CREATE TABLE `nivel` (
  `Clv_Nivel` int(11) NOT NULL,
  `Nivel` varchar(20) DEFAULT NULL,
  `Descripcion` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `nivel`
--

INSERT INTO `nivel` (`Clv_Nivel`, `Nivel`, `Descripcion`) VALUES
(1, '1', 'teoria');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pais`
--

CREATE TABLE `pais` (
  `Id_Pais` varchar(3) NOT NULL,
  `Pais` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `pais`
--

INSERT INTO `pais` (`Id_Pais`, `Pais`) VALUES
('MX', 'MEXICO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipousuario`
--

CREATE TABLE `tipousuario` (
  `id_TipoUsuario` int(11) NOT NULL,
  `Tipo` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tipousuario`
--

INSERT INTO `tipousuario` (`id_TipoUsuario`, `Tipo`) VALUES
(1, 'Gimnasta'),
(2, 'Entrenador');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tutor`
--

CREATE TABLE `tutor` (
  `ID_Tutor` int(11) NOT NULL,
  `Clave` varchar(8) NOT NULL,
  `Nombre` varchar(40) NOT NULL,
  `ApellidoP` varchar(20) NOT NULL,
  `ApellidoM` varchar(20) NOT NULL,
  `Estatus` bit(1) DEFAULT NULL,
  `FechaNacimiento` date NOT NULL,
  `Parentesco` varchar(20) NOT NULL,
  `Telefono` varchar(15) NOT NULL,
  `Correo` varchar(40) NOT NULL,
  `Direccion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tutor_curso`
--

CREATE TABLE `tutor_curso` (
  `Clv_Curso` int(11) NOT NULL,
  `ID_Tutor` int(11) NOT NULL,
  `Estatus` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tutor_usuario`
--

CREATE TABLE `tutor_usuario` (
  `ID_Usuario` int(11) NOT NULL,
  `ID_Tutor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `ID_Usuario` int(11) NOT NULL,
  `Clave` varchar(8) DEFAULT NULL,
  `Username` varchar(10) DEFAULT NULL,
  `Nombre` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`ID_Usuario`, `Clave`, `Username`, `Nombre`) VALUES
(1, '123', ' NOHEMI879', 'Nohemi Karen'),
(2, '12356', ' NOHEMI879', 'Karen Nohemi'),
(3, '3445', ' NOHEMI879', 'Karen Nohemi');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `ID_Usuario` int(11) NOT NULL,
  `Clave` varchar(10) DEFAULT NULL,
  `Username` varchar(10) DEFAULT NULL,
  `Nombre` varchar(20) DEFAULT NULL,
  `ApellidoP` varchar(20) DEFAULT NULL,
  `ApellidoM` varchar(20) DEFAULT NULL,
  `FechaNacimiento` date DEFAULT NULL,
  `Peso` decimal(5,2) DEFAULT NULL,
  `Estatura` int(11) DEFAULT NULL,
  `Estatus` bit(1) DEFAULT NULL,
  `Clv_Nivel` int(11) DEFAULT NULL,
  `Id_Ciudad` varchar(3) DEFAULT NULL,
  `Id_Asociacion` int(11) DEFAULT NULL,
  `id_TipoUsuario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`ID_Usuario`, `Clave`, `Username`, `Nombre`, `ApellidoP`, `ApellidoM`, `FechaNacimiento`, `Peso`, `Estatura`, `Estatus`, `Clv_Nivel`, `Id_Ciudad`, `Id_Asociacion`, `id_TipoUsuario`) VALUES
(340, '1234567', 'Karen', 'Karen', 'Morales', 'Galindo', '1997-10-19', '55.00', 157, b'1', 1, 'TJ', 2, 1),
(341, '123456789', 'Karen01', 'Karen Nohemi', 'Morales', 'Galindo', '1977-10-19', '56.00', 157, b'1', 1, 'TJ', 2, 1),
(342, '123456789', 'KarenMG', 'Karen', 'Morales', 'Galindo', '1997-10-19', '55.00', 156, b'1', 1, 'TJ', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_fractura`
--

CREATE TABLE `usuario_fractura` (
  `Id_Fractura` int(11) NOT NULL,
  `ID_Usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `asociacion`
--
ALTER TABLE `asociacion`
  ADD PRIMARY KEY (`Id_Asociacion`);

--
-- Indices de la tabla `ciudad`
--
ALTER TABLE `ciudad`
  ADD PRIMARY KEY (`Id_Ciudad`),
  ADD KEY `Id_Pais` (`Id_Pais`);

--
-- Indices de la tabla `curso`
--
ALTER TABLE `curso`
  ADD PRIMARY KEY (`Clv_Curso`);

--
-- Indices de la tabla `entrenador`
--
ALTER TABLE `entrenador`
  ADD PRIMARY KEY (`Id_Entrenador`),
  ADD KEY `Id_Ciudad` (`Id_Ciudad`),
  ADD KEY `Id_Asociacion` (`Id_Asociacion`);

--
-- Indices de la tabla `entrenador_usuarios`
--
ALTER TABLE `entrenador_usuarios`
  ADD PRIMARY KEY (`Id_Entrenador`,`ID_Usuario`),
  ADD KEY `ID_Usuario` (`ID_Usuario`);

--
-- Indices de la tabla `evaluacion`
--
ALTER TABLE `evaluacion`
  ADD PRIMARY KEY (`Id_Evaluacion`),
  ADD KEY `Id_Modulo` (`Id_Modulo`);

--
-- Indices de la tabla `evaluacion_usuario`
--
ALTER TABLE `evaluacion_usuario`
  ADD PRIMARY KEY (`Id_Eval_Usuario`),
  ADD KEY `ID_Usuario` (`ID_Usuario`),
  ADD KEY `Id_Evaluacion` (`Id_Evaluacion`),
  ADD KEY `Id_Entrenador` (`Id_Entrenador`);

--
-- Indices de la tabla `fractura`
--
ALTER TABLE `fractura`
  ADD PRIMARY KEY (`Id_Fractura`);

--
-- Indices de la tabla `modulo`
--
ALTER TABLE `modulo`
  ADD PRIMARY KEY (`Id_Modulo`);

--
-- Indices de la tabla `nivel`
--
ALTER TABLE `nivel`
  ADD PRIMARY KEY (`Clv_Nivel`);

--
-- Indices de la tabla `pais`
--
ALTER TABLE `pais`
  ADD PRIMARY KEY (`Id_Pais`);

--
-- Indices de la tabla `tipousuario`
--
ALTER TABLE `tipousuario`
  ADD PRIMARY KEY (`id_TipoUsuario`);

--
-- Indices de la tabla `tutor`
--
ALTER TABLE `tutor`
  ADD PRIMARY KEY (`ID_Tutor`);

--
-- Indices de la tabla `tutor_curso`
--
ALTER TABLE `tutor_curso`
  ADD PRIMARY KEY (`Clv_Curso`,`ID_Tutor`),
  ADD KEY `ID_Tutor` (`ID_Tutor`);

--
-- Indices de la tabla `tutor_usuario`
--
ALTER TABLE `tutor_usuario`
  ADD PRIMARY KEY (`ID_Usuario`,`ID_Tutor`),
  ADD KEY `ID_Tutor` (`ID_Tutor`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`ID_Usuario`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`ID_Usuario`),
  ADD KEY `Clv_Nivel` (`Clv_Nivel`),
  ADD KEY `Id_Ciudad` (`Id_Ciudad`),
  ADD KEY `Id_Asociacion` (`Id_Asociacion`),
  ADD KEY `tipousuario_frk1` (`id_TipoUsuario`);

--
-- Indices de la tabla `usuario_fractura`
--
ALTER TABLE `usuario_fractura`
  ADD PRIMARY KEY (`Id_Fractura`,`ID_Usuario`),
  ADD KEY `ID_Usuario` (`ID_Usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `asociacion`
--
ALTER TABLE `asociacion`
  MODIFY `Id_Asociacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `curso`
--
ALTER TABLE `curso`
  MODIFY `Clv_Curso` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `entrenador`
--
ALTER TABLE `entrenador`
  MODIFY `Id_Entrenador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `evaluacion`
--
ALTER TABLE `evaluacion`
  MODIFY `Id_Evaluacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `evaluacion_usuario`
--
ALTER TABLE `evaluacion_usuario`
  MODIFY `Id_Eval_Usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=154;

--
-- AUTO_INCREMENT de la tabla `fractura`
--
ALTER TABLE `fractura`
  MODIFY `Id_Fractura` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `modulo`
--
ALTER TABLE `modulo`
  MODIFY `Id_Modulo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `nivel`
--
ALTER TABLE `nivel`
  MODIFY `Clv_Nivel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tipousuario`
--
ALTER TABLE `tipousuario`
  MODIFY `id_TipoUsuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tutor`
--
ALTER TABLE `tutor`
  MODIFY `ID_Tutor` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `ID_Usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `ID_Usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=343;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `ciudad`
--
ALTER TABLE `ciudad`
  ADD CONSTRAINT `ciudad_ibfk_1` FOREIGN KEY (`Id_Pais`) REFERENCES `pais` (`Id_Pais`);

--
-- Filtros para la tabla `entrenador`
--
ALTER TABLE `entrenador`
  ADD CONSTRAINT `entrenador_ibfk_1` FOREIGN KEY (`Id_Ciudad`) REFERENCES `ciudad` (`Id_Ciudad`),
  ADD CONSTRAINT `entrenador_ibfk_2` FOREIGN KEY (`Id_Asociacion`) REFERENCES `asociacion` (`Id_Asociacion`);

--
-- Filtros para la tabla `entrenador_usuarios`
--
ALTER TABLE `entrenador_usuarios`
  ADD CONSTRAINT `entrenador_usuarios_ibfk_1` FOREIGN KEY (`Id_Entrenador`) REFERENCES `entrenador` (`Id_Entrenador`),
  ADD CONSTRAINT `entrenador_usuarios_ibfk_2` FOREIGN KEY (`ID_Usuario`) REFERENCES `usuario` (`ID_Usuario`);

--
-- Filtros para la tabla `evaluacion`
--
ALTER TABLE `evaluacion`
  ADD CONSTRAINT `evaluacion_ibfk_1` FOREIGN KEY (`Id_Modulo`) REFERENCES `modulo` (`Id_Modulo`);

--
-- Filtros para la tabla `evaluacion_usuario`
--
ALTER TABLE `evaluacion_usuario`
  ADD CONSTRAINT `evaluacion_usuario_ibfk_1` FOREIGN KEY (`ID_Usuario`) REFERENCES `usuario` (`ID_Usuario`),
  ADD CONSTRAINT `evaluacion_usuario_ibfk_2` FOREIGN KEY (`Id_Evaluacion`) REFERENCES `evaluacion` (`Id_Evaluacion`),
  ADD CONSTRAINT `evaluacion_usuario_ibfk_3` FOREIGN KEY (`Id_Entrenador`) REFERENCES `entrenador` (`Id_Entrenador`);

--
-- Filtros para la tabla `tutor_curso`
--
ALTER TABLE `tutor_curso`
  ADD CONSTRAINT `tutor_curso_ibfk_1` FOREIGN KEY (`Clv_Curso`) REFERENCES `curso` (`Clv_Curso`),
  ADD CONSTRAINT `tutor_curso_ibfk_2` FOREIGN KEY (`ID_Tutor`) REFERENCES `tutor` (`ID_Tutor`);

--
-- Filtros para la tabla `tutor_usuario`
--
ALTER TABLE `tutor_usuario`
  ADD CONSTRAINT `tutor_usuario_ibfk_1` FOREIGN KEY (`ID_Usuario`) REFERENCES `usuario` (`ID_Usuario`),
  ADD CONSTRAINT `tutor_usuario_ibfk_2` FOREIGN KEY (`ID_Tutor`) REFERENCES `tutor` (`ID_Tutor`);

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `tipousuario_frk1` FOREIGN KEY (`id_TipoUsuario`) REFERENCES `tipousuario` (`id_TipoUsuario`),
  ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`Clv_Nivel`) REFERENCES `nivel` (`Clv_Nivel`),
  ADD CONSTRAINT `usuario_ibfk_2` FOREIGN KEY (`Id_Ciudad`) REFERENCES `ciudad` (`Id_Ciudad`),
  ADD CONSTRAINT `usuario_ibfk_3` FOREIGN KEY (`Id_Asociacion`) REFERENCES `asociacion` (`Id_Asociacion`);

--
-- Filtros para la tabla `usuario_fractura`
--
ALTER TABLE `usuario_fractura`
  ADD CONSTRAINT `usuario_fractura_ibfk_1` FOREIGN KEY (`ID_Usuario`) REFERENCES `usuario` (`ID_Usuario`),
  ADD CONSTRAINT `usuario_fractura_ibfk_2` FOREIGN KEY (`Id_Fractura`) REFERENCES `fractura` (`Id_Fractura`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
