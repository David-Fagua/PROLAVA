-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-02-2022 a las 15:54:45
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
  `dir_entrega` text NOT NULL,
  `addresss` text CHARACTER SET utf8 NOT NULL,
  `order_total_before_tax` decimal(10,0) NOT NULL,
  `order_total_tax` decimal(10,0) NOT NULL,
  `order_tax_per` varchar(250) CHARACTER SET utf8 NOT NULL,
  `order_total_after_tax` double(10,0) NOT NULL,
  `order_amount_paid` decimal(10,0) NOT NULL,
  `order_total_amount_due` decimal(10,0) NOT NULL,
  `note` text CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `factura_orden`
--

INSERT INTO `factura_orden` (`order_id`, `user_id`, `order_date`, `fecha_entrega`, `order_receiver_name`, `celular`, `dir_entrega`, `addresss`, `order_total_before_tax`, `order_total_tax`, `order_tax_per`, `order_total_after_tax`, `order_amount_paid`, `order_total_amount_due`, `note`) VALUES
(9999, 1, '2022-02-18 23:37:36', '2022-02-19', 'prueba ', 1000000000000, 'Prueba', 'Prueba ', '9000', '0', '', 9000, '9000', '0', 'Pruebas'),
(10000, 1, '2022-02-18 23:55:21', '2022-02-24', 'gfhgf', 0, '', '', '296480', '0', '', 296480, '0', '296480', ''),
(10001, 1, '2022-02-19 16:12:46', '0000-00-00', 'stev nuñez', 3102785726, '', '', '0', '0', '', 0, '0', '0', ''),
(10002, 1, '2022-02-19 16:36:18', '0000-00-00', 'stev nuñez', 3102785726, '', '', '0', '0', '', 0, '0', '0', ''),
(10003, 1, '2022-02-19 18:46:48', '0000-00-00', 'martha', 3107559491, '', '', '124090', '0', '', 124090, '0', '124090', 'Camiseta'),
(10004, 1, '2022-02-19 20:37:20', '0000-00-00', 'alba cerrano', 3105804062, '', '', '18000', '0', '', 18000, '0', '18000', 'camiseta tomy \r\ncamisa acuadros \r\n2 camisas blancas '),
(10005, 1, '2022-02-19 21:21:19', '2022-02-21', 'Henry Juyo', 3123431628, '', '', '12300', '0', '', 12300, '0', '12300', 'chaqueta roja \r\nchaleco azul '),
(10006, 1, '2022-02-19 22:09:14', '2022-02-23', 'Prueba lista', 3212165, 'Calle 21', 'Carre@gdfg', '2666', '0', '', 2666, '0', '2666', 'Simón dice... que arreglemos esta página. Nos dejaremos de bromas y nos enfocaremos en poner todo en funcionamiento lo más pronto posible.'),
(10007, 1, '2022-02-19 22:12:22', '2022-02-21', 'Jaime Garzon ', 300556699, 'Calle 12 c 46', 'jaim@email.com', '160000', '0', '', 160000, '0', '160000', 'Simón dice... que arreglemos esta página. Nos dejaremos de bromas y nos enfocaremos en poner todo en funcionamiento lo más pronto posible.'),
(10008, 1, '2022-02-19 23:49:12', '0000-00-00', 'aaaaaaaaaaaa', 1111111111111, '', 'aaaaaaaaaa', '0', '0', '', 0, '0', '0', 'aaaaaaaa'),
(10009, 1, '2022-02-21 15:00:29', '0000-00-00', 'NORA RIVERA', 3133204147, '', '', '31500', '0', '', 31500, '0', '31500', 'PANTALONES: 2 AZ, 2CF\r\n3 CAMISAS: RS, BL, BG'),
(10010, 1, '2022-02-21 15:34:05', '0000-00-00', 'CESAR BERMUDEZ', 3134023653, '', '', '5500', '0', '', 5500, '0', '5500', 'BLANCO TALLA M REVISAR MANCHAS DE LICOR'),
(10011, 1, '2022-02-21 15:50:52', '0000-00-00', 'CARLOS PARRA', 3114735248, '', '', '9000', '0', '', 9000, '0', '9000', 'PANT. CF, CAMISETA BL/NG'),
(10012, 1, '2022-02-21 16:47:12', '2022-02-23', 'ESPERANZA CERQUERA ', 3227968084, '', '', '18000', '0', '', 18000, '0', '18000', ''),
(10013, 1, '2022-02-21 16:57:56', '2022-02-22', 'NORA RIVERA ', 3133204147, '', '', '7000', '0', '', 7000, '0', '7000', 'REVISAR CUELLO Y MANCHAS '),
(10014, 1, '2022-02-21 17:41:21', '2022-02-22', 'ANGELA CASTAÑEDA ', 3008907066, '', '', '28000', '0', '', 28000, '0', '28000', 'VESTIDO DE PAÑO NEGRO ARTUROP CALLE \r\nVESTIDO DE PAÑO GRIS ARTURO CALLE \r\nSLEEPING BLANCO MANCHADO '),
(10015, 1, '2022-02-21 18:33:45', '2022-02-23', 'JORGE ROJAS', 3132860479, '', '', '19000', '0', '', 19000, '0', '19000', 'cobija termica color cafe y de colores '),
(10016, 1, '2022-02-21 21:54:34', '0000-00-00', 'KARLA TRUJILLO', 3168382847, '', '', '30500', '0', '', 30500, '0', '30500', 'CHAQUETA DE CUERINA NEGRA \r\nCHAQUETA SINTETICA NEGRA \r\nCHAQUETA NEGRA CON FORRO DE PELUCHE '),
(10017, 1, '2022-02-21 21:57:18', '2022-02-22', 'LEIDY PAEZ ', 3003731180, '', '', '4500', '0', '', 4500, '0', '4500', 'CROP TOP BLANCO DESMANCHAR '),
(10018, 1, '2022-02-21 22:07:23', '2022-02-22', 'PASTOR SANABRIA ', 3106092476, '', '', '4500', '0', '', 4500, '0', '4500', 'CAMISA NARANJA A CUADROS '),
(10019, 1, '2022-02-21 22:48:41', '2022-02-23', 'PILAR HERNANDEZ ', 0, 'CARRERA 23 #14 20 TORRE 9 401', '', '46000', '0', '', 46000, '0', '46000', 'EDREDON BLANCO CON 2 FUNDAS CON MANCHAS AMARILLAS \r\nEDREDON BEIGE DE FLORES '),
(10020, 1, '2022-02-21 23:02:25', '2022-02-22', 'ANDREA PADILLA ', 3212667745, '', '', '6500', '0', '', 6500, '0', '6500', ' CHAQUETA ROJA TOMMY '),
(10021, 1, '2022-02-21 23:49:13', '2022-02-22', 'YEIMY MAECHA ', 3014945814, '', '', '9500', '0', '', 9500, '0', '9500', 'TRAJE DE TEKONDO '),
(10022, 1, '2022-02-22 14:09:06', '0000-00-00', 'CARMEN CUENCA', 3114707265, '', '', '6500', '0', '', 6500, '0', '6500', 'CHAQUETA RJ/BL BERSHKA'),
(10023, 1, '2022-02-22 15:29:36', '0000-00-00', 'JORGE BARRAGAN', 3112315886, '', '', '21500', '0', '', 21500, '0', '21500', 'CAMISA NG, UNI: AZ, FORRO NG'),
(10024, 1, '2022-02-22 15:42:32', '0000-00-00', 'PATRICIA CASTELLANOS', 3118136047, '', '', '25000', '0', '', 25000, '25000', '0', 'EDREDON RS REVISAR MANCHAS\r\nBUSO HILO P.ROSA'),
(10025, 1, '2022-02-22 15:45:08', '0000-00-00', 'PATRICIA CASTELLAMOS', 3118136047, '', '', '19000', '0', '', 19000, '19000', '0', 'NEGRO BAXTER DAMA 10'),
(10026, 1, '2022-02-22 16:18:58', '0000-00-00', 'LUZ DARY COTEZ', 3202689292, '', '', '19000', '0', '', 19000, '0', '19000', 'EDREDON PEQUEÑO BEIGE \r\nABONO 10.000'),
(10027, 1, '2022-02-22 16:21:07', '0000-00-00', 'LAURA CORTEZ ', 3203464880, '', '', '7000', '0', '', 7000, '7000', '0', 'CHAQUETA COLOR CAFE GRUESA \r\n\r\nCANCELADO '),
(10028, 1, '2022-02-22 16:23:41', '0000-00-00', 'MARIO MARTINEZ ', 3202652378, '', '', '6500', '0', '', 6500, '5000', '1500', 'CHAQUETA COLOR AZUL FORRO NEGRO DESCOSIDA EN PUÑO PARTE DE ADENTRO\r\n\r\nABONO 5000'),
(10029, 1, '2022-02-22 16:36:15', '2022-02-23', 'ANGEL RODRIGUEZ ', 3016337772, '', '', '4500', '0', '', 4500, '0', '4500', 'CAMISA AZUL CON RAYAS REVISAR CUELLO M,ANCHAS AMARILLAS'),
(10030, 1, '2022-02-22 18:07:14', '2022-02-24', 'JHON DUARTE ', 3164647798, '', '', '36000', '0', '', 36000, '0', '36000', 'COBIJA TERMICA AZUL CON CAFE LEON \r\nCOBIJA DELGADA NEGRA '),
(10031, 1, '2022-02-22 18:08:57', '0000-00-00', 'JHON DUARTE ', 3164647798, '', '', '4500', '0', '', 4500, '0', '4500', 'PANTALON DRIL CAFE '),
(10032, 1, '2022-02-22 19:10:24', '2022-02-25', 'LUISA GONZALEZ ', 3102423304, '', '', '20000', '0', '', 20000, '0', '20000', 'CHAQUETA DE CUERINA NEGRA CON CINTURON Y PELUCHE EN CAPOTA '),
(10033, 1, '2022-02-22 21:35:51', '2022-02-23', 'SANDAR SALINAS ', 3124362402, '', '', '4500', '0', '', 4500, '0', '4500', 'PANTALON DRIL AZUL OSC'),
(10034, 1, '2022-02-22 21:43:43', '2022-02-24', 'MARTHA BARAJAS ', 314489523, '', '', '7000', '0', '', 7000, '0', '7000', 'CHAQUETA AMARILLA REVISAR CUELLO Y PUÑOS '),
(10035, 1, '2022-02-23 12:47:25', '2022-02-23', 'Anselmo Herrera', 3213220254, '', '', '10000', '0', '', 10000, '0', '10000', '2 vestidos de paño para planchagris y beige'),
(10036, 1, '2022-02-23 13:41:10', '0000-00-00', 'WILMAR PEREZ', 3123226465, '', '', '15500', '0', '', 15500, '0', '15500', 'PANT. AZ, CHAQ V.TINTO'),
(10037, 1, '2022-02-23 13:43:20', '0000-00-00', 'CECILIA BELLO', 3123226465, '', '', '11700', '0', '', 11700, '0', '11700', 'BLAZER AZ, CHAQ TIPO ABRIGO NG'),
(10038, 1, '2022-02-23 13:57:59', '0000-00-00', 'JAVITEX', 3202632809, '', '', '43000', '0', '', 43000, '0', '43000', 'PANT FC, AZ, GR\r\nEDRE: BG, 2 AZ, PANDA, 2 FUNDAS'),
(10039, 1, '2022-02-23 14:11:37', '0000-00-00', 'ROSARIO LEON', 0, '', '', '4500', '0', '', 4500, '0', '4500', 'BG REVISAR MANCHAS'),
(10040, 1, '2022-02-23 14:13:58', '0000-00-00', 'ROSARIO LEON', 3213046969, '', '', '6000', '0', '', 6000, '0', '6000', 'GRIS LARGO'),
(10041, 1, '2022-02-23 14:17:15', '0000-00-00', 'DEISY BERNAL', 3137886433, '', '', '4500', '0', '', 4500, '0', '4500', 'NEGRO KOAJ'),
(10042, 1, '2022-02-23 15:41:28', '2022-02-26', 'ELIZABETH RODRIGUEZ', 3125085736, '', '', '32000', '0', '', 32000, '0', '32000', 'Chaqueta nega adas en cuerina faltan dos taches -\r\nchaqueta Rokos cuerina un rasguño muy suave en la espalda'),
(10043, 1, '2022-02-23 17:02:17', '2022-02-25', 'JAVIER PIÑEROS ', 3012538560, '', '', '12000', '0', '', 12000, '0', '12000', 'CHAQUETA DE MOTO GRIS CON NEGRO SIN PROTECCIONES '),
(10044, 1, '2022-02-23 17:34:35', '0000-00-00', 'ANDRES BELTRAN ', 3013324208, '', '', '12000', '0', '', 12000, '12000', '0', 'DOS CAMISAS EXTRA BLACA Y BEIGE '),
(10045, 1, '2022-02-23 18:06:35', '2022-02-25', 'JAIRO RIAÑO ', 0, '', '', '10000', '0', '', 10000, '0', '10000', 'PELUCHE DE PERRO BEIGE CON ROSADO '),
(10046, 1, '2022-02-23 18:17:59', '2022-02-24', 'MARIA ZULUAGA ', 3124819092, '', '', '5200', '0', '', 5200, '0', '5200', 'BLEIZER AZUL H '),
(10047, 1, '2022-02-23 18:29:08', '2022-02-24', 'CAROLINA URBANO ', 3016751144, '', '', '13000', '0', '', 13000, '0', '13000', 'BUSO DE HILO ROSADO \r\nRUANA MORADA A CUADROS '),
(10048, 1, '2022-02-23 19:15:21', '2022-02-24', 'ALCIRA QUIJAN ', 30233310257, '', '', '11500', '0', '', 11500, '0', '11500', 'BLEIZER GRIS \r\nCHAQUETA EN PANA FORRO OVEJERO '),
(10049, 1, '2022-02-23 19:56:38', '0000-00-00', 'DAVID CASALLAS ', 3144303183, '', '', '9000', '0', '', 9000, '9000', '0', 'CAMISAS MANGA LARGA NG, BL. '),
(10050, 1, '2022-02-23 21:00:35', '2022-02-24', 'JUAN  CARLOS ', 3118524059, '', '', '4500', '0', '', 4500, '0', '4500', 'PANTALON DE PAÑO NEGRO '),
(10051, 1, '2022-02-23 21:50:05', '2022-02-24', 'ANGELA CASTAÑEDA ', 3008907066, '', '', '5200', '0', '', 5200, '0', '5200', 'BLEIZER  VERDE ZAPOTE ARTURO CALLE '),
(10052, 1, '2022-02-23 22:03:54', '2022-02-24', 'DIEGO FERNANDO MELO ', 3212501693, '', '', '6500', '0', '', 6500, '0', '6500', 'CHAQUETA AZUL SON CORDON '),
(10053, 1, '2022-02-23 22:50:03', '0000-00-00', 'MIGUEL ROJAS ', 3174295101, '', '', '4500', '0', '', 4500, '0', '4500', 'PANTALON DE PAÑO NEGRO '),
(10054, 1, '2022-02-23 22:57:40', '0000-00-00', 'JHON VELAZCO', 3138386968, '', '', '22500', '0', '', 22500, '0', '22500', 'TRAJE DE PAÑO NEGRO PANTALON CORREITA SUELTA, CHALECO, BLEIZER, CAMISA BLANCA CON BOTON A PUNTO DE CAER.\r\n\r\nCAMISA AZUL DESPERCUDIR CUELLOPUÑOS '),
(10055, 1, '2022-02-23 23:27:57', '2022-02-26', 'LEONARDO GUEVARA ', 3214226046, '', '', '19000', '0', '', 19000, '0', '19000', 'PANTALON VERDE PARA TINTURAR A VERDE '),
(10056, 1, '2022-02-24 14:37:00', '0000-00-00', 'LUZ NAVARRETE', 3118121669, '', '', '9000', '0', '', 9000, '0', '9000', 'NG TALLA 14, AZ CON QUIEBRE');

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

