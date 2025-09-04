-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-09-2025 a las 18:32:24
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
-- Base de datos: `workbench`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `idcliente` int(11) NOT NULL,
  `Nombre` varchar(45) NOT NULL,
  `Direccion` varchar(45) NOT NULL,
  `Teléfono` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`idcliente`, `Nombre`, `Direccion`, `Teléfono`) VALUES
(1, 'Juan Pérez', 'Av. Los Olivos 123', '987654321'),
(2, 'María López', 'Jr. San Martín 456', '912345678'),
(3, 'Carlos Ramírez', 'Calle Las Flores 789', '934567890'),
(4, 'Ana Torres', 'Av. Grau 321', '976543210'),
(5, 'Pedro Gómez', 'Calle Los Laureles 222', '945612378'),
(6, 'Lucía Castillo', 'Av. Arequipa 1234', '913457892'),
(7, 'Miguel Fernández', 'Jr. Los Pinos 567', '967812345'),
(8, 'Rosa Vargas', 'Calle Amazonas 890', '954328761'),
(9, 'Luis Mendoza', 'Av. Angamos 345', '932178456'),
(10, 'Carmen Díaz', 'Jr. Ayacucho 876', '978561234'),
(11, 'Jorge Salazar', 'Calle Tacna 123', '923456789'),
(12, 'Elena Ruiz', 'Av. Universitaria 555', '956789123'),
(13, 'Ricardo Soto', 'Jr. Callao 333', '945123678'),
(14, 'Patricia Silva', 'Calle Olaya 654', '976891234'),
(15, 'Andrés Rojas', 'Av. La Marina 789', '934567812'),
(16, 'Mónica Aguilar', 'Jr. Piura 222', '923789456'),
(17, 'Hugo Chávez', 'Calle Cusco 555', '987321654'),
(18, 'Sofía Paredes', 'Av. Abancay 111', '978654321'),
(19, 'Fernando Cruz', 'Jr. Amazonas 444', '932145678'),
(20, 'Gabriela León', 'Calle Arequipa 222', '956123478'),
(21, 'Raúl Herrera', 'Av. Los Incas 999', '934128765'),
(22, 'Silvia Campos', 'Calle Puno 777', '976234589'),
(23, 'Diego Morales', 'Jr. Moquegua 888', '923654178'),
(24, 'Isabel Flores', 'Av. Grau 654', '945321876'),
(25, 'Oscar Medina', 'Calle Libertad 333', '932781456'),
(26, 'Natalia Chávez', 'Jr. Iquitos 111', '978123654'),
(27, 'Víctor Ramos', 'Av. Primavera 444', '967892134'),
(28, 'Paola Estrada', 'Calle San Juan 567', '945678123'),
(29, 'Gonzalo Peña', 'Jr. Ayacucho 789', '923456178'),
(30, 'Daniela Morales', 'Av. Javier Prado 555', '934785612'),
(31, 'Martín Guzmán', 'Calle Junín 222', '956789234'),
(32, 'Teresa Valdez', 'Jr. Moquegua 987', '967234589'),
(33, 'Alberto Reyes', 'Av. San Borja 876', '934128976'),
(34, 'Claudia Cárdenas', 'Calle Tacna 111', '945612389'),
(35, 'Felipe Huamán', 'Jr. Amazonas 222', '932145897'),
(36, 'Diana Cornejo', 'Av. La Marina 654', '978345612'),
(37, 'Rodrigo Núñez', 'Calle Cusco 888', '976231489'),
(38, 'Patty Delgado', 'Jr. Callao 333', '923789654'),
(39, 'Manuel Ortega', 'Av. Los Olivos 444', '967891345'),
(40, 'Lorena Quispe', 'Calle Olaya 555', '945123789'),
(41, 'César Vega', 'Av. Abancay 987', '978456123'),
(42, 'Yesenia Ríos', 'Jr. San Martín 123', '934567821'),
(43, 'Arturo Cueva', 'Calle Puno 654', '932178945'),
(44, 'Brenda Huerta', 'Av. Arequipa 876', '976543128'),
(45, 'Javier Ponce', 'Calle Junín 321', '923654789'),
(46, 'Esther Lozano', 'Jr. Piura 456', '956321478'),
(47, 'Kevin Aguilar', 'Av. Angamos 987', '945678912'),
(48, 'Florencia Soto', 'Calle Amazonas 111', '932145768'),
(49, 'Pablo Delgado', 'Av. Universitaria 222', '978321645'),
(50, 'Jimena Ramos', 'Calle Cusco 444', '976234198'),
(51, 'Cristian Arce', 'Av. Grau 765', '923456789'),
(52, 'Marcela Peña', 'Jr. Ayacucho 987', '934128765'),
(53, 'Ernesto Palomino', 'Calle Tacna 654', '945321789'),
(54, 'Milagros Suárez', 'Av. Primavera 321', '978456789'),
(55, 'Jhonatan Pérez', 'Calle Callao 876', '967891234'),
(56, 'Ángela Vilca', 'Av. La Marina 444', '932178654'),
(57, 'Sebastián Ramos', 'Jr. Iquitos 555', '923789123'),
(58, 'Melanie Córdova', 'Calle Arequipa 765', '934567912'),
(59, 'Hernán Farfán', 'Av. Los Incas 333', '945123678'),
(60, 'Valeria Contreras', 'Jr. Amazonas 222', '976891234'),
(61, 'Antonio Bravo', 'Av. Angamos 123', '923456178'),
(62, 'Ruth Espinoza', 'Calle San Juan 333', '932145678'),
(63, 'Samuel Mejía', 'Av. Pardo 456', '978654123'),
(64, 'Carolina Robles', 'Jr. Moquegua 222', '956123789'),
(65, 'Renzo Chávez', 'Av. Universitaria 765', '934128976'),
(66, 'Camila Gutiérrez', 'Calle Cusco 321', '945678321'),
(67, 'Álvaro Torres', 'Av. Primavera 876', '932781456'),
(68, 'Pamela Rojas', 'Jr. Callao 222', '976234189'),
(69, 'Ignacio Carrillo', 'Calle Tacna 111', '978321456'),
(70, 'Karen Maldonado', 'Av. Grau 333', '967892134'),
(71, 'Benjamín Silva', 'Jr. San Martín 987', '923456789'),
(72, 'Rocío Arias', 'Calle Puno 876', '934567821'),
(73, 'Cristóbal Vargas', 'Av. Arequipa 321', '976543128'),
(74, 'Fabiola Romero', 'Calle Amazonas 654', '945123789'),
(75, 'Mauricio Ramos', 'Av. Angamos 765', '923654178'),
(76, 'Nathaly Palacios', 'Calle Libertad 333', '932781456'),
(77, 'Efraín Gamboa', 'Av. Javier Prado 876', '978123456'),
(78, 'Gloria León', 'Calle Olaya 555', '967891234'),
(79, 'Julio Ramírez', 'Av. La Marina 123', '934128765'),
(80, 'Tatiana Campos', 'Jr. Piura 987', '945678123');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalles`
--

CREATE TABLE `detalles` (
  `idDetalles` int(11) NOT NULL,
  `idFactura` int(11) NOT NULL,
  `idProductos` int(11) NOT NULL,
  `Cantidad` int(11) NOT NULL,
  `Total` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `detalles`
--

INSERT INTO `detalles` (`idDetalles`, `idFactura`, `idProductos`, `Cantidad`, `Total`) VALUES
(1, 81, 5, 2, 19),
(2, 82, 12, 1, 10),
(3, 83, 7, 3, 21),
(4, 84, 25, 1, 8),
(5, 85, 33, 2, 18),
(6, 86, 41, 4, 44),
(7, 87, 18, 2, 22),
(8, 88, 9, 1, 10),
(9, 89, 28, 3, 36),
(10, 90, 14, 2, 25),
(11, 91, 6, 1, 12),
(12, 92, 22, 2, 24),
(13, 93, 17, 5, 50),
(14, 94, 30, 2, 20),
(15, 95, 48, 1, 9),
(16, 96, 55, 3, 30),
(17, 97, 63, 1, 11),
(18, 98, 71, 2, 26),
(19, 99, 8, 4, 40),
(20, 100, 19, 2, 22),
(21, 101, 27, 1, 15),
(22, 102, 36, 3, 33),
(23, 103, 44, 2, 28),
(24, 104, 50, 5, 55),
(25, 105, 60, 1, 12),
(26, 106, 70, 2, 24),
(27, 107, 11, 3, 30),
(28, 108, 21, 1, 14),
(29, 109, 35, 2, 22),
(30, 110, 45, 4, 48),
(31, 111, 52, 1, 10),
(32, 112, 62, 2, 26),
(33, 113, 72, 3, 36),
(34, 114, 80, 1, 9),
(35, 115, 3, 2, 18),
(36, 116, 13, 1, 12),
(37, 117, 23, 4, 40),
(38, 118, 32, 2, 20),
(39, 119, 42, 3, 33),
(40, 120, 53, 1, 11),
(41, 121, 64, 5, 55),
(42, 122, 74, 2, 28),
(43, 123, 2, 1, 10),
(44, 124, 15, 3, 27),
(45, 125, 26, 2, 22),
(46, 126, 38, 1, 12),
(47, 127, 47, 4, 48),
(48, 128, 58, 2, 24),
(49, 129, 68, 1, 11),
(50, 130, 78, 3, 33),
(51, 131, 4, 2, 20),
(52, 132, 16, 5, 50),
(53, 133, 29, 2, 22),
(54, 134, 39, 1, 12),
(55, 135, 49, 3, 30),
(56, 136, 59, 2, 24),
(57, 137, 69, 1, 11),
(58, 138, 79, 4, 44),
(59, 139, 10, 2, 20),
(60, 140, 20, 1, 14),
(61, 141, 31, 2, 22),
(62, 142, 40, 3, 33),
(63, 143, 51, 1, 10),
(64, 144, 61, 2, 26),
(65, 145, 73, 3, 36),
(66, 146, 1, 1, 10),
(67, 147, 24, 2, 20),
(68, 148, 34, 1, 11),
(69, 149, 43, 5, 55),
(70, 150, 54, 2, 28),
(71, 151, 65, 1, 12),
(72, 152, 75, 3, 33),
(73, 153, 77, 2, 22),
(74, 154, 6, 1, 12),
(75, 155, 37, 4, 44),
(76, 156, 46, 2, 20),
(77, 157, 56, 3, 30),
(78, 158, 67, 1, 10),
(79, 159, 76, 2, 22);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura`
--

