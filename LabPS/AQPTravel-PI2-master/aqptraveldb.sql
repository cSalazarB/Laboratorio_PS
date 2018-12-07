-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 23-12-2017 a las 05:34:09
-- Versión del servidor: 5.7.19
-- Versión de PHP: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `aqptraveldb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actividad`
--

DROP TABLE IF EXISTS `actividad`;
CREATE TABLE IF NOT EXISTS `actividad` (
  `idActividad` int(11) NOT NULL AUTO_INCREMENT,
  `idPaquete` int(11) NOT NULL,
  `nombreActividad` varchar(32) DEFAULT NULL,
  `tiempoActividad` int(2) DEFAULT NULL,
  `horaActividad` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`idActividad`),
  KEY `idPaquete` (`idPaquete`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `idAdmin` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(70) DEFAULT NULL,
  `apellidoAdmin` varchar(32) DEFAULT NULL,
  `celularAdmin` varchar(12) DEFAULT NULL,
  `correoAdmin` varchar(25) DEFAULT NULL,
  `direccionAdmin` varchar(70) DEFAULT NULL,
  `contrasenaAdmin` varchar(300) DEFAULT NULL,
  `estadoAdmin` varchar(1) DEFAULT '1',
  PRIMARY KEY (`idAdmin`),
  UNIQUE KEY `idAdmin_UNIQUE` (`idAdmin`),
  UNIQUE KEY `correoAdmin` (`correoAdmin`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `admin`
--

INSERT INTO `admin` (`idAdmin`, `nombre`, `apellidoAdmin`, `celularAdmin`, `correoAdmin`, `direccionAdmin`, `contrasenaAdmin`, `estadoAdmin`) VALUES
(27, 'juan', 'juan', 'juan', 'juan', 'juan', 'gU0Q2hrFyLk=', '1'),
(28, 'pedro', 'pedro', 'pedro', 'pedro', 'pedro', 'gU0Q2hrFyLk=', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `agencia`
--

DROP TABLE IF EXISTS `agencia`;
CREATE TABLE IF NOT EXISTS `agencia` (
  `idAgencia` int(11) NOT NULL AUTO_INCREMENT,
  `nombreAgencia` varchar(70) DEFAULT NULL,
  `correoAgencia` varchar(25) DEFAULT NULL,
  `rucAgencia` varchar(12) DEFAULT NULL,
  `razonsocialAgencia` text,
  `ubigeoAgencia` varchar(10) DEFAULT NULL,
  `direccionAgencia` varchar(60) DEFAULT NULL,
  `valoracionAgencia` int(11) DEFAULT '0',
  `descripcionAgencia` text,
  `telefonoAgencia` varchar(12) DEFAULT NULL,
  `diaModAgencia` int(2) DEFAULT NULL,
  `mesModAgencia` int(2) DEFAULT NULL,
  `anioModAgencia` int(4) DEFAULT NULL,
  `idAdmin` int(11) NOT NULL,
  `contrasenaAgencia` varchar(300) DEFAULT NULL,
  `estadoAgencia` varchar(1) DEFAULT '1' COMMENT '''1'' activo ''0'' inactivo',
  PRIMARY KEY (`idAgencia`),
  UNIQUE KEY `idAgencia_UNIQUE` (`idAgencia`),
  UNIQUE KEY `correoAgencia` (`correoAgencia`),
  KEY `idAdmin` (`idAdmin`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

DROP TABLE IF EXISTS `cliente`;
CREATE TABLE IF NOT EXISTS `cliente` (
  `idCliente` int(11) NOT NULL AUTO_INCREMENT,
  `nombreCliente` varchar(70) DEFAULT NULL,
  `apellidoCliente` varchar(32) DEFAULT NULL,
  `correoCliente` varchar(25) DEFAULT NULL,
  `telefonoCliente` varchar(12) DEFAULT NULL,
  `estadoCliente` varchar(1) DEFAULT '1' COMMENT '''1'' activo ''0'' inactivo',
  `contrasenaCliente` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`idCliente`),
  UNIQUE KEY `idCliente_UNIQUE` (`idCliente`),
  UNIQUE KEY `correoCliente` (`correoCliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentarios`
--

DROP TABLE IF EXISTS `comentarios`;
CREATE TABLE IF NOT EXISTS `comentarios` (
  `idComentario` int(11) NOT NULL AUTO_INCREMENT,
  `idPaquete` int(11) NOT NULL,
  `comentario` text,
  `idCliente` int(11) NOT NULL,
  PRIMARY KEY (`idComentario`),
  KEY `idPaquete` (`idPaquete`),
  KEY `idCliente` (`idCliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `destino`
--

DROP TABLE IF EXISTS `destino`;
CREATE TABLE IF NOT EXISTS `destino` (
  `idDestino` int(11) NOT NULL AUTO_INCREMENT,
  `nombreDestino` varchar(70) DEFAULT NULL,
  `estadoDestino` int(2) NOT NULL,
  PRIMARY KEY (`idDestino`),
  UNIQUE KEY `idDestino` (`idDestino`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fotospaquete`
--

DROP TABLE IF EXISTS `fotospaquete`;
CREATE TABLE IF NOT EXISTS `fotospaquete` (
  `idFotos` int(11) NOT NULL AUTO_INCREMENT,
  `idPaquete` int(11) NOT NULL,
  `nombreFoto` varchar(32) DEFAULT NULL,
  `imagenFoto` mediumblob,
  PRIMARY KEY (`idFotos`),
  KEY `idPaquete` (`idPaquete`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pago`
--

DROP TABLE IF EXISTS `pago`;
CREATE TABLE IF NOT EXISTS `pago` (
  `idPago` int(11) NOT NULL AUTO_INCREMENT,
  `idCliente` int(11) NOT NULL,
  `idReserva` int(11) NOT NULL,
  `diaPago` int(2) DEFAULT NULL,
  `mesPago` int(2) DEFAULT NULL,
  `anioPago` int(4) DEFAULT NULL,
  PRIMARY KEY (`idPago`),
  UNIQUE KEY `idPago_UNIQUE` (`idPago`),
  KEY `idCliente` (`idCliente`),
  KEY `idReserva` (`idReserva`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paquete`
--

DROP TABLE IF EXISTS `paquete`;
CREATE TABLE IF NOT EXISTS `paquete` (
  `idPaquete` int(11) NOT NULL AUTO_INCREMENT,
  `idAgencia` int(11) NOT NULL,
  `nombrePaquete` varchar(70) DEFAULT NULL,
  `precioPaquete` decimal(10,2) DEFAULT NULL,
  `precioOferta` decimal(10,2) DEFAULT NULL,
  `capacidadPaquete` int(2) DEFAULT NULL,
  `descripcionPaquete` text,
  `numPaquete` int(11) DEFAULT NULL,
  `estadoPaquete` varchar(1) DEFAULT '1' COMMENT '1 activo 0 desactivo',
  `ofertaPaquete` varchar(1) DEFAULT '0' COMMENT '0 desactiva  1 activa ',
  `tiempoOferta` int(11) DEFAULT NULL,
  `mapaPaquete` mediumblob,
  `destinoPaquete` varchar(70) DEFAULT NULL,
  `valoracionPaquete` int(11) DEFAULT NULL,
  `diaModPaquete` int(2) DEFAULT NULL,
  `mesModPaquete` int(2) DEFAULT NULL,
  `anioModPaquete` int(4) DEFAULT NULL,
  `duracionPaquete` int(2) DEFAULT NULL,
  `itenerario` tinytext,
  `servicios` tinytext,
  `recomendacionesPaquete` tinytext,
  `tipoPaquete` varchar(25) NOT NULL,
  PRIMARY KEY (`idPaquete`),
  UNIQUE KEY `idPaquete_UNIQUE` (`idPaquete`),
  KEY `idAgencia` (`idAgencia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paquetedestino`
--

DROP TABLE IF EXISTS `paquetedestino`;
CREATE TABLE IF NOT EXISTS `paquetedestino` (
  `idPaquete` int(11) NOT NULL,
  `idDestino` int(11) NOT NULL,
  KEY `idDestino` (`idDestino`),
  KEY `idPaquete` (`idPaquete`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `queja`
--

DROP TABLE IF EXISTS `queja`;
CREATE TABLE IF NOT EXISTS `queja` (
  `idQueja` int(11) NOT NULL AUTO_INCREMENT,
  `descripcionQueja` tinytext,
  `tipoQueja` varchar(1) DEFAULT '0',
  PRIMARY KEY (`idQueja`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reserva`
--

DROP TABLE IF EXISTS `reserva`;
CREATE TABLE IF NOT EXISTS `reserva` (
  `idReserva` int(11) NOT NULL AUTO_INCREMENT,
  `idPaquete` int(11) NOT NULL,
  `idCliente` int(11) NOT NULL,
  `precioReserva` decimal(10,2) DEFAULT NULL,
  `diaSalida` int(2) DEFAULT NULL,
  `mesSalida` int(2) DEFAULT NULL,
  `anioSalida` int(4) DEFAULT NULL,
  `diaRegreso` int(2) DEFAULT NULL,
  `mesRegreso` int(2) DEFAULT NULL,
  `anioRegreso` int(4) DEFAULT NULL,
  `diaReserva` int(2) DEFAULT NULL,
  `mesReserva` int(2) DEFAULT NULL,
  `anioReserva` int(4) DEFAULT NULL,
  `numPersonasReserva` int(2) DEFAULT NULL,
  PRIMARY KEY (`idReserva`),
  KEY `idPaquete` (`idPaquete`),
  KEY `idCliente` (`idCliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

DROP TABLE IF EXISTS `rol`;
CREATE TABLE IF NOT EXISTS `rol` (
  `idRol` int(11) NOT NULL AUTO_INCREMENT,
  `correoUsuario` varchar(25) CHARACTER SET utf8 NOT NULL,
  `rol` varchar(50) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`idRol`),
  UNIQUE KEY `idRol` (`idRol`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`idRol`, `correoUsuario`, `rol`) VALUES
(9, 'juan', 'ROLE_ADMIN'),
(10, 'pedro', 'ROLE_ADMIN');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

DROP TABLE IF EXISTS `usuario`;
CREATE TABLE IF NOT EXISTS `usuario` (
  `correoUsuario` varchar(25) NOT NULL,
  `contrasenaUsuario` varchar(300) NOT NULL,
  `enable` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`correoUsuario`),
  UNIQUE KEY `correoUsuario` (`correoUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`correoUsuario`, `contrasenaUsuario`, `enable`) VALUES
('juan', 'gU0Q2hrFyLk=', 1),
('pedro', 'gU0Q2hrFyLk=', 1);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `actividad`
--
ALTER TABLE `actividad`
  ADD CONSTRAINT `actividad_ibfk_1` FOREIGN KEY (`idPaquete`) REFERENCES `paquete` (`idPaquete`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Filtros para la tabla `agencia`
--
ALTER TABLE `agencia`
  ADD CONSTRAINT `agencia_ibfk_1` FOREIGN KEY (`idAdmin`) REFERENCES `admin` (`idAdmin`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Filtros para la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD CONSTRAINT `comentarios_ibfk_1` FOREIGN KEY (`idPaquete`) REFERENCES `paquete` (`idPaquete`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `comentarios_ibfk_2` FOREIGN KEY (`idCliente`) REFERENCES `cliente` (`idCliente`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `fotospaquete`
--
ALTER TABLE `fotospaquete`
  ADD CONSTRAINT `fotospaquete_ibfk_1` FOREIGN KEY (`idPaquete`) REFERENCES `paquete` (`idPaquete`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `pago`
--
ALTER TABLE `pago`
  ADD CONSTRAINT `pago_ibfk_1` FOREIGN KEY (`idCliente`) REFERENCES `cliente` (`idCliente`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `pago_ibfk_2` FOREIGN KEY (`idReserva`) REFERENCES `reserva` (`idReserva`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Filtros para la tabla `paquete`
--
ALTER TABLE `paquete`
  ADD CONSTRAINT `paquete_ibfk_1` FOREIGN KEY (`idAgencia`) REFERENCES `agencia` (`idAgencia`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Filtros para la tabla `paquetedestino`
--
ALTER TABLE `paquetedestino`
  ADD CONSTRAINT `paquetedestino_ibfk_1` FOREIGN KEY (`idDestino`) REFERENCES `destino` (`idDestino`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `paquetedestino_ibfk_2` FOREIGN KEY (`idPaquete`) REFERENCES `paquete` (`idPaquete`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `reserva`
--
ALTER TABLE `reserva`
  ADD CONSTRAINT `reserva_ibfk_1` FOREIGN KEY (`idCliente`) REFERENCES `cliente` (`idCliente`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `reserva_ibfk_2` FOREIGN KEY (`idPaquete`) REFERENCES `paquete` (`idPaquete`) ON DELETE NO ACTION ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
