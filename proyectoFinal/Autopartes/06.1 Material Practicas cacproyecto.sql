-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 22-11-2020 a las 20:03:25
-- Versión del servidor: 8.0.22-0ubuntu0.20.04.2
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
-- Base de datos: `cacproyecto`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `localidades`
--

CREATE TABLE `localidades` (
  `idlocalidad` int NOT NULL,
  `nombrelocalidad` varchar(40) NOT NULL,
  `idprovlocalidad` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `localidades`
--

INSERT INTO `localidades` (`idlocalidad`, `nombrelocalidad`, `idprovlocalidad`) VALUES
(1, 'Moreno', 3),
(2, 'Guaymallén', 4),
(3, 'Cafayate', 2),
(4, 'Cruz Alta', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos`
--

CREATE TABLE `pedidos` (
  `idpedido` int NOT NULL,
  `nombre` varchar(40) NOT NULL,
  `apellido` varchar(40) NOT NULL,
  `usuario` varchar(20) NOT NULL,
  `mail` varchar(30) NOT NULL,
  `lugarentrega` varchar(80) NOT NULL,
  `localidad` int NOT NULL,
  `provincia` int NOT NULL,
  `codpostal` varchar(9) NOT NULL,
  `formadepago` varchar(1) NOT NULL,
  `tarjtitular` varchar(40) NOT NULL,
  `tarjnumero` int NOT NULL,
  `tarjvto` varchar(10) NOT NULL,
  `tarjclave` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `provincias`
--

CREATE TABLE `provincias` (
  `idprovincia` int NOT NULL,
  `nombre` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `provincias`
--

INSERT INTO `provincias` (`idprovincia`, `nombre`) VALUES
(1, 'Tucuman'),
(2, 'Salta'),
(3, 'Buenos Aires'),
(4, 'Mendoza');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `idusuario` int NOT NULL,
  `usuario` varchar(20) NOT NULL,
  `clave` varchar(20) NOT NULL,
  `nombreyapellido` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`idusuario`, `usuario`, `clave`, `nombreyapellido`) VALUES
(1, 'prueba@gmail.com', '909090', 'José Ignacio'),
(2, 'mail@hotmail.com', '808080', 'Juan Carlos');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `localidades`
--
ALTER TABLE `localidades`
  ADD PRIMARY KEY (`idlocalidad`),
  ADD UNIQUE KEY `LocProvincia` (`idlocalidad`),
  ADD KEY `LocProv` (`idprovlocalidad`);

--
-- Indices de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`idpedido`);

--
-- Indices de la tabla `provincias`
--
ALTER TABLE `provincias`
  ADD PRIMARY KEY (`idprovincia`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`idusuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `localidades`
--
ALTER TABLE `localidades`
  MODIFY `idlocalidad` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `idpedido` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `provincias`
--
ALTER TABLE `provincias`
  MODIFY `idprovincia` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `idusuario` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `localidades`
--
ALTER TABLE `localidades`
  ADD CONSTRAINT `LocProv` FOREIGN KEY (`idprovlocalidad`) REFERENCES `provincias` (`idprovincia`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
