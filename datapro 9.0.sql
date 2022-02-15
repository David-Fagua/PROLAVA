-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-02-2022 a las 22:11:19
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
(3, 3006667777, 'Miravel', NULL, NULL),
(4, 3005556702, 'Angie Albares ', 'ange@mail.com', 'Calle 100'),
(5, 0, '', '', '');

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
(9999, 1, '2022-02-05 03:54:40', '0000-00-00', 'David Maldonado', 30003999334, 'Calle esperanza ', '4000', '0', '', 4000, '5000', '-1000', 'Pantalon rojo talla 4\r\nPantalon negro rasgado talla 4\r\npantalon azul talla 4 mancha en la pierna derecha', 'calle de entrega');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura_orden_producto`
--

CREATE TABLE `factura_orden_producto` (
  `order_item_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `item_code` varchar(250) NOT NULL,
  `item_name` varchar(250) NOT NULL,
  `servicio` varchar(50) NOT NULL,
  `order_item_quantity` decimal(10,0) NOT NULL,
  `order_item_price` decimal(10,0) NOT NULL,
  `order_item_final_amount` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
(1, 'registro@baulphp.com', '12345', 'Carlos', 'Escorsese', 78979676, '', 1),
(3, 'fagua@mail.com', '12345', 'David', 'Fagua', 3015935402, 'Calle 100', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `precio`
--

CREATE TABLE `precio` (
  `id` int(11) NOT NULL,
  `precio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `precio`
--

INSERT INTO `precio` (`id`, `precio`) VALUES
(1, 1000);

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
(11, 'Jean'),
(12, ' Pantalón Cuero'),
(13, ' Pantalón Pana'),
(17, 'Cortina ');

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
-- Estructura de tabla para la tabla `servicio`
--

CREATE TABLE `servicio` (
  `id` int(11) NOT NULL,
  `ser` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `servicio`
--

INSERT INTO `servicio` (`id`, `ser`) VALUES
(1, 'Lavado'),
(2, 'Lavado y Prensado '),
(3, 'Lavado y Planchado '),
(4, 'Planchado'),
(5, 'Prensado '),
(6, 'Tintura');

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
-- Indices de la tabla `servicio`
--
ALTER TABLE `servicio`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `estado`
--
ALTER TABLE `estado`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `factura_orden`
--
ALTER TABLE `factura_orden`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12175;

--
-- AUTO_INCREMENT de la tabla `factura_orden_producto`
--
ALTER TABLE `factura_orden_producto`
  MODIFY `order_item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT de la tabla `factura_usuarios`
--
ALTER TABLE `factura_usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `precio`
--
ALTER TABLE `precio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `servicio`
--
ALTER TABLE `servicio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