--
-- Volcado de datos para la tabla `factura_orden_producto`
--

INSERT INTO `factura_orden_producto` (`order_item_id`, `order_id`, `item_code`, `item_name`, `servicio`, `order_item_quantity`, `order_item_price`, `order_item_final_amount`) VALUES
(4, 10001, 'Lavado y Planchado ', 'Camiseta', '', '3', '0', '0'),
(7, 10002, 'Lavado y Planchado ', 'Pantalón', '', '3', '4500', '13500'),
(13, 10004, 'Lavado', 'Camiseta', '', '4', '4500', '18000'),
(14, 10003, 'Lavado y Planchado ', 'Pantalón', '', '2', '55545', '111090'),
(15, 10003, 'LAVADO', 'chaqueta', '', '2', '6500', '13000'),
(16, 10005, 'Lavado', 'Chaqueta', '', '1', '6300', '6300'),
(17, 10005, 'chaleco ', 'Lavado ', '', '1', '6000', '6000'),
(19, 10007, 'Prensado ', 'Pantalón Cuero', '', '2', '80000', '160000'),
(20, 10008, 'Lavado', 'Camiseta', '', '0', '0', '0'),
(22, 10009, 'Lavado y Planchado ', 'Camisa', '', '3', '4500', '13500'),
(23, 10009, 'PANTALONES', 'LAVADO PLANCHADO', '', '4', '4500', '18000'),
(24, 10010, 'Lavado', 'Camiseta', '', '0', '0', '0'),
(25, 10010, 'BLAZER ', 'LAVADO PLANCHADO', '', '1', '5500', '5500'),
(26, 10011, 'Lavado y Planchado ', 'Camiseta', '', '1', '4500', '4500'),
(27, 10011, 'PANTALON', 'LAVANDO Y PLANCHADO', '', '1', '4500', '4500'),
(28, 10012, 'Lavado', 'Camiseta', '', '0', '0', '0'),
(29, 10012, 'OVEROL DE TELA ', 'LAVADO', '', '1', '10000', '10000'),
(30, 10012, 'OVEROL ANTIFLUIDO', 'LAVADO', '', '1', '8000', '8000'),
(31, 10013, 'Lavado y Planchado ', ' GABAN', '', '1', '7000', '7000'),
(32, 10014, 'Lavado', 'Camiseta', '', '0', '0', '0'),
(33, 10014, 'VESTIDO DE PAÑO GRIS ', 'LAVADO ', '', '2', '4500', '9000'),
(34, 10014, 'VESTIDO DE PAÑO NEGRO ', 'LAVADO', '', '2', '4500', '9000'),
(35, 10014, 'SLEEPING BLANCO ', 'LAVADO ', '', '0', '10000', '10000'),
(36, 10015, 'Lavado', ' COBIJA TERMICA ', '', '1', '19000', '19000'),
(37, 10016, 'Lavado', 'Chaqueta', '', '1', '7500', '7500'),
(38, 10016, 'CHAQUETA DE CUERINA ', 'LAVADO', '', '1', '16000', '16000'),
(39, 10016, 'CHAQUETA NEGRA ', 'LAVADO ', '', '1', '7000', '7000'),
(40, 10017, 'Lavado', 'Camiseta', '', '0', '0', '0'),
(41, 10017, 'TOP BLANCO BEIGE ', 'LAVADO ', '', '1', '4500', '4500'),
(42, 10018, 'Lavado', 'Camiseta', '', '0', '0', '0'),
(43, 10018, 'CAMISA A CUADROS ', 'LAVADO Y PLANCHADO ', '', '1', '4500', '4500'),
(44, 10019, 'Lavado', ' CUBRELECHOS', '', '1', '23000', '23000'),
(45, 10019, 'CUBRELECHO BEIGE', 'LAVADO ', '', '1', '23000', '23000'),
(46, 10020, 'Lavado', 'Chaqueta', '', '1', '6500', '6500'),
(47, 10021, 'Lavado', 'Camiseta', '', '0', '0', '0'),
(48, 10021, 'CHAQUETA BLANCA ', 'LAVADO ', '', '1', '5000', '5000'),
(49, 10021, 'PANTALON BLANCO ', 'LAVADO ', '', '1', '4500', '4500'),
(50, 10022, 'Lavado y Planchado ', 'Chaqueta', '', '1', '6500', '6500'),
(51, 10023, 'Lavado y Planchado ', 'Camisa', '', '1', '4500', '4500'),
(52, 10023, 'UNIFORME', 'LAVADO PLANCHADO', '', '2', '4500', '9000'),
(53, 10023, 'FORRO DE CARRO', 'LAVADO', '', '1', '8000', '8000'),
(54, 10024, 'Lavado', ' CUBRELECHOS', '', '1', '20000', '20000'),
(55, 10024, 'BUSO', 'LAVADO PLANCHADO', '', '1', '5000', '5000'),
(56, 10025, 'Tintura', 'Pantalón', '', '1', '19000', '19000'),
(58, 10026, 'Lavado', ' CUBRELECHOS', '', '1', '19000', '19000'),
(63, 10029, 'Lavado', 'Camiseta', '', '1', '4500', '4500'),
(64, 10027, 'Lavado', 'Chaqueta', '', '1', '7000', '7000'),
(65, 10028, 'Lavado', 'Chaqueta', '', '1', '6500', '6500'),
(66, 10030, 'Lavado', ' COBIJA TERMICA ', '', '1', '19000', '19000'),
(67, 10030, 'COBIJA DELGADA ', 'LAVADO ', '', '1', '17000', '17000'),
(68, 10031, 'Lavado', 'Pantalón', '', '1', '4500', '4500'),
(69, 10032, 'Lavado', ' CHAQUETA CUERINA ', '', '1', '20000', '20000'),
(70, 10033, 'Lavado', 'Pantalón', '', '1', '4500', '4500'),
(71, 10034, 'Lavado', 'Chaqueta', '', '1', '7000', '7000'),
(72, 10035, 'Lavado', 'Pantalón', '', '0', '0', '0'),
(73, 10035, 'plancha', '', '', '4', '2500', '10000'),
(74, 10036, 'Lavado', 'Pantalón', '', '2', '4500', '9000'),
(75, 10036, 'CHAQUETA', 'LAVADO', '', '1', '6500', '6500'),
(76, 10037, 'Lavado', 'Chaqueta', '', '1', '6500', '6500'),
(77, 10037, 'BLAZER', 'LAVADO', '', '1', '5200', '5200'),
(78, 10038, 'Lavado', ' CUBRELECHOS', '', '4', '10000', '40000'),
(79, 10038, 'PANTALONES', 'PLANCHA', '', '3', '1000', '3000'),
(80, 10039, 'FALDA', 'LAVADO', '', '1', '4500', '4500'),
(81, 10040, 'LAVADO', 'BLAZER', '', '1', '6000', '6000'),
(82, 10041, 'Lavado', 'Pantalón', '', '1', '4500', '4500'),
(83, 10042, 'Lavado', 'Chaqueta', '', '2', '16000', '32000'),
(84, 10043, 'Lavado', ' CHAQUETA DE MOTO', '', '1', '12000', '12000'),
(87, 10044, 'Lavado', 'Camiseta', '', '2', '6000', '12000'),
(88, 10045, 'Lavado', 'Camiseta', '', '0', '0', '0'),
(89, 10045, 'PELUCHE ', 'LAVADO ', '', '1', '10000', '10000'),
(90, 10046, 'Lavado', 'Camiseta', '', '0', '0', '0'),
(91, 10046, 'BLEIZER AZUL', 'LAVADO ', '', '1', '5200', '5200'),
(92, 10047, 'Lavado', ' BUSO HILO ', '', '1', '5000', '5000'),
(93, 10047, 'RUANA DELGADA ', 'LAVADO ', '', '1', '8000', '8000'),
(94, 10048, 'Lavado', 'Chaqueta', '', '1', '7000', '7000'),
(95, 10048, 'BLEIZER GRIS ', 'LAVADO ', '', '1', '4500', '4500'),
(98, 10049, 'Lavado', 'Camiseta', '', '2', '4500', '9000'),
(99, 10050, 'Lavado', 'Pantalón', '', '1', '4500', '4500'),
(100, 10051, 'Lavado', ' BEIZER ', '', '1', '5200', '5200'),
(101, 10052, 'Lavado', 'Chaqueta', '', '1', '6500', '6500'),
(103, 10053, 'Lavado', 'Pantalón', '', '1', '4500', '4500'),
(106, 10054, 'Lavado', 'Camiseta', '', '1', '4500', '4500'),
(107, 10054, 'TRAJE COMPLETO', 'LAVADO PLANCHADO ', '', '4', '4500', '18000'),
(108, 10055, 'Tintura', 'Pantalón', '', '1', '19000', '19000'),
(109, 10056, 'Lavado', 'Pantalón', '', '2', '4500', '9000');

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
(1, 'registro@baulphp.com', '12345', 'Lavaseco', '_Express', 78979676, 'Calle 10', 1);

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
(4, 'Jean'),
(5, 'Pantalón Cuero'),
(6, 'Pantalón Pana'),
(7, 'Cortina '),
(12, ' OVEROL'),
(13, ' GABAN'),
(14, ' COBIJA TERMICA '),
(15, ' CUBRELECHOS'),
(16, ' CHAQUETA CUERINA '),
(17, ' CHAQUETA DE MOTO'),
(18, ' BUSO HILO '),
(19, ' BEIZER ');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `estado`
--
ALTER TABLE `estado`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `factura_orden`
--
ALTER TABLE `factura_orden`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10057;

--
-- AUTO_INCREMENT de la tabla `factura_orden_producto`
--
ALTER TABLE `factura_orden_producto`
  MODIFY `order_item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT de la tabla `factura_usuarios`
--
ALTER TABLE `factura_usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `precio`
--
ALTER TABLE `precio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

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
