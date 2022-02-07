-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-02-2022 a las 05:55:34
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `datapro`
--
CREATE DATABASE IF NOT EXISTS `datapro` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `datapro`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `celular` double NOT NULL DEFAULT 0,
  `nombre_cliente` varchar(50) NOT NULL DEFAULT '',
  `correo` varchar(50) DEFAULT NULL,
  `direccion` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `celular`, `nombre_cliente`, `correo`, `direccion`) VALUES
(1, 3005550000, 'Miguel', NULL, NULL),
(2, 3015935402, 'David Fagua', NULL, NULL),
(3, 3006667777, 'Miravel', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado`
--

CREATE TABLE `estado` (
  `id` int(2) NOT NULL,
  `Estado` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `estado`
--

INSERT INTO `estado` (`id`, `Estado`) VALUES
(1, 'En Barra'),
(2, 'En proceso'),
(3, 'Entregado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura_orden`
--

CREATE TABLE `factura_orden` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `fecha_entrega` date NOT NULL,
  `order_receiver_name` varchar(250) CHARACTER SET utf8 NOT NULL,
  `celular` double NOT NULL,
  `order_receiver_address` text CHARACTER SET utf8 NOT NULL,
  `order_total_before_tax` decimal(10,0) NOT NULL,
  `order_total_tax` decimal(10,0) NOT NULL,
  `order_tax_per` varchar(250) CHARACTER SET utf8 NOT NULL,
  `order_total_after_tax` double(10,0) NOT NULL,
  `order_amount_paid` decimal(10,0) NOT NULL,
  `order_total_amount_due` decimal(10,0) NOT NULL,
  `note` text CHARACTER SET utf8 NOT NULL,
  `dir_entrega` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `factura_orden`
--

INSERT INTO `factura_orden` (`order_id`, `user_id`, `order_date`, `fecha_entrega`, `order_receiver_name`, `celular`, `order_receiver_address`, `order_total_before_tax`, `order_total_tax`, `order_tax_per`, `order_total_after_tax`, `order_amount_paid`, `order_total_amount_due`, `note`, `dir_entrega`) VALUES
(12134, 1, '2022-02-05 03:54:40', '0000-00-00', 'David Maldonado', 0, 'Calle esperanza ', '10000', '0', '1', 10100, '5000', '5100', 'Bla', ''),
(12135, 1, '2022-02-05 04:05:18', '0000-00-00', 'ghjgj', 300, 'jgj', '4000', '0', '', 3991, '4000', '-9', '', ''),
(12136, 1, '2022-02-05 04:05:26', '0000-00-00', 'jghjg', 0, '', '1000', '0', '', 1000, '0', '1000', '', ''),
(12137, 1, '2022-02-05 04:05:32', '0000-00-00', 'fg', 0, '', '0', '0', '', 0, '0', '0', '', ''),
(12138, 1, '2022-02-05 04:05:40', '0000-00-00', 'gfhfgh', 0, '', '0', '0', '', 0, '0', '0', '', ''),
(12139, 1, '2022-02-05 04:05:58', '0000-00-00', 'sdfdsfsfd', 0, '', '0', '0', '', 0, '0', '0', '', ''),
(12140, 1, '2022-02-05 04:06:03', '0000-00-00', 'sdfsfs', 0, '', '0', '0', '', 0, '0', '0', '', ''),
(12141, 1, '2022-02-05 04:06:10', '0000-00-00', '3333', 0, '', '0', '0', '', 0, '0', '0', '', ''),
(12142, 1, '2022-02-05 04:06:28', '0000-00-00', 'dgfdg', 0, '', '0', '0', '', 0, '0', '0', '', ''),
(12143, 1, '2022-02-05 04:15:09', '0000-00-00', 'gjnvn', 0, '5345gd', '20000', '0', '', 20000, '0', '20000', '', ''),
(12144, 1, '2022-02-05 04:25:56', '0000-00-00', 'sfdsdf', 0, '', '0', '0', '', 0, '0', '0', '', ''),
(12145, 1, '2022-02-05 04:26:02', '0000-00-00', 'sfdsdf', 0, '', '0', '0', '', 0, '0', '0', '', ''),
(12146, 1, '2022-02-05 04:27:59', '0000-00-00', 'sdff', 0, '', '0', '0', '', 0, '0', '0', '', ''),
(12147, 1, '2022-02-05 04:28:03', '0000-00-00', 'sdfd', 0, '', '0', '0', '', 0, '0', '0', '', ''),
(12148, 1, '2022-02-05 04:28:08', '0000-00-00', 'sdf', 0, '', '0', '0', '', 0, '0', '0', '', ''),
(12149, 1, '2022-02-06 19:01:41', '0000-00-00', 'Daniel Salazar ', 0, 'Calle fakdjfb', '2100', '0', '', 2100, '2100', '0', 'mo', ''),
(12150, 1, '2022-02-06 19:02:30', '0000-00-00', 'gdsffsd', 0, '', '16000', '0', '', 16000, '0', '16000', '', ''),
(12151, 1, '2022-02-06 19:44:04', '0000-00-00', 'prueba', 0, 'f', '0', '0', '', 0, '0', '0', '', ''),
(12152, 1, '2022-02-06 19:46:04', '0000-00-00', 'Ola', 0, '', '305525', '0', '', 305525, '0', '305525', '', ''),
(12153, 1, '2022-02-06 22:03:58', '0000-00-00', 'jhfdjkfh', 0, 'hdhj', '5000', '0', '', 5000, '0', '5000', '', ''),
(12154, 1, '2022-02-06 22:04:48', '0000-00-00', 'aca', 0, '', '7090', '0', '', 7090, '0', '7090', '', ''),
(12155, 1, '2022-02-06 22:06:25', '0000-00-00', 'fgsg', 0, '', '0', '0', '', 0, '0', '0', '', ''),
(12156, 1, '2022-02-06 22:42:08', '0000-00-00', '12313', 0, '321313', '375972', '0', '', 375972, '0', '375972', 'jfxhdshgdfghdfh', ''),
(12157, 1, '2022-02-06 22:44:07', '0000-00-00', 'Hello ido oh', 0, 'JD sip bb', '25000', '0', '', 25000, '0', '25000', 'Ya hay tu i', ''),
(12158, 1, '2022-02-06 23:06:05', '0000-00-00', ' ewrwe', 3015642389, '', '0', '0', '', 0, '0', '0', 'werwr', ''),
(12159, 1, '2022-02-06 23:41:56', '0000-00-00', 'ghfgfh', 0, '', '232720', '0', '', 232720, '0', '232720', '', ''),
(12160, 1, '2022-02-06 23:47:31', '0000-00-00', 'sdfs', 0, '', '0', '0', '', 0, '0', '0', '', ''),
(12161, 1, '2022-02-06 23:52:07', '0000-00-00', 'hgfhf', 31231, 'hgf', '40000', '0', '', 40000, '0', '40000', '', ''),
(12162, 1, '2022-02-06 23:54:32', '0000-00-00', 'ter', 42324242, '', '0', '0', '', 0, '0', '0', '', ''),
(12163, 1, '2022-02-06 23:55:14', '0000-00-00', '123456d', 1234567, '', '12000', '0', '', 12000, '0', '12000', '', ''),
(12164, 1, '2022-02-07 02:05:59', '0000-00-00', 'asdf', 134324, 'wrerwer', '0', '0', '', 0, '0', '0', '', 'aqui'),
(12165, 1, '2022-02-07 02:09:35', '0000-00-00', 'aaaa', 22222, 'addasdaasdaad', '0', '0', '', 0, '0', '0', 'asda', 'adadasdad'),
(12166, 1, '2022-02-07 02:28:31', '2022-02-15', '234', 24243234, '234242', '0', '0', '', 0, '0', '0', '', 'fecha_entrega'),
(12167, 1, '2022-02-07 02:44:33', '0000-00-00', 'fdgdg', 32424, 'dfsgfsdf', '9333', '0', '', 9333, '0', '9333', '', ''),
(12168, 1, '2022-02-07 02:50:27', '2022-02-21', 'gdfgdg', 444444, 'gsdfgfdf', '14652', '0', '', 14652, '0', '14652', 'dgdg', 'dfgdfg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura_orden_producto`
--

CREATE TABLE `factura_orden_producto` (
  `order_item_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `item_code` varchar(250) NOT NULL,
  `item_name` varchar(250) NOT NULL,
  `order_item_quantity` decimal(10,0) NOT NULL,
  `order_item_price` decimal(10,0) NOT NULL,
  `order_item_final_amount` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `factura_orden_producto`
--

INSERT INTO `factura_orden_producto` (`order_item_id`, `order_id`, `item_code`, `item_name`, `order_item_quantity`, `order_item_price`, `order_item_final_amount`) VALUES
(4, 12137, '', '', '0', '0', '0'),
(5, 12138, '', '', '0', '0', '0'),
(6, 12139, '', '', '0', '0', '0'),
(7, 12140, '', '', '0', '0', '0'),
(8, 12141, '', '', '0', '0', '0'),
(9, 12142, '', '', '0', '0', '0'),
(10, 12143, '', '', '4', '5000', '20000'),
(11, 12144, '', '', '0', '0', '0'),
(12, 12145, '', '', '0', '0', '0'),
(13, 12146, '', '', '0', '0', '0'),
(14, 12147, '', '', '0', '0', '0'),
(15, 12148, '', '', '0', '0', '0'),
(16, 12149, '1', 'Pantalon', '1', '2100', '2100'),
(17, 12150, '', 'fdg', '2', '8000', '16000'),
(18, 12151, '', 'Aqui', '0', '0', '0'),
(19, 12152, '', 'Camisa', '55', '5555', '305525'),
(20, 12153, '', 'Camiseta', '1', '5000', '5000'),
(21, 12154, '', 'Camiseta', '2', '3545', '7090'),
(22, 12155, '', 'Camiseta', '0', '0', '0'),
(23, 12156, '', 'Camiseta', '12', '31331', '375972'),
(24, 12157, '1', 'Pantalón', '5', '5000', '25000'),
(25, 12158, '', 'Camiseta', '0', '0', '0'),
(26, 12159, '', 'Camiseta', '5', '46544', '232720'),
(27, 12160, '', 'Camiseta', '0', '0', '0'),
(28, 12161, '', 'Camiseta', '4', '10000', '40000'),
(29, 12162, '', 'Camiseta', '0', '0', '0'),
(35, 12163, '', 'Camiseta', '6', '2000', '12000'),
(37, 12134, '1', 'Pantalon rojo', '2', '5000', '10000'),
(40, 12136, '', 'gfdg', '1', '1000', '1000'),
(58, 12135, '', 'dc', '2', '2000', '4000'),
(59, 12164, '', 'Camiseta', '0', '0', '0'),
(60, 12165, '', 'Camiseta', '0', '0', '0'),
(61, 12166, '', 'Camiseta', '0', '0', '0'),
(64, 12167, 'e', 'Camiseta', '3', '3111', '9333'),
(65, 12168, '', 'Camisa', '33', '444', '14652');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura_usuarios`
--

CREATE TABLE `factura_usuarios` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `clave` varchar(100) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `address` text NOT NULL,
  `rol_id` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `factura_usuarios`
--

INSERT INTO `factura_usuarios` (`id`, `email`, `clave`, `first_name`, `last_name`, `mobile`, `address`, `rol_id`) VALUES
(1, 'registro@baulphp.com', '12345', 'David', 'Toro  Escorsese', 78979676, '', 1),
(3, 'fagua@mail.com', '12345', 'David', 'Fagua', 3015935402, 'Calle 100', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `precio`
--

CREATE TABLE `precio` (
  `id` int(11) NOT NULL,
  `precio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `prenda` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `prenda`) VALUES
(0, 'Camiseta'),
(1, 'Pantalón'),
(2, 'Camisa'),
(3, 'Chaqueta'),
(11, ' df'),
(12, ' Pantalón Cuero'),
(13, ' Pantalón Pana');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `rol` varchar(50) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `rol`) VALUES
(1, 'Admin'),
(2, 'User');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `estado`
--
ALTER TABLE `estado`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `factura_orden`
--
ALTER TABLE `factura_orden`
  ADD PRIMARY KEY (`order_id`);

--
-- Indices de la tabla `factura_orden_producto`
--
ALTER TABLE `factura_orden_producto`
  ADD PRIMARY KEY (`order_item_id`);

--
-- Indices de la tabla `factura_usuarios`
--
ALTER TABLE `factura_usuarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rol_id` (`rol_id`);

--
-- Indices de la tabla `precio`
--
ALTER TABLE `precio`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `estado`
--
ALTER TABLE `estado`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `factura_orden`
--
ALTER TABLE `factura_orden`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12169;

--
-- AUTO_INCREMENT de la tabla `factura_orden_producto`
--
ALTER TABLE `factura_orden_producto`
  MODIFY `order_item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT de la tabla `factura_usuarios`
--
ALTER TABLE `factura_usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `precio`
--
ALTER TABLE `precio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
