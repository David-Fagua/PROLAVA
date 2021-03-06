-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-03-2022 a las 17:00:06
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
(10019, 1, '2022-02-21 22:48:41', '0000-00-00', 'PILAR HERNANDEZ ', 0, 'CARRERA 23 #14 20 TORRE 9 401', '', '46000', '0', '', 46000, '0', '46000', 'EDREDON BLANCO CON 2 FUNDAS CON MANCHAS AMARILLAS \r\nEDREDON BEIGE DE FLORES '),
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
(10056, 1, '2022-02-24 14:37:00', '0000-00-00', 'LUZ NAVARRETE', 3118121669, '', '', '9000', '0', '', 9000, '0', '9000', 'NG TALLA 14, AZ CON QUIEBRE'),
(10057, 1, '2022-02-24 15:11:56', '0000-00-00', 'JORGE BRAND', 3232221713, '', '', '6300', '0', '', 6300, '0', '6300', 'ARTURO CALLE TALLA L'),
(10058, 1, '2022-02-24 15:19:23', '0000-00-00', 'JUAN FERNANDEZ', 3002902199, '', '', '4500', '0', '', 4500, '0', '4500', 'NG/BL ZARA MAN'),
(10059, 1, '2022-02-24 16:19:46', '2022-02-25', 'ALBA CERRANO', 3174143082, '', '', '22500', '0', '', 22500, '0', '22500', 'camisa lila,  camiseta amarilla, blanca de puntos, rosada de rayas, y negra con rojo '),
(10060, 1, '2022-02-24 16:40:27', '2022-02-25', 'LORENA QUINTERO ', 3142118560, '', '', '4500', '0', '', 4500, '0', '4500', 'CAMISA NEGRA '),
(10061, 1, '2022-02-24 20:30:37', '2022-02-25', 'FERNAN MAZORCA ', 3112077424, '', '', '11500', '0', '', 11500, '0', '11500', 'CHAQUETA NEGRA ESTAMPADA \r\nPANTALON GRIS NEGRO MANCHAS AMARILLAS '),
(10062, 1, '2022-02-24 23:47:19', '2022-02-25', 'KEVIN FERNANDEZ ', 3144315175, '', '', '13500', '0', '', 13500, '0', '13500', 'BLEIZER COLEGIAL ROJO '),
(10063, 1, '2022-02-25 00:00:14', '2022-02-25', 'JHOBN DUARTE ', 3164647798, '', '', '4500', '0', '', 4500, '0', '4500', 'PANTALON DRIL GRIS '),
(10064, 1, '2022-02-25 14:28:48', '0000-00-00', 'RICARDO THOMAS', 3002896600, '', '', '9000', '0', '', 9000, '0', '9000', 'AZ, NG'),
(10065, 1, '2022-02-25 16:22:18', '2022-02-26', 'PATRICIA PINEDA ', 3138390317, '', '', '6500', '0', '', 6500, '0', '6500', 'CHAQUETA NEGRA SENCILLA '),
(10066, 1, '2022-02-25 16:49:21', '2022-02-28', 'EDGAR ACUÑA ', 3125612917, '', '', '46000', '0', '', 46000, '0', '46000', 'EDREDON LILA ROSADO DE FLORES \r\nEDREDON DEGRO CON BEIGE MOTOSO CON PELOS '),
(10067, 1, '2022-02-25 21:22:56', '2022-02-28', 'URIEL CARRANZA ', 3138154694, '', '', '22000', '0', '', 22000, '0', '22000', 'EDERDON BEIGE CON NEGRO Y GRIS  '),
(10068, 1, '2022-02-25 21:27:47', '2022-02-26', 'CAROLINA SANTAMARIA ', 3157906847, '', '', '4500', '0', '', 4500, '0', '4500', 'BLAZER COLEGIAL AZUL CON GRIS FALTA BOTON EN MANGA '),
(10069, 1, '2022-02-25 21:39:46', '0000-00-00', 'DANIELA GUACANEME', 3227454014, '', '', '14700', '0', '', 14700, '0', '14700', 'BUSO DE HILO NEGRO FALTA UNA ROSA HILO SALIDO EN MANGA \r\nBLAZER COLEGIAL \r\nBUSO BEIGE CON MUÑOS NEGROS, MANCHAS DE JUGO DE MORA. '),
(10070, 1, '2022-02-25 22:24:17', '2022-02-28', 'JAVITEX ', 0, '', '', '10000', '0', '', 10000, '0', '10000', 'COBIJA TERMICA CAFE '),
(10071, 1, '2022-02-25 22:28:02', '2022-02-26', 'MARIA ZULUAGA ', 3124819092, '', '', '5200', '0', '', 5200, '0', '5200', 'BLEIZER GRIS, BOTON EN MANGA PARTIDO '),
(10072, 1, '2022-02-25 22:43:02', '2022-02-26', 'ALBA CERRANO ', 3174143082, '', '', '14000', '0', '', 14000, '0', '14000', 'BUSO DE HILO AZUL DE COLEGIO \r\nBLAZER ROJO COLEGIAL \r\nCAMISA BEIGE '),
(10073, 1, '2022-02-25 23:00:34', '2022-02-26', 'MAICOL BELLO', 3202046371, '', '', '18000', '0', '', 18000, '0', '18000', 'BLAZER AZUL \r\nPANTALON NEGRO \r\nCAMISA LILA \r\n\r\nEXTRA '),
(10074, 1, '2022-02-25 23:28:33', '2022-02-26', 'VICENTE GAITAN ', 314487127, '', '', '13500', '0', '', 13500, '0', '13500', '2 JENAS AZULES MUY SUCIOS \r\n1 PANTALON DRIL CAFE '),
(10075, 1, '2022-02-26 13:55:33', '0000-00-00', 'JAVITEX', 3202632809, '', '', '7000', '0', '', 7000, '0', '7000', ''),
(10076, 1, '2022-02-26 14:47:00', '0000-00-00', 'Oswaldo Rodroguez', 3022832178, '', '', '27400', '0', '', 27400, '0', '27400', '2 corbatas az, vestido gr, ng, camisa az\r\nSOL CRECIENTE 3 511 ANTES DEL MEDIO DIA'),
(10077, 1, '2022-02-26 15:15:02', '0000-00-00', 'LUZ MARINA RUEDA', 3217977569, '', '', '4500', '0', '', 4500, '0', '4500', 'AZ LEVIS 30-32 DAMA DESHILACHADO'),
(10078, 1, '2022-02-26 16:14:08', '0000-00-00', 'ANDRES CAICEDO', 3124129532, '', '', '37600', '0', '', 37600, '0', '37600', '2AZ, NG, GRIS\r\n4 CORBATAS 2 NG, GR, V. TINTO'),
(10079, 1, '2022-02-26 17:15:53', '0000-00-00', 'Angela Lopez', 3165299424, '', '', '23300', '0', '', 23300, '0', '23300', 'busos grises, chaq. vr, blazer ng'),
(10080, 1, '2022-02-26 17:22:07', '0000-00-00', 'katherine Ramirez', 3162350785, '', '', '19000', '0', '', 19000, '0', '19000', 'jean az osc LEONISA 10'),
(10081, 1, '2022-02-26 17:24:28', '0000-00-00', 'Rocio Beltran', 3162350785, '', '', '55000', '0', '', 55000, '0', '55000', 'cobijas: az, v.tinto, edredon bg'),
(10082, 1, '2022-02-26 17:58:48', '0000-00-00', 'Wendy Rojas', 3212153148, '', '', '6500', '0', '', 6500, '6500', '0', 'Blaizer rosado extra amoretti'),
(10083, 1, '2022-02-26 18:31:15', '0000-00-00', 'Jorge Barragan', 3112315868, '', '', '9000', '0', '', 9000, '0', '9000', ''),
(10084, 1, '2022-02-26 19:38:38', '2022-02-28', 'Mabel Castro', 3124946655, '', '', '6000', '0', '', 6000, '0', '6000', 'Bleizer negro Duquerre'),
(10085, 1, '2022-02-26 19:46:51', '2022-02-01', 'Rosa Rodriguez', 3028641908, '', '', '22000', '0', '', 22000, '0', '22000', 'cubrelecho gris rayas naranja tiene una manchas de lavado anterior + dos cojines'),
(10086, 1, '2022-02-26 20:19:09', '0000-00-00', 'Mateo Perez', 3123226465, '', '', '4500', '0', '', 4500, '0', '4500', 'Bleicer rojo colegial falta un botón'),
(10087, 1, '2022-02-26 21:11:39', '2022-02-28', 'MAFE LAZARO ', 3214984233, '', '', '13000', '0', '', 13000, '0', '13000', 'chaqueta rosada hilo salido rota \r\nchaqueta azul '),
(10088, 1, '2022-02-26 22:33:38', '2022-03-01', 'ALEJANDRA VARGAZ', 3118676275, '', '', '22000', '0', '', 22000, '0', '22000', 'EDREDON OVEJERO ROSADO ROTO EN BORDE '),
(10089, 1, '2022-02-26 22:42:11', '0000-00-00', 'ELKIN AMORTEGUI', 3166196902, '', '', '23000', '0', '', 23000, '0', '23000', 'EDREDON AZUL - BLANCO '),
(10090, 1, '2022-02-26 23:46:33', '2022-02-28', 'CLEMENTINA', 3122700254, '', '', '9500', '0', '', 9500, '0', '9500', 'BUSO DE HILO CON CREMALLERA \r\n\r\n\r\nPANTALON A CUADROS NEGRO BLANCO '),
(10091, 1, '2022-02-28 14:55:09', '0000-00-00', 'Joaquin Sanchez', 3213042912, '', '', '18000', '0', '', 18000, '0', '18000', '3 jean 2 az, 1 ng'),
(10092, 1, '2022-02-28 15:03:31', '0000-00-00', 'Jesus Moreno', 3214619516, '', '', '9000', '0', '', 9000, '0', '9000', 'grises'),
(10093, 1, '2022-02-28 15:12:46', '0000-00-00', 'Angela Castañeda', 3008907066, '', '', '7500', '0', '', 7500, '0', '7500', 'chaq tipo abrigo ng '),
(10094, 1, '2022-02-28 18:38:26', '2022-03-01', 'FREDY VEGA ', 3202742134, '', '', '16000', '0', '', 16000, '0', '16000', 'CHAQUETA GRIS JAZPEADA \r\nCHAQUETA GRIS '),
(10095, 1, '2022-02-28 19:31:52', '2022-03-01', 'GERMAN FALLA ', 3112840706, '', '', '9000', '0', '', 9000, '0', '9000', 'PANTALON DE DRIL NEGRO,  PANATALON DE PAÑO GRIS JAZPEADO '),
(10096, 1, '2022-02-28 19:37:39', '2022-03-01', 'LUCIA FORERO ', 3132723720, '', '', '4500', '0', '', 4500, '0', '4500', 'BLEIZER COLEGIAL ROJO '),
(10097, 1, '2022-02-28 19:58:56', '0000-00-00', 'ROSA RODRIGUEZ ', 0, '', '', '6500', '0', '', 6500, '0', '6500', 'CHAQUETA NEGRA CHEIRGNON TLL: L\r\n'),
(10098, 1, '2022-02-28 20:09:19', '2022-02-28', 'CONJUNTO RESIDENCIAL FONTANA 2', 3194653160, '', '', '1090000', '0', '', 1090000, '0', '1090000', 'CADA TRES PIEZAS EQUIVALEN A UNA PIJAMA.\r\nTOTAL PIEZAS LAVADAS 65\r\n\r\nRUT: 2969648-9 '),
(10099, 1, '2022-02-28 20:28:45', '2022-03-01', 'MAURICIO LOPEZ ', 3106365889, '', '', '15600', '0', '', 15600, '0', '15600', 'BUSO CAPOTERO AZUL MANCHAS BLANCAS \r\nBUSO CON CREMALLERA MANCHAS ROSADAS \r\nBUSO GRIS CON MANCHA EN FRENTE '),
(10100, 1, '2022-02-28 20:45:37', '2022-03-01', 'William Bojaca ', 3015758969, '', '', '15500', '0', '', 15500, '0', '15500', 'Camisa rosada manchas y blanca\r\nChaqueta negra'),
(10101, 1, '2022-02-28 21:12:15', '2022-03-02', 'ROCIO GRACIA ', 3122585818, '', '', '19000', '0', '', 19000, '0', '19000', 'cobija termica gris '),
(10102, 1, '2022-02-28 23:22:01', '2022-03-01', 'BEATRIZ COLOMBA ', 3133968227, '', '', '13500', '0', '', 13500, '0', '13500', 'pantalon de dril negro \r\nabrigo negro delgado de peluche \r\nchaqueta vino tinto con cordon para plancha '),
(10103, 1, '2022-03-01 13:41:16', '2022-03-02', 'Nora Rivera', 3133204147, '', '', '9000', '0', '', 9000, '0', '9000', 'Camisa rosada y beish la beish tiene partido el estampado'),
(10104, 1, '2022-03-01 14:20:41', '2022-03-03', 'Esperanza Cerquera ', 3227968084, '', '', '18000', '0', '', 18000, '0', '18000', 'overol en dril y impermeable'),
(10105, 1, '2022-03-01 14:39:05', '0000-00-00', 'Joaquin Sanchez', 3213642912, '', '', '4500', '0', '', 4500, '0', '4500', 'levis az'),
(10106, 1, '2022-03-01 15:12:38', '0000-00-00', 'Ramiro Arevalo', 3223431799, '', '', '23200', '0', '', 23200, '0', '23200', 'Jean azul oscuro\r\nvestido h gris rayas\r\ncamisa LILA\r\nChaqueta tipo saco ng\r\n\r\n\r\n'),
(10107, 1, '2022-03-01 15:16:37', '0000-00-00', 'Graciela Martinez', 3006001578, '', '', '6500', '0', '', 6500, '0', '6500', 'Chaqueta roja koaj'),
(10108, 1, '2022-03-01 15:43:59', '0000-00-00', 'Jhon Guzman', 3142817727, '', '', '10400', '0', '', 10400, '0', '10400', 'Tipo saco beish y negro '),
(10109, 1, '2022-03-01 16:21:09', '2022-03-02', 'MARITZA CAMELO ', 3114780586, '', '', '8000', '0', '', 8000, '0', '8000', 'VESTIDO NEGRO SIN APLIQUES MATERIAL EN HILO '),
(10110, 1, '2022-03-01 17:20:18', '2022-03-02', 'ANGIE GROSO ', 3013186131, '', '', '10000', '0', '', 10000, '0', '10000', 'CAMISAS BLANCAS MANCHADAS CON OTRA PRENDA '),
(10111, 1, '2022-03-01 17:23:23', '0000-00-00', 'ANGIE GROSO ', 3013186131, '', '', '19000', '0', '', 19000, '19000', '0', 'CAFE OZCURO YET JEANS TLL 10 '),
(10112, 1, '2022-03-01 17:28:52', '0000-00-00', 'NELSON CARO ', 3004726568, '', '', '8000', '0', '', 8000, '0', '8000', 'CHAQUETA ROJA DE PLUMAS REVISAR PUÑOS CUELLO MUY SUCIO RAYADA MANCHAS '),
(10113, 1, '2022-03-01 20:19:30', '0000-00-00', 'NATALIA SANCHEZ ', 3138449118, '', '', '19000', '0', '', 19000, '19000', '0', 'PANTALON ROSADO TINTURAR A NEGRO '),
(10114, 1, '2022-03-01 21:49:01', '2022-03-03', 'CIDY AVILA ', 3143807872, '', '', '36000', '0', '', 36000, '0', '36000', 'CUBRELECHOS DE COLORES, VERDE, LILA \r\n4 ALMOHADAS, 4 FUNDAS '),
(10115, 1, '2022-03-01 21:50:26', '2022-03-03', 'SILEY AVILA ', 3107519666, '', '', '5200', '0', '', 5200, '0', '5200', 'BUSO DE HILO MANCHAS CAFES '),
(10116, 1, '2022-03-01 22:45:50', '0000-00-00', 'SANDRA HERRERA ', 3194422203, '', '', '13000', '0', '', 13000, '0', '13000', 'CHAQUETA DE JENAS CON TACHES Y CADENAS FALTAN 4 CADENAS \r\nCHAQUETA SENCILLA VERDE REIVSAR PUÑOS CUELLOS MANCHAS '),
(10117, 1, '2022-03-01 23:35:36', '2022-03-03', 'FERNANDA TELLEZ', 3224415892, '', '', '20000', '0', '', 20000, '0', '20000', 'EDREDON BEIGE CON FLORES NEGRAS-NEGRO CON PELOS DE GATO '),
(10118, 1, '2022-03-02 15:29:29', '0000-00-00', 'Edwin Tovar', 0, '', '', '0', '0', '', 0, '0', '0', ''),
(10119, 1, '2022-03-02 15:47:58', '2022-03-03', 'Edwin Tovar', 0, '', '', '7000', '0', '', 7000, '0', '7000', 'pantalon sudadera gris \r\nCamisa azul'),
(10120, 1, '2022-03-02 17:28:03', '2022-03-09', 'Susana Plata', 3146268772, '', '', '20000', '0', '', 20000, '0', '20000', 'Chaqueta ABA TALLA S tinturar de negro'),
(10121, 1, '2022-03-02 17:32:21', '0000-00-00', 'Angela Pulido', 3208643647, '', '', '48000', '0', '', 48000, '0', '48000', ''),
(10122, 1, '2022-03-02 19:37:25', '2022-03-03', 'Tania Arias', 3194573650, '', '', '9000', '0', '', 9000, '0', '9000', 'Conjunto azul en jean '),
(10123, 1, '2022-03-03 14:19:37', '0000-00-00', 'Hector Acero', 3233983044, '', '', '6500', '0', '', 6500, '0', '6500', 'roja/ng con capota REVISAR MANCHAS'),
(10124, 1, '2022-03-03 15:02:46', '0000-00-00', 'Jhon Guzman', 3142817727, '', '', '22000', '0', '', 22000, '0', '22000', 'roja/ovejero'),
(10125, 1, '2022-03-03 15:27:58', '0000-00-00', 'Doris Quintero', 3132558202, '', '', '6500', '0', '', 6500, '0', '6500', 'Chaqueta Negra ovejera '),
(10126, 1, '2022-03-03 15:33:41', '2022-03-04', 'Luz Miriam Beltran', 3107511636, '', '', '4500', '0', '', 4500, '0', '4500', 'Pant Blanco'),
(10127, 1, '2022-03-03 15:41:18', '2022-03-04', 'Lucia Medina', 3152538815, '', '', '18000', '0', '', 18000, '0', '18000', 'Panat.  gris descolor cafe negro y azul en dril'),
(10128, 1, '2022-03-03 16:12:25', '2022-03-04', 'EDUARDO GARZON ', 3172231019, '', '', '4500', '0', '', 4500, '0', '4500', 'PANTALON DE DRIL CAFE CLARO BEIGE '),
(10129, 1, '2022-03-03 17:07:12', '2022-03-04', 'LAURA BULLA ', 3133184929, '', '', '7000', '0', '', 7000, '0', '7000', 'ABRIGO CAFE CON CINTURON MANCHAS DE ESFERO REVISAR '),
(10130, 1, '2022-03-03 17:38:56', '0000-00-00', 'ROSIRIS CABARCAS ', 3123188317, 'CALLE24 #2 70 ESTE MANZANA 9B TORRE 32 APT 503 LA FINCA ', '', '65500', '0', '', 65500, '0', '65500', 'PANTALONES NG, VINTI,ROJ,AZ: CHAQUETA CF, AZ, NG JAZPEADO; ABRIGO CF; VESTIDOS :2 NEGRO Y GRIS '),
(10131, 1, '2022-03-03 18:03:40', '0000-00-00', 'JAVITEX ', 0, '', '', '20000', '0', '', 20000, '0', '20000', 'EDREDON VERDE CON 4 FUNDAS \r\nCHAQUETA TINTURA SIN CAPOTA '),
(10132, 1, '2022-03-03 19:19:36', '0000-00-00', 'ARACELI CUADROS', 3118260014, '', '', '6500', '0', '', 6500, '0', '6500', 'MORADA UN POCO PELADA LA CUERINA '),
(10133, 1, '2022-03-03 20:06:23', '2022-03-04', 'DANIEL PARRA', 3182810697, '', '', '24500', '0', '', 24500, '0', '24500', 'PANTALO DRIL AZ; NG; NG; JEANS LLENO DE PELOS \r\nCHAQUETA CAFE '),
(10134, 1, '2022-03-03 20:47:23', '2022-03-04', 'SILVIA GARCIA ', 3128952452, '', '', '26500', '0', '', 26500, '0', '26500', 'ABRIGOS VERDE Y BLANCO\r\nCHAQUETA  GRIS \r\n'),
(10135, 1, '2022-03-03 23:16:59', '2022-03-14', 'OSCAR AMAYA', 3215159221, '', '', '60000', '0', '', 60000, '0', '60000', 'TAPETE BLANCO CON GRIS DE ROMBOS '),
(10136, 1, '2022-03-04 13:54:43', '0000-00-00', 'Mery Quevedo', 3157090683, '', '', '19000', '0', '', 19000, '0', '19000', 'az/bl 2 fundas'),
(10137, 1, '2022-03-04 14:15:04', '0000-00-00', 'Esperanza Cerquera', 3227968084, '', '', '6500', '0', '', 6500, '0', '6500', 'bl revisar puños'),
(10138, 1, '2022-03-04 14:55:48', '2022-03-05', 'Silvia Garcia', 3128952452, '', '', '6500', '0', '', 6500, '0', '6500', 'Chaq, negra rasgado lateral traer tinte de cabello en cuello'),
(10139, 1, '2022-03-04 15:46:05', '2022-03-05', 'Jorge Barragano', 3112315886, '', '', '4500', '0', '', 4500, '0', '4500', 'Camisa blanca con azul manchas recomienda en cuello'),
(10140, 1, '2022-03-04 15:51:38', '2022-03-05', 'Carlos Parra', 3114735248, '', '', '4500', '0', '', 4500, '0', '4500', 'Pant cafe rayas '),
(10141, 1, '2022-03-04 15:55:00', '2022-03-05', 'Hair Muñoz', 3125776508, '', '', '9000', '0', '', 9000, '0', '9000', 'Jean az '),
(10142, 1, '2022-03-04 16:18:45', '2022-03-05', 'GLORIA FRAILE ', 3203195762, '', '', '4500', '0', '', 4500, '0', '4500', 'JEANS DAMA '),
(10143, 1, '2022-03-04 17:00:49', '0000-00-00', 'David Pulido ', 3125934798, '', '', '24000', '0', '', 24000, '24000', '0', 'Vestido hombre azul y verde / beish con chalecos'),
(10144, 1, '2022-03-04 17:06:59', '2022-03-05', 'Manuel Rodriguez ', 3132924006, '', '', '6500', '0', '', 6500, '0', '6500', 'chaqueta color ladrillo forro azul '),
(10145, 1, '2022-03-04 19:26:20', '2022-03-05', 'IVON MONTENEGRO ', 3166114142, '', '', '4500', '0', '', 4500, '0', '4500', 'blazer colegial verde '),
(10146, 1, '2022-03-04 19:32:12', '2022-03-05', 'LUCRECIA QUINTANA ', 3118470209, '', '', '29000', '0', '', 29000, '0', '29000', 'PANTALONES JENAS DRIL CF PANA CF SUDADERA AZ; CAMISETA ROSADA REVISAR MANCHA \r\nCHAQUETA NEGRA \r\n'),
(10147, 1, '2022-03-04 20:45:43', '0000-00-00', 'ISABELA AGENCIA ', 0, '', '', '22000', '0', '', 22000, '0', '22000', ''),
(10148, 1, '2022-03-04 20:53:44', '2022-03-05', 'MARTHA MARTINEZ ', 3123518972, '', '', '4500', '0', '', 4500, '0', '4500', 'PANTALON DE PAÑO AZUL OSC'),
(10149, 1, '2022-03-04 21:12:49', '2022-03-05', 'WILSON LOZADA ', 3204240331, '', '', '4500', '0', '', 4500, '0', '4500', 'JEANS AZUL '),
(10150, 1, '2022-03-04 21:34:34', '0000-00-00', 'RICARDO GUTIERREZ ', 3204819639, '', '', '13500', '0', '', 13500, '0', '13500', 'PANTALONES DRL 2 AZ,CF JENAS AZL'),
(10151, 1, '2022-03-04 21:36:41', '0000-00-00', 'MIRIAN TAMAYO ', 3014969517, '', '', '6500', '0', '', 6500, '0', '6500', 'chaqueta vino tinto manchas de grasa y comida '),
(10152, 1, '2022-03-04 21:57:44', '2022-03-05', 'MAYERLY MONTENEGRO ', 3125831155, '', '', '4500', '0', '', 4500, '0', '4500', 'BLEIZER VERDE COLEGIAL '),
(10153, 1, '2022-03-04 22:16:16', '2022-03-05', 'ANDREA PADILLA ', 3212667745, '', '', '6500', '0', '', 6500, '0', '6500', 'CHAQUETA CAFE FORRO EN MAYA AZ'),
(10154, 1, '2022-03-04 22:19:24', '2022-03-05', 'JOSE ESPINOZA ', 3114498970, '', '', '7000', '0', '', 7000, '0', '7000', 'CHAQUETA DE JEANS OVEJERA '),
(10155, 1, '2022-03-04 22:21:20', '0000-00-00', 'LUCIA LOPEZ ', 3134435367, '', '', '11500', '0', '', 11500, '0', '11500', 'JARDINERA ACUADROS AZUL \r\nBLAZER AZUL COLEGIAL FALTA BOTON '),
(10156, 1, '2022-03-04 22:26:42', '2022-03-05', 'MARIA ZULUAGA ', 0, '', '', '5200', '0', '', 5200, '0', '5200', 'BLEIZER NEGRO '),
(10157, 1, '2022-03-04 22:54:41', '0000-00-00', 'ARMANDO AGUILAR ', 3132167762, '', '', '11500', '0', '', 11500, '11500', '0', 'JARDINERA AZ A CUADROS \r\nBLEIZER ROJO RECOMIENDA PLANCHADO'),
(10158, 1, '2022-03-04 23:06:27', '0000-00-00', 'JAVITEX ', 0, '', '', '55000', '0', '', 55000, '0', '55000', 'EDREDON OVEJERO ROSADO 2 FUN 1COJ\r\nEDREDON CAFE 4 FUN\r\nTAPETE AZ'),
(10159, 1, '2022-03-04 23:19:45', '2022-03-05', 'PABLO SUAREZ ', 3209629137, '', '', '6500', '0', '', 6500, '0', '6500', 'CHAQUETA AZUL RECOMIENDA CREMALLERAS'),
(10160, 1, '2022-03-05 13:30:34', '0000-00-00', 'Pilar Palacios', 3118596429, '', '', '15000', '0', '', 15000, '0', '15000', 'COJINES NAVIDEÑOS'),
(10161, 1, '2022-03-05 14:06:38', '0000-00-00', 'Rosario Leon', 3213046969, '', '', '4500', '0', '', 4500, '0', '4500', 'Cafe revisar manchas'),
(10162, 1, '2022-03-05 14:13:15', '0000-00-00', 'Julieth Moreno', 3213867850, '', '', '23000', '0', '', 23000, '23000', '0', 'rosado ovejero PAGO DAVIPLATA'),
(10163, 1, '2022-03-05 15:47:06', '2022-03-07', 'OMAR AGENCIA ', 0, '', '', '3000', '0', '', 3000, '0', '3000', 'JARDINERA GIS A CUADROS '),
(10164, 1, '2022-03-05 16:36:36', '2022-03-07', 'ANGELA LOPEZ ', 3165299424, '', '', '11700', '0', '', 11700, '0', '11700', 'CHAQUETA VINO TINTO BLAZER NEGRO '),
(10165, 1, '2022-03-05 16:52:31', '2022-03-01', 'FREDY GARZON ', 3103418849, '', '', '9000', '0', '', 9000, '0', '9000', 'PANTALON DRL NEGRO MANCHAS DE COMIDA \r\nPANTALON ROJO MANCHAS '),
(10166, 1, '2022-03-05 16:54:25', '2022-03-01', 'JUAN FELIPE GARZON ', 3107939618, '', '', '18500', '0', '', 18500, '0', '18500', 'CHAQUETA AZUL REVISAR CUELLO Y PUÑOS \r\nUN PAR DE TENIS BLANCOS CON CORDOBNES Y PLANTILLAS'),
(10167, 1, '2022-03-05 17:23:44', '0000-00-00', 'Clementina Castañeda', 3122700254, '', '', '4500', '0', '', 4500, '0', '4500', 'negro con cremalleras'),
(10168, 1, '2022-03-05 17:36:37', '2022-03-07', 'SEBASTIAN RODRIGUEZ ', 3118500747, '', '', '5200', '0', '', 5200, '0', '5200', 'buso capotero blanco humedo muy sucio desmanchar '),
(10169, 1, '2022-03-05 18:33:41', '2022-03-07', 'MARIA JOSE GALINDO', 3196113351, '', '', '6500', '0', '', 6500, '0', '6500', 'ABRIGO ACUADROS BEIGE'),
(10170, 1, '2022-03-05 18:53:55', '2022-03-08', 'JAVITEX ', 0, '', '', '30000', '0', '', 30000, '0', '30000', 'DOS EDREDONES BEIGE Y AMARILLO \r\nCOBIJA TERMICA AZUL '),
(10171, 1, '2022-03-05 19:22:38', '0000-00-00', 'ANDRES CAISEDO ', 3124129532, 'CARRERA 8 #10 07 TORRE 2 APT 204 ALCAPARROS DOS ', '', '18000', '0', '', 18000, '18000', '0', 'TRAJE DE PAÑO NEGRO \r\nTRAJE DE PAÑO GRIS \r\n PAGO NEQUI '),
(10172, 1, '2022-03-05 21:07:40', '0000-00-00', 'MONICA SANCHEZ ', 3212281446, '', '', '4500', '0', '', 4500, '0', '4500', 'PANTALON DE DRL CAFE '),
(10173, 1, '2022-03-05 21:30:02', '2022-03-07', 'JOSE RODRIGUEZ ', 3204631754, '', '', '13000', '0', '', 13000, '0', '13000', 'CHAQUETA AZUL CHAQUETA GRIS AZUL GREMALLERA ROTA EN LADO '),
(10174, 1, '2022-03-05 21:59:52', '2022-03-07', 'MIRIYID CAMELO ', 3144562008, '', '', '6500', '0', '', 6500, '0', '6500', 'CHAQUETA BEIGE CON NEGRO '),
(10175, 1, '2022-03-05 23:00:04', '2022-03-07', 'IVON MONTENEGRO ', 3166114942, '', '', '4500', '0', '', 4500, '0', '4500', 'PANTALON DE PAÑO AZUL'),
(10176, 1, '2022-03-05 23:02:02', '2022-03-08', 'CAROLINA BECERRA', 3115660415, '', '', '23000', '0', '', 23000, '0', '23000', 'EDREDON OVEJERO GRIS BLANCO '),
(10177, 1, '2022-03-07 14:52:40', '2022-03-09', 'Silvia Garcia', 3128952452, '', '', '20000', '0', '', 20000, '0', '20000', 'Cubrelecho azul ovejero rotos en un lado'),
(10178, 1, '2022-03-07 14:55:10', '2022-03-08', 'Cesar Carvajal', 3213969848, '', '', '13000', '0', '', 13000, '0', '13000', 'Chaqueta amarilla y gris '),
(10179, 1, '2022-03-07 15:06:50', '2022-03-09', 'Alejandro Rodriguez', 3028402355, '', '', '6500', '0', '', 6500, '0', '6500', 'Chaqueta negra lavada en casa'),
(10180, 1, '2022-03-07 16:07:46', '2022-03-08', 'HELENA FUENTES ', 3102239213, '', '', '6500', '0', '', 6500, '0', '6500', 'CHAQUETA CAFE EN LANA '),
(10181, 1, '2022-03-07 16:21:04', '2022-03-08', 'Jose Cañon', 3057689104, '', '', '11000', '0', '', 11000, '0', '11000', 'Pant aza\r\nChaqueta gris '),
(10182, 1, '2022-03-07 16:33:23', '2022-03-08', 'EDGAR COSMA ', 3132891424, '', '', '6500', '0', '', 6500, '0', '6500', 'CHAQUETA CAFE REVISAR PUÑOS Y CUELLO '),
(10183, 1, '2022-03-07 16:53:51', '2022-03-08', 'LUZ MARINA CARDONA ', 3202200927, '', '', '6500', '0', '', 6500, '0', '6500', 'CHAQUETA DE JEANS AZUL CLARO '),
(10184, 1, '2022-03-07 17:17:39', '2022-03-08', 'DIANA AGUIRRE ', 3142738200, '', '', '22400', '0', '', 22400, '0', '22400', 'BLAZER LARGOS 2 AZ CON CINTURON GUESS VERDE SYBILLA; BEIGE ESTRADIVARIUS BUSO DE LANA POLO ROJO '),
(10185, 1, '2022-03-07 18:20:45', '2022-03-08', 'JULIANA DUARTE ', 3015333577, '', '', '6500', '0', '', 6500, '0', '6500', 'CHAQUETA AZUL OSCURA CON PELUCHE EN CAPOTA REVISAR PUÑOS '),
(10186, 1, '2022-03-07 18:40:53', '0000-00-00', 'Mario Palacios', 3184470027, '', '', '4500', '0', '', 4500, '0', '4500', 'az/rayas'),
(10187, 1, '2022-03-07 18:52:19', '0000-00-00', 'CARLOS PARRA ', 3156185106, '', '', '24500', '0', '', 24500, '0', '24500', 'edredon beige con dos fundas roto en borde \r\npantalon dril gris falta boton '),
(10188, 1, '2022-03-07 20:05:30', '2022-03-08', 'LAURA RINCON ', 3124273797, '', '', '6500', '0', '', 6500, '0', '6500', 'abrigo en tela sintetica beige \r\n'),
(10189, 1, '2022-03-07 20:36:07', '0000-00-00', 'LUCIA LOPEZ ', 3134435367, '', '', '23000', '0', '', 23000, '0', '23000', 'EDREDON OVEJERO NEGRO CON BLANCO DESILACHADO '),
(10190, 1, '2022-03-07 20:40:21', '2022-03-09', 'HERRY JUYO ', 3123431628, '', '', '22000', '0', '', 22000, '0', '22000', 'EDREDON BLANCO CON LETRAS AZUL '),
(10191, 1, '2022-03-07 21:04:07', '2022-03-08', 'NORA RIVERA ', 3133204147, '', '', '27700', '0', '', 27700, '0', '27700', 'CAMISA RS,BG,BL, PANTALONES JENAS, DRL CF, BLAZER GRIS JAZPEADO '),
(10192, 1, '2022-03-07 21:10:06', '2022-03-07', 'ALBA CERRANO ', 0, '', '', '13500', '0', '', 13500, '0', '13500', 'CAMISAS BLANCAS '),
(10193, 1, '2022-03-07 21:15:56', '2022-03-09', 'EDUARDO BELTRAN ', 3204009243, '', '', '10000', '0', '', 10000, '0', '10000', 'TAPETE DE VAUL DE CARRO GRIS '),
(10194, 1, '2022-03-07 21:23:30', '2022-03-09', 'PAULA CATAÑEDA', 3204923187, '', '', '41000', '0', '', 41000, '0', '41000', 'EDREDON CAFE MARIPOSAS 2COJINES 2 FUNDAS \r\nCOBIJA TERMICA VERDE GRIS TIGRE '),
(10195, 1, '2022-03-07 21:24:43', '2022-03-08', 'OLGA CORTEZ ', 3002186110, '', '', '5200', '0', '', 5200, '0', '5200', 'CAHQUETA TIPO BLAZER BLANCA '),
(10196, 1, '2022-03-07 21:27:08', '2022-03-08', 'SANDRA RODRIGUEZ ', 3132870791, '', '', '6500', '0', '', 6500, '0', '6500', 'CHAQUETA ROSADA CON CAPOTA BOLSILLOS ROTOS '),
(10197, 1, '2022-03-07 22:00:06', '2022-03-08', 'MARCOS RAMIREZ', 3203094073, '', '', '6500', '0', '', 6500, '0', '6500', 'CHAQUETA GRIS '),
(10198, 1, '2022-03-07 22:31:13', '2022-03-09', 'GABRIEL BELTRAN ', 3016627078, '', '', '23000', '0', '', 23000, '0', '23000', 'EDREDON OVEJERO GRIS '),
(10199, 1, '2022-03-07 23:12:26', '2022-03-09', 'ESPERANZA CERQUERA ', 3227968084, '', '', '18000', '0', '', 18000, '0', '18000', 'OVEROL DE TELA OVEROL ANTIFLUIDO '),
(10200, 1, '2022-03-08 13:54:30', '2022-03-09', 'Maritza Caicedo', 3006203235, '', '', '12500', '0', '', 12500, '0', '12500', ''),
(10201, 1, '2022-03-08 13:57:39', '2022-03-09', 'Javitex', 0, '', '', '23000', '0', '', 23000, '50000', '23000', 'cUBRELECHO AZUL CON GRIS Y GRIS RATON \r\nGaban negro'),
(10202, 1, '2022-03-08 13:59:41', '0000-00-00', 'Joaquin Sanchez', 3213642912, '', '', '9000', '0', '', 9000, '0', '9000', 'jean Azules'),
(10203, 1, '2022-03-08 14:18:45', '0000-00-00', 'Martin Miranda', 3156073217, '', '', '4500', '0', '', 4500, '0', '4500', 'Pantalon negro tinturado '),
(10204, 1, '2022-03-08 14:35:39', '2022-03-09', 'Jorge Herrera', 3144559121, '', '', '6500', '0', '', 6500, '0', '6500', 'Chaqueta verde aguamarina rota en una manga'),
(10205, 1, '2022-03-08 14:52:29', '0000-00-00', 'Jhon Guzman', 3142817727, '', '', '10400', '0', '', 10400, '0', '10400', ''),
(10206, 1, '2022-03-08 14:57:59', '2022-03-09', 'Luz Angelica Guerrero', 3125077257, '', '', '6500', '0', '', 6500, '0', '6500', 'Chaqueta beish'),
(10207, 1, '2022-03-08 15:03:35', '2022-03-09', 'Edgar Gutierrez', 3102401159, '', '', '9000', '0', '', 9000, '0', '9000', ''),
(10208, 1, '2022-03-08 15:33:47', '2022-03-09', 'Wilmer Steven Hernandez', 3125315570, '', '', '6500', '0', '', 6500, '0', '6500', 'Chaqueta tipo abrigo gris espina'),
(10209, 1, '2022-03-08 15:54:20', '2022-03-11', 'Zuly Brizuela', 3135042321, '', '', '20000', '0', '', 20000, '0', '20000', 'Cubrelecho beish atigrado / beish flechas'),
(10210, 1, '2022-03-08 16:00:04', '0000-00-00', 'Michael Ordoñez', 3005659605, '', '', '12000', '0', '', 12000, '5000', '7000', 'bg/cf'),
(10211, 1, '2022-03-08 16:42:59', '2022-03-09', 'ana ruiz ', 3132341070, '', '', '9000', '0', '', 9000, '0', '9000', 'pantalon jeans az,ng'),
(10212, 1, '2022-03-08 20:07:42', '2022-03-09', 'MARTHA REYEZ ', 3124736716, '', '', '4500', '0', '', 4500, '0', '4500', 'BLAZER COLEGIAL AZUL CON AMARILLO '),
(10213, 1, '2022-03-08 23:38:19', '2022-03-09', 'WILLIAM LUQUE ', 3124137774, '', '', '6500', '0', '', 6500, '0', '6500', 'CHAQUETA AZUL OSCURA CON CAPOTA '),
(10214, 1, '2022-03-09 15:55:16', '2022-03-10', 'Doris Diaz', 3133235895, '', '', '6500', '0', '', 6500, '0', '6500', 'Chaqueta verde con blanco'),
(10215, 1, '2022-03-09 16:21:16', '0000-00-00', 'JORGE NUÑEZ ', 3125073789, '', '', '20000', '0', '', 20000, '20000', '0', 'EDREDON DE COLORES NJ, VD,AZ, RS'),
(10216, 1, '2022-03-09 16:28:29', '2022-03-12', 'NANCY DIAZ ', 3233651802, '', '', '19000', '0', '', 19000, '10000', '9000', 'BUSO ADRIL TINTURAR AZUL '),
(10217, 1, '2022-03-09 16:44:55', '2022-03-10', 'ANDRIANA DIAZ ', 3166982050, '', '', '6500', '0', '', 6500, '0', '6500', 'CHAQUETA DE JEANS AZUL OSC'),
(10218, 1, '2022-03-09 17:04:46', '2022-03-10', 'FLORENTINO ', 3114866743, '', '', '9000', '0', '', 9000, '0', '9000', 'PANTALON DRIL AZUL MOTOSO \r\nCAMISETA AMARILLO QUEMADO  '),
(10219, 1, '2022-03-09 17:37:27', '2022-03-10', 'MARITHZA CAMELO ', 3114780586, '', '', '12000', '0', '', 12000, '0', '12000', 'VESTIDO NEGRO SIN ECANJE Y SIN APLIQUES '),
(10220, 1, '2022-03-09 17:55:03', '2022-03-12', 'YESID SANCHEZ ', 3115908971, '', '', '19000', '0', '', 19000, '7000', '12000', 'PANTALON GRISOSO TINTURAR A NEGRO '),
(10221, 1, '2022-03-09 19:47:44', '0000-00-00', 'PAOLA MOLINA ', 3142741060, '', '', '5200', '0', '', 5200, '0', '5200', 'CHAQUETA TIPO BLAZER '),
(10222, 1, '2022-03-09 20:43:54', '2022-03-10', 'MARIA GOMEZ ', 3223814053, '', '', '9700', '0', '', 9700, '0', '9700', 'PANTALON DE PAÑO AZUL \r\nBLAZER GRIS '),
(10223, 1, '2022-03-09 21:27:29', '2022-03-10', 'LUIS RIOS ', 3202321092, '', '', '4500', '0', '', 4500, '0', '4500', 'CAMISETA BLANCA MANCHAS REVISAR '),
(10224, 1, '2022-03-09 21:57:25', '2022-03-26', 'CONSTANZA GODOY ', 3172969998, '', '', '20000', '0', '', 20000, '0', '20000', 'TAPETE PEQUEÑO GRIS CON BLANCO \r\n '),
(10225, 1, '2022-03-09 22:04:11', '2022-03-10', 'FABIOLA MORENO ', 3162497719, '', '', '6500', '0', '', 6500, '0', '6500', 'CHAQUETA ROSADA MANCHADA DE GRASA MANCHAS NEGRAS '),
(10226, 1, '2022-03-09 22:05:42', '2022-03-10', 'CAMILO CRUZ ', 3112927015, '', '', '5800', '0', '', 5800, '0', '5800', 'BUSO CAPOTERO AZUL CON PELOS DE GATO REVISAR '),
(10227, 1, '2022-03-09 22:23:06', '2022-03-10', 'ANDREA PADILLA ', 3212667745, '', '', '6500', '0', '', 6500, '0', '6500', 'CHAQUETA AZUL TOMMY '),
(10228, 1, '2022-03-09 23:35:17', '2022-03-10', 'YOHANA CASTELLANOS ', 3132604374, '', '', '14200', '0', '', 14200, '0', '14200', 'BLEIZER ROJO \r\nPANTALON VERDER Y AZUL'),
(10229, 1, '2022-03-09 23:46:40', '2022-03-10', 'ALBA CERRANO ', 3174143082, '', '', '27000', '0', '', 27000, '0', '27000', 'CAMISETAS 2 BL, 1NG,1AZ, VD PANTLAON ROJO '),
(10230, 1, '2022-03-09 23:55:38', '0000-00-00', 'MARGARITA ', 3022821156, '', '', '6500', '0', '', 6500, '6500', '0', 'CHAQUETA DE JEANS BEIGE '),
(10231, 1, '2022-03-10 13:27:47', '0000-00-00', 'Javitex', 3202632809, '', '', '50000', '0', '', 50000, '50000', '0', '2E 2F'),
(10232, 1, '2022-03-10 13:45:05', '0000-00-00', 'Luis Catro', 3125897796, '', '', '19300', '0', '', 19300, '0', '19300', 'Busos 2 Gr, 1 Bl\r\ncami Rs\r\nFACTURA 5912'),
(10233, 1, '2022-03-10 15:14:05', '0000-00-00', 'Henrry Juyo', 3123431628, '', '', '6500', '0', '', 6500, '0', '6500', 'Chaqueta negra con capota '),
(10234, 1, '2022-03-10 16:09:47', '2022-03-11', 'MARIA ANGELA GIRAL', 3112383146, '', '', '4500', '0', '', 4500, '4500', '0', 'LAVADO DE PANTALON DRIL AZUL '),
(10235, 1, '2022-03-10 16:12:05', '2022-03-11', 'MARIA PAULA MILENDEZ ', 3115749653, '', '', '6500', '0', '', 6500, '0', '6500', 'CHAQUETA ROSADA KOAJ '),
(10236, 1, '2022-03-10 16:36:59', '0000-00-00', 'NELSON ENRIQUEZ ', 3112895885, '', '', '6500', '0', '', 6500, '0', '6500', 'CAHQUETA ZAUL REVISAR CUELLO Y BOLSILLOS '),
(10237, 1, '2022-03-10 16:58:27', '2022-03-24', 'DORA LUCIA CRUZ ', 3242174423, '', '', '130000', '0', '', 130000, '0', '130000', 'TAPETE ROJO PELUDO DE 15 A 20 DIAS '),
(10238, 1, '2022-03-10 18:41:26', '0000-00-00', 'GINETH VALERIANO ', 3214636316, '', '', '4500', '0', '', 4500, '4500', '0', 'BALZER COLEGIAL ROJO REVISAR PUÑOS MUY SUCIOS '),
(10239, 1, '2022-03-10 19:44:25', '2022-03-16', 'NATALY VELANDIA ', 3012085729, '', '', '38000', '0', '', 38000, '0', '38000', 'PANTALON VERDE BONANGEL TALLA 6\r\nSACO WOMAN TALLA S'),
(10240, 1, '2022-03-10 19:45:38', '0000-00-00', 'JUAN CARLOS ', 3108569219, '', '', '4500', '0', '', 4500, '0', '4500', 'pantalon de paño'),
(10241, 1, '2022-03-10 19:48:02', '2022-03-11', 'YENNIFER QUEVEDO ', 3127585989, '', '', '18000', '0', '', 18000, '0', '18000', 'DOS CAMISAS COLOR CURUBA Y AZUL MOHO \r\nTRAJE NEGRO CON MOHO '),
(10242, 1, '2022-03-10 20:20:36', '2022-03-11', 'JULIAN ANDRES ', 3183142670, '', '', '4500', '0', '', 4500, '0', '4500', 'PANTALON NEGRO CON CORBATIN '),
(10243, 1, '2022-03-10 21:26:07', '2022-03-11', 'CESAR TORREZ ', 3045962718, '', '', '9000', '0', '', 9000, '0', '9000', 'CAMISA AZUL Y CAMISA AZUL A CUADROS '),
(10244, 1, '2022-03-10 21:46:46', '2022-03-11', 'MARIA DEL PILAR MESA ', 3204902033, '', '', '4500', '0', '', 4500, '0', '4500', 'PANTALON DRIL GRIS '),
(10245, 1, '2022-03-10 23:00:41', '2022-03-16', 'YEISON TELLEZ ', 3224660770, '', '', '59000', '0', '', 59000, '0', '59000', 'camisa crml tll 12 pantalon koaj talla 28 h \r\nchaqueta koaj talla L '),
(10246, 1, '2022-03-10 23:47:44', '2022-03-11', 'ELIZABETH RAMIREZ ', 3012347235, '', '', '5200', '0', '', 5200, '0', '5200', 'BUSO DE HILO CAFE '),
(10247, 1, '2022-03-10 23:49:53', '2022-03-11', 'ELIZABETH RAMIREZ ', 3012347235, '', '', '6500', '0', '', 6500, '0', '6500', 'CHAQUETA AZUL '),
(10248, 1, '2022-03-10 23:53:22', '2022-03-12', 'JAVITEX ', 0, '', '', '10000', '0', '', 10000, '0', '10000', 'EDREDON BLANCO GRIS '),
(10249, 1, '2022-03-11 14:06:32', '0000-00-00', 'Mery Quevedo', 3157090683, '', '', '9700', '0', '', 9700, '0', '9700', 'Pant Tinturado\r\nBuso Negro'),
(10250, 1, '2022-03-11 19:05:12', '0000-00-00', 'JORGE BARRAGAN ', 3112315886, '', '', '63500', '0', '', 63500, '0', '63500', 'COBIJA TERMICA DE COLORES BKLANCA \r\nEDREDON DE COLORES VERDE \r\nEDREDON DE MANCHITAS \r\nCAMISA NEGRA'),
(10251, 1, '2022-03-11 19:06:40', '2022-03-12', 'DAYANA CHAVEZ ', 3107635401, '', '', '9000', '0', '', 9000, '0', '9000', 'JEANS NG Y AZ \r\n'),
(10252, 1, '2022-03-11 19:08:23', '2022-03-12', 'EDGAR COSMA ', 3132891424, '', '', '6500', '0', '', 6500, '0', '6500', 'CHAQUETA DOBLE FAS NEGRA GRIS '),
(10253, 1, '2022-03-11 19:19:51', '0000-00-00', 'YENNY RAMIREZ ', 3042130558, 'CLL2A #2-03 CEREZOS 1', '', '11500', '0', '', 11500, '11500', '0', 'BLAZER COLEGIAL ROJO \r\nJARDINERA A CUADROS '),
(10254, 1, '2022-03-11 19:33:06', '2022-03-12', 'OMAR AGENCIA ', 0, '', '', '3000', '0', '', 3000, '0', '3000', 'BLAZER COLEGIAL AZUL '),
(10255, 1, '2022-03-11 20:15:57', '0000-00-00', 'FABIAN SANCHEZ ', 3105522015, '', '', '9000', '0', '', 9000, '0', '9000', 'CHAQUETA DE PLUMAS AZUL POLO CREMALLERA DE BOLSILLO ROTO '),
(10256, 1, '2022-03-11 20:45:52', '2022-03-12', 'RICARDO THOMAS ', 3002896600, '', '', '6500', '0', '', 6500, '0', '6500', 'CHAQUETA ROJA CON CAPOTA Y CORDON '),
(10257, 1, '2022-03-11 20:56:40', '2022-03-12', 'JORGE BARRAGAN ', 3112315886, '', '', '6500', '0', '', 6500, '0', '6500', 'CHAQUETA AZUL DOBLE FAS '),
(10258, 1, '2022-03-11 21:14:39', '0000-00-00', 'LICUIA CORTEZ ', 3044703898, 'ALHAMBRA T 7 APT 101', '', '20500', '0', '', 20500, '0', '20500', '3 BLAZER AZUL \r\n1 JARDINERA CAFE '),
(10259, 1, '2022-03-11 21:57:24', '2022-03-12', 'JOAQUIN SANCHEZ ', 3213642912, '', '', '11000', '0', '', 11000, '0', '11000', 'CHAQUETA VERDE \r\nPANTALON NEGRO '),
(10260, 1, '2022-03-11 23:39:09', '2022-03-14', 'CARMEN VARGAZ ', 3103050216, '', '', '57000', '0', '', 57000, '0', '57000', 'EDREDONDELGADO BEIGE \r\nCOBIJA TERMICA AZUL CON CABALLO \r\nCOBIJA NEGRA DE HUELIITAS '),
(10261, 1, '2022-03-12 14:30:39', '0000-00-00', 'Cristian Velasquez', 3196030462, '', '', '23000', '0', '', 23000, '0', '23000', 'ovejero Gris'),
(10262, 1, '2022-03-12 15:00:32', '2022-03-14', 'Disy Bernal', 3137886433, '', '', '9000', '0', '', 9000, '0', '9000', 'Pantalon gris descolor y ng en jean '),
(10263, 1, '2022-03-12 15:51:04', '2022-03-22', 'Diana Charry Perez', 3108076769, '', '', '25000', '0', '', 25000, '0', '25000', 'Tapete beish con cafe atigrado');

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
(109, 10056, 'Lavado', 'Pantalón', '', '2', '4500', '9000'),
(110, 10057, 'LAVADO', 'CHAQUETA', '', '1', '6300', '6300'),
(111, 10058, 'Lavado', 'Pantalón', '', '1', '4500', '4500'),
(112, 10059, 'Lavado y Planchado ', 'Camiseta', '', '5', '4500', '22500'),
(113, 10060, 'Lavado', 'Camiseta', '', '1', '4500', '4500'),
(114, 10061, 'Lavado', 'Pantalón', '', '1', '4500', '4500'),
(115, 10061, 'CHAQUETA', 'LAVADO ', '', '1', '7000', '7000'),
(116, 10062, 'Lavado', 'Camiseta', '', '0', '0', '0'),
(117, 10062, 'BLAZER ', 'LAVADO ', '', '3', '4500', '13500'),
(118, 10063, 'Lavado', 'Pantalón', '', '1', '4500', '4500'),
(119, 10064, 'Lavado', 'Pantalón', '', '2', '4500', '9000'),
(120, 10065, 'Lavado', 'Chaqueta', '', '1', '6500', '6500'),
(121, 10066, 'Lavado', ' CUBRELECHOS', '', '2', '23000', '46000'),
(122, 10067, 'Lavado', ' CUBRELECHOS', '', '1', '22000', '22000'),
(123, 10068, 'Lavado', 'Camiseta', '', '0', '0', '0'),
(124, 10068, 'BLAZER ', 'LAVADO ', '', '1', '4500', '4500'),
(128, 10070, 'Lavado', ' COBIJA TERMICA ', '', '1', '10000', '10000'),
(129, 10071, 'Lavado', ' BEIZER ', '', '1', '5200', '5200'),
(130, 10069, 'Lavado', ' BUSO HILO ', '', '1', '5000', '5000'),
(131, 10069, 'BLAZER ', 'LAVADO ', '', '1', '4500', '4500'),
(132, 10069, 'BUSO CON MOÑOS ', 'LAVADO ', '', '1', '5200', '5200'),
(133, 10072, 'Lavado', ' BUSO HILO ', '', '1', '5000', '5000'),
(134, 10072, 'BLAZER ', 'LAVADO', '', '1', '4500', '4500'),
(135, 10072, 'CAMISA', 'LAVADO', '', '1', '4500', '4500'),
(136, 10073, 'Lavado', 'Camiseta', '', '1', '6000', '6000'),
(137, 10073, 'BLAZER', 'LAVADO ', '', '1', '6000', '6000'),
(138, 10073, 'PANTALON ', 'LAVADO ', '', '1', '6000', '6000'),
(139, 10074, 'Lavado', 'Pantalón', '', '3', '4500', '13500'),
(140, 10075, 'Jardinera', 'lavado prensado', '', '1', '3000', '3000'),
(141, 10075, 'Lavado', 'Blazer', '', '1', '2000', '2000'),
(142, 10075, 'Prensado', 'Mantel', '', '1', '2000', '2000'),
(143, 10076, 'Lavado', 'Camisa', '', '1', '6000', '6000'),
(144, 10076, 'lavado', 'vestido', '', '1', '12000', '12000'),
(145, 10076, 'lavado ', 'vestido', '', '1', '9400', '9400'),
(146, 10077, 'Lavado', 'Pantalón', '', '1', '4500', '4500'),
(147, 10078, 'LAVADO', 'VESTIDOS', '', '4', '9400', '37600'),
(149, 10079, 'Lavado', 'Buso ', '', '2', '5800', '11600'),
(150, 10079, 'chaqueta', 'lavado', '', '1', '6700', '6700'),
(151, 10079, 'blazer', 'lavado', '', '1', '5000', '5000'),
(152, 10080, 'Tintura', 'Pantalón', '', '1', '19000', '19000'),
(153, 10081, 'Lavado', ' CUBRELECHOS', '', '1', '19000', '19000'),
(154, 10081, 'lavado', 'Cobijas', '', '2', '18000', '36000'),
(157, 10082, 'Lavado', 'blazer Extra', '', '1', '6500', '6500'),
(158, 10083, 'Lavado', 'Camisa', '', '1', '4500', '4500'),
(159, 10083, 'pantalon ', 'lavado', '', '1', '4500', '4500'),
(160, 10084, 'Lavado', ' BEIZER ', '', '1', '6000', '6000'),
(161, 10085, 'Lavado', ' CUBRELECHOS', '', '1', '22000', '22000'),
(163, 10086, 'Lavado', ' BEIZER ', '', '1', '4500', '4500'),
(164, 10087, 'Lavado', 'Chaqueta', '', '2', '6500', '13000'),
(165, 10088, 'Lavado', ' CUBRELECHOS', '', '1', '22000', '22000'),
(167, 10089, 'Lavado', 'EDREDON', '', '1', '23000', '23000'),
(168, 10090, 'Lavado', 'Pantalón', '', '1', '4500', '4500'),
(169, 10090, 'BUSO HILO ', 'LAVADO ', '', '1', '5000', '5000'),
(170, 10091, 'Lavado', 'Pantalón', '', '4', '4500', '18000'),
(171, 10092, 'Lavado', 'Pantalón', '', '2', '4500', '9000'),
(172, 10093, 'Lavado', 'Chaqueta', '', '1', '7500', '7500'),
(173, 10094, 'Lavado', 'Chaqueta', '', '2', '8000', '16000'),
(174, 10095, 'Lavado', 'Pantalón', '', '2', '4500', '9000'),
(175, 10096, 'Lavado', ' BEIZER ', '', '1', '4500', '4500'),
(177, 10098, 'LAVADO', 'PIJAMAS ASCENSOR', '', '13', '50000', '650000'),
(178, 10098, 'LAVADO', 'PIJAMAS ASENSOR', '', '8', '55000', '440000'),
(179, 10099, 'Lavado', ' BUSO ', '', '3', '5200', '15600'),
(180, 10100, 'Lavado', 'Chaqueta', '', '1', '6500', '6500'),
(181, 10100, 'Camisa', 'Lavedo', '', '2', '4500', '9000'),
(182, 10101, 'Lavado', ' COBIJA TERMICA ', '', '1', '19000', '19000'),
(183, 10102, 'Lavado', 'Pantalón', '', '1', '4500', '4500'),
(184, 10102, 'ABRIGO ', 'LAVADO ', '', '1', '6500', '6500'),
(185, 10102, 'CHAQUETA ', 'PLANCHADO ', '', '1', '2500', '2500'),
(186, 10103, 'Lavado', 'Camiseta', '', '2', '4500', '9000'),
(187, 10104, 'Lavado', ' OVEROL', '', '1', '10000', '10000'),
(188, 10104, 'OVEROL', 'Lavado', '', '1', '8000', '8000'),
(189, 10105, 'Lavado', 'Pantalón', '', '1', '4500', '4500'),
(192, 10106, 'Lavado', 'Pantalón', '', '1', '4500', '4500'),
(193, 10106, 'Vestido H', 'Lavado', '', '2', '4500', '9000'),
(194, 10106, 'Chaqueta Tipo Saco', 'Lavado', '', '1', '5200', '5200'),
(195, 10106, 'Camisa', 'Lavado', '', '1', '4500', '4500'),
(196, 10107, 'Lavado', 'Chaqueta', '', '1', '6500', '6500'),
(197, 10108, 'Lavado', 'Chaqueta', '', '2', '5200', '10400'),
(198, 10109, 'Lavado', ' VESTIDO', '', '1', '8000', '8000'),
(199, 10110, 'Lavado', 'Camiseta', '', '2', '5000', '10000'),
(202, 10111, 'Tintura', 'Pantalón', '', '1', '19000', '19000'),
(204, 10112, 'Lavado', 'Chaqueta', '', '1', '8000', '8000'),
(206, 10114, 'Lavado', ' CUBRELECHOS', '', '2', '18000', '36000'),
(207, 10115, 'Lavado', ' BUSO HILO ', '', '0', '5200', '5200'),
(209, 10117, 'Lavado', ' CUBRELECHOS', '', '1', '20000', '20000'),
(210, 10118, 'Lavado', 'Pantalón', '', '1', '4500', '0'),
(211, 10119, 'Lavado', 'Pantalón', '', '1', '4500', '4500'),
(212, 10119, 'Camisa', 'Plancha', '', '1', '2500', '2500'),
(213, 10120, 'Tintura', 'Chaqueta', '', '1', '20000', '20000'),
(214, 10121, 'Lavado', ' BUSO ', '', '1', '5500', '5500'),
(215, 10121, 'Vestido Beish lana', 'Lavado ', '', '2', '8000', '16000'),
(216, 10121, 'Pantalon ', 'Lavado ', '', '2', '4500', '9000'),
(217, 10121, 'Abrigo ', 'Lavado', '', '1', '9000', '9000'),
(218, 10121, 'Ruana', 'Lavado', '', '1', '8500', '8500'),
(219, 10122, 'Lavado', 'Camiseta', '', '1', '4500', '4500'),
(220, 10122, 'Pantalon', 'Lavado', '', '1', '4500', '4500'),
(221, 10123, 'Lavado', 'Chaqueta', '', '1', '6500', '6500'),
(222, 10124, 'Lavado', ' CUBRELECHOS', '', '1', '22000', '22000'),
(223, 10125, 'Lavado', 'Chaqueta', '', '1', '6500', '6500'),
(224, 10126, 'Lavado', 'Pantalón', '', '1', '4500', '4500'),
(225, 10127, 'Lavado', 'Pantalón', '', '4', '4500', '18000'),
(226, 10128, 'Lavado', 'Pantalón', '', '1', '4500', '4500'),
(227, 10129, 'Lavado', ' ABRIGO ', '', '1', '7000', '7000'),
(233, 10130, 'Lavado', 'Pantalón', '', '4', '4500', '18000'),
(234, 10130, 'CHAQUETA ', 'LAVADO ', '', '3', '6500', '19500'),
(235, 10130, 'ABRIGO ', 'LAVADO ', '', '1', '9000', '9000'),
(236, 10130, 'VESTIDOS ', 'LAVADO ', '', '2', '7000', '14000'),
(237, 10130, 'BLAZER AZUL ', 'LAVADO ', '', '1', '5000', '5000'),
(240, 10132, 'Lavado', 'Chaqueta', '', '1', '6500', '6500'),
(241, 10133, 'Lavado', 'Pantalón', '', '4', '4500', '18000'),
(242, 10133, 'CHAQUETA ', 'LAVADO ', '', '1', '6500', '6500'),
(243, 10134, 'Lavado', ' ABRIGO ', '', '2', '10000', '20000'),
(244, 10134, 'CHAQUETA ', 'LAVEDO ', '', '1', '6500', '6500'),
(245, 10135, 'Lavado', ' ABRIGO ', '', '1', '60000', '60000'),
(246, 10116, 'Lavado', 'Chaqueta', '', '2', '6500', '13000'),
(247, 10136, 'Lavado', ' CUBRELECHOS', '', '1', '19000', '19000'),
(248, 10137, 'Lavado', 'Chaqueta', '', '1', '6500', '6500'),
(249, 10138, 'Lavado', 'Chaqueta', '', '1', '6500', '6500'),
(250, 10139, 'Lavado', 'Camisa', '', '1', '4500', '4500'),
(251, 10140, 'Lavado', 'Pantalón', '', '1', '4500', '4500'),
(252, 10141, 'Lavado', 'Camiseta', '', '1', '4500', '4500'),
(253, 10141, 'Pantalon ', 'Lavado', '', '1', '4500', '4500'),
(254, 10142, 'Lavado', 'Pantalón', '', '1', '4500', '4500'),
(257, 10143, 'Lavado', ' VESTIDO', '', '4', '4500', '18000'),
(258, 10143, 'Chaleco', 'Lavado', '', '2', '3000', '6000'),
(259, 10144, 'Lavado', 'Chaqueta', '', '1', '6500', '6500'),
(260, 10097, 'Lavado', 'Chaqueta', '', '1', '6500', '6500'),
(261, 10145, 'Lavado', ' BEIZER ', '', '1', '4500', '4500'),
(262, 10146, 'Lavado', 'Pantalón', '', '4', '4500', '18000'),
(263, 10146, 'CAMISA ', 'LAVADO', '', '1', '4500', '4500'),
(264, 10146, 'CHAQUETA', 'LAVADO ', '', '1', '6500', '6500'),
(265, 10147, 'STANDARS ', 'LAVADO ', '', '6', '3000', '18000'),
(266, 10147, 'CHAQUETA ', 'LAVADO ', '', '1', '4000', '4000'),
(267, 10148, 'Lavado', 'Pantalón', '', '1', '4500', '4500'),
(268, 10149, 'Lavado', 'Pantalón', '', '1', '4500', '4500'),
(269, 10150, 'Lavado', 'Pantalón', '', '3', '4500', '13500'),
(271, 10151, 'Lavado', 'Chaqueta', '', '1', '6500', '6500'),
(272, 10152, 'Lavado', ' BEIZER ', '', '1', '4500', '4500'),
(273, 10153, 'Lavado', 'Chaqueta', '', '1', '6500', '6500'),
(274, 10154, 'Lavado', 'Chaqueta', '', '1', '7000', '7000'),
(277, 10155, 'Lavado', ' BEIZER ', '', '1', '4500', '4500'),
(278, 10155, 'JARDINERA ', 'LAVADO ', '', '1', '7000', '7000'),
(279, 10156, 'Lavado', ' BEIZER ', '', '1', '5200', '5200'),
(280, 10157, 'Lavado', ' BEIZER ', '', '1', '4500', '4500'),
(281, 10157, 'JARDINERA ', 'LAVADO ', '', '1', '7000', '7000'),
(282, 10131, 'Lavado', ' CUBRELECHOS', '', '1', '10000', '10000'),
(283, 10131, 'CHAQUETA ', 'TINTURA ', '', '1', '10000', '10000'),
(284, 10158, 'Lavado', ' CUBRELECHOS', '', '2', '10000', '20000'),
(285, 10158, 'TAPETE ', 'LAVADO ', '', '1', '35000', '35000'),
(286, 10159, 'Lavado', 'Chaqueta', '', '1', '6500', '6500'),
(288, 10161, 'Lavado', 'Falda', '', '1', '4500', '4500'),
(289, 10162, 'Lavado', ' CUBRELECHOS', '', '1', '23000', '23000'),
(290, 10163, 'JARDINERA ', 'LAVADO ', '', '1', '3000', '3000'),
(291, 10019, 'Lavado', ' CUBRELECHOS', '', '1', '23000', '23000'),
(292, 10019, 'CUBRELECHO BEIGE', 'LAVADO ', '', '1', '23000', '23000'),
(293, 10164, 'Lavado', 'Chaqueta', '', '1', '6500', '6500'),
(294, 10164, 'blazer ', 'lavado ', '', '1', '5200', '5200'),
(295, 10165, 'Lavado', 'Pantalón', '', '2', '4500', '9000'),
(296, 10166, 'Lavado', 'Chaqueta', '', '1', '6500', '6500'),
(297, 10166, 'ZAPATOS ', 'LAVADO ', '', '1', '12000', '12000'),
(298, 10167, 'Lavado', 'Pantalón', '', '1', '4500', '4500'),
(299, 10168, 'Lavado', ' BUSO ', '', '1', '5200', '5200'),
(300, 10169, 'Lavado', ' ABRIGO ', '', '1', '6500', '6500'),
(301, 10170, 'Lavado', ' CUBRELECHOS', '', '2', '10000', '20000'),
(302, 10170, 'COBIJA ', 'LAVADO ', '', '1', '10000', '10000'),
(305, 10171, 'TRAJE COMPLETO ', 'LAVADO ', '', '2', '9000', '18000'),
(307, 10172, 'Lavado', 'Pantalón', '', '1', '4500', '4500'),
(308, 10173, 'Lavado', 'Chaqueta', '', '2', '6500', '13000'),
(309, 10174, 'Lavado', 'Chaqueta', '', '1', '6500', '6500'),
(310, 10175, 'Lavado', 'Pantalón', '', '1', '4500', '4500'),
(311, 10176, 'Lavado', ' CUBRELECHOS', '', '1', '23000', '23000'),
(312, 10177, 'Lavado', ' CUBRELECHOS', '', '1', '20000', '20000'),
(313, 10178, 'Lavado', 'Chaqueta', '', '2', '6500', '13000'),
(314, 10179, 'Lavado', 'Chaqueta', '', '1', '6500', '6500'),
(315, 10180, 'Lavado', 'Chaqueta', '', '1', '6500', '6500'),
(316, 10181, 'Lavado', 'Pantalón', '', '1', '4500', '4500'),
(317, 10181, 'Chaqueta', 'Lavado', '', '1', '6500', '6500'),
(318, 10182, 'Lavado', 'Chaqueta', '', '1', '6500', '6500'),
(319, 10183, 'Lavado', 'Chaqueta', '', '1', '6500', '6500'),
(320, 10184, 'Lavado', ' BUSO HILO ', '', '1', '5200', '5200'),
(321, 10184, 'BLAZER LARGO ', 'LAVADO ', '', '2', '6000', '12000'),
(322, 10184, 'BLEIZER CORTO ', 'LAVADO ', '', '1', '5200', '5200'),
(323, 10185, 'Lavado', 'Chaqueta', '', '1', '6500', '6500'),
(324, 10186, 'Lavado', 'Pantalón', '', '1', '4500', '4500'),
(327, 10187, 'Lavado', 'Pantalon', '', '1', '4500', '4500'),
(328, 10187, 'edredon ', 'lavado ', '', '1', '20000', '20000'),
(329, 10188, 'Lavado', ' ABRIGO ', '', '1', '6500', '6500'),
(331, 10189, 'Lavado', ' CUBRELECHOS', '', '1', '23000', '23000'),
(332, 10190, 'Lavado', ' CUBRELECHOS', '', '1', '22000', '22000'),
(333, 10191, 'Lavado', 'Camiseta', '', '3', '4500', '13500'),
(334, 10191, 'BLAZER ', 'LAVADO ', '', '1', '5200', '5200'),
(335, 10191, 'PANTALON', 'LAVADO', '', '2', '4500', '9000'),
(336, 10192, 'Lavado', 'Camiseta', '', '3', '4500', '13500'),
(337, 10193, 'Lavado', ' TAPETE ', '', '1', '10000', '10000'),
(338, 10194, 'Lavado', ' CUBRELECHOS', '', '1', '22000', '22000'),
(339, 10194, 'COBIJA ', 'LAVADO ', '', '1', '19000', '19000'),
(340, 10195, 'Lavado', 'Chaqueta', '', '1', '5200', '5200'),
(341, 10196, 'Lavado', 'Chaqueta', '', '1', '6500', '6500'),
(342, 10197, 'Lavado', 'Chaqueta', '', '1', '6500', '6500'),
(343, 10160, 'Lavado', 'Cojines', '', '5', '3000', '15000'),
(344, 10198, 'Lavado', ' CUBRELECHOS', '', '1', '23000', '23000'),
(345, 10199, 'Lavado', ' OVEROL', '', '0', '10000', '10000'),
(346, 10199, 'OVEROL ', 'LAVADO ', '', '1', '8000', '8000'),
(347, 10200, 'Lavado', 'Chaqueta', '', '1', '6500', '6500'),
(348, 10200, 'Chaqueta ', 'Lavado', '', '1', '6000', '6000'),
(349, 10201, 'Lavado', ' CUBRELECHOS', '', '2', '10000', '20000'),
(350, 10201, 'GABAN ', 'Lavado', '', '1', '3000', '3000'),
(351, 10202, 'Lavado', 'Pantalón', '', '2', '4500', '9000'),
(352, 10203, 'Lavado', 'Pantalón', '', '1', '4500', '4500'),
(353, 10204, 'Lavado', 'Chaqueta', '', '1', '6500', '6500'),
(354, 10205, 'Lavado', ' BEIZER ', '', '2', '5200', '10400'),
(355, 10206, 'Lavado', 'Chaqueta', '', '1', '6500', '6500'),
(356, 10207, 'Lavado', 'Camisa', '', '1', '4500', '4500'),
(357, 10207, 'Jean Azul wayuu', 'Lavado', '', '1', '4500', '4500'),
(358, 10208, 'Lavado', 'Chaqueta', '', '1', '6500', '6500'),
(359, 10209, 'Lavado', ' CUBRELECHOS', '', '1', '20000', '20000'),
(360, 10210, 'Lavado', 'Ruanas', '', '1', '12000', '12000'),
(361, 10211, 'Lavado', 'Pantalón', '', '2', '4500', '9000'),
(362, 10212, 'Lavado', ' BEIZER ', '', '1', '4500', '4500'),
(363, 10213, 'Lavado', 'Chaqueta', '', '1', '6500', '6500'),
(364, 10214, 'Lavado', 'Chaqueta', '', '1', '6500', '6500'),
(367, 10215, 'Lavado', ' CUBRELECHOS', '', '1', '20000', '20000'),
(368, 10216, 'Tintura', ' BUSO ', '', '1', '19000', '19000'),
(369, 10217, 'Lavado', 'Chaqueta', '', '1', '6500', '6500'),
(370, 10218, 'Lavado', 'Pantalón', '', '1', '4500', '4500'),
(371, 10218, 'CAMISA ', 'LAVADO ', '', '1', '4500', '4500'),
(372, 10219, 'Lavado', ' VESTIDO', '', '1', '12000', '12000'),
(373, 10220, 'Tintura', 'Pantalón', '', '1', '19000', '19000'),
(376, 10113, 'Lavado', 'Pantalón', '', '1', '19000', '19000'),
(377, 10222, 'Lavado', 'Pantalón', '', '1', '4500', '4500'),
(378, 10222, 'BLAZER ', 'LAVADO ', '', '1', '5200', '5200'),
(379, 10223, 'Lavado', 'Camiseta', '', '1', '4500', '4500'),
(380, 10224, 'Lavado', ' TAPETE ', '', '1', '20000', '20000'),
(381, 10224, '', '', '', '0', '0', '0'),
(382, 10225, 'Lavado', 'Chaqueta', '', '1', '6500', '6500'),
(383, 10226, 'Lavado', ' BUSO CAPOTERO ', '', '1', '5800', '5800'),
(384, 10227, 'Lavado', 'Chaqueta', '', '1', '6500', '6500'),
(385, 10228, 'Lavado', 'Pantalón', '', '2', '4500', '9000'),
(386, 10228, 'BLAZER ', 'LAVADO ', '', '1', '5200', '5200'),
(387, 10229, 'Lavado', 'Camiseta', '', '5', '4500', '22500'),
(388, 10229, 'PANTALON ', 'LAVADO ', '', '1', '4500', '4500'),
(390, 10230, 'Lavado', 'Chaqueta', '', '1', '6500', '6500'),
(399, 10231, 'Lavado', ' CUBRELECHOS', '', '2', '10000', '20000'),
(400, 10231, 'lavado', 'Blazer', '', '5', '2000', '10000'),
(401, 10231, 'Lavado', 'Pantalones', '', '5', '2000', '10000'),
(402, 10231, 'Tintura', 'Chaqueta', '', '1', '10000', '10000'),
(405, 10232, 'Lavado', 'Camiseta', '', '1', '4300', '4300'),
(406, 10232, 'Lavado', 'Busos', '', '3', '5000', '15000'),
(408, 10234, 'Lavado', 'Pantalón', '', '1', '4500', '4500'),
(409, 10235, 'Lavado', 'Chaqueta', '', '1', '6500', '6500'),
(414, 10236, 'Lavado', 'Chaqueta', '', '1', '6500', '6500'),
(415, 10237, 'Lavado', ' TAPETE ', '', '2', '65000', '130000'),
(417, 10238, 'Lavado', ' BEIZER ', '', '1', '4500', '4500'),
(418, 10239, 'Tintura', 'Pantalón', '', '1', '19000', '19000'),
(419, 10239, 'SACO ', 'TINTURADO ', '', '1', '19000', '19000'),
(420, 10240, 'Lavado', 'Pantalón', '', '1', '4500', '4500'),
(421, 10241, 'Lavado', 'Camiseta', '', '2', '4500', '9000'),
(422, 10241, 'TRAJE COMPLETO', 'LAVADO ', '', '2', '4500', '9000'),
(423, 10242, 'Lavado', 'Pantalón', '', '1', '4500', '4500'),
(424, 10243, 'Lavado', 'Camiseta', '', '2', '4500', '9000'),
(425, 10244, 'Lavado', 'Pantalón', '', '1', '4500', '4500'),
(426, 10245, 'Tintura', 'Camiseta', '', '1', '19000', '19000'),
(427, 10245, 'GABAN ', 'TINTURA ', '', '1', '21000', '21000'),
(428, 10245, 'PANTALON ', 'TINTURA ', '', '1', '19000', '19000'),
(429, 10233, 'Lavado', 'Chaqueta', '', '1', '6500', '6500'),
(430, 10246, 'Lavado', ' BUSO HILO ', '', '1', '5200', '5200'),
(431, 10247, 'Lavado', 'Chaqueta', '', '1', '6500', '6500'),
(432, 10248, 'Lavado', ' CUBRELECHOS', '', '1', '10000', '10000'),
(435, 10250, 'Lavado', ' CUBRELECHOS', '', '2', '20000', '40000'),
(436, 10250, ' COBIJA TERMICA ', 'LAVADO ', '', '1', '19000', '19000'),
(437, 10250, 'CAMISETA ', 'LAVADO ', '', '1', '4500', '4500'),
(438, 10251, 'Lavado', 'Pantalón', '', '2', '4500', '9000'),
(439, 10252, 'Lavado', 'Chaqueta', '', '1', '6500', '6500'),
(442, 10253, 'Lavado', ' BEIZER ', '', '1', '4500', '4500'),
(443, 10253, 'JARDINERA ', 'LAVADO ', '', '1', '7000', '7000'),
(444, 10254, 'Lavado', ' BEIZER ', '', '1', '3000', '3000'),
(445, 10249, 'Lavado', 'Pantalón', '', '1', '4500', '4500'),
(446, 10249, 'Lavado', 'Saco', '', '1', '5200', '5200'),
(451, 10255, 'Lavado', 'Chaqueta', '', '1', '9000', '9000'),
(452, 10256, 'Lavado', 'Chaqueta', '', '1', '6500', '6500'),
(453, 10257, 'Lavado', 'Chaqueta', '', '1', '6500', '6500'),
(456, 10258, 'Lavado', ' BEIZER ', '', '3', '4500', '13500'),
(457, 10258, 'JARDINERA ', 'LAVADO ', '', '1', '7000', '7000'),
(459, 10221, 'Lavado', ' BEIZER ', '', '1', '5200', '5200'),
(460, 10259, 'Lavado', 'Chaqueta', '', '1', '6500', '6500'),
(461, 10259, 'PANTALON ', 'LAVADO ', '', '1', '4500', '4500'),
(462, 10260, 'Lavado', ' COBIJA TERMICA ', '', '3', '19000', '57000'),
(463, 10261, 'Lavado', ' CUBRELECHOS', '', '1', '23000', '23000'),
(464, 10262, 'Lavado', 'Pantalón', '', '2', '4500', '9000'),
(465, 10263, 'Lavado', ' TAPETE ', '', '1', '25000', '25000');

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
(19, ' BEIZER '),
(20, ' BUSO '),
(21, ' BUSO CAPOTERO '),
(22, ' VESTIDO'),
(23, ' ABRIGO '),
(24, ' TAPETE ');

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
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10264;

--
-- AUTO_INCREMENT de la tabla `factura_orden_producto`
--
ALTER TABLE `factura_orden_producto`
  MODIFY `order_item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=466;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

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
