-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-01-2022 a las 09:34:56
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
(2, 3015935402, 'David Fagua');

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
-- Estructura de tabla para la tabla `factura`
--

CREATE TABLE `factura` (
  `Celular` double DEFAULT NULL,
  `N_factura` int(11) NOT NULL,
  `Nombre_Cliente` varchar(50) DEFAULT NULL,
  `Cantidad` int(11) DEFAULT NULL,
  `Piezas` varchar(50) DEFAULT NULL,
  `Prenda` varchar(50) DEFAULT NULL,
  `Detalle` varchar(150) DEFAULT NULL,
  `Valor` int(11) DEFAULT NULL,
  `Estado` int(2) DEFAULT NULL,
  `Fecha_Recibido` date DEFAULT NULL,
  `Fecha_despacho` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `factura`
--

INSERT INTO `factura` (`Celular`, `N_factura`, `Nombre_Cliente`, `Cantidad`, `Piezas`, `Prenda`, `Detalle`, `Valor`, `Estado`, `Fecha_Recibido`, `Fecha_despacho`) VALUES
(3005550000, 1, 'Miguel', 2, '2', '0', 'Pantalon blanco, chapa azul, dibujos negros.', 0, 0, NULL, '2020-01-01'),
(3005550000, 2, 'Miguel', 2, '2', '0', 'Falda', 6000, 0, NULL, '2022-01-06');

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
(1, 'Pantalón', 5000),
(2, 'Camisa', 6000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `name` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `username` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `clave` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `rol_id` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `name`, `username`, `clave`, `rol_id`) VALUES
(1, 'David Murillo', '1000111000', 'qwerty12', 1),
(2, 'Samuel Rojas', '1000555333', 'qwerty', 2);

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
-- Indices de la tabla `factura`
--
ALTER TABLE `factura`
  ADD PRIMARY KEY (`N_factura`),
  ADD KEY `Estado` (`Estado`),
  ADD KEY `Prenda` (`Prenda`),
  ADD KEY `Valor` (`Valor`),
  ADD KEY `Celular` (`Celular`),
  ADD KEY `Nombre_Cliente` (`Nombre_Cliente`);

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
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rol_id` (`rol_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `estado`
--
ALTER TABLE `estado`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tipos_prenda`
--
ALTER TABLE `tipos_prenda`
  MODIFY `Codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `Roles` FOREIGN KEY (`rol_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
