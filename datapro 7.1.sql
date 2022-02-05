-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-02-2022 a las 07:08:54
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
  `Celular` double NOT NULL DEFAULT 0,
  `Nombre_Cliente` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `Celular`, `Nombre_Cliente`) VALUES
(1, 3005550000, 'Miguel'),
(2, 3015935402, 'David Fagua'),
(3, 3006667777, 'Miravel');

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
  `order_receiver_name` varchar(250) CHARACTER SET utf8 NOT NULL,
  `celular` double NOT NULL,
  `order_receiver_address` text CHARACTER SET utf8 NOT NULL,
  `order_total_before_tax` decimal(10,2) NOT NULL,
  `order_total_tax` decimal(10,2) NOT NULL,
  `order_tax_per` varchar(250) CHARACTER SET utf8 NOT NULL,
  `order_total_after_tax` double(10,2) NOT NULL,
  `order_amount_paid` decimal(10,2) NOT NULL,
  `order_total_amount_due` decimal(10,2) NOT NULL,
  `note` text CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `factura_orden`
--

INSERT INTO `factura_orden` (`order_id`, `user_id`, `order_date`, `order_receiver_name`, `celular`, `order_receiver_address`, `order_total_before_tax`, `order_total_tax`, `order_tax_per`, `order_total_after_tax`, `order_amount_paid`, `order_total_amount_due`, `note`) VALUES
(12134, 1, '2022-02-05 03:54:40', 'David Maldonado', 0, 'Calle esperanza ', '5000.00', '0.00', '', 5000.00, '5000.00', '0.00', 'Bla'),
(12135, 1, '2022-02-05 04:05:18', 'ghjgj', 0, 'jgj', '0.00', '0.00', '', 0.00, '0.00', '0.00', ''),
(12136, 1, '2022-02-05 04:05:26', 'jghjg', 0, '', '0.00', '0.00', '', 0.00, '0.00', '0.00', ''),
(12137, 1, '2022-02-05 04:05:32', 'fg', 0, '', '0.00', '0.00', '', 0.00, '0.00', '0.00', ''),
(12138, 1, '2022-02-05 04:05:40', 'gfhfgh', 0, '', '0.00', '0.00', '', 0.00, '0.00', '0.00', ''),
(12139, 1, '2022-02-05 04:05:58', 'sdfdsfsfd', 0, '', '0.00', '0.00', '', 0.00, '0.00', '0.00', ''),
(12140, 1, '2022-02-05 04:06:03', 'sdfsfs', 0, '', '0.00', '0.00', '', 0.00, '0.00', '0.00', ''),
(12141, 1, '2022-02-05 04:06:10', '3333', 0, '', '0.00', '0.00', '', 0.00, '0.00', '0.00', ''),
(12142, 1, '2022-02-05 04:06:28', 'dgfdg', 0, '', '0.00', '0.00', '', 0.00, '0.00', '0.00', ''),
(12143, 1, '2022-02-05 04:15:09', 'gjnvn', 0, '5345gd', '20000.00', '0.00', '', 20000.00, '0.00', '20000.00', ''),
(12144, 1, '2022-02-05 04:25:56', 'sfdsdf', 0, '', '0.00', '0.00', '', 0.00, '0.00', '0.00', ''),
(12145, 1, '2022-02-05 04:26:02', 'sfdsdf', 0, '', '0.00', '0.00', '', 0.00, '0.00', '0.00', ''),
(12146, 1, '2022-02-05 04:27:59', 'sdff', 0, '', '0.00', '0.00', '', 0.00, '0.00', '0.00', ''),
(12147, 1, '2022-02-05 04:28:03', 'sdfd', 0, '', '0.00', '0.00', '', 0.00, '0.00', '0.00', ''),
(12148, 1, '2022-02-05 04:28:08', 'sdf', 0, '', '0.00', '0.00', '', 0.00, '0.00', '0.00', '');

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
(1, 12134, '1', 'Pantalon rojo', '1', '5000', '5000'),
(2, 12135, '', '', '0', '0', '0'),
(3, 12136, '', '', '0', '0', '0'),
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
(15, 12148, '', '', '0', '0', '0');

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
(1, 'registro@baulphp.com', '12345', 'David', 'Toro Escorsese', 78979676, '', 1),
(3, 'fagua@mail.com', '12345', 'David', 'Fagua', 3015935402, 'Calle 100', 2);

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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipos_prenda`
--

CREATE TABLE `tipos_prenda` (
  `Codigo` int(11) NOT NULL,
  `Prenda` varchar(50) NOT NULL DEFAULT '',
  `Precio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tipos_prenda`
--

INSERT INTO `tipos_prenda` (`Codigo`, `Prenda`, `Precio`) VALUES
(0, 'Null', 1000),
(1, 'Pantalón', 5000),
(2, 'Camisa', 6000),
(3, 'Chaqueta', 10000);

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
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipos_prenda`
--
ALTER TABLE `tipos_prenda`
  ADD PRIMARY KEY (`Codigo`);

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
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12149;

--
-- AUTO_INCREMENT de la tabla `factura_orden_producto`
--
ALTER TABLE `factura_orden_producto`
  MODIFY `order_item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `factura_usuarios`
--
ALTER TABLE `factura_usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tipos_prenda`
--
ALTER TABLE `tipos_prenda`
  MODIFY `Codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
