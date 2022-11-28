-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-11-2022 a las 17:04:50
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `card`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `categoria` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `categoria`) VALUES
(11, 'Guitarras'),
(12, 'Acordeones'),
(13, 'Teclados'),
(14, 'Baterias'),
(15, 'Asesorios');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `descripcion` text NOT NULL,
  `precio_normal` decimal(10,2) NOT NULL,
  `precio_rebajado` decimal(10,2) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `imagen` varchar(50) NOT NULL,
  `id_categoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `descripcion`, `precio_normal`, `precio_rebajado`, `cantidad`, `imagen`, `id_categoria`) VALUES
(10, 'Guitarra', 'Guitarro color miel y negro', '3000.00', '2500.00', 20, '20221029043821.jpg', 11),
(11, 'Guitarra', 'Guitarra color chocolate', '3300.00', '2999.00', 20, '20221029043935.jpg', 11),
(12, 'Guitarra Electrica', 'Guitarra electrica color arena ', '5000.00', '4699.00', 20, '20221029044256.jpg', 11),
(13, 'Guitarra Electrica', 'Guitarra Electrica color rojo', '6000.00', '5799.00', 20, '20221029045603.jpg', 11),
(14, 'Guitarra', 'Guitarra color miel con chocolate', '5000.00', '4689.00', 20, '20221029045721.jpg', 11),
(15, 'Guitarra', 'Guitarra color blanco, azul y arcoiris', '4000.00', '3669.00', 20, '20221029045848.jpg', 11),
(16, 'Guitarra', 'Guitarra electrica en forma de pico', '7000.00', '5999.00', 20, '20221029050228.jpg', 11),
(17, 'Guitarra', 'Guitarra electrica con diamantes', '30000.00', '27000.00', 20, '20221029050420.jpg', 11),
(18, 'Acordeón ', 'Acordeón  color negro con dorado ', '10000.00', '9000.00', 15, '20221029051154.jpg', 12),
(19, 'Acordeón', 'Acordeón color Blanco con rojo ', '15000.00', '10000.00', 20, '20221029051357.jpg', 12),
(20, 'Acordeón', 'Acordeón color Plateado y brillo', '18000.00', '17000.00', 35, '20221029051652.jpg', 12),
(21, 'Acordeón', 'Acordeón Color Negro Con Rojo ', '20000.00', '17000.00', 38, '20221029051807.jpg', 12),
(22, 'Acordeón', 'Acordeón Color Azul Rey con Negro ', '25000.00', '23000.00', 40, '20221029051957.jpg', 12),
(23, 'Acordeón', 'Acordeón Color Gris Platinado', '30000.00', '27000.00', 28, '20221029052234.jpg', 12),
(24, 'Acordeón', 'Acordeón Color Verde Claro y Dorado ', '35000.00', '33000.00', 20, '20221029052409.jpg', 12),
(25, 'Acordeón', 'Acordeón De la Bandera Color Verde Blanco y Rojo  ', '50000.00', '45000.00', 50, '20221029052604.jpg', 12),
(26, 'Teclado', 'Teclado con asisento incluido', '5000.00', '4500.00', 10, '20221029053209.jpg', 13),
(27, 'Teclado', 'Teclado sin base para mesa', '3000.00', '2500.00', 10, '20221029053302.jpg', 13),
(28, 'Teclado ', 'Con base portatil', '2000.00', '1800.00', 10, '20221029053444.jpg', 13),
(29, 'Piano', 'Piano hecho de vidrio', '30000.00', '28000.00', 10, '20221029053555.jpg', 13),
(30, 'Piano', 'Piano color chocolate con asiento incluido', '27000.00', '25000.00', 10, '20221029053706.jpg', 13),
(31, 'Bateria', 'Bateria Tama en un color madera obscuro', '10000.00', '9700.00', 10, '20221029054247.jpg', 14),
(32, 'Bateria', 'Bateria en Color negro con platado', '15000.00', '13500.00', 10, '20221029054504.jpg', 14),
(33, 'Bateria', 'Bateria en color arena con platado', '13000.00', '11000.00', 10, '20221029054611.jpg', 14),
(34, 'Bateria', 'Bateria color rojo con negra', '9000.00', '8500.00', 10, '20221029054711.jpg', 14),
(35, 'Collar', 'Collar con Figura de Guitarra ', '200.00', '100.00', 30, '20221029055514.jpg', 15),
(36, 'Collar ', 'Collar Dorado con Figura de Guitarra ', '350.00', '290.00', 50, '20221029055645.jpg', 15),
(37, 'Esclava ', 'Esclava con Figura de Guitarra', '400.00', '350.00', 25, '20221029055925.jpg', 15),
(38, 'Micrófono ', 'Micrófono Color Negro y Plateado con Piedras ', '600.00', '480.00', 35, '20221029060143.jpg', 15),
(39, 'Collar ', 'Collar Color Negro con Figura de Tono Musical ', '200.00', '180.00', 60, '20221029060339.jpg', 15),
(40, 'Camisa ', 'Camisa Color Negro con Diseño de Foo Fighters', '500.00', '350.00', 80, '20221029060709.jpg', 15),
(41, 'Camisa', 'Camisa Color Negro con Diseño de Rolling Stones', '500.00', '300.00', 50, '20221029060844.jpg', 15);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `usuario` varchar(20) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `clave` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `nombre`, `email`, `clave`) VALUES
(1, 'admin', 'admin', 'jose@gmail.com', '123456789'),
(4, '16627', '', 'usuario1@gmail.com', '$2y$10$EHv21ioM9r7jouU0wwODtuzkeseTXDLTCOek8ML9uvySOaRmXvUaO'),
(7, 'admin', 'Jose Eugenio', '', '21232f297a57a5a743894a0e4a801fc3'),
(8, 'caro.herrera', '', 'caro.herrera@gmail.com', '$2y$10$1sIcLrXrU2ThqCD2x08b8.hGzMhk4BS7fknXrOomzaGNnaylRDYIe'),
(9, 'Michel', '', 'Michel@gmail.com', '$2y$10$aAefALtDxBu5UIlI3PoJmesKjcdAiXAgznC4D3hjEQf/mmsE4vThu'),
(10, 'Hola', '', 'escritorio@gmail.com', '$2y$10$Q4/PAxMnblozpnPbkgkN4.l9eTbSQ6FOOrrGVXMQRlLB831GAwRDq'),
(11, 'Juan', '', '20@gmail.com', '$2y$10$/xHow9IzTUUzua5njPIObegw/UIkE4UTIAFNHV57962rjndZBP0b.'),
(12, 'Juan1', '', '201@gmail.com', '$2y$10$YZymYKfZfAQmLgZ6tfVwsenx.4pk.cjtJId8HOZwX68ZnaMjMK6.6');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_categoria` (`id_categoria`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