CREATE TABLE `factura` (
  `idfactura` int(11) NOT NULL,
  `idcliente` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `total` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `factura`
--

INSERT INTO `factura` (`idfactura`, `idcliente`, `fecha`, `total`) VALUES
(81, 1, '2024-01-05', 120),
(82, 2, '2024-01-07', 250),
(83, 3, '2024-01-10', 75),
(84, 4, '2024-01-15', 320),
(85, 5, '2024-01-18', 95),
(86, 6, '2024-01-22', 210),
(87, 7, '2024-01-25', 430),
(88, 8, '2024-01-28', 150),
(89, 9, '2024-02-01', 300),
(90, 10, '2024-02-03', 60),
(91, 11, '2024-02-05', 270),
(92, 12, '2024-02-08', 195),
(93, 13, '2024-02-11', 355),
(94, 14, '2024-02-14', 180),
(95, 15, '2024-02-17', 220),
(96, 16, '2024-02-20', 400),
(97, 17, '2024-02-23', 90),
(98, 18, '2024-02-26', 330),
(99, 19, '2024-03-02', 150),
(100, 20, '2024-03-05', 245),
(101, 21, '2024-03-07', 470),
(102, 22, '2024-03-10', 105),
(103, 23, '2024-03-13', 310),
(104, 24, '2024-03-15', 220),
(105, 25, '2024-03-18', 410),
(106, 26, '2024-03-20', 95),
(107, 27, '2024-03-22', 185),
(108, 28, '2024-03-25', 265),
(109, 29, '2024-03-27', 355),
(110, 30, '2024-03-30', 120),
(111, 31, '2024-04-02', 240),
(112, 32, '2024-04-05', 410),
(113, 33, '2024-04-07', 330),
(114, 34, '2024-04-10', 190),
(115, 35, '2024-04-12', 460),
(116, 36, '2024-04-15', 210),
(117, 37, '2024-04-18', 340),
(118, 38, '2024-04-20', 75),
(119, 39, '2024-04-23', 280),
(120, 40, '2024-04-25', 135),
(121, 41, '2024-04-28', 400),
(122, 42, '2024-05-01', 250),
(123, 43, '2024-05-03', 95),
(124, 44, '2024-05-06', 300),
(125, 45, '2024-05-08', 180),
(126, 46, '2024-05-11', 415),
(127, 47, '2024-05-13', 160),
(128, 48, '2024-05-16', 275),
(129, 49, '2024-05-18', 220),
(130, 50, '2024-05-20', 360),
(131, 51, '2024-05-23', 100),
(132, 52, '2024-05-25', 285),
(133, 53, '2024-05-28', 165),
(134, 54, '2024-06-01', 410),
(135, 55, '2024-06-04', 190),
(136, 56, '2024-06-06', 325),
(137, 57, '2024-06-09', 210),
(138, 58, '2024-06-11', 480),
(139, 59, '2024-06-14', 155),
(140, 60, '2024-06-16', 240),
(141, 61, '2024-06-19', 310),
(142, 62, '2024-06-22', 450),
(143, 63, '2024-06-24', 130),
(144, 64, '2024-06-27', 295),
(145, 65, '2024-06-29', 175),
(146, 66, '2024-07-02', 360),
(147, 67, '2024-07-05', 95),
(148, 68, '2024-07-07', 230),
(149, 69, '2024-07-10', 400),
(150, 70, '2024-07-12', 320),
(151, 71, '2024-07-15', 135),
(152, 72, '2024-07-18', 490),
(153, 73, '2024-07-20', 200),
(154, 74, '2024-07-23', 350),
(155, 75, '2024-07-26', 180),
(156, 76, '2024-07-29', 260),
(157, 77, '2024-08-01', 420),
(158, 78, '2024-08-03', 145),
(159, 79, '2024-08-06', 310);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `idProductos` int(11) NOT NULL,
  `PrecioVenta` decimal(10,2) NOT NULL,
  `Nombre` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`idProductos`, `PrecioVenta`, `Nombre`) VALUES
