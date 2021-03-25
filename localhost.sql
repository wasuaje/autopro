-- phpMyAdmin SQL Dump
-- version 2.11.9.3
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 16-03-2009 a las 14:08:57
-- Versión del servidor: 4.1.22
-- Versión de PHP: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `pysmd_psmd`
--
-- CREATE DATABASE `pysmd_psmd` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
-- USE `pysmd_psmd`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cotizaciones`
--

CREATE TABLE IF NOT EXISTS `cotizaciones` (
  `id` bigint(20) unsigned NOT NULL auto_increment,
  `idUsuario` bigint(20) unsigned NOT NULL default '0',
  `estado` enum('pendiente','enviado') NOT NULL default 'pendiente',
  `enviadoFecha` date default NULL,
  PRIMARY KEY  (`id`),
  KEY `indice_usuario` (`idUsuario`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcar la base de datos para la tabla `cotizaciones`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cotizaciones_productos`
--

CREATE TABLE IF NOT EXISTS `cotizaciones_productos` (
  `id` bigint(20) unsigned NOT NULL auto_increment,
  `idCotizacion` bigint(20) unsigned NOT NULL default '0',
  `idProducto` bigint(20) unsigned NOT NULL default '0',
  `cantidadProductos` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcar la base de datos para la tabla `cotizaciones_productos`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datos_globales`
--

CREATE TABLE IF NOT EXISTS `datos_globales` (
  `id` smallint(6) NOT NULL auto_increment,
  `website` varchar(255) NOT NULL default 'http://www.proyectosolucionesmd.com',
  `nombre_empresa` varchar(255) NOT NULL default 'Proyecto & Soluciones MD, C.A.',
  `Rif` varchar(20) NOT NULL default '',
  `caracteristicas` text,
  `mision` text,
  `vision` text,
  `address` varchar(255) default NULL,
  `telefono1` varchar(50) default NULL,
  `telefono2` varchar(50) default NULL,
  `email1` varchar(255) NOT NULL default '',
  `email2` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Volcar la base de datos para la tabla `datos_globales`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `noticias`
--

CREATE TABLE IF NOT EXISTS `noticias` (
  `id` bigint(20) NOT NULL auto_increment,
  `titulo` varchar(255) NOT NULL default '',
  `cuerpo` text NOT NULL,
  `foto` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcar la base de datos para la tabla `noticias`
--

INSERT INTO `noticias` (`id`, `titulo`, `cuerpo`, `foto`) VALUES
(1, 'Bienvenidos', 'nueva p&Atilde;&iexcl;gina', '2812e3a72451b574a6523565ef86e76c');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos_y_categorias`
--

CREATE TABLE IF NOT EXISTS `productos_y_categorias` (
  `id` bigint(20) unsigned NOT NULL auto_increment,
  `referencia` varchar(255) default NULL,
  `padre` bigint(20) unsigned default NULL,
  `nombre` varchar(255) NOT NULL default '',
  `foto` varchar(255) default NULL,
  `tipo` enum('producto','categoria') NOT NULL default 'producto',
  PRIMARY KEY  (`id`),
  KEY `nombre` (`nombre`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=389 ;

--
-- Volcar la base de datos para la tabla `productos_y_categorias`
--

INSERT INTO `productos_y_categorias` (`id`, `referencia`, `padre`, `nombre`, `foto`, `tipo`) VALUES
(1, NULL, NULL, 'Papeleria', NULL, 'categoria'),
(2, NULL, NULL, 'Art. Escolares', NULL, 'categoria'),
(3, NULL, NULL, 'Art. Oficina', NULL, 'categoria'),
(4, NULL, NULL, 'Art. Arquitectura', NULL, 'categoria'),
(5, NULL, NULL, 'Consumibles', NULL, 'categoria'),
(6, NULL, NULL, 'Varios', NULL, 'categoria'),
(7, '1', 1, 'ACETATO ENCUADERNACION PVC X50\r\n', NULL, 'producto'),
(8, '2', 1, 'AGUJA PUNTA ROMA\r\n', NULL, 'producto'),
(9, '3', 1, 'ALFILER PARA MAPAS EAGLE\r\n', NULL, 'producto'),
(10, '4', 1, 'ALMOHADILLA DACTILAR KORES\r\n', NULL, 'producto'),
(11, '5', 1, 'ALMOHADILLA PLASTICA AZOR #1\r\n', NULL, 'producto'),
(12, '6', 1, 'ALMOHADILLA PLASTICA MAYKA #0\r\n', NULL, 'producto'),
(13, '7', 1, 'ANILLO NEGRO 7/16" X50 PARA 94 HOJAS\r\n', NULL, 'producto'),
(14, '8', 1, 'ANILLOS 10MM ROJO X25\r\n', NULL, 'producto'),
(15, '9', 1, 'ANILLOS 18MM COLOR SURTIDO X25\r\n', NULL, 'producto'),
(16, '10', 1, 'ANILLOS 22MM COLOR SURTIDO X25\r\n', NULL, 'producto'),
(17, '11', 1, 'ANILLOS 6MM ROJO X50\r\n', NULL, 'producto'),
(18, '12', 1, 'ANILLOS 8MM BLANCO X50\r\n', NULL, 'producto'),
(19, '13', 1, 'ARCHIVADOR 1/2 OFICIO AKTA\r\n', NULL, 'producto'),
(20, '14', 1, 'ARCHIVADOR LOMO ANCHO OFICIO  EXPRESS\r\n', NULL, 'producto'),
(21, '15', 1, 'ARCHIVO LOMO ANCHO OFICIO AKTA X10\r\n', NULL, 'producto'),
(22, '16', 1, 'ARCILLA POTE\r\n', NULL, 'producto'),
(23, '17', 1, 'BANDEJA ECONOMICA 3 NIVELES\r\n', NULL, 'producto'),
(24, '18', 1, 'BANDERITAS NOTAS ADHESIVAS HOPAX\r\n', NULL, 'producto'),
(25, '19', 1, 'BARRA ADHESIVA 15GR KORES\r\n', NULL, 'producto'),
(26, '20', 1, 'BLOCK ANALISIS 12 COLUMNAS\r\n', NULL, 'producto'),
(27, '21', 1, 'BLOCK ANALISIS 3 COLUMNAS\r\n', NULL, 'producto'),
(28, '22', 1, 'BLOCK CARTA LORO 40HOJAS RAYADO\r\n', NULL, 'producto'),
(29, '23', 1, 'BLOCK CARTULINA DE CONSTRUCCION\r\n', NULL, 'producto'),
(30, '24', 1, 'BLOCK CUADRICULADO CARTA 40 HOJAS\r\n', NULL, 'producto'),
(31, '25', 1, 'BLOCK DIBUJO CARIBE 228X298MM\r\n', NULL, 'producto'),
(32, '26', 1, 'BLOCK ESPIRAL MEMO \r\n', NULL, 'producto'),
(33, '27', 1, 'BLOCK MILIMETRADO 20 HOJAS\r\n', NULL, 'producto'),
(34, '28', 1, 'BLOCK PAPEL DE SEDA 10 HOJAS SOLITA\r\n', NULL, 'producto'),
(35, '29', 1, 'BLOCK PAPEL LUSTRILLO\r\n', NULL, 'producto'),
(36, '30', 1, 'BLOCK PAPEL VEGETAL ROTULADO DIN A4 PEQUE&Atilde;‘O', NULL, 'producto'),
(37, '31', 1, 'BLOCK PAPELES SURTIDOS 42 HOJAS SOLITA\r\n', NULL, 'producto'),
(38, '32', 1, 'BOLIGRAFO KILOMETRICO AZUL X12\r\n', NULL, 'producto'),
(39, '33', 1, 'BOLIGRAFO MONGOL PUNTA MEDIA NEGRO X12\r\n', NULL, 'producto'),
(40, '34', 1, 'BOLIGRAFO MONGOL PUNTA MEDIA ROJO X12\r\n', NULL, 'producto'),
(41, '35', 1, 'BORRA NATA 624 X24\r\n', NULL, 'producto'),
(42, '36', 1, 'BORRADOR NATA 620\r\n', NULL, 'producto'),
(43, '37', 1, 'BORRADOR PIZARRA BLANCA FABERCASTELL VERDE\r\n', NULL, 'producto'),
(44, '38', 1, 'BORRADOR PIZARRA EXPO\r\n', NULL, 'producto'),
(45, '39', 1, 'BORRADOR SOLITA 620\r\n', NULL, 'producto'),
(46, '40', 1, 'CAJA CHICA PEQUE&Atilde;‘A #2', NULL, 'producto'),
(47, '41', 1, 'CALCULADORA CASIO C/IMPRESORA 12 DIGITOS\r\n', NULL, 'producto'),
(48, '42', 1, 'CARPETA C/LIGA PLASTICA CARTA\r\n', NULL, 'producto'),
(49, '43', 1, 'CARPETA C/LIGA PLASTICA OFICIO\r\n', NULL, 'producto'),
(50, '44', 1, 'CARPETA COLGANTE OSLO OFICIO X25\r\n', NULL, 'producto'),
(51, '45', 1, 'CARPETA FIBRA 1RA CARTA ACCO SUPERIOR X25\r\n', NULL, 'producto'),
(52, '46', 1, 'CARPETA FIBRA 1RA OFICIO OPTIMA X25\r\n', NULL, 'producto'),
(53, '47', 1, 'CARPETA LIGA FIBRA PLASTIFICADA UNICOLOR ROJA\r\n', NULL, 'producto'),
(54, '48', 1, 'CARPETA MANILA CARTA \r\n', NULL, 'producto'),
(55, '49', 1, 'CARPETA MANILA OFICIO X100\r\n', NULL, 'producto'),
(56, '50', 1, 'CARPETA MAYKA TRANSPARENTE CARTA\r\n', NULL, 'producto'),
(57, '51', 1, 'CARPETA MAYKA TRANSPARENTE OFICIO\r\n', NULL, 'producto'),
(58, '52', 1, 'CARTILLAS VARIADAS\r\n', NULL, 'producto'),
(59, '53', 1, 'CARTON 2 EN KILO 70X100 X50UNIDADES\r\n', NULL, 'producto'),
(60, '54', 1, 'CARTON MICRO CORRUGADO AZUL CIELO 50X70\r\n', NULL, 'producto'),
(61, '55', 1, 'CARTON MICRO CORRUGADO BLANCO CIELO 50X70\r\n', NULL, 'producto'),
(62, '56', 1, 'CARTON MICRO CORRUGADO ROJO  CIELO 50X70\r\n', NULL, 'producto'),
(63, '57', 1, 'CARTON MICRO CORRUGADOAMARILLO CIELO 50X70\r\n', NULL, 'producto'),
(64, '58', 1, 'CARTUCHERA FRESIT GRANDE 1 CIERRE\r\n', NULL, 'producto'),
(65, '59', 1, 'CARTUCHERA LONA DOBLE CIERRE C/DIBUJO\r\n', NULL, 'producto'),
(66, '60', 1, 'CARTUCHERA LONA ECO\r\n', NULL, 'producto'),
(67, '61', 1, 'CARTUCHERA MICKEY TATOO GRANDE \r\n', NULL, 'producto'),
(68, '62', 1, 'CARTUCHERA MICKEY TATOO PEQUE&Atilde;‘O', NULL, 'producto'),
(69, '63', 1, 'CARTUCHERA TABAQUITO CUERO GRANDE CON CIERRE\r\n', NULL, 'producto'),
(70, '64', 1, 'CARTUCHERA TABAQUITO LONA GRNADE CON PINZA\r\n', NULL, 'producto'),
(71, '65', 1, 'CARTULINA BRISTOL BLANCA PLIEGO \r\n', NULL, 'producto'),
(72, '66', 1, 'CARTULINA BRISTOL CARTA AMARILLO X100\r\n', NULL, 'producto'),
(73, '67', 1, 'CARTULINA BRISTOL CARTA AZUL X100\r\n', NULL, 'producto'),
(74, '68', 1, 'CARTULINA DOBLE FAZ AMARILLO X50\r\n', NULL, 'producto'),
(75, '69', 1, 'CARTULINA DOBLE FAZ AZUL OSCURO X50\r\n', NULL, 'producto'),
(76, '70', 1, 'CARTULINA ENCUADERNAR COL SURTIDOS X100\r\n', NULL, 'producto'),
(77, '71', 1, 'CD DIGIMAX 1X1.50\r\n', NULL, 'producto'),
(78, '72', 1, 'CD MAXELL 80MIN 700MB\r\n', NULL, 'producto'),
(79, '73', 1, 'CHINCHES COLORES SURTIDOS X100 PRESTO\r\n', NULL, 'producto'),
(80, '74', 1, 'CINTA DE REGALO 15MM DELGADA\r\n', NULL, 'producto'),
(81, '75', 1, 'CINTA DOBLE FAZ 1/2 X 1,90 MTS 3M\r\n', NULL, 'producto'),
(82, '76', 1, 'CINTA PORTA CARNET NEGRO \r\n', NULL, 'producto'),
(83, '77', 1, 'CINTA SCOTCH 3/4 X25 3M\r\n', NULL, 'producto'),
(84, '78', 1, 'CLIPS FIXO\r\n', NULL, 'producto'),
(85, '79', 1, 'CLIPS MARIPOSA #3\r\n', NULL, 'producto'),
(86, '80', 1, 'COLA COLORIDA X6 COLORES FABERCASTELL\r\n', NULL, 'producto'),
(87, '81', 1, 'COMPAS DE PRECISION MAPED CAJA RIGIDA\r\n', NULL, 'producto'),
(88, '82', 1, 'COMPAS DE PRECISION PRESTON 4010\r\n', NULL, 'producto'),
(89, '83', 1, 'COMPAS ECONOMICO \r\n', NULL, 'producto'),
(90, '84', 1, 'CORCHO LAMINA 60x90\r\n', NULL, 'producto'),
(91, '85', 1, 'CORCHO LAMINA 60x90\r\n', NULL, 'producto'),
(92, '86', 1, 'CORRECTOR LIQUIDO BOTELLA 20ML KORES AQUA\r\n', NULL, 'producto'),
(93, '87', 1, 'CORRECTOR TIPO LAPIZ KORES\r\n', NULL, 'producto'),
(94, '88', 1, 'CORRECTOR TIPO TEIPE QUICK\r\n', NULL, 'producto'),
(95, '89', 1, 'CREYON CERA X12 LA NIEVE\r\n', NULL, 'producto'),
(96, '90', 1, 'CREYON FABERCASTELL  X7 NEON\r\n', NULL, 'producto'),
(97, '91', 1, 'CREYON FABERCASTELL X24\r\n', NULL, 'producto'),
(98, '92', 1, 'CREYON GRAFICOLOR X12\r\n', NULL, 'producto'),
(99, '93', 1, 'CREYON PRISMACOLOR X12\r\n', NULL, 'producto'),
(100, '94', 1, 'CREYONES PRISMACOLOR X24 COLORES\r\n', NULL, 'producto'),
(101, '95', 1, 'CREYONES SOLITA X36 COLORES\r\n', NULL, 'producto'),
(102, '96', 1, 'CUADERNO ENG 100HJ 1 LINEA ECONOMICO \r\n', NULL, 'producto'),
(103, '97', 1, 'CUADERNO ENG 100HJ DOBLE LINEA ECONOMICO \r\n', NULL, 'producto'),
(104, '98', 1, 'CUADERNO ENGRAPADO 100 HOJAS CUADRICULADO ECONOMICO\r\n', NULL, 'producto'),
(105, '99', 1, 'CUADERNO GRANDE BIKES LIDER 100 HOJAS\r\n', NULL, 'producto'),
(106, '100', 1, 'CUADERNO GRANDE DOGS PLANET LIDER 100 HOJAS\r\n', NULL, 'producto'),
(107, '101', 1, 'CUADERNO GRANDE FLOWERS LIDER 100 HOJAS\r\n', NULL, 'producto'),
(108, '102', 1, 'CUADERNO GRANDE HIGH SCHOOL LIDER 100 HOJAS\r\n', NULL, 'producto'),
(109, '103', 1, 'CUADERNO REHIN 1/2 OFICIO 5 MAT 1 LINEA 180 HOJAS DESIGN\r\n', NULL, 'producto'),
(110, '104', 1, 'CUADERNO REHIN 1/2 OFICIO 5 MAT 180 HOJAS COLORS\r\n', NULL, 'producto'),
(111, '105', 1, 'CUADERNO REHIN 1/2 OFICIO 5 MATERIAS 180 HOJAS WOMAN\r\n', NULL, 'producto'),
(112, '106', 1, 'CUANTA FACIL AZOR \r\n', NULL, 'producto'),
(113, '107', 1, 'CUCHILLA GRANDE \r\n', NULL, 'producto'),
(114, '108', 1, 'CUCHILLA PEQUE&Atilde;‘A', NULL, 'producto'),
(115, '109', 1, 'CUENTOS SURTIDOS \r\n', NULL, 'producto'),
(116, '110', 1, 'DELANTAL ESCOLAR \r\n', NULL, 'producto'),
(117, '111', 1, 'DESTRUCTORA DOC. Y TARJETAS 6MM 12 HOJAS\r\n', NULL, 'producto'),
(118, '112', 1, 'DICCIONARIO ILUSTRADO LAROUSE 2008 C/M\r\n', NULL, 'producto'),
(119, '113', 1, 'DICCIONARIO INGLES POCKET\r\n', NULL, 'producto'),
(120, '114', 1, 'DICCIONARIO LAROUSSE BASICO ESCOLAR \r\n', NULL, 'producto'),
(121, '115', 1, 'DISPENSADOR CLIPS MAGNETICO PEQUE&Atilde;‘O STUDMARK', NULL, 'producto'),
(122, '116', 1, 'DISPENSADOR DE CINTA MEDIANO OFICINA\r\n', NULL, 'producto'),
(123, '117', 1, 'DROOPY PEQUE&Atilde;‘O', NULL, 'producto'),
(124, '118', 1, 'DVD + R 4.7 GB\r\n', NULL, 'producto'),
(125, '119', 1, 'ENCUADERNADORA DE ANILLOS GRANDE\r\n', NULL, 'producto'),
(126, '120', 1, 'ENGRAPADORA ALICATE OFICA MAXI COLOR\r\n', NULL, 'producto'),
(127, '121', 1, 'ENGRAPADORA SEMI INDUSTRIAL RAPID 70\r\n', NULL, 'producto'),
(128, '122', 1, 'ENGRAPADORA TIPO ALICATE ACE CLIPPER\r\n', NULL, 'producto'),
(129, '123', 1, 'ENGRAPADORA TIPO ALICATE MAXI2000\r\n', NULL, 'producto'),
(130, '124', 1, 'ESCALIMETRO METALICO 30CM\r\n', NULL, 'producto'),
(131, '125', 1, 'ESCALIMETRO PLASTICO 30 CM\r\n', NULL, 'producto'),
(132, '126', 1, 'ESCARCHA EN POTE 7GR X30 SURTIDO\r\n', NULL, 'producto'),
(133, '127', 1, 'ESTAMBRE SURTIDOS\r\n', NULL, 'producto'),
(134, '128', 1, 'ETIQUETAS ESCOLARES AZUL\r\n', NULL, 'producto'),
(135, '129', 1, 'ETIQUETAS ESCOLARES SURTIDAS\r\n', NULL, 'producto'),
(136, '130', 1, 'FICHAS 4X6\r\n', NULL, 'producto'),
(137, '131', 1, 'FICHAS RAYADAS 3X5 PROPAPEL\r\n', NULL, 'producto'),
(138, '132', 1, 'FLORES C/PLASTICOS\r\n', NULL, 'producto'),
(139, '133', 1, 'FUNDAS PARA PLASTIFICAR TIPO CARNET\r\n', NULL, 'producto'),
(140, '134', 1, 'FUNDAS PARA PLASTIFICAR TIPO COMPROBANTE\r\n', NULL, 'producto'),
(141, '135', 1, 'GANCHOS PARA CARPETAS OSLOS #22 X50\r\n', NULL, 'producto'),
(142, '136', 1, 'GANCHOS PARA CARPETAS X 50\r\n', NULL, 'producto'),
(143, '137', 1, 'GOMA FOAMI CARTA COLORES VARIO S\r\n', NULL, 'producto'),
(144, '138', 1, 'GRAPAS 23/10 WINGO\r\n', NULL, 'producto'),
(145, '139', 1, 'GRAPAS CORRUGADAS ACE NACIONAL\r\n', NULL, 'producto'),
(146, '140', 1, 'GRAPAS LISAS ACE NACIONALES\r\n', NULL, 'producto'),
(147, '141', 1, 'GUILLOTINA 12" OFFITECH\r\n', NULL, 'producto'),
(148, '142', 1, 'HOJAS PARA EXAMEN X100\r\n', NULL, 'producto'),
(149, '143', 1, 'HONGOS PEQUE&Atilde;‘O', NULL, 'producto'),
(150, '144', 1, 'JUEGO DE ESCUADRAS STAR 45\r\n', NULL, 'producto'),
(151, '145', 1, 'JUEGO DE ESCUADRAS STAR 60\r\n', NULL, 'producto'),
(152, '146', 1, 'JUEGO DIDACTICO  ABC SOLITA\r\n', NULL, 'producto'),
(153, '147', 1, 'JUEGO GEOMETRICO 30 CMS \r\n', NULL, 'producto'),
(154, '148', 1, 'JUEGO GEOMETRICO STAR ECONOMICO COLORES \r\n', NULL, 'producto'),
(155, '149', 1, 'LAMINAS PARA PLSTIFICAR CARTA X50 OFFITECH\r\n', NULL, 'producto'),
(156, '150', 1, 'LAMPARA DETEC. BILLETE FALSO MOD. CLASICO \r\n', NULL, 'producto'),
(157, '151', 1, 'LAPIZ BICOLOR AZUL/ROJO \r\n', NULL, 'producto'),
(158, '152', 1, 'LAPIZ DE CHEQUEO COLOR ROJO C/BORRADOR\r\n', NULL, 'producto'),
(159, '153', 1, 'LAPIZ DE DIBUJO 2B\r\n', NULL, 'producto'),
(160, '154', 1, 'LAPIZ DE DIBUJO 2H\r\n', NULL, 'producto'),
(161, '155', 1, 'LAPIZ DE DIBUJO 3H\r\n', NULL, 'producto'),
(162, '156', 1, 'LAPIZ DE DIBUJO 4 H\r\n', NULL, 'producto'),
(163, '157', 1, 'LAPIZ DE DIBUJO HB\r\n', NULL, 'producto'),
(164, '158', 1, 'LAPIZ DE GRAFITO GRADUADO PROFESIONAL9000 4B\r\n', NULL, 'producto'),
(165, '159', 1, 'LAPIZ DE GRAFITO GRADUADO PROFESIONAL9000 6B\r\n', NULL, 'producto'),
(166, '160', 1, 'LAPIZ DE GRAFITO GRADUADO PROFESIONAL9000 B\r\n', NULL, 'producto'),
(167, '161', 1, 'LAPIZ DE GRAFITO GRADUADO PROFESIONAL9000 F\r\n', NULL, 'producto'),
(168, '162', 1, 'LAPIZ DE GRAFITO GRADUADO PROFESIONAL9000 H\r\n', NULL, 'producto'),
(169, '163', 1, 'LAPIZ DE GRAFITO GRADUADO PROFESIONAL9000 HB\r\n', NULL, 'producto'),
(170, '164', 1, 'LAPIZ DE GRAFITO GRADUADO REGENT 3B\r\n', NULL, 'producto'),
(171, '165', 1, 'LAPIZ DE GRAFITO GRADUADO REGENT 5B\r\n', NULL, 'producto'),
(172, '166', 1, 'LAPIZ DE GRAFITO GRADUADO REGENT 5H\r\n', NULL, 'producto'),
(173, '167', 1, 'LAPIZ FABER X 12\r\n', NULL, 'producto'),
(174, '168', 1, 'LAPIZ GRAFICOLOR X12\r\n', NULL, 'producto'),
(175, '169', 1, 'LAPIZ MONGOL No  2\r\n', NULL, 'producto'),
(176, '170', 1, 'LAZOS CINTA PASTEL PEQUE&Atilde;‘O', NULL, 'producto'),
(177, '171', 1, 'LEC BLOCK DE PEDIDO PEQUE&Atilde;‘O', NULL, 'producto'),
(178, '172', 1, 'LIBRETA EMP PEQ CUADRICULADA 100 HOJAS CARIBEJEAN\r\n', NULL, 'producto'),
(179, '173', 1, 'LIBRETA EMP. GDE CUADROS 100 HOJAS RUTAS\r\n', NULL, 'producto'),
(180, '174', 1, 'LIBRETA EMP. GDE DOBLE LINEA100 HOJAS ECONOMICA CARIBE\r\n', NULL, 'producto'),
(181, '175', 1, 'LIBRETA EMPASTADA CUADRICULADA GDE 100 HOJAS CARIBEJEA\r\n', NULL, 'producto'),
(182, '176', 1, 'LIBRETA EMPASTADA GRANDE 1 LINEA 100 HOJAS BARBIE\r\n', NULL, 'producto'),
(183, '177', 1, 'LIBRETA EMPASTADA GRANDE 1 LINEA 100 HOJAS CARIBEJEAN\r\n', NULL, 'producto'),
(184, '178', 1, 'LIBRETA EMPASTADA GRANDE 6 MATERIAS 192 HOJAS BRILUX\r\n', NULL, 'producto'),
(185, '179', 1, 'LIBRETA EMPASTADA PEQUE&Atilde;‘A 1 LINEA 100 HOJAS CARIBEJEAN', NULL, 'producto'),
(186, '180', 1, 'LIBRETA ESPIRAL GRANDE 100 HOJAS 1 RAYA LORO\r\n', NULL, 'producto'),
(187, '181', 1, 'LIBRETA ESPIRAL GRANDE 4 MATERIAS 140 HOJAS APOLO\r\n', NULL, 'producto'),
(188, '182', 1, 'LIBRETA ESPIRAL GRANDE 6 MATERIAS 168 HOJAS ALPES\r\n', NULL, 'producto'),
(189, '183', 1, 'LIBRETA ESPIRAL PEQUE&Atilde;‘A 6 MATERIAS LORO', NULL, 'producto'),
(190, '184', 1, 'LIBRETA ESPIRAL TAQUIGRAFIA 70 HOJAS LORO\r\n', NULL, 'producto'),
(191, '185', 1, 'LIBRETA INDICE NORMA PEQUE&Atilde;‘A', NULL, 'producto'),
(192, '186', 1, 'LIBRETA UNIV. 4 MATERIAS GRANDE 120 HOJAS LIDER\r\n', NULL, 'producto'),
(193, '187', 1, 'LIBRETA UNIV. 8 MATERIAS GRANDE 240 HOJAS LIDER\r\n', NULL, 'producto'),
(194, '188', 1, 'LIBRO ABC DEPORTES ANDINO\r\n', NULL, 'producto'),
(195, '189', 1, 'LIBRO ABC FRUTOS ANDINO\r\n', NULL, 'producto'),
(196, '190', 1, 'LIBRO ALADINO ANDINO\r\n', NULL, 'producto'),
(197, '191', 1, 'LIBRO APRENDE A MULTIPLICAR ANDINO\r\n', NULL, 'producto'),
(198, '192', 1, 'LIBRO APRENDE A RESTAR ANDINO \r\n', NULL, 'producto'),
(199, '193', 1, 'LIBRO APRENDE A SUMAR ANDINO\r\n', NULL, 'producto'),
(200, '194', 1, 'LIBRO APRENDE CON GILDA Y SUS AMIGOS ANDINO\r\n', NULL, 'producto'),
(201, '195', 1, 'LIBRO BLANCANIEVES Y LOS 7 ENANOS ANDINO\r\n', NULL, 'producto'),
(202, '196', 1, 'LIBRO CAPERUCITA ROJA ANDINO\r\n', NULL, 'producto'),
(203, '197', 1, 'LIBRO CENICIENTA ANDINO\r\n', NULL, 'producto'),
(204, '198', 1, 'LIBRO CLASICO ACCIONISTAS 50 FOLIOS\r\n', NULL, 'producto'),
(205, '199', 1, 'LIBRO CLASICO ACTAS 100 FOLIOS\r\n', NULL, 'producto'),
(206, '200', 1, 'LIBRO CLASICO ACTAS 200 FOLIOS\r\n', NULL, 'producto'),
(207, '201', 1, 'LIBRO CLASICO COMPRAS SENIAT \r\n', NULL, 'producto'),
(208, '202', 1, 'LIBRO CLASICO CONTABILIDAD 200 FOLIOS 12C\r\n', NULL, 'producto'),
(209, '203', 1, 'LIBRO CLASICO VENTAS SENIAT\r\n', NULL, 'producto'),
(210, '204', 1, 'LIBRO COLECCI&Atilde;“N PREGUNTAS Y RESPUESTAS ANDINO', NULL, 'producto'),
(211, '205', 1, 'LIBRO COLOREAR DIVERSION PARA TODOS ANDINO\r\n', NULL, 'producto'),
(212, '206', 1, 'LIBRO COLOREAR VAMOS A PINTAR 3\r\n', NULL, 'producto'),
(213, '207', 1, 'LIBRO COLOREAR VAMOS A PINTAR 4\r\n', NULL, 'producto'),
(214, '208', 1, 'LIBRO EL FLAUTISTA DE HAMELIN ANDINO\r\n', NULL, 'producto'),
(215, '209', 1, 'LIBRO EL GATO CON BOTAS ANDINO\r\n', NULL, 'producto'),
(216, '210', 1, 'LIBRO EL TRAJE NUEVO DEL EMPERADOR ANDINO\r\n', NULL, 'producto'),
(217, '211', 1, 'LIBRO JUAN Y LAS HABICHUELAS ANDINO\r\n', NULL, 'producto'),
(218, '212', 1, 'LIBRO JUGANDO POR MAX 1 ANDINO\r\n', NULL, 'producto'),
(219, '213', 1, 'LIBRO JUGANDO POR MAX 2 ANDINO\r\n', NULL, 'producto'),
(220, '214', 1, 'LIBRO JUGANDO POR MAX 3 ANDINO\r\n', NULL, 'producto'),
(221, '215', 1, 'LIBRO JUGANDO POR MAX 4 ANDINO \r\n', NULL, 'producto'),
(222, '216', 1, 'LIBRO LA BELLA DURMIENTE DEL BOSQUE ANDINO\r\n', NULL, 'producto'),
(223, '217', 1, 'LIBRO LA PANDILLA TRAPO LAS FORMAS ANDINO\r\n', NULL, 'producto'),
(224, '218', 1, 'LIBRO LA PANDILLA TRAPO LOS COLORES ANDINO\r\n', NULL, 'producto'),
(225, '219', 1, 'LIBRO LA PANDILLA TRAPO LOS NUMEROS ANDINO\r\n', NULL, 'producto'),
(226, '220', 1, 'LIBRO LOS TRS CERDITOS ANDINO\r\n', NULL, 'producto'),
(227, '221', 1, 'LIBRO PANDILLA TRAPO LOS OPUESTOS ANDINO\r\n', NULL, 'producto'),
(228, '222', 1, 'LIBRO PULGARCITO ANDINO\r\n', NULL, 'producto'),
(229, '223', 1, 'LIGAS 1KILO\r\n', NULL, 'producto'),
(230, '224', 1, 'MARCADOR ESCOLAR COLORIFIC X12\r\n', NULL, 'producto'),
(231, '225', 1, 'MARCADOR P/GRUESO  MARKER PLUS AZUL \r\n', NULL, 'producto'),
(232, '226', 1, 'MARCADOR P/GRUESO  MARKER PLUS NEGRO\r\n', NULL, 'producto'),
(233, '227', 1, 'MARCADOR P/GRUESO  MARKER PLUS ROJO \r\n', NULL, 'producto'),
(234, '228', 1, 'MARCADOR PIZARRA MAGISTRAL AZUL \r\n', NULL, 'producto'),
(235, '229', 1, 'MARCADOR PIZARRA MAGISTRAL AZUL X12\r\n', NULL, 'producto'),
(236, '230', 1, 'MARCADOR PIZARRA MAGISTRAL NEGRO \r\n', NULL, 'producto'),
(237, '231', 1, 'MARCADOR PIZARRA MAGISTRAL ROJO\r\n', NULL, 'producto'),
(238, '232', 1, 'MARCADOR PUNTA FINA AZOR AZUL X12\r\n', NULL, 'producto'),
(239, '233', 1, 'MARCADOR PUNTA FINA FABERCASTELL AZUL  450\r\n', NULL, 'producto'),
(240, '234', 1, 'MARCADOR PUNTA FINA FABERCASTELL NEGRO 450\r\n', NULL, 'producto'),
(241, '235', 1, 'MARCADOR PUNTA FINA FABERCASTELL NEGRO X12\r\n', NULL, 'producto'),
(242, '236', 1, 'MARCADOR PUNTA FINA FABERCASTELL ROJO 450\r\n', NULL, 'producto'),
(243, '237', 1, 'MARCADOR PUNTA FINA SIGNAL NEGRO P/ TRANSPARENCIA X12\r\n', NULL, 'producto'),
(244, '238', 1, 'MARCADOR PUNTA GRUESA MARKER PLUS AZUL X12\r\n', NULL, 'producto'),
(245, '239', 1, 'MARCADOR PUNTA GRUESA MARKER PLUS NEGRO X12\r\n', NULL, 'producto'),
(246, '240', 1, 'MARCADOR PUNTA GRUESA MARKER PLUS ROJO X12\r\n', NULL, 'producto'),
(247, '241', 1, 'MARCADOR RESALTADOR LUMINOSO AMARILLO X12\r\n', NULL, 'producto'),
(248, '242', 1, 'MARCADOR RESALTADOR LUMINOSO AZUL X12\r\n', NULL, 'producto'),
(249, '243', 1, 'MARCADOR RESALTADOR LUMINOSO VERDE X12\r\n', NULL, 'producto'),
(250, '244', 1, 'MARCADORES LAVABLES FABERCASTELL JUMBO X6\r\n', NULL, 'producto'),
(251, '245', 1, 'MINAS 0.5 HB PAPER MATE X12\r\n', NULL, 'producto'),
(252, '246', 1, 'MINAS 0.5 HB PENTEL X12\r\n', NULL, 'producto'),
(253, '247', 1, 'MINI PELANA\r\n', NULL, 'producto'),
(254, '248', 1, 'MOLDEADOS SOLITA AMARILLO\r\n', NULL, 'producto'),
(255, '249', 1, 'MOLDEADOS SOLITA AZUL  \r\n', NULL, 'producto'),
(256, '250', 1, 'MOLDEADOS SOLITA AZUL CLARO\r\n', NULL, 'producto'),
(257, '251', 1, 'MOLDEADOS SOLITA NARANJA\r\n', NULL, 'producto'),
(258, '252', 1, 'MOLDEADOS SOLITA ROJO\r\n', NULL, 'producto'),
(259, '253', 1, 'MOLDEADOS SOLITA VERDE\r\n', NULL, 'producto'),
(260, '254', 1, 'MONAMI SUPER ROLLER 0.7 NEGRO\r\n', NULL, 'producto'),
(261, '255', 1, 'MONAMI VU-RITER 0.5 AZUL\r\n', NULL, 'producto'),
(262, '256', 1, 'MONAMI VU-RITER 0.5 NEGRO\r\n', NULL, 'producto'),
(263, '257', 1, 'MONAMI VU-RITER 0.7 AZUL\r\n', NULL, 'producto'),
(264, '258', 1, 'MULTIUSOS ESCOLAR PRIMERO NEGRO TOTO\r\n', NULL, 'producto'),
(265, '259', 1, 'MULTIUSOS TAJALAPIZ AZUL TOTO\r\n', NULL, 'producto'),
(266, '260', 1, 'MULTIUSOS TAJALAPIZ MAGENTA\r\n', NULL, 'producto'),
(267, '261', 1, 'MULTIUSOS TAJALAPIZ NEGRO TOTO\r\n', NULL, 'producto'),
(268, '262', 1, 'OSO CON CORAZON DE LADO PEQUE&Atilde;‘O', NULL, 'producto'),
(269, '263', 1, 'PAPEL  FOTOCOPIADORA REPORGRAF CARTA\r\n', NULL, 'producto'),
(270, '264', 1, 'PAPEL BOND 16 BLANCO 66X96 X500\r\n', NULL, 'producto'),
(271, '265', 1, 'PAPEL CALCULADORA 2" 1/4 57MM\r\n', NULL, 'producto'),
(272, '266', 1, 'PAPEL CARBON KORES AZUL CARTA COPYNET\r\n', NULL, 'producto'),
(273, '267', 1, 'PAPEL CARBON KORES NEGRO CARTA \r\n', NULL, 'producto'),
(274, '268', 1, 'PAPEL CELOFAN AZUL \r\n', NULL, 'producto'),
(275, '269', 1, 'PAPEL CELOFAN TRANSPARENTE\r\n', NULL, 'producto'),
(276, '270', 1, 'PAPEL CELOFAN TRANSPARENTE\r\n', NULL, 'producto'),
(277, '271', 1, 'PAPEL CONTAC AZUL MEDIO 50MTS\r\n', NULL, 'producto'),
(278, '272', 1, 'PAPEL CONTAC PRINCESA 3MTS \r\n', NULL, 'producto'),
(279, '273', 1, 'PAPEL CONTAC TRANSPARENTE 20MTS\r\n', NULL, 'producto'),
(280, '274', 1, 'PAPEL CONTAC VACAS VAQUERAS 50MTS\r\n', NULL, 'producto'),
(281, '275', 1, 'PAPEL CREPPE AMARILLO \r\n', NULL, 'producto'),
(282, '276', 1, 'PAPEL CREPPE AZUL OSCURO\r\n', NULL, 'producto'),
(283, '277', 1, 'PAPEL CREPPE ROJO\r\n', NULL, 'producto'),
(284, '278', 1, 'PAPEL CREPPE VERDE OSCURO\r\n', NULL, 'producto'),
(285, '279', 1, 'PAPEL DE REGALO FLORICIENTA\r\n', NULL, 'producto'),
(286, '280', 1, 'PAPEL DE REGALO TRANSPARENTE\r\n', NULL, 'producto'),
(287, '281', 1, 'PAPEL DE SEDA AZUL OSCURO\r\n', NULL, 'producto'),
(288, '282', 1, 'PAPEL DE SEDA ROJO\r\n', NULL, 'producto'),
(289, '283', 1, 'PAPEL DECOCEL MADERA TECA 46CMX20MTS\r\n', NULL, 'producto'),
(290, '284', 1, 'PAPEL ENGOMADA HOPAX 3X3" 654 6UNI\r\n', NULL, 'producto'),
(291, '285', 1, 'PAPEL FAX 25MTS HANSA\r\n', NULL, 'producto'),
(292, '286', 1, 'PAPEL FOTOCOPIADORA ALPES CARTA\r\n', NULL, 'producto'),
(293, '287', 1, 'PAPEL FOTOCOPIADORA ALPES CARTA\r\n', NULL, 'producto'),
(294, '288', 1, 'PAPEL FOTOCOPIADORA CHAMEX CARTA\r\n', NULL, 'producto'),
(295, '289', 1, 'PAPEL FOTOCOPIADORA XEREO OFICIO\r\n', NULL, 'producto'),
(296, '290', 1, 'PAPEL FOTOCOPIADORA XEROX CARTA\r\n', NULL, 'producto'),
(297, '291', 1, 'PAPEL LUSTRILLO AMARILLO\r\n', NULL, 'producto'),
(298, '292', 1, 'PAPEL LUSTRILLO AZUL OSCURO \r\n', NULL, 'producto'),
(299, '293', 1, 'PAPEL LUSTRILLO ROJO\r\n', NULL, 'producto'),
(300, '294', 1, 'PAPEL LUSTRILLO VERDE OSCURO\r\n', NULL, 'producto'),
(301, '295', 1, 'PEGA BLANCA 500GR SOLITA\r\n', NULL, 'producto'),
(302, '296', 1, 'PEGA ELEFANTE 135CC\r\n', NULL, 'producto'),
(303, '297', 1, 'PEGA ELEFANTE 500CC\r\n', NULL, 'producto'),
(304, '298', 1, 'PEGA ELEFANTE 70CC\r\n', NULL, 'producto'),
(305, '299', 1, 'PEGA EN BARRA KORES 8GRM\r\n', NULL, 'producto'),
(306, '300', 1, 'PEGA EN BARRA PRITT 20GRM\r\n', NULL, 'producto'),
(307, '301', 1, 'PEGA LOKA P/BLISTER\r\n', NULL, 'producto'),
(308, '302', 1, 'PEGAMENTO UHU UNIVERSAL N&Acirc;&deg;12', NULL, 'producto'),
(309, '303', 1, 'PELANA BLUE JEAN\r\n', NULL, 'producto'),
(310, '304', 1, 'PEN DRIVE 1GB\r\n', NULL, 'producto'),
(311, '305', 1, 'PEN DRIVE 2GB\r\n', NULL, 'producto'),
(312, '306', 1, 'PERFORADORA 2 HUECOS PEQUE&Atilde;‘A IDEAL 3000', NULL, 'producto'),
(313, '307', 1, 'PESTA&Atilde;‘AS PLASTICAS PARA CARPETAS COLGANTES X25', NULL, 'producto'),
(314, '308', 1, 'PINCEL #2 X12\r\n', NULL, 'producto'),
(315, '309', 1, 'PINCEL ESCOLAR #4\r\n', NULL, 'producto'),
(316, '310', 1, 'PINCEL ESCOLAR #6\r\n', NULL, 'producto'),
(317, '311', 1, 'PINCEL ESCOLAR #8\r\n', NULL, 'producto'),
(318, '312', 1, 'PINCELES ARTIST BRUSHES X12\r\n', NULL, 'producto'),
(319, '313', 1, 'PINCELES ARTIST BRUSHES X9\r\n', NULL, 'producto'),
(320, '314', 1, 'PINTADEDOS ORIGINAL SURTIDO\r\n', NULL, 'producto'),
(321, '315', 1, 'PIOLIN FUTBOLISTA\r\n', NULL, 'producto'),
(322, '316', 1, 'PLANTILLAS PLASTICAS NORMOGRAFO 10MM\r\n', NULL, 'producto'),
(323, '317', 1, 'PLANTILLAS PLASTICAS NORMOGRAFO 6MM\r\n', NULL, 'producto'),
(324, '318', 1, 'PLANTILLAS PLASTICAS NORMOGRAFO 8MM\r\n', NULL, 'producto'),
(325, '319', 1, 'PLANTILLAS PLASTICAS STAR 1 1/2" STENSO\r\n', NULL, 'producto'),
(326, '320', 1, 'PLANTILLAS PLASTICAS STAR 2 1/2" STENSO\r\n', NULL, 'producto'),
(327, '321', 1, 'PLANTILLAS PLASTICAS STAR 2" STENSO\r\n', NULL, 'producto'),
(328, '322', 1, 'PLANTILLAS PLASTICAS STAR 3/4 STENSO\r\n', NULL, 'producto'),
(329, '323', 1, 'PLANTILLAS PLASTICAS STENSO 1"  STAR \r\n', NULL, 'producto'),
(330, '324', 1, 'PLASTIFICADORA OFFITECH\r\n', NULL, 'producto'),
(331, '325', 1, 'PLASTILINA LA NIEVE 10 COLORES\r\n', NULL, 'producto'),
(332, '326', 1, 'PLASTILINA LA NIEVE 6 COLORES\r\n', NULL, 'producto'),
(333, '327', 1, 'PLASTILINAS DALI 10 COLORES\r\n', NULL, 'producto'),
(334, '328', 1, 'PLASTILINAS DALI 6 COLORES \r\n', NULL, 'producto'),
(335, '329', 1, 'PORTA CD CRYSTAL C/LLAVE AIDATA\r\n', NULL, 'producto'),
(336, '330', 1, 'PORTA SELLOACRILICO 6 PUESTOS\r\n', NULL, 'producto'),
(337, '331', 1, 'PORTAMINA MONAMI  DIGITAL CLIQ\r\n', NULL, 'producto'),
(338, '332', 1, 'PORTAMINA PENTEL 0.5 FLEXSFIT\r\n', NULL, 'producto'),
(339, '333', 1, 'PORTAMINA PENTEL 0.5 TECHNICA-X\r\n', NULL, 'producto'),
(340, '334', 1, 'PORTAMINAS POLYMATIC 0,5 FABERCASTELL AMARILLO\r\n', NULL, 'producto'),
(341, '335', 1, 'PORTAMINAS POLYMATIC 0,5 FABERCASTELL ROSADO\r\n', NULL, 'producto'),
(342, '336', 1, 'PORTAMINAS POLYMATIC 0,5 FABERCATELL AZUL\r\n', NULL, 'producto'),
(343, '337', 1, 'PORTAMINAS POLYMATIC 0,5 FABERCATELL VERDE\r\n', NULL, 'producto'),
(344, '338', 1, 'PUCCAS PEQUE&Atilde;‘A', NULL, 'producto'),
(345, '339', 1, 'REGLA PLASTICA 30CM\r\n', NULL, 'producto'),
(346, '340', 1, 'REGLA T ACRILICA 80CM\r\n', NULL, 'producto'),
(347, '341', 1, 'REGLA T ALUMINIO 60CM\r\n', NULL, 'producto'),
(348, '342', 1, 'REGLA T ALUMINIO 80CM\r\n', NULL, 'producto'),
(349, '343', 1, 'ROLLOS DE PAPEL CELOFAN\r\n', NULL, 'producto'),
(350, '344', 1, 'SACAGRAPAS IMPORTADO \r\n', NULL, 'producto'),
(351, '345', 1, 'SACAPUNTA ELECTRICO BOSTON\r\n', NULL, 'producto'),
(352, '346', 1, 'SACAPUNTA METAL C/DEPOSITO GRANDE STAR LISO\r\n', NULL, 'producto'),
(353, '347', 1, 'SACAPUNTA METAL C/DEPOSITO GRANDE TINITA STAR\r\n', NULL, 'producto'),
(354, '348', 1, 'SACAPUNTA METAL IMPORTADO X20\r\n', NULL, 'producto'),
(355, '349', 1, 'SEPARADORES BLANCOS X8\r\n', NULL, 'producto'),
(356, '350', 1, 'SILICON FINO 10CMS X72\r\n', NULL, 'producto'),
(357, '351', 1, 'SILICON GRUESO 10CMS X36\r\n', NULL, 'producto'),
(358, '352', 1, 'SILICON LIQUIDO 200ML lq\r\n', NULL, 'producto'),
(359, '353', 1, 'SILICON LIQUIDO 30CC\r\n', NULL, 'producto'),
(360, '354', 1, 'SILICON LIQUIDO 60 ML\r\n', NULL, 'producto'),
(361, '355', 1, 'SILICON POINTER 200ML\r\n', NULL, 'producto'),
(362, '356', 1, 'SOBRE BLANCO #11 X500\r\n', NULL, 'producto'),
(363, '357', 1, 'SOBRE BLANCO #3 X1000\r\n', NULL, 'producto'),
(364, '358', 1, 'SOBRE BLANCO #5 X500\r\n', NULL, 'producto'),
(365, '359', 1, 'SOBRE MANILA CARTA\r\n', NULL, 'producto'),
(366, '360', 1, 'SOBRE MANILA EXTRA OFICIO\r\n', NULL, 'producto'),
(367, '361', 1, 'SOBRE MANILA OFICIO\r\n', NULL, 'producto'),
(368, '362', 1, 'SOBRE MANILA RADIOGRAFIA\r\n', NULL, 'producto'),
(369, '363', 1, 'SOUTH PARK\r\n', NULL, 'producto'),
(370, '364', 1, 'TABLA DE CHEQUEO ACRILICA OFICIO\r\n', NULL, 'producto'),
(371, '365', 1, 'TABLA DE CHEQUEO CARTON PIEDRA OFICIO MAYKA\r\n', NULL, 'producto'),
(372, '366', 1, 'TACO PAPEL BLANCO 500HOJAS\r\n', NULL, 'producto'),
(373, '367', 1, 'TACO PAPEL BLANCO 500HOJAS\r\n', NULL, 'producto'),
(374, '368', 1, 'TALONARIO FACTURAS GDE 80 HOJAS GR5\r\n', NULL, 'producto'),
(375, '369', 1, 'TAPA DE ENCUADERNACION PP DIAGONAL X50\r\n', NULL, 'producto'),
(376, '370', 1, 'TEIPE MORROPAC MARRON ECONOMICO \r\n', NULL, 'producto'),
(377, '371', 1, 'TEMPERA SANFORD 12 COLORES X12\r\n', NULL, 'producto'),
(378, '372', 1, 'TIJERA ESCOLAR 5'' SOLITA\r\n', NULL, 'producto'),
(379, '373', 1, 'TIJERA ESCOLAR MAYKA\r\n', NULL, 'producto'),
(380, '374', 1, 'TINTA AZOR NEGRA\r\n', NULL, 'producto'),
(381, '375', 1, 'TIRRO BLANCO 3/4X30MTS CELOVEN\r\n', NULL, 'producto'),
(382, '376', 1, 'TIZA ANTIALERGICA LA NIEVE REDONDA  BLANCA X72\r\n', NULL, 'producto'),
(383, '377', 1, 'TIZA ANTIALERGICA LA NIEVE REDONDA COLOR  X72\r\n', NULL, 'producto'),
(384, '378', 1, 'TIZA BLANCA LA NIEVE X12\r\n', NULL, 'producto'),
(385, '379', 1, 'TIZA COLORES LA NIEVE X12\r\n', NULL, 'producto'),
(386, '380', 1, 'TOM C/CAMISA DE CUADROS PEQUE&Atilde;‘O', NULL, 'producto'),
(387, '381', 1, 'TRANSPARENCIA PARA FOTOCOPIADORA KORES X100\r\n', NULL, 'producto'),
(388, '382', 1, 'TRANSPARENCIA PARA INJECCION DE TINTA KORES X25\r\n', NULL, 'producto');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` bigint(20) unsigned NOT NULL auto_increment,
  `usuario` varchar(50) NOT NULL default '',
  `password` varchar(40) NOT NULL default '',
  `usertype` smallint(6) NOT NULL default '1',
  `nombre` varchar(255) NOT NULL default 'Nombre no establecido',
  `rif_cedula` varchar(40) NOT NULL default 'Rif o cédula no establecido',
  `address` varchar(255) NOT NULL default 'Dirección no establecida',
  `telefono` varchar(255) NOT NULL default 'Teléfono no establecido',
  `email` varchar(255) NOT NULL default 'Correo Electrónico no establecido',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `usuario` (`usuario`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Volcar la base de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `password`, `usertype`, `nombre`, `rif_cedula`, `address`, `telefono`, `email`) VALUES
(3, 'thais', 'faf3e12c6d72f905259fea7fe8faf11e', 0, 'Thais Moreno', 'V-00.000.000', 'Sabana Grande', '0212-000.00.00', 'thais@proyectosolucionesmd.com'),
(2, 'edgar', 'c5c695daa1b3d78c1ce53fe30a013386', 0, 'Edgar Duarte', 'V-00.000.001', 'Sabana Grande', '0212-000.00.00', 'edgar@proyectosolucionesmd.com');
