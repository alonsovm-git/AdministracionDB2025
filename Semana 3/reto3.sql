-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-09-2025 a las 17:31:31
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `reto3`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `COD_CLIE` int(11) NOT NULL,
  `NOMBRE_CLIE` varchar(100) DEFAULT NULL,
  `APELLIDOS_CLIE` varchar(100) DEFAULT NULL,
  `NRO_DNI_CLIE` varchar(100) DEFAULT NULL,
  `TELEFONO_CLIE` varchar(9) DEFAULT NULL,
  `EMAIL_CLIE` varchar(100) DEFAULT NULL,
  `EDAD_CLIE` int(11) DEFAULT NULL,
  `FECHA_NACIMIENTO` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cronograma_actividad`
--

CREATE TABLE `cronograma_actividad` (
  `NRO_CRONOG_ACT` int(11) NOT NULL,
  `COD_PAQUETE_V` int(11) NOT NULL,
  `FECHA_EMISION` datetime DEFAULT NULL,
  `SITUACION_CRONOG` varchar(100) DEFAULT NULL,
  `FECHA_SALIDA` datetime DEFAULT NULL,
  `HORA_SALIDA` time DEFAULT NULL,
  `FECHA_RETORNO` datetime DEFAULT NULL,
  `HORA_RETORNO` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `destino`
--

CREATE TABLE `destino` (
  `COD_DESTINO` int(11) NOT NULL,
  `NOMBRE_DESTINO` varchar(100) DEFAULT NULL,
  `PROVINCIA` varchar(100) DEFAULT NULL,
  `DISTANCIA_KM` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lista_viaje`
--

