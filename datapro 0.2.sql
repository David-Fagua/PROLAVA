-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-01-2022 a las 04:10:28
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
  `Celular` int(11) NOT NULL,
  `Nombre_Cliente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado`
--

CREATE TABLE `estado` (
  `En proceso` int(11) NOT NULL,
  `En Barra` int(11) NOT NULL,
  `Entregado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura`
--

CREATE TABLE `factura` (
  `Celular` double NOT NULL,
  `N_factura` int(11) NOT NULL,
  `Nombre_Cliente` varchar(50) NOT NULL DEFAULT '',
  `Cantidad` int(11) DEFAULT NULL,
  `Piezas` varchar(50) DEFAULT '',
  `Prenda` varchar(50) NOT NULL DEFAULT '',
  `Detalle` varchar(150) DEFAULT NULL,
  `Valor` int(11) NOT NULL,
  `Estado` varchar(45) NOT NULL,
  `Fecha_Recibido` date DEFAULT NULL,
  `Fecha_despacho` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `factura`
--

INSERT INTO `factura` (`Celular`, `N_factura`, `Nombre_Cliente`, `Cantidad`, `Piezas`, `Prenda`, `Detalle`, `Valor`, `Estado`, `Fecha_Recibido`, `Fecha_despacho`) VALUES
(3005550000, 0, 'Null', 2, '2', '0', 'Pantalon blanco, chapa azul, dibujos negros.', 0, '', NULL, '2020-01-01'),
(3015935402, 65432, 'Miguel', 2, '2', 'Pantalon', 'Falda', 6000, '', NULL, '2022-01-06');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipos_prenda`
--

CREATE TABLE `tipos_prenda` (
  `Codigo` int(11) DEFAULT NULL,
  `Prenda` varchar(50) NOT NULL DEFAULT '',
  `Precio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tipos_prenda`
--

INSERT INTO `tipos_prenda` (`Codigo`, `Prenda`, `Precio`) VALUES
(123, 'Pantalón', 5000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `nombre` varchar(50) NOT NULL,
  `usuario` int(11) NOT NULL,
  `email` varchar(30) NOT NULL,
  `privilegio` int(2) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `factura`
--
ALTER TABLE `factura`
  ADD PRIMARY KEY (`N_factura`),
  ADD KEY `Prenda` (`Prenda`) USING BTREE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