(1, 4.50, 'Arroz Costeño 1kg'),
(2, 3.80, 'Azúcar Rubia 1kg'),
(3, 12.90, 'Aceite Primor 1L'),
(4, 4.20, 'Fideos Don Vittorio 500g'),
(5, 4.50, 'Leche Gloria Lata'),
(6, 3.90, 'Leche Ideal Sachet'),
(7, 6.50, 'Atún Florida 170g'),
(8, 2.50, 'Galletas Oreo'),
(9, 2.20, 'Galletas Soda Field'),
(10, 28.90, 'Panetón D’Onofrio'),
(11, 2.50, 'Jabón Bolívar 200g'),
(12, 9.50, 'Detergente Ace 1kg'),
(13, 11.90, 'Suavizante Downy 800ml'),
(14, 12.50, 'Shampoo Sedal 350ml'),
(15, 3.50, 'Cepillo de dientes Colgate'),
(16, 8.90, 'Papel Higiénico Elite x4'),
(17, 1.80, 'Agua San Luis 625ml'),
(18, 11.00, 'Gaseosa Inca Kola 3L'),
(19, 12.00, 'Gaseosa Coca Cola 3L'),
(20, 7.50, 'Cerveza Pilsen 620ml'),
(21, 6.90, 'Cerveza Cristal 620ml'),
(22, 5.90, 'Cerveza Cusqueña 330ml'),
(23, 9.50, 'Energizante Red Bull 250ml'),
(24, 4.50, 'Energizante Volt 473ml'),
(25, 7.50, 'Pan de molde Bimbo 500g'),
(26, 8.90, 'Mermelada Fanny Fresa'),
(27, 9.20, 'Mantequilla Laive 200g'),
(28, 10.90, 'Queso Bonlé 200g'),
(29, 15.90, 'Jamón de Pavita San Fernando 250g'),
(30, 1.50, 'Sal Lobos 1kg'),
(31, 9.50, 'Mayonesa Alacena 475g'),
(32, 8.90, 'Ketchup Heinz 397g'),
(33, 4.50, 'Mostaza Alacena 200g'),
(34, 7.90, 'Ají Tarí 400g'),
(35, 5.50, 'Sillao Kikko 150ml'),
(36, 6.90, 'Vinagre de Manzana 500ml'),
(37, 6.20, 'Harina Blanca Flor 1kg'),
(38, 3.50, 'Chocolate Sublime tableta'),
(39, 2.20, 'Chicles Trident'),
(40, 1.50, 'Caramelos Doña Pepa'),
(41, 6.90, 'Cereal Ángel Corn Flakes 200g'),
(42, 11.50, 'Cereal Zucaritas 300g'),
(43, 17.90, 'Café Altomayo 200g'),
(44, 22.50, 'Café Nescafé 170g'),
(45, 9.50, 'Té McCollins 100 sobres'),
(46, 5.90, 'Levadura Fleischmann 125g'),
(47, 12.90, 'Huevos de gallina x15'),
(48, 9.90, 'Yogurt Gloria Fresa 1L'),
(49, 8.90, 'Yogurt Laive Durazno 1L'),
(50, 16.50, 'Milo Nestlé 400g'),
(51, 6.50, 'Leche condensada Gloria 397g'),
(52, 4.90, 'Leche evaporada Gloria Light'),
(53, 4.20, 'Arvejas secas 500g'),
(54, 4.50, 'Lentejas 500g'),
(55, 5.90, 'Frijoles Canario 500g'),
(56, 6.20, 'Garbanzos 500g'),
(57, 3.20, 'Papa blanca 1kg'),
(58, 2.80, 'Cebolla roja 1kg'),
(59, 4.50, 'Tomate 1kg'),
(60, 5.50, 'Plátano de seda 1kg'),
(61, 6.90, 'Mandarina 1kg'),
(62, 8.90, 'Manzana Israel 1kg'),
(63, 4.50, 'Naranja 1kg'),
(64, 9.90, 'Uva red globe 1kg'),
(65, 7.50, 'Limón 1kg'),
(66, 10.50, 'Aguacate (palta) 1kg'),
(67, 28.90, 'Carne de res molida 1kg'),
(68, 14.90, 'Pechuga de pollo 1kg'),
(69, 13.50, 'Pescado bonito 1kg'),
(70, 7.90, 'Salchicha de hot dog x10'),
(71, 18.90, 'Chorizo parrillero 500g'),
(72, 9.90, 'Aceituna botija 500g'),
(73, 2.50, 'Tallarín instantáneo Maruchan'),
(74, 3.50, 'Sopa instantánea Knorr'),
(75, 4.90, 'Salsa de tomate Don Vittorio 400g'),
(76, 5.50, 'Salsa Roja Alacena 200g'),
(77, 2.00, 'Galletas Morochas'),
(78, 1.50, 'Chocolate Princesa'),
(79, 4.50, 'Chifles Paquete 100g'),
(80, 3.20, 'Cancha serrana 200g'),
(81, 3.90, 'Piqueo Snax 100g'),
(82, 2.90, 'Maní salado 100g'),
(83, 5.90, 'Pasas 200g'),
(84, 2.50, 'Mazamorra lista Negrita 90g');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`idcliente`);