CREATE TABLE `lista_viaje` (
  `NRO_LISTA` int(11) NOT NULL,
  `FECHA_REGISTRO` datetime DEFAULT NULL,
  `FECHA_CADUCIDAD` datetime DEFAULT NULL,
  `COD_PAQUETE_V` int(11) DEFAULT NULL,
  `NRO_CRONOG_ACT` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lista_viaje_cliente`
--

CREATE TABLE `lista_viaje_cliente` (
  `NRO_LISTA` int(11) NOT NULL,
  `COD_CLIE` int(11) NOT NULL,
  `NOMBRE_CLIE` varchar(100) DEFAULT NULL,
  `APELLIDOS_CLIE` varchar(100) DEFAULT NULL,
  `VIAJE_EFECTIVO` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lista_viaje_personal_viaje`
--

CREATE TABLE `lista_viaje_personal_viaje` (
  `NRO_LISTA` int(11) NOT NULL,
  `COD_PRES_V` int(11) NOT NULL,
  `NOMBRE_PERS_V` varchar(100) DEFAULT NULL,
  `APELLIDOS_PERS_V` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paquetes_viaje`
--

CREATE TABLE `paquetes_viaje` (
  `COD_PAQUETE_V` int(11) NOT NULL,
  `DENOMINACION` varchar(100) DEFAULT NULL,
  `DURACION_TOUR` int(11) DEFAULT NULL,
  `TIPO_TOUR` varchar(100) DEFAULT NULL,
  `COSTO_PAQUETE_ADULTO` decimal(10,2) DEFAULT NULL,
  `COSTO_PAQUETE_NIÑOS` decimal(10,2) DEFAULT NULL,
  `HOSPEDAJE` varchar(100) DEFAULT NULL,
  `DESAYUNO` tinyint(1) DEFAULT NULL,
  `ALMUERZO` tinyint(1) DEFAULT NULL,
  `CENA` tinyint(1) DEFAULT NULL,
  `CUPOS_DISPONIBLES` int(11) DEFAULT NULL,
  `TIPO_BUS` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paquetes_viaje_destino`
--

CREATE TABLE `paquetes_viaje_destino` (
  `COD_PAQUETE_V` int(11) NOT NULL,
  `COD_DESTINO` int(11) NOT NULL,
  `NOMBRE_DESTINO` varchar(100) DEFAULT NULL,
  `DENOMINACION` varchar(100) DEFAULT NULL,
  `ESTADIA_DESTINO` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_viaje`
--

CREATE TABLE `personal_viaje` (
  `COD_PRES_V` int(11) NOT NULL,
  `NOMBRE_PERS_V` varchar(100) DEFAULT NULL,
  `APELLIDOS_PERS_V` varchar(100) DEFAULT NULL,
  `CARGO_PERS_V` varchar(100) DEFAULT NULL,
  `NRO_DNI_PERS_V` varchar(20) DEFAULT NULL,
  `TELEFONO_PERS_V` varchar(9) DEFAULT NULL,
  `DISPONIBILIDAD_PERS_V` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `zona_turisticas`
--

CREATE TABLE `zona_turisticas` (
  `COD_ZONA_TUR` int(11) NOT NULL,
  `NOMBRE_ZONA_TUR` varchar(100) DEFAULT NULL,
  `TIPO_ZONA_TUR` varchar(100) DEFAULT NULL,
  `COD_DESTINO` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`COD_CLIE`);

--
-- Indices de la tabla `cronograma_actividad`
--
ALTER TABLE `cronograma_actividad`
  ADD PRIMARY KEY (`NRO_CRONOG_ACT`,`COD_PAQUETE_V`),
  ADD KEY `COD_PAQUETE_V` (`COD_PAQUETE_V`);

--
-- Indices de la tabla `destino`
--
ALTER TABLE `destino`
  ADD PRIMARY KEY (`COD_DESTINO`);

--
-- Indices de la tabla `lista_viaje`
--
ALTER TABLE `lista_viaje`
  ADD PRIMARY KEY (`NRO_LISTA`),
  ADD KEY `NRO_CRONOG_ACT` (`NRO_CRONOG_ACT`,`COD_PAQUETE_V`);

--
-- Indices de la tabla `lista_viaje_cliente`
--
ALTER TABLE `lista_viaje_cliente`
  ADD PRIMARY KEY (`NRO_LISTA`,`COD_CLIE`),
  ADD KEY `COD_CLIE` (`COD_CLIE`);

--
-- Indices de la tabla `lista_viaje_personal_viaje`
--
ALTER TABLE `lista_viaje_personal_viaje`
  ADD PRIMARY KEY (`NRO_LISTA`,`COD_PRES_V`),
  ADD KEY `COD_PRES_V` (`COD_PRES_V`);

--
-- Indices de la tabla `paquetes_viaje`
--
ALTER TABLE `paquetes_viaje`
  ADD PRIMARY KEY (`COD_PAQUETE_V`);

--
-- Indices de la tabla `paquetes_viaje_destino`
--
ALTER TABLE `paquetes_viaje_destino`
  ADD PRIMARY KEY (`COD_PAQUETE_V`,`COD_DESTINO`),
  ADD KEY `COD_DESTINO` (`COD_DESTINO`);

--
-- Indices de la tabla `personal_viaje`
--
ALTER TABLE `personal_viaje`
  ADD PRIMARY KEY (`COD_PRES_V`);

--
-- Indices de la tabla `zona_turisticas`
--
ALTER TABLE `zona_turisticas`
  ADD PRIMARY KEY (`COD_ZONA_TUR`,`COD_DESTINO`),
  ADD KEY `COD_DESTINO` (`COD_DESTINO`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cronograma_actividad`
--
ALTER TABLE `cronograma_actividad`
  ADD CONSTRAINT `cronograma_actividad_ibfk_1` FOREIGN KEY (`COD_PAQUETE_V`) REFERENCES `paquetes_viaje` (`COD_PAQUETE_V`);

--
-- Filtros para la tabla `lista_viaje`
--
ALTER TABLE `lista_viaje`
  ADD CONSTRAINT `lista_viaje_ibfk_1` FOREIGN KEY (`NRO_CRONOG_ACT`,`COD_PAQUETE_V`) REFERENCES `cronograma_actividad` (`NRO_CRONOG_ACT`, `COD_PAQUETE_V`);

--
-- Filtros para la tabla `lista_viaje_cliente`
--
ALTER TABLE `lista_viaje_cliente`
  ADD CONSTRAINT `lista_viaje_cliente_ibfk_1` FOREIGN KEY (`COD_CLIE`) REFERENCES `cliente` (`COD_CLIE`),
  ADD CONSTRAINT `lista_viaje_cliente_ibfk_2` FOREIGN KEY (`NRO_LISTA`) REFERENCES `lista_viaje` (`NRO_LISTA`);

--
-- Filtros para la tabla `lista_viaje_personal_viaje`
--
ALTER TABLE `lista_viaje_personal_viaje`
  ADD CONSTRAINT `lista_viaje_personal_viaje_ibfk_1` FOREIGN KEY (`NRO_LISTA`) REFERENCES `lista_viaje` (`NRO_LISTA`),
  ADD CONSTRAINT `lista_viaje_personal_viaje_ibfk_2` FOREIGN KEY (`COD_PRES_V`) REFERENCES `personal_viaje` (`COD_PRES_V`);

--
-- Filtros para la tabla `paquetes_viaje_destino`
--
ALTER TABLE `paquetes_viaje_destino`
  ADD CONSTRAINT `paquetes_viaje_destino_ibfk_1` FOREIGN KEY (`COD_PAQUETE_V`) REFERENCES `paquetes_viaje` (`COD_PAQUETE_V`),
  ADD CONSTRAINT `paquetes_viaje_destino_ibfk_2` FOREIGN KEY (`COD_DESTINO`) REFERENCES `destino` (`COD_DESTINO`);

--
-- Filtros para la tabla `zona_turisticas`
--
ALTER TABLE `zona_turisticas`
  ADD CONSTRAINT `zona_turisticas_ibfk_1` FOREIGN KEY (`COD_DESTINO`) REFERENCES `destino` (`COD_DESTINO`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