--
-- Indices de la tabla `detalles`
--
ALTER TABLE `detalles`
  ADD PRIMARY KEY (`idDetalles`),
  ADD KEY `idFactura` (`idFactura`),
  ADD KEY `idProductos` (`idProductos`);

--
-- Indices de la tabla `factura`
--
ALTER TABLE `factura`
  ADD PRIMARY KEY (`idfactura`),
  ADD KEY `idcliente` (`idcliente`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`idProductos`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `idcliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=165;

--
-- AUTO_INCREMENT de la tabla `detalles`
--
ALTER TABLE `detalles`
  MODIFY `idDetalles` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT de la tabla `factura`
--
ALTER TABLE `factura`
  MODIFY `idfactura` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `idProductos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalles`
--
ALTER TABLE `detalles`
  ADD CONSTRAINT `detalles_ibfk_1` FOREIGN KEY (`idFactura`) REFERENCES `factura` (`idfactura`),
  ADD CONSTRAINT `detalles_ibfk_2` FOREIGN KEY (`idProductos`) REFERENCES `productos` (`idProductos`);

--
-- Filtros para la tabla `factura`
--
ALTER TABLE `factura`
  ADD CONSTRAINT `factura_ibfk_1` FOREIGN KEY (`idcliente`) REFERENCES `cliente` (`idcliente`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
