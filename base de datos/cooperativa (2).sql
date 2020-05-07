-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-04-2020 a las 20:31:59
-- Versión del servidor: 10.4.10-MariaDB
-- Versión de PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cooperativa`
--
CREATE DATABASE IF NOT EXISTS `cooperativa` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `cooperativa`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aportes`
--

CREATE TABLE `aportes` (
  `cod_aporte` int(11) NOT NULL,
  `valor_aportes` int(11) NOT NULL,
  `fecha_corte` date NOT NULL,
  `cod_cliente` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `aportes`
--

INSERT INTO `aportes` (`cod_aporte`, `valor_aportes`, `fecha_corte`, `cod_cliente`) VALUES
(10, 50000, '2010-10-31', 2147483647),
(9, 695000, '2010-10-31', 2147483647),
(8, 50000, '2010-10-31', 23271867),
(7, 50000, '2010-10-31', 2147483647),
(6, 171456, '2010-10-31', 7171455),
(5, 65000, '2010-10-31', 40035606),
(4, 100000, '2010-10-31', 7187487),
(3, 80398, '2010-10-31', 1049604391),
(2, 617615, '2010-10-31', 7171772),
(1, 1622601, '2010-10-31', 40027659);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `captaciones`
--

CREATE TABLE `captaciones` (
  `cod_cdts` int(11) NOT NULL,
  `captacion` varchar(10) NOT NULL,
  `monto` int(11) NOT NULL,
  `taza` double NOT NULL,
  `plazo_minimo` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `certificaciones`
--

CREATE TABLE `certificaciones` (
  `id` int(11) NOT NULL,
  `nombres` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `documento` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `anexo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `certificacion` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `certificaciones`
--

INSERT INTO `certificaciones` (`id`, `nombres`, `documento`, `anexo`, `certificacion`) VALUES
(17, 'GRACIELA AVENDAÑO VARGAS', '40011689', 'FORMATO COOSERVICIOS.pdf', 'CERTIFICACIONN BANCARIA MARZO 2020.pdf'),
(16, 'GRACIELA AVENDAÑO VARGAS', '40011689', 'FORMATO COOSERVICIOS.pdf', 'CERTIFICACIONN BANCARIA MARZO 2020.pdf'),
(15, 'GRACIELA AVENDAÑO VARGAS', '40011689', 'FORMATO COOSERVICIOS.pdf', 'CERTIFICACIONN BANCARIA MARZO 2020.pdf'),
(14, 'GRACIELA AVENDAÑO VARGAS', '40011689', 'FORMATO COOSERVICIOS.pdf', 'CERTIFICACIONN BANCARIA MARZO 2020.pdf'),
(13, 'JUAN JOSE LEON', '1052404643', 'ANEXO 2 FORMATO DE TRANSFERENCIA ELECTRONICA (1).pdf', 'CERTIFICACION BANCARIA.pdf'),
(18, 'GRACIELA AVENDAÑO VARGAS', '40011689', 'FORMATO COOSERVICIOS.pdf', 'CERTIFICACIONN BANCARIA MARZO 2020.pdf'),
(19, 'GRACIELA AVENDAÑO VARGAS', '40011689', 'FORMATO COOSERVICIOS.pdf', 'CERTIFICACIONN BANCARIA MARZO 2020.pdf'),
(20, 'SEGUNDO ABIGAIL GUERRERO CASTELBLANCO', '7160651 Y 104964', 'ANEXOS COOSERVICIOS.pdf', 'Certificado (3).pdf'),
(21, 'SEGUNDO ABIGAIL GUERRERO CASTELBLANCO', '7160651 Y 104964', 'ANEXOS COOSERVICIOS.pdf', 'Certificado (3).pdf'),
(22, 'Andrea Bayona ', '33376496', 'IMG-20200328-WA0007.jpg', '33376496_RB201909110230 (1).pdf'),
(23, 'Andrea Bayona ', '33376496', 'Cédula Andrea Bayona (2).pdf', '33376496_RB201909110230 (1).pdf'),
(24, 'MANUEL ANTONIO AGUDELO MENDEZ', '238469', 'FORMATOS COOSERVICIOS ANTONIO.pdf', 'CERTIFICADO  BANCARIO BANCO DE BOGOTÁ.pdf'),
(25, 'Marcelino Guampe Sanabria', '17173965', 'Formato_Autorizacion_Marcelino_Guampe.pdf', 'Referencias_Bancaria_Marcelino_Guampe.pdf'),
(26, 'Marcelino Guampe Sanabria', '17173965', 'Cedula_Marcelino_Guampe.pdf', 'Referencias_Bancaria_Marcelino_Guampe.pdf'),
(27, 'Marcelino Guampe Sanabria', '17173965', 'Titulo_valor_Marcelino_Guampe.pdf', 'Referencias_Bancaria_Marcelino_Guampe.pdf'),
(28, 'Ines Fabiola Ocampo Devia', '23853780', '', 'BCSC.jpeg'),
(29, 'Elsa Esperanza González López ', '40.048.530 ', 'Screenshot_20200331_145712.jpg', 'ReferenciaProduct_2020-02-18_4881 (1).pdf'),
(30, 'Elsa Esperanza González López ', '40.048.530 ', 'Screenshot_20200331_145712.jpg', 'ReferenciaProduct_2020-02-18_4881.pdf'),
(31, 'AZUCENA DE LOS DOLORES ANGARITA DE GARCIA', '23267228', 'Cédula 23267228 Azucena Angarita.jpg', 'Certificación Bancaria y solicitud Azucena Angarita.pdf'),
(32, 'DIANA MARCELA MEJIA AGUIRRE', '33367266', 'FORMATO-DE-TRANSFERENCIA ELECTRONICA COOSERVICIOS.pdf', 'CERTIFICACION BANCARIA BANCOLOMBIA MARZO 2020.pdf'),
(33, 'María Graciela Rojas de Alvarado', '23275204', 'FORMATO-DE-TRANSFERENCIA ELECTRONICA.pdf', 'certificado banco.pdf'),
(34, 'María Graciela Rojas de Alvarado', '23275204', 'docs_ANEXO-2-FORMATO-DE-TRANSFERENCIA ELECTRONICA.pdf', 'certificado banco.pdf'),
(35, 'nancy piñeres chavez', '63318337', 'CEDULA NANCY new.doc', 'T26_Referencia_Bancaria_2020040212080455080.pdf'),
(36, 'nancy piñeres chavez', '63318337', 'docs_ANEXO-2-FORMATO-DE-TRANSFERENCIA ELECTRONICA (1).docx', 'T26_Referencia_Bancaria_2020040212080455080.pdf'),
(37, 'COLEGIO SENDERO DE LOS SABIOS ', '9005813151', 'SENDERO DOCUMENTOS.pdf', 'certificado cuenta sendero de los sabios.pdf'),
(38, 'FEDERACION DE EMPRESAS DE ECONOMIA SOLIDARIA CONFECOOP BOYACA', '8200029323', 'CONFECOOP DOCUMENTOS.pdf', 'certificado cuenta confiar confecoop.pdf'),
(39, 'Maria Nives Espinosa Barahona', '23983677', 'FORMULARIO Y CC.pdf', 'CERTIFICADO BANCARIA.pdf'),
(40, 'CONDOMINIO VILLAS DEL LAGO', '900476344-6', 'documentos cooservicios.pdf', 'certificacion bancaria.pdf'),
(41, 'LUIS ALEJANDRO LARROTA', '4279147', 'Papa cooservicioz.pdf', 'CERTIFICACION BANCARIA.pdf'),
(42, 'FONDO DE AHORRO DE EMPLEADOS DE LA CONTRALORIA GENERAL DE BOYACA', '820002205-7', 'RUT_FONDO E. C.G.B._2020[1].pdf', 'CERTIFIACION BANCARIA.pdf'),
(43, 'FONDO DE AHORRO DE EMPLEADOS DE LA CONTRALORIA GENERAL DE BOYACA', '820002205-7', 'RUT_FONDO E. C.G.B._2020[1].pdf', 'CERTIFIACION BANCARIA.pdf'),
(44, 'FONDO DE AHORRO DE EMPLEADOS DE LA CONTRALORIA GENERAL DE BOYACA', '820002205-7', 'RUT_FONDO E. C.G.B._2020[1].pdf', 'CERTIFIACION BANCARIA.pdf'),
(45, 'FONDO DE AHORRO DE EMPLEADOS DE LA CONTRALORIA GENERAL DE BOYACA', '820002205-7', 'AUTORIZACION PAGOS ELECTRONICOS.pdf', 'CERTIFIACION BANCARIA (1).pdf'),
(46, 'FONDO DE AHORRO DE EMPLEADOS DE LA CONTRALORIA GENERAL DE BOYACA', '820002205-7', 'CAMARA DE COMERCIO FECONTRABOY.pdf', 'cedula adolfo.pdf'),
(47, 'nancy piñeres chavez', '63318337', 'Scan 8_04_2020 (1).pdf', 'T26_Referencia_Bancaria_2020040212080455080.pdf'),
(48, 'Elsa Esperanza González López ', '40.048.530 ', 'IMG_20200408_160704.jpg', 'IMG_20200408_160704.jpg'),
(49, 'Andrea Bayona Camargo', '33376496', '2020-04-09_2.pdf', '2020-04-09_2.pdf');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `cod_cliente` int(11) NOT NULL,
  `clave` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`cod_cliente`, `clave`, `email`) VALUES
(7171226, 'aej€svy€€€rir€e€€n€o', 'yerjav@msn.com	'),
(7854545, '', 'yerjav@gmail.com'),
(254545, '', 'yerjav@starmedia.com'),
(40027659, 'Q€A€D€N€€€S€€€m€€W€G', 'clara-sua@hotmail.com'),
(7171772, '20€p€0€8€€€E€€€S€€U€', 'mauricio_robles_r@hotmail.com'),
(1049604391, '', 'juanvillad@hotmail'),
(7187487, '', 'yuyisk@hotmail.com'),
(40035606, '', 'sandralu19@hotmail.com.co'),
(7171455, '', 'carloshernanv5@gamail.com'),
(2147483647, '', 'ariasma576@hotmail.com'),
(23271867, '', 'colseleccion09@hotmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `consultas`
--

CREATE TABLE `consultas` (
  `cod_consulta` int(11) NOT NULL,
  `cod_cliente` int(11) NOT NULL,
  `ip_cliente` varchar(20) NOT NULL,
  `fecha_consulta` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `consultas`
--

INSERT INTO `consultas` (`cod_consulta`, `cod_cliente`, `ip_cliente`, `fecha_consulta`) VALUES
(1, 7171226, '190.70.33.72', '2010-11-23 09:11:09'),
(2, 7171226, '190.252.155.52', '2010-11-23 16:29:04'),
(3, 7171772, '190.252.155.52', '2010-11-26 17:36:56'),
(4, 7171772, '190.252.155.52', '2010-11-26 17:38:54'),
(5, 7171772, '190.252.155.52', '2010-11-26 17:39:35'),
(6, 7171226, '190.252.155.52', '2010-11-26 17:46:35'),
(7, 7171226, '190.252.155.52', '2010-11-26 17:47:01'),
(8, 7171226, '190.70.33.72', '2010-11-28 11:22:34'),
(9, 7171226, '190.70.33.72', '2010-11-28 11:31:11'),
(10, 7171772, '190.252.155.52', '2010-11-29 16:50:58'),
(11, 40027659, '190.252.155.52', '2010-11-29 16:52:37'),
(12, 40027659, '190.252.155.52', '2010-11-29 16:53:10'),
(13, 40027659, '190.252.155.52', '2010-11-29 16:54:58'),
(14, 40027659, '190.252.155.52', '2010-11-29 17:59:41'),
(15, 7854545, '190.70.33.72', '2010-11-29 20:38:49'),
(16, 7854545, '190.70.33.72', '2010-11-29 20:39:10'),
(17, 7854545, '190.70.33.72', '2010-11-29 20:41:39'),
(18, 7854545, '190.70.33.72', '2010-11-29 20:42:10'),
(19, 7854545, '190.70.33.72', '2010-11-29 20:48:44'),
(20, 7854545, '190.70.33.72', '2010-11-29 20:49:38'),
(21, 7854545, '190.70.33.72', '2010-11-29 20:49:49'),
(22, 7854545, '190.70.33.72', '2010-11-29 20:51:50'),
(23, 7854545, '190.70.33.72', '2010-11-29 21:10:20'),
(24, 7171226, '190.70.33.72', '2010-11-29 21:47:18'),
(25, 7171226, '190.70.44.121', '2010-11-30 22:06:18'),
(26, 7171226, '190.70.33.72', '2010-12-08 11:14:25'),
(27, 7171226, '190.70.33.72', '2010-12-08 11:18:44'),
(28, 7171226, '190.70.33.72', '2010-12-08 11:19:59'),
(29, 7171226, '190.70.33.72', '2010-12-08 11:27:57'),
(30, 7171226, '190.70.33.72', '2010-12-08 11:28:57'),
(31, 7171226, '190.70.33.72', '2010-12-08 11:31:02'),
(32, 7171226, '190.70.33.72', '2010-12-08 11:33:00'),
(33, 7171226, '190.70.33.72', '2010-12-08 11:37:25'),
(34, 7171226, '190.70.33.72', '2010-12-08 11:40:01'),
(35, 7171226, '190.252.133.107', '2010-12-10 10:55:06'),
(36, 40027659, '190.252.133.107', '2010-12-10 11:17:13'),
(37, 7171226, '190.70.33.72', '2011-01-14 19:36:09'),
(38, 7171226, '190.70.33.72', '2011-02-23 20:35:59'),
(39, 7171226, '190.253.64.210', '2014-07-25 10:25:51'),
(40, 7171226, '190.253.64.210', '2014-07-25 16:28:40'),
(41, 7171226, '190.253.64.210', '2014-07-25 16:35:12'),
(42, 7171226, '190.253.64.210', '2014-07-25 16:35:56'),
(43, 7171226, '190.253.64.210', '2014-07-25 17:11:16'),
(44, 7171226, '190.253.64.210', '2014-07-25 17:11:28');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `creditos`
--

CREATE TABLE `creditos` (
  `cod_linea` int(11) NOT NULL,
  `linea` varchar(50) NOT NULL,
  `taza` double NOT NULL,
  `num_cuotas` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `creditos`
--

INSERT INTO `creditos` (`cod_linea`, `linea`, `taza`, `num_cuotas`) VALUES
(34, 'LIBRE INVERSION', 22.8, 60),
(35, 'EDUCACION', 12, 12),
(36, 'COMERCIAL', 25, 60);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `creditos_activos`
--

CREATE TABLE `creditos_activos` (
  `cod_credito` int(11) NOT NULL,
  `monto` int(11) NOT NULL,
  `fecha_apertura` date NOT NULL,
  `saldo` int(11) NOT NULL,
  `fecha_corte` date NOT NULL,
  `cod_cliente` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `creditos_activos`
--

INSERT INTO `creditos_activos` (`cod_credito`, `monto`, `fecha_apertura`, `saldo`, `fecha_corte`, `cod_cliente`) VALUES
(2, 767000, '2009-08-13', 600000, '2010-10-31', 7171772),
(1, 14383201, '2010-04-22', 12568380, '2010-10-31', 2147483647),
(3, 500000, '2010-04-16', 200000, '2010-10-31', 40027659),
(4, 5000000, '2010-02-05', 5009315, '2010-10-31', 40027659);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jos_banner`
--

CREATE TABLE `jos_banner` (
  `bid` int(11) NOT NULL,
  `cid` int(11) NOT NULL DEFAULT 0,
  `type` varchar(30) NOT NULL DEFAULT 'banner',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT 0,
  `impmade` int(11) NOT NULL DEFAULT 0,
  `clicks` int(11) NOT NULL DEFAULT 0,
  `imageurl` varchar(100) NOT NULL DEFAULT '',
  `clickurl` varchar(200) NOT NULL DEFAULT '',
  `date` datetime DEFAULT NULL,
  `showBanner` tinyint(1) NOT NULL DEFAULT 0,
  `checked_out` tinyint(1) NOT NULL DEFAULT 0,
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor` varchar(50) DEFAULT NULL,
  `custombannercode` text DEFAULT NULL,
  `catid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `description` text NOT NULL,
  `sticky` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `tags` text NOT NULL,
  `params` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `jos_banner`
--

INSERT INTO `jos_banner` (`bid`, `cid`, `type`, `name`, `alias`, `imptotal`, `impmade`, `clicks`, `imageurl`, `clickurl`, `date`, `showBanner`, `checked_out`, `checked_out_time`, `editor`, `custombannercode`, `catid`, `description`, `sticky`, `ordering`, `publish_up`, `publish_down`, `tags`, `params`) VALUES
(23, 5, '', 'VillaYolanda', 'villayolanda', 0, 10007, 0, '', '', '2010-09-17 22:29:11', 1, 0, '0000-00-00 00:00:00', '', '<p style=\"text-align: justify;\"><font color = \"green\"><strong>Centro Vacional VILLA YOLANDA.</strong></font> Cite (Santander)</p>\r\n<br>', 33, '', 0, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'width=0\nheight=0'),
(22, 7, '', 'Colegio', 'colegio', 0, 10010, 0, '', '', '2010-09-17 22:30:53', 1, 0, '0000-00-00 00:00:00', '', '<p style=\"text-align: justify;\"><strong><font color = \"green\">COLEGIO COOPERATIVO COOSERVICIOS.</font></strong> Calle 5 No 1-00 Teléfono: 7430747</p>\r\n<br>', 33, '', 0, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'width=0\nheight=0'),
(21, 4, '', 'Seccion de Ahorros', 'seccion-de-ahorros', 0, 10017, 0, '', '', '2010-09-17 22:30:28', 1, 0, '0000-00-00 00:00:00', '', '<p style=\"text-align: justify;\"><strong><font color=\"green\">COOSERVICIOS LTDA.</font></strong> Carrera 10 No 17-57 Teléfono: 7425203</p>\r\n<br>', 33, '', 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'width=0\nheight=0'),
(20, 2, '', 'Fogacoop', 'fogacoop', 0, 25847, 384, 'fogacoop.jpg', 'http://www.fogacoop.gov.co', '2010-09-16 00:14:28', 1, 0, '0000-00-00 00:00:00', '', '', 37, '', 0, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'width=0\nheight=0'),
(19, 2, '', 'Confecoop', 'confecoop', 0, 25849, 389, 'coonfecoop.jpg', 'http://www.portalcooperativo.coop', '2010-09-16 00:11:32', 1, 0, '0000-00-00 00:00:00', '', '', 37, '', 0, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'width=0\nheight=0'),
(17, 2, '', 'Supersolidaria', 'supersolidaria', 0, 25863, 621, 'supersolidaria.jpg', 'http://www.supersolidaria.gov.co', '2010-09-16 00:01:37', 1, 0, '0000-00-00 00:00:00', '', '', 37, '', 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'width=0\nheight=0'),
(12, 8, '', 'Ahorro y Crédito', 'ahorro-credito', 0, 43804, 1869, 'ahorroycredito.png', 'http://www.cooservicios.com.co/web/index.php?option=com_content&view=article&id=47&Itemid=57', '2010-12-01 10:48:30', 1, 0, '0000-00-00 00:00:00', '', '', 14, '', 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'width=235\nheight=93'),
(18, 2, '', 'Dansocial', 'dansocial', 0, 25859, 353, 'dansocial.jpg', 'http://www.dansocial.gov.co', '2010-09-16 00:09:40', 1, 0, '0000-00-00 00:00:00', '', '', 37, '', 0, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'width=0\nheight=0'),
(13, 8, '', 'Recaudo de Servicios', 'recaudo-de-servicios', 0, 43692, 1288, 'recaudo.png', 'http://www.cooservicios.com.co/web/index.php?option=com_content&view=article&id=48&Itemid=59', '2010-12-01 10:49:13', 1, 0, '0000-00-00 00:00:00', '', '', 14, '', 0, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'width=0\nheight=0'),
(14, 6, '', 'Finca Raiz', 'finca-raiz', 0, 43675, 3517, 'vivienda.png', 'http://www.cooservicios.com.co/web/index.php?option=com_content&view=article&id=50&Itemid=67', '2010-12-01 10:49:44', 1, 0, '0000-00-00 00:00:00', '', '', 14, '', 0, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'width=0\nheight=0'),
(15, 5, '', 'Recreación', 'recreacion', 0, 43674, 3577, 'recreacion.png', 'http://www.cooservicios.com.co/web/index.php?option=com_content&view=article&id=51&Itemid=68', '2010-12-01 10:50:12', 1, 0, '0000-00-00 00:00:00', '', '', 14, '', 0, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'width=0\nheight=0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jos_bannerclient`
--

CREATE TABLE `jos_bannerclient` (
  `cid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `contact` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `extrainfo` text NOT NULL,
  `checked_out` tinyint(1) NOT NULL DEFAULT 0,
  `checked_out_time` time DEFAULT NULL,
  `editor` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `jos_bannerclient`
--

INSERT INTO `jos_bannerclient` (`cid`, `name`, `contact`, `email`, `extrainfo`, `checked_out`, `checked_out_time`, `editor`) VALUES
(1, 'Open Source Matters', 'Administrator', 'admin@opensourcematters.org', '', 0, '00:00:00', NULL),
(2, 'Web Empresa', 'Web Empresa', 'info@webempresa.com', 'Patrocinador Joomla! Spanish', 0, '00:00:00', ''),
(3, 'CompluSoft', 'CompluSoft', 'info@complusoft.es', 'Patrocinador Joomla! Spanish', 0, '00:00:00', ''),
(4, 'Ahorro y Crédito', 'Cooservicios', 'clientes@cooservicios.com.co', '', 0, '00:00:00', ''),
(5, 'Centro Vacacional Villa Yolanda', 'Cooservicios', 'clientes@cooservicios.com.co', '', 0, '00:00:00', ''),
(6, 'Construcción', 'Cooservicios', 'clientes@cooservicios.com.co', '', 0, '00:00:00', ''),
(7, 'Colegio Cooperativo Cooservicios', 'Colegio', 'cooservitun@gmail.com', '', 0, '00:00:00', ''),
(8, 'Cooservicios LTDA', 'Cooperativa de Servicios Multiples', 'clientes@cooservicios.com.co', '', 0, '00:00:00', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jos_bannertrack`
--

CREATE TABLE `jos_bannertrack` (
  `track_date` date NOT NULL,
  `track_type` int(10) UNSIGNED NOT NULL,
  `banner_id` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jos_categories`
--

CREATE TABLE `jos_categories` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `image` varchar(255) NOT NULL DEFAULT '',
  `section` varchar(50) NOT NULL DEFAULT '',
  `image_position` varchar(30) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT 0,
  `checked_out` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor` varchar(50) DEFAULT NULL,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `access` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `count` int(11) NOT NULL DEFAULT 0,
  `params` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `jos_categories`
--

INSERT INTO `jos_categories` (`id`, `parent_id`, `title`, `name`, `alias`, `image`, `section`, `image_position`, `description`, `published`, `checked_out`, `checked_out_time`, `editor`, `ordering`, `access`, `count`, `params`) VALUES
(1, 0, 'Últimas noticias', '', 'latest-news', 'taking_notes.jpg', '1', 'left', '', 1, 0, '0000-00-00 00:00:00', '', 1, 0, 1, ''),
(2, 0, 'Joomla! enlaces específicos', '', 'joomla-specific-links', 'clock.jpg', 'com_weblinks', 'left', 'Una selección de enlaces relacionados con el proyecto de Joomla!.', 1, 0, '0000-00-00 00:00:00', NULL, 1, 0, 0, ''),
(3, 0, 'Destacado', '', 'newsflash', '', '1', 'left', '', 1, 0, '0000-00-00 00:00:00', '', 2, 0, 0, ''),
(12, 0, 'Contactos', '', 'contacts', '', 'com_contact_details', 'left', 'Detalles de contacto para este sitio web', 1, 0, '0000-00-00 00:00:00', NULL, 0, 0, 0, ''),
(13, 0, 'Joomla', '', 'joomla', '', 'com_banner', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 0, 0, 0, ''),
(14, 0, 'Anuncios', '', 'text-ads', '', 'com_banner', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 0, 0, 0, ''),
(15, 0, 'Características', '', 'features', '', 'com_content', 'left', '', 0, 0, '0000-00-00 00:00:00', NULL, 6, 0, 0, ''),
(17, 0, 'Beneficios', '', 'benefits', '', 'com_content', 'left', '', 0, 0, '0000-00-00 00:00:00', NULL, 4, 0, 0, ''),
(18, 0, 'Plataformas', '', 'platforms', '', 'com_content', 'left', '', 0, 0, '0000-00-00 00:00:00', NULL, 3, 0, 0, ''),
(19, 0, 'Otros recursos', '', 'other-resources', '', 'com_weblinks', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 2, 0, 0, ''),
(29, 0, 'El CMS', '', 'the-cms', '', '4', 'left', 'Información sobre el CMS<br />', 1, 0, '0000-00-00 00:00:00', NULL, 2, 0, 0, ''),
(28, 0, 'Usuarios', '', 'current-users', '', '3', 'left', 'Preguntas que a los usuarios que migran a Joomla! 1.5 les podría gustar conocer<br />', 1, 0, '0000-00-00 00:00:00', NULL, 2, 0, 0, ''),
(25, 0, 'El proyecto', '', 'the-project', '', '4', 'left', 'Hechos en general sobre Joomla!<br />', 1, 65, '2007-06-28 14:50:15', NULL, 1, 0, 0, ''),
(27, 0, 'Novedades en Joomla!', '', 'new-to-joomla', '', '3', 'left', 'Preguntas para los nuevos usuarios de Joomla!', 1, 0, '0000-00-00 00:00:00', NULL, 3, 0, 0, ''),
(30, 0, 'La comunidad', '', 'the-community', '', '4', 'left', 'Sobre los millones de usuarios de  Joomla! y sitios web<br />', 1, 0, '0000-00-00 00:00:00', NULL, 3, 0, 0, ''),
(31, 0, 'Créditos', '', 'creditos', '', '3', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 0, 0, 0, ''),
(32, 0, 'Idiomas', '', 'languages', '', '3', 'left', 'Cuestiones relacionadas con los idiomas', 1, 0, '0000-00-00 00:00:00', NULL, 4, 0, 0, ''),
(33, 0, 'Promoción', '', 'promo', '', 'com_banner', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 1, 0, 0, ''),
(37, 0, 'Aliados', '', 'aliados', '', 'com_banner', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 2, 0, 0, ''),
(35, 0, 'Historia', '', 'historia', '', '5', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 1, 0, 0, ''),
(36, 0, 'Ahorros', '', 'ahorros', '', '6', 'left', '', 1, 62, '2013-08-21 22:46:56', NULL, 1, 0, 0, ''),
(38, 0, '2015', '', '2015', '', '7', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 4, 0, 0, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jos_components`
--

CREATE TABLE `jos_components` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT '',
  `link` varchar(255) NOT NULL DEFAULT '',
  `menuid` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `parent` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `admin_menu_link` varchar(255) NOT NULL DEFAULT '',
  `admin_menu_alt` varchar(255) NOT NULL DEFAULT '',
  `option` varchar(50) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT 0,
  `admin_menu_img` varchar(255) NOT NULL DEFAULT '',
  `iscore` tinyint(4) NOT NULL DEFAULT 0,
  `params` text NOT NULL,
  `enabled` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `jos_components`
--

INSERT INTO `jos_components` (`id`, `name`, `link`, `menuid`, `parent`, `admin_menu_link`, `admin_menu_alt`, `option`, `ordering`, `admin_menu_img`, `iscore`, `params`, `enabled`) VALUES
(1, 'Banners', '', 0, 0, '', 'Banner Management', 'com_banners', 0, 'js/ThemeOffice/component.png', 0, 'track_impressions=0\ntrack_clicks=0\ntag_prefix=\n\n', 1),
(2, 'Banners', '', 0, 1, 'option=com_banners', 'Active Banners', 'com_banners', 1, 'js/ThemeOffice/edit.png', 0, '', 1),
(3, 'Clientes', '', 0, 1, 'option=com_banners&c=client', 'Manage Clients', 'com_banners', 2, 'js/ThemeOffice/categories.png', 0, '', 1),
(4, 'Enlaces Web', 'option=com_weblinks', 0, 0, '', 'Manage Weblinks', 'com_weblinks', 0, 'js/ThemeOffice/component.png', 0, 'show_comp_description=1\ncomp_description=\nshow_link_hits=1\nshow_link_description=1\nshow_other_cats=1\nshow_headings=1\nshow_page_title=1\nlink_target=0\nlink_icons=\n\n', 1),
(5, 'Enlaces', '', 0, 4, 'option=com_weblinks', 'View existing weblinks', 'com_weblinks', 1, 'js/ThemeOffice/edit.png', 0, '', 1),
(6, 'Categorías', '', 0, 4, 'option=com_categories&section=com_weblinks', 'Manage weblink categories', '', 2, 'js/ThemeOffice/categories.png', 0, '', 1),
(7, 'Contactos', 'option=com_contact', 0, 0, '', 'Edit contact details', 'com_contact', 0, 'js/ThemeOffice/component.png', 1, 'contact_icons=0\nicon_address=\nicon_email=\nicon_telephone=\nicon_fax=\nicon_misc=\nshow_headings=1\nshow_position=1\nshow_email=0\nshow_telephone=1\nshow_mobile=1\nshow_fax=1\nbannedEmail=\nbannedSubject=\nbannedText=\nsession=1\ncustomReply=0\n\n', 1),
(8, 'Contactos', '', 0, 7, 'option=com_contact', 'Edit contact details', 'com_contact', 0, 'js/ThemeOffice/edit.png', 1, '', 1),
(9, 'Categorías', '', 0, 7, 'option=com_categories&section=com_contact_details', 'Manage contact categories', '', 2, 'js/ThemeOffice/categories.png', 1, '', 1),
(10, 'Encuesta', 'option=com_poll', 0, 0, 'option=com_poll', 'Manage Polls', 'com_poll', 0, 'js/ThemeOffice/component.png', 0, '', 1),
(11, 'News Feeds', 'option=com_newsfeeds', 0, 0, '', 'News Feeds Management', 'com_newsfeeds', 0, 'js/ThemeOffice/component.png', 0, '', 1),
(12, 'Feeds', '', 0, 11, 'option=com_newsfeeds', 'Manage News Feeds', 'com_newsfeeds', 1, 'js/ThemeOffice/edit.png', 0, '', 1),
(13, 'Categorías', '', 0, 11, 'option=com_categories&section=com_newsfeeds', 'Manage Categories', '', 2, 'js/ThemeOffice/categories.png', 0, '', 1),
(14, 'Usuario', 'option=com_user', 0, 0, '', '', 'com_user', 0, '', 1, '', 1),
(15, 'Buscar', 'option=com_search', 0, 0, 'option=com_search', 'Search Statistics', 'com_search', 0, 'js/ThemeOffice/component.png', 1, 'enabled=0\n\n', 1),
(16, 'Categorías', '', 0, 1, 'option=com_categories&section=com_banner', 'Categories', '', 3, '', 1, '', 1),
(17, 'Wrapper', 'option=com_wrapper', 0, 0, '', 'Wrapper', 'com_wrapper', 0, '', 1, '', 1),
(18, 'Mail para', '', 0, 0, '', '', 'com_mailto', 0, '', 1, '', 1),
(19, 'Administrador Media', '', 0, 0, 'option=com_media', 'Media Manager', 'com_media', 0, '', 1, 'upload_extensions=bmp,csv,doc,epg,gif,ico,jpg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,EPG,GIF,ICO,JPG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS\nupload_maxsize=10000000\nfile_path=images\nimage_path=images/stories\nrestrict_uploads=1\nallowed_media_usergroup=3\ncheck_mime=1\nimage_extensions=bmp,gif,jpg,png\nignore_extensions=\nupload_mime=image/jpeg,image/gif,image/png,image/bmp,application/x-shockwave-flash,application/msword,application/excel,application/pdf,application/powerpoint,text/plain,application/x-zip\nupload_mime_illegal=text/html\nenable_flash=0\n\n', 1),
(20, 'Artículos', 'option=com_content', 0, 0, '', '', 'com_content', 0, '', 1, 'show_noauth=0\nshow_title=1\nlink_titles=0\nshow_intro=1\nshow_section=1\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\nfeed_summary=0\nfilter_tags=\nfilter_attritbutes=\n\n', 1),
(21, 'Administrar Configuración', '', 0, 0, '', 'Configuration', 'com_config', 0, '', 1, '', 1),
(22, 'Administrar Instalaciones', '', 0, 0, '', 'Installer', 'com_installer', 0, '', 1, '', 1),
(23, 'Gestor de idiomas', '', 0, 0, '', 'Idiomas', 'com_languages', 0, '', 1, 'administrator=es-ES\nsite=es-ES', 1),
(24, 'Mail masivo', '', 0, 0, '', 'Mass Mail', 'com_massmail', 0, '', 1, 'mailSubjectPrefix=\nmailBodySuffix=\n\n', 1),
(25, 'Menú del editor', '', 0, 0, '', 'Menu Editor', 'com_menus', 0, '', 1, '', 1),
(27, 'Mensajes', '', 0, 0, '', 'Messages', 'com_messages', 0, '', 1, '', 1),
(28, 'Administrar modulos', '', 0, 0, '', 'Modules', 'com_modules', 0, '', 1, '', 1),
(29, 'Administrar Plugin', '', 0, 0, '', 'Plugins', 'com_plugins', 0, '', 1, '', 1),
(30, 'Administrar plantilla', '', 0, 0, '', 'Templates', 'com_templates', 0, '', 1, '', 1),
(31, 'Administrar usuarios', '', 0, 0, '', 'Users', 'com_users', 0, '', 1, 'allowUserRegistration=0\nnew_usertype=Registered\nuseractivation=1\nfrontend_userparams=1\n\n', 1),
(32, 'Administrar la caché', '', 0, 0, '', 'Cache', 'com_cache', 0, '', 1, '', 1),
(33, 'Panel de Control', '', 0, 0, '', 'Control Panel', 'com_cpanel', 0, '', 1, '', 1),
(34, 'Administrador de Traducciones', 'option=com_translationsmanager', 0, 0, 'option=com_translationsmanager', 'Administrador de Traducciones', 'com_translationsmanager', 0, 'class:language', 0, '', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jos_contact_details`
--

CREATE TABLE `jos_contact_details` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `con_position` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `suburb` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `postcode` varchar(100) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `misc` mediumtext DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `imagepos` varchar(20) DEFAULT NULL,
  `email_to` varchar(255) DEFAULT NULL,
  `default_con` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `published` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `checked_out` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT 0,
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `catid` int(11) NOT NULL DEFAULT 0,
  `access` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `mobile` varchar(255) NOT NULL DEFAULT '',
  `webpage` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `jos_contact_details`
--

INSERT INTO `jos_contact_details` (`id`, `name`, `alias`, `con_position`, `address`, `suburb`, `state`, `country`, `postcode`, `telephone`, `fax`, `misc`, `image`, `imagepos`, `email_to`, `default_con`, `published`, `checked_out`, `checked_out_time`, `ordering`, `params`, `user_id`, `catid`, `access`, `mobile`, `webpage`) VALUES
(1, 'Name', 'name', 'Position', 'Street', 'Suburb', 'State', 'Country', 'Zip Code', 'Telephone', 'Fax', 'Miscellanous info', 'powered_by.png', 'top', 'email@email.com', 1, 1, 0, '0000-00-00 00:00:00', 1, 'show_name=1\r\nshow_position=1\r\nshow_email=0\r\nshow_street_address=1\r\nshow_suburb=1\r\nshow_state=1\r\nshow_postcode=1\r\nshow_country=1\r\nshow_telephone=1\r\nshow_mobile=1\r\nshow_fax=1\r\nshow_webpage=1\r\nshow_misc=1\r\nshow_image=1\r\nallow_vcard=0\r\ncontact_icons=0\r\nicon_address=\r\nicon_email=\r\nicon_telephone=\r\nicon_fax=\r\nicon_misc=\r\nshow_email_form=1\r\nemail_description=1\r\nshow_email_copy=1\r\nbanned_email=\r\nbanned_subject=\r\nbanned_text=', 0, 12, 0, '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jos_content`
--

CREATE TABLE `jos_content` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `title_alias` varchar(255) NOT NULL DEFAULT '',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT 0,
  `sectionid` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `mask` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `catid` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `checked_out` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` text NOT NULL,
  `version` int(11) UNSIGNED NOT NULL DEFAULT 1,
  `parentid` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `access` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `hits` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `metadata` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `jos_content`
--

INSERT INTO `jos_content` (`id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`) VALUES
(1, 'Bienvenido a Cooservicios', 'bienvenido-a-joomla', '', '<div><strong>Joomla! es un manejador de contenidos de código abierto diseñado para una creación rápida de sitios multi-idioma de calidad, comunidades online, portales multimedia, blogs, y aplicaciones de comercio electrónico. <br /></strong></div>\r\n<p><strong><br /></strong><img src=\"images/stories/powered_by.png\" border=\"0\" alt=\"Joomla! Logo\" title=\"Example Caption\" hspace=\"6\" width=\"165\" height=\"68\" align=\"left\" />Joomla! proporciona una interfáz fácil de usar que simplifica la administración y publicación de grandes volúmenes de contenido incluyendo HTML, documentos, y multimedia. Joomla! es usado por organizaciones de todas las clases para sitios web públicos, infranets, extranets y con soporte de una comunidad con miles de usuarios.</p>\r\n', '\r\n<p>Con una librería de documentación completa de recursos de desarrollo, Joomla! permite la personalización de cada uno de los aspectos de un sitio web, incluyendo presentación, diseño, administración, y una rápida integración de extensiones de terceros.</p>\r\n<p>Joomla! tiene una rica herencia y ha sido coronado como el CMS Rey en varias ocasiones. Ahora con más poder bajo la espesura del bosque, Joomla! está cambiando el mecanismo y proporciona poder de desarrollo al tiempo que hace toda la experiencia de usuario más amigable. Por eso, para quien siempre quiso incrementar la extensibilidad, Joomla! 1.5 lo hace posible.</p>\r\n<p>Un nuevo entorno de trabajo, la refactorización del sistema, y una alta actividad del equipo de desarrollo aportan para ti la excitación de \'La próxima generación del CMS\'. Tanto si eres un arquitecto de sistemas como un completo \'novato\' Joomla! puede facilitarte el próximo nivel de contenido. \'Más que un CMS\' es algo que hemos acotado como una característica destacable porque la nueva API de Joomla! es increíblemente poderosa y flexible. Te sentirás libre de tomar cualquier dirección a la que tu creatibidad te conduzca, porque Joomla! te puede ayudar a ponerla en práctica con una mucha mayor facilidad y como nunca se ha visto anteriormente.</p>\r\n<p>¿Pensando en la publicación web? Piensa en Joomla!</p>', -2, 1, 0, 1, '2006-10-12 10:00:00', 62, '', '2010-07-10 23:41:11', 62, 0, '0000-00-00 00:00:00', '2006-01-03 01:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=0\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 34, 0, 0, '', '', 0, 0, 'robots=\nauthor='),
(49, 'Ahorros', 'ahorros', '', '<p>COOSERVICIOS LTDA. Ofrece dos alternativas de Ahorro a sus asociados</p>\r\n<h1><img src=\"images/ahorros.jpg\" border=\"0\" hspace=\"10\" vspace=\"10\" width=\"240\" height=\"320\" style=\"float: left; border: 0; margin: 10px;\" />Cuenta de Ahorro</h1>\r\n<p style=\"text-align: justify;\">Se requiere que el socio mantenga el saldo mínimo de $ 50.000 pesos en deposito, se liquida los intereses cada 60 días. <span style=\"color: #ff0000;\"><strong>\"No se cobra cuota de manejo de la cuenta de ahorros, ni el impuesto cuatro por mil\" </strong><span style=\"color: #ff0000;\">\r\n<p> </p>\r\n<p>\r\n<h1>Certificado de Deposito a Termino - CDAT</h1>\r\n</p>\r\n</span></span></p>\r\n<p> </p>\r\n<p style=\"text-align: justify;\">Recibimos del socio depositos a termino por una cuantía mínima de un millon de pesos, por el lapso mínimo de tres meses. Se requiere que el interesado diligencie un formato y la Cooperativa expidirá un titulo valor como respaldo de la inversión</p>\r\n<p> </p>\r\n<p style=\"text-align: justify;\">La liquidación del interés causado se realiza al finalizar el plazo establecido en el titulo valor, este valor se fija según las consideraciones del Banco de la Republica</p>', '', 1, 6, 0, 36, '2010-09-14 21:04:43', 62, '', '2010-11-23 22:08:12', 62, 0, '0000-00-00 00:00:00', '2010-09-14 21:04:43', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=0\nshow_intro=\nshow_section=0\nlink_section=\nshow_category=\nlink_category=\nshow_vote=0\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 41, 0, 5, 'Aportes, CDAT, cuatro por mil', 'Aportes Cooservicios LTDA', 0, 1584, 'robots=\nauthor='),
(50, 'Vivienda', 'vivienda', '', '<p>COOSERVICIOS LTDA.</p>\r\n<p style=\"text-align: justify;\">Se destaco en la ciudad de Tunja, por ocuparse de la necesidades habitacionales de los pobladores de esta región, planiando y ejecutando proyectos de vivienda como la Ciudadela Cooservicios con 1200 unidades habitacionales, que fue el pilar de desarrollo del sector Nor - Oriental de Tunja, provocando la extensión de los servicios públicos domiciliarios como acueducto, electricidad, aseo, transporte de pasajeros y teléfono entre otros.</p>\r\n<p style=\"text-align: justify;\"> </p>\r\n<p style=\"text-align: justify;\">Estos factores contribuyeron a facilitar, que otros urbanizadores construyeran barrios vecinos como Santiago de Tunja, Doña Eva,  Villa Vachue, El Portal del Otoño y Sol de Oriente entre otros; en la actualidad aglomeran a más de 8.000 viviendas</p>\r\n<p style=\"text-align: justify;\"> </p>\r\n<p style=\"text-align: justify;\">Otros proyectos edificados por COOSERVICIOS LTDA:  Torres de la Calendaria, Florida Apartamentos, Centro Recreacional Villa Yolanda Cite (Santander), Multifamiliares Cooservicios y Altos de Cooservicios. </p>\r\n<p style=\"text-align: justify;\"> </p>\r\n<p style=\"text-align: justify;\">La cooperativa tiene a la venta los siguientes inmuebles:</p>\r\n<p> </p>\r\n<table style=\"text-align: justify;\" border=\"2\">\r\n<tbody>\r\n<tr>\r\n<td align=\"center\">Tipo Inmueble</td>\r\n<td align=\"center\">Cantidad</td>\r\n<td align=\"center\">Descripción</td>\r\n<td align=\"center\">Ubicación</td>\r\n<td align=\"center\">Precio</td>\r\n</tr>\r\n<tr>\r\n<td>Apartamento</td>\r\n<td align=\"center\">1</td>\r\n<td>\r\n<p>Tres alcobas, alcoba principal con baño privado, baño de servicio, cocina, sala - comedor, parqueadero descubierto</p>\r\n<p>Acabados de pintura en vinilo, enchapes en tableta cerámica, servicios de agua, luz y conexión de gas natural</p>\r\n<p>Apartamento \"Usado\"</p>\r\n</td>\r\n<td>Tunja - Florida</td>\r\n<td><a href=\"index.php?option=com_wrapper&amp;view=wrapper&amp;Itemid=58\" title=\"Contactenos Precio\">Contáctenos</a></td>\r\n</tr>\r\n<tr>\r\n<td>Apartamento</td>\r\n<td align=\"center\">8</td>\r\n<td>\r\n<p>Tres alcobas, alcoba principal con baño privado, baño de servicio, cocina, sala - comedor, parqueadero descubierto</p>\r\n<p>Acabados de pintura en vinilo, enchapes en tableta cerámica, servicios de agua, luz y conexión de gas natural, conjunto cerrado con zonas comunes y de parqueo </p>\r\n<p>Apartamento \"Usado\"</p>\r\n</td>\r\n<td>Tunja - Multifamiliares Cooservicios</td>\r\n<td><a href=\"index.php?option=com_wrapper&amp;view=wrapper&amp;Itemid=58\" title=\"Contactenos Precio\">Contáctenos</a></td>\r\n</tr>\r\n<tr>\r\n<td>Lotes de Urbanismo</td>\r\n<td align=\"center\"> </td>\r\n<td> Para construcción de vivienda, con planos aprobados</td>\r\n<td>Tunja - Altos de Cooservicios</td>\r\n<td><a href=\"index.php?option=com_wrapper&amp;view=wrapper&amp;Itemid=58\" title=\"Contactenos Precio\">Contáctenos</a></td>\r\n</tr>\r\n<tr>\r\n<td>Lotes de Urbanismo</td>\r\n<td align=\"center\"> </td>\r\n<td> Para desarrollar proyecto de vivienda, a voluntadad del compador </td>\r\n<td>Tunja - Altos de Cooservicios</td>\r\n<td><a href=\"index.php?option=com_wrapper&amp;view=wrapper&amp;Itemid=58\" title=\"Contactenos Precio\">Contáctenos</a></td>\r\n</tr>\r\n<tr>\r\n<td>Lotes de Urbanismo</td>\r\n<td align=\"center\"> </td>\r\n<td> Para desarrollar proyecto de libre construcción</td>\r\n<td>Tunja - Colinda con el Barrio La María y UPTC </td>\r\n<td><a href=\"index.php?option=com_wrapper&amp;view=wrapper&amp;Itemid=58\" title=\"Contactenos Precio\">Contáctenos</a></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p style=\"text-align: justify;\"> </p>', '', 1, 6, 0, 36, '2010-09-14 22:41:13', 62, '', '2010-12-10 15:51:07', 62, 0, '0000-00-00 00:00:00', '2010-09-14 22:41:13', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=0\nshow_section=0\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 36, 0, 4, 'Torres Candelaria, Cooservicios, Multifamiliares, Altos de Cooservicios, Lotes Construcción', 'Construcción de Vivienda', 0, 5588, 'robots=\nauthor='),
(51, 'Recreación', 'recreacion', '', '<p>EL ARRENDATARIO, del Centro Recreacional y Vacacional Villa Yolanda</p>\r\n<p> </p>\r\n<p style=\"text-align: justify;\"><img src=\"images/cabanas.jpg\" border=\"0\" hspace=\"10\" width=\"240\" height=\"180\" style=\"float: left; border: 0; margin: 10px;\" />Pone al disfrute de los boyacenses, santandereanos y población general el uso del Centro Recreacional y Vacacional Villa Yolanda en Cite (Santander). Localizado a pocos metros de la vía principal entre los municipios de Moniquira y Barbosa</p>\r\n<p style=\"text-align: justify;\"> </p>\r\n<p style=\"text-align: justify;\">Villa Yolanda dispone del servicio de Piscina, Restaurante, Área de Juegos de Mesa y Autotonos, Hospedaje en Cabañas y Apartamentos</p>', '', 1, 6, 0, 36, '2010-09-14 23:12:06', 62, '', '2010-11-23 21:57:24', 62, 0, '0000-00-00 00:00:00', '2010-09-14 23:12:06', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=0\nshow_intro=\nshow_section=0\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 38, 0, 3, 'Centro recreacional, moniquira - barbosa', 'Recreación Cooservicios', 0, 5168, 'robots=\nauthor='),
(58, 'Indicadores Económicos', 'indicadores-economicos', '', '<p>&lt;table&gt;</p>\r\n<p>&lt;tr&gt;<br />          &lt;td&gt;&lt;iframe src =<a href=\"http://www.banrep.gov.co/indicadores.html\">http://www.banrep.gov.co/indicadores.html</a> width=\"205\" height=\"465\" align=\"default\" frameborder=\"0\"&gt;<br />          &lt;p&gt;El navegador no soporta iframes&lt;/p&gt;<br />          &lt;/iframe&gt;&lt;/td&gt;<br />        &lt;/tr&gt;</p>\r\n<p>&lt;/table&gt;</p>\r\n<p> </p>', '', 0, 1, 0, 1, '2010-09-24 00:32:27', 62, '', '2010-09-24 00:36:48', 62, 0, '0000-00-00 00:00:00', '2010-09-24 00:32:27', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 4, 0, 2, '', '', 0, 0, 'robots=\nauthor='),
(53, 'Deberes y Derechos', 'deberes-y-derechos', '', '<h1><img src=\"images/empleados.jpg\" border=\"0\" width=\"240\" height=\"171\" style=\"border: 0; float: left; margin-left: 35px; margin-right: 35px; margin-top: 10px; margin-bottom: 10px;\" />DEBERES</h1>\r\n<ul>\r\n<li>\r\n<div style=\"text-align: justify;\">Adquirir conocimientos sobre Cooperativismo: Principios básicos, características del acuerdo y acto cooperativo, estatutos, reglamentos</div>\r\n</li>\r\n<li>\r\n<div style=\"text-align: justify;\">Cumplir con las obligaciones del acuerdo cooperativo y los estatutos</div>\r\n</li>\r\n<li>\r\n<div style=\"text-align: justify;\">Compremeterse siempre solidariamente en sus relciones con los asociados y con la cooperativa</div>\r\n</li>\r\n<li>\r\n<div style=\"text-align: justify;\">Aceptar y cumplir las decisiones de lor órganos de administración y vigilancia</div>\r\n</li>\r\n<li>\r\n<div style=\"text-align: justify;\">Abstenerse de efectuar actos o de incurrir en omisiones que afecten la estabilidad económica y el prestigio social de la cooperativa</div>\r\n</li>\r\n<li>\r\n<div style=\"text-align: justify;\">Concurrir a las asambleas generales y a las reuniones de los organismos directivos de la cooperativa</div>\r\n</li>\r\n<li>\r\n<div style=\"text-align: justify;\">Suscribir aportes sociales y pagarlos en la forma prescrita en los estatutos y reglamentos</div>\r\n</li>\r\n<li>\r\n<div style=\"text-align: justify;\">Avisar oportunamente a la Secretaria de la cooperativa cualquier cambio de domicilio</div>\r\n</li>\r\n</ul>\r\n<h1>DERECHOS</h1>\r\n<ul>\r\n<li>\r\n<div style=\"text-align: justify;\">Participar en las actividades de la cooperativa, la administración, funcionamiento y desempeño de cargos sociales</div>\r\n</li>\r\n<li>\r\n<div style=\"text-align: justify;\">Utilizar los servicios de la cooperativa y realizar las operaciones propias del objeto social</div>\r\n</li>\r\n<li>\r\n<div style=\"text-align: justify;\">Ser informado de la gestión cooperativa, según estatutos y reglamentos</div>\r\n</li>\r\n<li>\r\n<div style=\"text-align: justify;\">Ejercer actos de decisión y elección en las asambleas generales</div>\r\n</li>\r\n<li>\r\n<div style=\"text-align: justify;\">Participar activamente en las reuniones, presentando ideas y propuestas de desarrollo y progreso de la cooperativa</div>\r\n</li>\r\n<li>\r\n<div style=\"text-align: justify;\">Presentar a la junta de vigilancia quejas fundamentales, cuando hubiere lugar a ellas por infracciones a los estatutos, reglamentos y principios del cooperativismo </div>\r\n</li>\r\n</ul>', '', 1, 6, 0, 36, '2010-09-21 15:49:13', 62, '', '2010-11-23 21:54:41', 62, 0, '0000-00-00 00:00:00', '2010-09-21 15:49:13', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 26, 0, 1, 'Cooperativismo, asamblea, junta vigilancia', 'Deberes y derechos afiliados', 0, 2222, 'robots=\nauthor='),
(54, '¿ Cuanto dinero me presta la Cooperativa ?', 'i-cuanto-dinero-me-presta-la-cooperativa-', '', '<p style=\"text-align: justify;\">Para COOSERVICIOS LTDA, depende de dos factores. El primero según la cantidad de aportes que tenga en deposito el socio y la antiguedad del mismo. Como segunda medida las restriciones de monto y tiempo máximo de financiación que son particulares de cada línea de crédito</p>\r\n<p> </p>\r\n<p style=\"text-align: justify;\">Por ejemplo: Para la línea de crédito Libre Consumo</p>\r\n<p style=\"text-align: justify;\">Monto Máximo: <strong>50 Millones de Pesos</strong></p>\r\n<p style=\"text-align: justify;\">Tiempo Máximo de Financiación: <strong>60 meses</strong></p>', '', 1, 3, 0, 31, '2010-09-21 18:37:28', 62, '', '2010-11-23 21:50:46', 62, 0, '0000-00-00 00:00:00', '2010-09-21 18:37:28', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=0\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_vote=\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=es-ES\nkeyref=\nreadmore=', 15, 0, 2, 'Aportes, antiguedad socio, tiempo de financiación', 'Políticas de crédito', 0, 1743, 'robots=\nauthor='),
(55, '¿Estoy reportado en la central de riesgos financieros?', 'iestoy-reportado-en-la-central-de-riesgos-', '', '<p style=\"text-align: justify;\">Debe solicitar el paz y saldo de la entidad que lo esta reportando y analizamos su situación. Sin este certificado no es posible tramitar el crédito</p>', '', 1, 3, 0, 31, '2010-09-21 19:48:51', 62, '', '2010-11-23 21:49:22', 62, 0, '0000-00-00 00:00:00', '2010-09-21 19:48:51', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=\nshow_vote=\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 11, 0, 1, 'paz y salvo', 'Central de riesgos', 0, 4302, 'robots=\nauthor='),
(56, 'Asamblea de Afiliados', 'asamble-de-afiliados', '', '<p style=\"text-align: justify;\">COOSERVICIOS LTDA. Invita a todos su asociados a que cancelen oportunamente sus obligaciones financieras con la Cooperativa</p>', '', 1, 1, 0, 1, '2010-09-21 20:05:09', 62, '', '2010-11-23 21:35:52', 62, 0, '0000-00-00 00:00:00', '2010-09-21 20:05:09', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=0\nshow_section=\nlink_section=\nshow_category=0\nlink_category=\nshow_vote=\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 13, 0, 4, '', '', 0, 1258, 'robots=\nauthor='),
(57, 'Actualización de Datos', 'actualizacion-de-datos', '', '<p style=\"text-align: justify;\">Señor afiliado, para poder disfrutrar de los Servicios en Línea que ofrece Cooservicios LTDA a través de este sitio web, es indispensable que se acerque a las instalaciones de la Cooperativa para actualizar sus datos. Recuerde estos servicios no tienen costo</p>', '', 1, 1, 0, 1, '2010-09-21 20:19:58', 62, '', '2010-11-23 21:51:50', 62, 0, '0000-00-00 00:00:00', '2010-09-21 20:19:58', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=0\nshow_section=\nlink_section=\nshow_category=0\nlink_category=\nshow_vote=\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 11, 0, 3, 'Sitio web, actualizar datos afiliados', 'Servicios on line', 0, 1222, 'robots=\nauthor='),
(44, 'Cooservicios LTDA.', 'que-es-cooservicios', '', '<h1 style=\"text-align: center;\">\"Cooperar es Progresar\"</h1>\r\n<p><img src=\"images/oficina.jpg\" border=\"0\" hspace=\"10\" vspace=\"10\" width=\"100%\" height=\"100%\" style=\"vertical-align: top; border:5px solid #569D28\" /></p>\r\n<h2 class=\"MsoNormal\" style=\"text-align: center;\"><span style=\"font-size: 10pt; font-family: &quot;Comic Sans MS&quot;; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; mso-ansi-language: ES; mso-fareast-language: ES; mso-bidi-language: AR-SA;\"><span style=\"color: #000000;\"> \"Canalizamos nuestros excedentes en la atención de sus necesidades\"</span></span></h2>\r\n<p style=\"text-align: justify;\">Son para COOSERVICIOS LTDA, los principios de su razón de existir, que la han posecionado en el reconocimiento de la comunidad tunjana, como entidad lider en el aprovisonamiento de Crédito y Ahorro, Recaudo de Servicios Públicos, Edificación de Vivienda, Recreación y como estimulo de ejemplo para la creación de otras entidades cooperativas</p>\r\n<p> </p>\r\n<p style=\"text-align: justify;\">La Cooperativa, inicia su proceso de transformación de ser Cooperativa Multiactiva a Financiera según las indicaciones de la Superintendencia de Economía Solidaría \"Supersolidaria\" a partir de finales del año 2009, desde entonces se viene fortaleciendo en sus actividades de Ahorro y Crédito para sus asociados y público en general</p>', '', 1, 5, 0, 35, '2010-07-10 17:30:32', 62, '', '2013-08-21 22:41:55', 62, 62, '2015-10-07 21:58:05', '2010-07-10 17:30:32', '0000-00-00 00:00:00', '', '', 'show_title=0\nlink_titles=0\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 65, 0, 3, 'crédito, ahorro, recaudo de servicios públicos', 'Cooperar es progresar', 0, 500, 'robots=\nauthor='),
(52, 'Afiliación', 'afiliacion', '', '<p style=\"text-align: justify;\"><img src=\"images/afiliados.jpg\" border=\"0\" width=\"240\" height=\"229\" style=\"float: left; border: 0; margin: 10px;\" />Para afiliarse a COOSERVICIOS LTDA, se requiere que el ciudadano sea mayor de edad. La Cooperativa esta abierta para habitantes del territorio nacional, que demuestren interés por el bienestar de sus semejantes.</p>\r\n<p> </p>\r\n<p style=\"text-align: justify;\">Diligenciar el formato de afiliación, y recuerde <span style=\"color: #ff0000;\"><strong>\"COOSERVICIOS LTDA donde su Aporte Crece Día a Día\"</strong></span></p>\r\n<h3 style=\"text-align: justify;\">Para mayor información <a href=\"index.php?option=com_wrapper&amp;view=wrapper&amp;Itemid=58\">clic aquí</a></h3>', '', 1, 6, 0, 36, '2010-09-21 14:50:56', 62, '', '2010-11-23 21:56:07', 62, 0, '0000-00-00 00:00:00', '2010-09-21 14:50:56', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 16, 0, 2, 'aportes, cooperar', 'Afiliación Cooperativa', 0, 1814, 'robots=\nauthor='),
(45, 'Financiera', 'financiera', '', '<p style=\"text-align: justify;\">Cooservicios LTDA, inicia su proceso de transformación de ser Cooperativa Multiactiva a Financiera según las indicaciones de la Superintendencia de Economía Solidaría \"Supersolidaria\" a partir de finales del año 2009, desde entonces se viene fortaleciendo en sus actividades de Ahorro y Crédito para sus asociados y público en general </p>', '', 0, 5, 0, 35, '2010-07-10 23:44:17', 62, '', '2010-07-10 23:57:07', 62, 0, '0000-00-00 00:00:00', '2010-07-10 23:44:17', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 4, 0, 2, '', '', 0, 0, 'robots=\nauthor='),
(47, 'Líneas de Crédito', 'lineas-de-credito', '', '<h3>COOSERVICIOS LDTA.</h3>\r\n<p style=\"text-align: justify;\">Ofrece a sus asociados las siguientes soluciones de crédito. Para cada uno de ellos se requiere que el solicitante sea socio de la cooperativa</p>\r\n<h1 style=\"text-align: justify;\"><img src=\"images/creditos.jpg\" border=\"0\" hspace=\"10\" vspace=\"10\" style=\"float: left; border: 0; margin: 10px;\" />LIBRE INVERSIÓN:</h1>\r\n<p style=\"text-align: justify;\">La finalidad de esta modalidad de crédito es ofrecer la oportunidad a los asociados y su núcleo familiar de un dinero que no tiene destinación especifica y podrá ser utilizado de acuerdo a su necesidad </p>\r\n<h1 style=\"text-align: justify;\">EDUCATIVO:</h1>\r\n<p style=\"text-align: justify;\">Tiene como objetivo ofrecer a los asociados la posibilidad de pagar sus estudios y los de su núcleo a un bajo costo.</p>\r\n<h1 style=\"text-align: justify;\">CREDIFACIL:</h1>\r\n<p style=\"text-align: justify;\">Dirigido a asociados que tengan CDATS en la cooperativa o que el de los aportes supere 1.3 SMMLV</p>\r\n<h1 style=\"text-align: justify;\">MICROCRÉDITO EMPRESARIAL:</h1>\r\n<p style=\"text-align: justify;\">Esta modalidad está dirigida a la Microempresa exclusivamente. De acuerdo con el artículo 2º de la Ley 590 de 2000, se entiende por microempresa toda unidad de explotación económica, realizada por persona natural ó jurídica, en actividades empresariales, agropecuarias, industriales, comerciales o de servicios, rural o urbana, cuya planta no supere diez (10) trabajadores y sus activos totales sean inferiores a quinientos uno (501) salarios mínimos mensuales legales vigentes</p>\r\n<h1 style=\"text-align: justify;\">RECREACIÓN:</h1>\r\n<p style=\"text-align: justify;\">Su propósito se fundamenta en buscar que el asociado pueda contar con los recursos económicos necesarios para el sano esparcimiento, y el disfrute del tiempo libre</p>\r\n<h1 style=\"text-align: justify;\">TECNOLOGÍA:</h1>\r\n<p style=\"text-align: justify;\">Facilitar a los socios el acceso a elementos tecnológicos para dinamizar el que hacer diario en sus actividades productivas, recreativas y escolares. </p>\r\n<p style=\"text-align: justify;\">  </p>\r\n<h1 style=\"text-align: justify;\">REQUISITOS PARA LA OBTENCIÓN DE CRÉDITOS</h1>\r\n<ul style=\"text-align: justify;\">\r\n<li>Haber sido aprobado su ingreso como asociado por el Consejo de Administración y contar como tal, con la antigüedad mínima establecida para cada línea de crédito.</li>\r\n<li>Diligenciar el formulario dispuesto por la Cooperativa con toda la información requerida y anexar la documentación correspondiente.</li>\r\n<li>Autorizar a la cooperativa para realizar las verificaciones que considere necesarias.</li>\r\n<li>Estar al día con todas sus obligaciones con la Cooperativa (aportes obligatorios, créditos en calidad de deudor y codeudor).</li>\r\n<li>Demostrar capacidad de pago con base en los ingresos propios<span style=\"mso-spacerun: yes;\">  </span>provenientes de su actividad económica.</li>\r\n<li>Tener aportes proporcionales al monto del crédito solicitado, según los multiplicadores establecidos.</li>\r\n<li>Ofrecer garantías satisfactorias para respaldar el crédito</li>\r\n<li>Adjuntar fotocopia de la cédula de ciudadanía de deudores y codeudores.</li>\r\n<li>Adjuntar declaración de renta y certificados de ingresos y retenciones o en su defecto, otras certificaciones que se consideren válidas por la cooperativa</li>\r\n<li>Adjuntar constancia de sueldo y tiempo de servicio (desprendible de pago)</li>\r\n<li>Acreditar los demás requisitos que se exijan de acuerdo con la modalidad y cuantía del préstamo a utilizar</li>\r\n<li>El plazo para la legalización de la garantía se establece en quince días calendario para los créditos cuya garantía sea personal y de noventa (90) días, para créditos cuya garantía sea admisible, contados a partir de la fecha de aprobación.</li>\r\n<li>Cuando la garantía ofrecida sea diferente a la firma de deudores, deben suministrar los documentos que especifiquen dichos bienes, tales como: Certificado de libertad y tradición de los bienes de deudores y codeudores, Tarjeta de propiedad de los vehículos que posean los deudores y codeudores, facturas de compraventa cuando la garantía sea sobre la maquinaria</li>\r\n</ul>\r\n<h1 style=\"text-align: justify;\">GARANTÍAS</h1>\r\n<p style=\"text-align: justify;\"><strong>HIPOTECARIAS</strong>: Consiste en trasladar como garantía en primer grado, a favor de la Cooperativa, los derechos reales de los asociados prestatarios o de su codeudor, sobre un bien inmueble de propiedad de uno de ellos, o de ambos.</p>\r\n<p style=\"text-align: justify;\">Para la constitución de hipoteca, deberá acreditarse la siguiente documentación:</p>\r\n<ul>\r\n<li>\r\n<div style=\"text-align: justify;\">Certificado de Libertad no mayor de dos meses;</div>\r\n</li>\r\n<li>\r\n<div style=\"text-align: justify;\">Copia auténtica de las escrituras de tradición citadas en el certificado;</div>\r\n</li>\r\n<li>\r\n<div style=\"text-align: justify;\">Permiso de un juez si se trata de bienes de menores o interdictos;</div>\r\n</li>\r\n<li>\r\n<div style=\"text-align: justify;\">Boletín oficial de la nomenclatura del inmueble si la nomenclatura de los bienes no coincide con la que realmente tienen</div>\r\n</li>\r\n<li>\r\n<div style=\"text-align: justify;\">Avalúo comercial del inmueble, practicado por persona idónea natural o jurídica;</div>\r\n</li>\r\n<li>\r\n<div style=\"text-align: justify;\">Copia o fotocopia autenticada del seguro que ampare contra todo riesgo el inmueble, en el que figure como beneficiario la Cooperativa.</div>\r\n</li>\r\n</ul>\r\n<p style=\"text-align: justify;\"><strong>GARANTÍA PRENDARIA</strong>: Consiste en la <span style=\"color: #ff0000;\"><strong>pignoración de bienes</strong></span> a favor, de la COOPERATIVA para respaldar la deuda, puede ser maquinaria movible o instalada, sobre vehículo debidamente asegurados o sobre títulos valores</p>\r\n<p style=\"text-align: justify;\">Para la prenda sobre vehículo, maquinaria y equipo se establecen los siguientes requisitos:</p>\r\n<ul>\r\n<li>\r\n<div style=\"text-align: justify;\">Documento de prenda debidamente diligenciado;</div>\r\n</li>\r\n<li>\r\n<div style=\"text-align: justify;\">Fotocopia autenticada de la tarjeta de propiedad en la que conste la prenda a favor de la Cooperativa</div>\r\n</li>\r\n<li>\r\n<div style=\"text-align: justify;\">Copia o fotocopia autenticada del seguro obligatorio, así como del seguro contra todo riesgo del vehículo en el que figure como beneficiario la Cooperativa.</div>\r\n</li>\r\n<li>\r\n<div style=\"text-align: justify;\">Dentro de las garantías prendarías también se contemplan las acciones y bonos, todo ellos con la característica de poder negociarse en bolsa de valores. Se aceptan otros documentos negociables o transferibles, como C.D.A.T, C.D.T.S, cartas de crédito y aceptaciones bancarias:</div>\r\n<ul>\r\n<li>\r\n<div style=\"text-align: justify;\">Para éste tipo de garantías, se exigen los siguientes requisitos:</div>\r\n</li>\r\n<li>\r\n<div style=\"text-align: justify;\">Original del título debidamente endosado en garantía a favor de la Cooperativa;</div>\r\n</li>\r\n<li>\r\n<div style=\"text-align: justify;\">Carta de la entidad emisora del título, indicando que ha generado el respectivo registro del endoso (en los casos que aplique)</div>\r\n</li>\r\n</ul>\r\n</li>\r\n</ul>\r\n<h1 style=\"text-align: justify;\">FINANCIACIÓN</h1>\r\n<p style=\"text-align: justify;\">Cooservicios LTDA, ofrece la modalidad de pago cuotas vencidas, las cuales se cancelan una vez finalizado el periodo de pago, generalmente cada 30 días</p>\r\n<p> </p>\r\n<p style=\"text-align: justify;\">La Cooperativa ofrece el convenio de <span style=\"color: #ff0000;\"><strong>créditos por libranza</strong></span> a asociados que trabajen en organizaciones legalmente reconocidas o que ostenten la calidad de pensionados.</p>\r\n<p> </p>\r\n<p style=\"text-align: justify;\">Para todos los asociados, <span style=\"color: #ff0000;\"><strong>la Cooperativa no impone multas por el abono extraordinario a capital</strong></span></p>\r\n<p> </p>\r\n<p style=\"text-align: justify;\"><strong>Para conocer el valor de la cuota de financiación de <a href=\"index.php?option=com_wrapper&amp;view=wrapper&amp;Itemid=56\" target=\"_self\" title=\"Simulador Crédito\">clic aquí</a></strong></p>\r\n<p> </p>\r\n<p style=\"text-align: justify;\">Desea ampliar información de créditos o libranza <a href=\"index.php?option=com_wrapper&amp;view=wrapper&amp;Itemid=58\" target=\"_self\" title=\"Información Crédito\">clic aquí</a></p>', '', 1, 6, 0, 36, '2010-07-23 22:53:12', 62, '', '2010-11-23 22:04:19', 62, 0, '0000-00-00 00:00:00', '2010-07-23 22:53:12', '0000-00-00 00:00:00', '', '', 'show_title=1\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=0\nshow_category=0\nlink_category=\nshow_vote=0\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 65, 0, 7, 'Libre inversión, educativo, credifacil, micrócredito, recreación, tecnología, financiación, abono de capital', 'Créditos Tunja', 0, 3434, 'robots=\nauthor='),
(48, 'Recaudo de Servicios Públicos', 'recaudo-de-servicios-publicos', '', '<p>COOSERVICIOS LTDA. Es reconocida por la ciudadanía tunjana y boyacense como la Cooperativa lider en el Recaudo de los siguientes servicios :</p>\r\n<table border=\"0\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td> <img src=\"images/energia.jpg\" border=\"0\" width=\"371\" height=\"103\" style=\"vertical-align: middle;\" /></td>\r\n</tr>\r\n<tr>\r\n<td> <img src=\"images/proactiva.jpg\" border=\"0\" width=\"336\" height=\"66\" /></td>\r\n</tr>\r\n<tr>\r\n<td> <img src=\"images/telmex.jpg\" border=\"0\" width=\"304\" height=\"55\" /></td>\r\n</tr>\r\n<tr>\r\n<td> <img src=\"images/comcel.jpg\" border=\"0\" width=\"236\" height=\"56\" /></td>\r\n</tr>\r\n<tr>\r\n<td>  <img src=\"images/telecom.jpg\" border=\"0\" width=\"99\" height=\"96\" /></td>\r\n</tr>\r\n<tr>\r\n<td> <img src=\"images/gasnatural.jpg\" border=\"0\" width=\"300\" height=\"83\" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>Horario de Recaudo:</p>\r\n<p style=\"padding-left: 90px;\">Lunes a Viernes 8:00 am - 11:30 am y 2:00 - 5:30 pm</p>\r\n<p style=\"padding-left: 90px;\">Sábados: 9:00 am - 1:00 pm</p>\r\n<p>Puntos de Recaudo:</p>\r\n<p style=\"padding-left: 90px;\">Oficina Principal Cra 10 No 17-57</p>\r\n<p style=\"padding-left: 90px;\">Colegio Cooperativo Cooservicios Calle 5 No 1-00</p>', '', 1, 6, 0, 36, '2010-07-26 17:05:43', 62, '', '2010-11-23 22:02:12', 62, 0, '0000-00-00 00:00:00', '2010-07-26 17:05:43', '0000-00-00 00:00:00', '', '', 'show_title=1\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=0\nshow_category=0\nlink_category=\nshow_vote=\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 23, 0, 6, 'Ebsa, Proactiva, Telmex, Comcel, Telefónica', 'Recaudar servicios públicos', 0, 2302, 'robots=\nauthor='),
(59, 'Arriendos', 'arriendos', '', '<p>Cooservicios Ltda ofrece los siguienets inmuebles para el arriendo:</p>', '', 0, 5, 0, 35, '2010-12-09 21:30:50', 62, '', '2010-12-09 21:36:18', 62, 0, '0000-00-00 00:00:00', '2010-12-09 21:30:50', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_vote=\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 3, 0, 1, '', '', 0, 0, 'robots=\nauthor='),
(60, 'Ley de Protección de Datos Personales', 'protecciondatos', '', '<div style=\"mso-element: para-border-div; border: none; border-bottom: solid windowtext 1.5pt; padding: 0cm 0cm 1.0pt 0cm;\">\r\n<p class=\"MsoNormal\" style=\"text-align: justify; border: none; mso-border-bottom-alt: solid windowtext 1.5pt; padding: 0cm; mso-padding-alt: 0cm 0cm 1.0pt 0cm;\"><span style=\"font-size: 10.0pt; line-height: 115%; font-family: &quot;Arial&quot;,&quot;sans-serif&quot;;\">Señor (a)</span><span style=\"font-family: Arial, sans-serif; font-size: 10pt; line-height: 115%;\"> </span></p>\r\n</div>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\"><span style=\"font-size: 10.0pt; line-height: 115%; font-family: &quot;Arial&quot;,&quot;sans-serif&quot;;\">Ciudad.-</span></p>\r\n<p><span style=\"font-family: Arial, sans-serif; font-size: 10pt; line-height: 115%; text-align: justify;\">Asunto: Ley de Protección de Datos Personales </span><strong style=\"font-family: Arial, sans-serif; font-size: 10pt; line-height: 115%; text-align: justify;\"><em>“Ley 1581 de 2012”.</em></strong></p>\r\n<p> </p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\"><span style=\"font-family: Arial, sans-serif; font-size: 10pt; line-height: 115%;\">La COOPERATIVA DE SERVICIOS MULTIPLES DE BOYACA </span><strong style=\"font-family: Arial, sans-serif; font-size: 10pt; line-height: 115%;\"><em>“COOSERVICIOS LTDA”.</em></strong><span style=\"font-family: Arial, sans-serif; font-size: 10pt; line-height: 115%;\">, posee información suministrada por sus clientes, obtenidas de las relaciones comerciales, referencias y otras actividades desarrolladas por esta entidad. Con ocasión de le entrada en vigencia de la LEY ESTATUTARIA 1581 de Octubre de 17 de 2012 “ Por la cual se dictan las disposiciones generales para la protección de datos personales”, requerimos su autorización para el tratamiento de sus datos personales, según lo dispone el artículo 9º</span><span style=\"font-family: Arial, sans-serif; font-size: 10pt; line-height: 115%;\"> </span><span style=\"font-family: Arial, sans-serif; font-size: 10pt; line-height: 115%;\">de la mencionada ley, los cuales serán incorporados a una base de datos de la que es responsable COOSERVICIOS LTDA, con domicilio en la ciudad de Tunja, en la carrera 10 Nro. 17 -57.</span></p>\r\n<p> </p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\"><span style=\"font-size: 10.0pt; line-height: 115%; font-family: &quot;Arial&quot;,&quot;sans-serif&quot;;\">El tratamiento que realiza COOSERVICIOS LTDA de los datos personales de sus clientes, consiste en recolectar, almacenar, depurar, usar, analizar, circular, actualizar y cruzar información propia, los datos de contacto, descuentos, eventos, alianzas, convenios e información institucional, con la siguiente finalidad<strong>: Facilitar la correcta ejecución y prestación de servicios, informar las promociones, las novedades y futuros eventos relacionados con  nuestras actividades.</strong></span></p>\r\n<p> </p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\"><span style=\"font-size: 10.0pt; line-height: 115%; font-family: &quot;Arial&quot;,&quot;sans-serif&quot;;\">Los derechos que le asisten a nuestros clientes, usuarios, socios y proveedores de sus datos personales son; conocer, actualizar y solicitar la rectificación o supresión de datos, saber que uso ha hecho COOSERVIICOS LTDA de sus datos personales y revocar en cualquier momento la autorización de la inclusión  de sus datos personales en la base de datos de COOSERVICIOS LTDA.</span></p>\r\n<p> </p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\"><span style=\"font-size: 10.0pt; line-height: 115%; font-family: &quot;Arial&quot;,&quot;sans-serif&quot;;\">Para  ejercer estos derechos nuestros clientes pueden acercarse a las oficinas de la cooperativa o al correo electrónico<strong><span style=\"font-size: 10pt; line-height: 115%;\">: <span style=\"text-decoration: underline;\">informacion@cooservios.com.co</span></span></strong> A partir de la fecha, los titulares de lo datos cuenta <strong>con treinta días (30) días hábiles</strong> para ratificar la autorización del tratamiento de los datos o en su defecto solicitar la supresión de los mismos. La omisión del titular de comunicar la decisión dentro del término establecido, habilitara COOSERVICIOS LTDA para continuar con el tratamiento de los datos conforme lo dispone el ART. 10 del Decreto 1377 de 2013.</span></p>\r\n<p> </p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\"><span style=\"font-size: 10.0pt; line-height: 115%; font-family: &quot;Arial&quot;,&quot;sans-serif&quot;;\">Cordialmente.,</span></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\"><span style=\"font-size: 10.0pt; line-height: 115%; font-family: &quot;Arial&quot;,&quot;sans-serif&quot;;\"> </span></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\"><span style=\"font-size: 10.0pt; line-height: 115%; font-family: &quot;Arial&quot;,&quot;sans-serif&quot;;\"> </span></p>\r\n<p><br /> <br /></p>\r\n<p class=\"MsoNormal\" style=\"text-align: center;\" align=\"center\"><span style=\"font-size: 10.0pt; line-height: 115%; font-family: &quot;Arial&quot;,&quot;sans-serif&quot;;\">DAGOBERTO JIMENEZ  JIMENEZ</span></p>', '', 0, 1, 0, 1, '2013-08-21 22:15:25', 62, '', '2013-08-21 22:27:17', 62, 0, '0000-00-00 00:00:00', '2013-08-21 22:15:25', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 4, 0, 1, '', '', 0, 507, 'robots=\nauthor='),
(61, 'Reseña', 'resena', '', '<p>pagina en construccion</p>', '', 1, 7, 0, 38, '2015-10-07 22:09:31', 62, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2015-10-07 22:09:31', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 1, 0, 1, '', '', 0, 3, 'robots=\nauthor=');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jos_content_frontpage`
--

CREATE TABLE `jos_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT 0,
  `ordering` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `jos_content_frontpage`
--

INSERT INTO `jos_content_frontpage` (`content_id`, `ordering`) VALUES
(56, 4),
(45, 7),
(44, 3),
(1, 8),
(57, 5),
(59, 6),
(60, 2),
(61, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jos_content_rating`
--

CREATE TABLE `jos_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT 0,
  `rating_sum` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `rating_count` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `lastip` varchar(50) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jos_core_acl_aro`
--

CREATE TABLE `jos_core_acl_aro` (
  `id` int(11) NOT NULL,
  `section_value` varchar(240) NOT NULL DEFAULT '0',
  `value` varchar(240) NOT NULL DEFAULT '',
  `order_value` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL DEFAULT '',
  `hidden` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `jos_core_acl_aro`
--

INSERT INTO `jos_core_acl_aro` (`id`, `section_value`, `value`, `order_value`, `name`, `hidden`) VALUES
(10, 'users', '62', 0, 'Administrator', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jos_core_acl_aro_groups`
--

CREATE TABLE `jos_core_acl_aro_groups` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL DEFAULT '',
  `lft` int(11) NOT NULL DEFAULT 0,
  `rgt` int(11) NOT NULL DEFAULT 0,
  `value` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `jos_core_acl_aro_groups`
--

INSERT INTO `jos_core_acl_aro_groups` (`id`, `parent_id`, `name`, `lft`, `rgt`, `value`) VALUES
(17, 0, 'ROOT', 1, 22, 'ROOT'),
(28, 17, 'USERS', 2, 21, 'USERS'),
(29, 28, 'Public Frontend', 3, 12, 'Public Frontend'),
(18, 29, 'Registered', 4, 11, 'Registered'),
(19, 18, 'Author', 5, 10, 'Author'),
(20, 19, 'Editor', 6, 9, 'Editor'),
(21, 20, 'Publisher', 7, 8, 'Publisher'),
(30, 28, 'Public Backend', 13, 20, 'Public Backend'),
(23, 30, 'Manager', 14, 19, 'Manager'),
(24, 23, 'Administrator', 15, 18, 'Administrator'),
(25, 24, 'Super Administrator', 16, 17, 'Super Administrator');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jos_core_acl_aro_map`
--

CREATE TABLE `jos_core_acl_aro_map` (
  `acl_id` int(11) NOT NULL DEFAULT 0,
  `section_value` varchar(230) NOT NULL DEFAULT '0',
  `value` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jos_core_acl_aro_sections`
--

CREATE TABLE `jos_core_acl_aro_sections` (
  `id` int(11) NOT NULL,
  `value` varchar(230) NOT NULL DEFAULT '',
  `order_value` int(11) NOT NULL DEFAULT 0,
  `name` varchar(230) NOT NULL DEFAULT '',
  `hidden` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `jos_core_acl_aro_sections`
--

INSERT INTO `jos_core_acl_aro_sections` (`id`, `value`, `order_value`, `name`, `hidden`) VALUES
(10, 'users', 1, 'Users', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jos_core_acl_groups_aro_map`
--

CREATE TABLE `jos_core_acl_groups_aro_map` (
  `group_id` int(11) NOT NULL DEFAULT 0,
  `section_value` varchar(240) NOT NULL DEFAULT '',
  `aro_id` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `jos_core_acl_groups_aro_map`
--

INSERT INTO `jos_core_acl_groups_aro_map` (`group_id`, `section_value`, `aro_id`) VALUES
(25, '', 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jos_core_log_items`
--

CREATE TABLE `jos_core_log_items` (
  `time_stamp` date NOT NULL DEFAULT '0000-00-00',
  `item_table` varchar(50) NOT NULL DEFAULT '',
  `item_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `hits` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jos_core_log_searches`
--

CREATE TABLE `jos_core_log_searches` (
  `search_term` varchar(128) NOT NULL DEFAULT '',
  `hits` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jos_groups`
--

CREATE TABLE `jos_groups` (
  `id` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(50) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `jos_groups`
--

INSERT INTO `jos_groups` (`id`, `name`) VALUES
(0, 'Public'),
(1, 'Registered'),
(2, 'Special');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jos_menu`
--

CREATE TABLE `jos_menu` (
  `id` int(11) NOT NULL,
  `menutype` varchar(75) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `alias` varchar(255) NOT NULL DEFAULT '',
  `link` text DEFAULT NULL,
  `type` varchar(50) NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT 0,
  `parent` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `componentid` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `sublevel` int(11) DEFAULT 0,
  `ordering` int(11) DEFAULT 0,
  `checked_out` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `pollid` int(11) NOT NULL DEFAULT 0,
  `browserNav` tinyint(4) DEFAULT 0,
  `access` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `utaccess` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `params` text NOT NULL,
  `lft` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `rgt` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `home` int(1) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `jos_menu`
--

INSERT INTO `jos_menu` (`id`, `menutype`, `name`, `alias`, `link`, `type`, `published`, `parent`, `componentid`, `sublevel`, `ordering`, `checked_out`, `checked_out_time`, `pollid`, `browserNav`, `access`, `utaccess`, `params`, `lft`, `rgt`, `home`) VALUES
(1, 'mainmenu', 'Inicio', 'inicio', 'index.php?option=com_content&view=frontpage', 'component', 1, 0, 20, 0, 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 3, 'num_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\norderby_pri=\norderby_sec=front\nmulti_column_order=1\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=0\nshow_title=1\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\nfeed_summary=\npage_title=Cooperativa de Servicios Múltiples de Boyacá - COOSERVICIOS LTDA\nshow_page_title=0\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 1),
(2, 'mainmenu', 'Quienes Somos', 'joomla-license', 'index.php?option=com_wrapper&view=wrapper', 'component', 1, 0, 17, 0, 6, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'url=http://www.cooservicios.com.co/web/historia.php\nscrolling=auto\nwidth=100%\nheight=1500px\nheight_auto=1\nadd_scheme=1\npage_title=Quines Somos\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(54, 'mainmenu', 'Socios', 'socios', 'index.php?option=com_content&view=article&layout=form', 'component', 1, 27, 20, 1, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(41, 'mainmenu', 'FAQ', 'faq', 'index.php?option=com_content&view=section&id=3', 'component', 1, 0, 20, 0, 11, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_page_title=1\nshow_description=0\nshow_description_image=0\nshow_categories=1\nshow_empty_categories=0\nshow_cat_num_articles=1\nshow_category_description=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\norderby=\nshow_noauth=0\nshow_title=1\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1', 0, 0, 0),
(11, 'othermenu', 'Joomla!', 'joomla-home', 'http://www.joomla.org', 'url', 1, 0, 0, 0, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 3, 'menu_image=-1\n\n', 0, 0, 0),
(12, 'othermenu', 'Foros Joomla!', 'joomla-forums', 'http://forum.joomla.org', 'url', 1, 0, 0, 0, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 3, 'menu_image=-1\n\n', 0, 0, 0),
(13, 'othermenu', 'Ayuda Joomla!', 'joomla-help', 'http://help.joomla.org', 'url', 1, 0, 0, 0, 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 3, 'menu_image=-1\n\n', 0, 0, 0),
(14, 'othermenu', 'OSM', 'osm-home', 'http://www.opensourcematters.org', 'url', 1, 0, 0, 0, 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 4, 'menu_image=-1\n\n', 0, 0, 0),
(15, 'othermenu', 'Administración', 'administrator', 'administrator/', 'url', 0, 0, 0, 0, 5, 62, '2010-07-10 17:13:45', 0, 0, 0, 3, 'menu_image=-1\n\n', 0, 0, 0),
(18, 'topmenu', 'Noticias', 'news', 'index.php?option=com_newsfeeds&view=newsfeed&id=1&feedid=1', 'component', 1, 0, 11, 0, 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 3, 'show_page_title=1\npage_title=News\npageclass_sfx=\nmenu_image=-1\nsecure=0\nshow_headings=1\nshow_name=1\nshow_articles=1\nshow_link=1\nshow_other_cats=1\nshow_cat_description=1\nshow_cat_items=1\nshow_feed_image=1\nshow_feed_description=1\nshow_item_description=1\nfeed_word_count=0\n\n', 0, 0, 0),
(20, 'usermenu', 'Tu Perfil', 'your-details', 'index.php?option=com_user&view=user&task=edit', 'component', 1, 0, 14, 0, 1, 0, '0000-00-00 00:00:00', 0, 0, 1, 3, '', 0, 0, 0),
(24, 'usermenu', 'Cerrar sesión', 'logout', 'index.php?option=com_user&view=login', 'component', 1, 0, 14, 0, 4, 0, '0000-00-00 00:00:00', 0, 0, 1, 3, '', 0, 0, 0),
(38, 'keyconcepts', 'Presentaciones', 'content-layouts', 'index.php?option=com_content&view=article&id=24', 'component', 1, 0, 20, 0, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'pageclass_sfx=\nmenu_image=-1\nsecure=0\nshow_noauth=0\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n', 0, 0, 0),
(27, 'mainmenu', 'Visión general', 'joomla-overview', 'index.php?option=com_content&view=article&id=19', 'component', 0, 0, 20, 0, 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'pageclass_sfx=\nmenu_image=-1\nsecure=0\nshow_noauth=0\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n', 0, 0, 0),
(28, 'topmenu', 'Sobre Joomla!', 'about-joomla', 'index.php?option=com_content&view=article&id=25', 'component', 1, 0, 20, 0, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'pageclass_sfx=\nmenu_image=-1\nsecure=0\nshow_noauth=0\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n', 0, 0, 0),
(29, 'topmenu', 'Características', 'features', 'index.php?option=com_content&view=article&id=22', 'component', 1, 0, 20, 0, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'pageclass_sfx=\nmenu_image=-1\nsecure=0\nshow_noauth=0\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n', 0, 0, 0),
(30, 'topmenu', 'La comunidad', 'the-community', 'index.php?option=com_content&view=article&id=27', 'component', 1, 0, 20, 0, 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'pageclass_sfx=\nmenu_image=-1\nsecure=0\nshow_noauth=0\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n', 0, 0, 0),
(34, 'mainmenu', '¿Novedades en la 1.5?', 'what-is-new-in-1-5', 'index.php?option=com_content&view=article&id=22', 'component', 1, 27, 20, 1, 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'pageclass_sfx=\nmenu_image=-1\nsecure=0\nshow_noauth=0\nshow_title=1\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n', 0, 0, 0),
(40, 'keyconcepts', 'Extensiones', 'extensions', 'index.php?option=com_content&view=article&id=26', 'component', 1, 0, 20, 0, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'pageclass_sfx=\nmenu_image=-1\nsecure=0\nshow_noauth=0\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n', 0, 0, 0),
(37, 'mainmenu', 'Productos', 'productos', 'index.php?option=com_content&view=section&id=6', 'component', 0, 0, 20, 0, 5, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_description=0\nshow_description_image=0\nshow_categories=1\nshow_empty_categories=0\nshow_cat_num_articles=0\nshow_category_description=1\norderby=\norderby_sec=\nshow_feed_link=1\nshow_noauth=0\nshow_title=1\nlink_titles=0\nshow_intro=0\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(43, 'keyconcepts', 'Páginas de ejemplo', 'example-pages', 'index.php?option=com_content&view=article&id=43', 'component', 1, 0, 20, 0, 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'pageclass_sfx=\nmenu_image=-1\nsecure=0\nshow_noauth=0\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n', 0, 0, 0),
(44, 'ExamplePages', 'Blog de Sección', 'section-blog', 'index.php?option=com_content&view=section&layout=blog&id=3', 'component', 1, 0, 20, 0, 1, 62, '2010-09-11 15:58:43', 0, 0, 0, 0, 'show_page_title=1\npage_title=Example of Section Blog layout (FAQ section)\nshow_description=0\nshow_description_image=0\nnum_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\nshow_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\norderby_pri=\norderby_sec=\nshow_pagination=2\nshow_pagination_results=1\nshow_noauth=0\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n', 0, 0, 0),
(45, 'ExamplePages', 'Tabla de Sección', 'section-table', 'index.php?option=com_content&view=section&id=3', 'component', 1, 0, 20, 0, 2, 62, '2010-09-11 15:58:53', 0, 0, 0, 0, 'show_page_title=1\npage_title=Example of Table Blog layout (FAQ section)\nshow_description=0\nshow_description_image=0\nshow_categories=1\nshow_empty_categories=0\nshow_cat_num_articles=1\nshow_category_description=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\norderby=\nshow_noauth=0\nshow_title=1\nnlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n', 0, 0, 0),
(46, 'ExamplePages', 'Blog de Categoría', 'categoryblog', 'index.php?option=com_content&view=category&layout=blog&id=31', 'component', 1, 0, 20, 0, 3, 62, '2010-09-11 15:59:05', 0, 0, 0, 0, 'show_page_title=1\npage_title=Example of Category Blog layout (FAQs/General category)\nshow_description=0\nshow_description_image=0\nnum_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\nshow_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\norderby_pri=\norderby_sec=\nshow_pagination=2\nshow_pagination_results=1\nshow_noauth=0\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n', 0, 0, 0),
(47, 'ExamplePages', 'Tabla de Categoría', 'category-table', 'index.php?option=com_content&view=category&id=32', 'component', 1, 0, 20, 0, 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_page_title=1\npage_title=Example of Category Table layout (FAQs/Languages category)\nshow_headings=1\nshow_date=0\ndate_format=\nfilter=1\nfilter_type=title\npageclass_sfx=\nmenu_image=-1\nsecure=0\norderby_sec=\nshow_pagination=1\nshow_pagination_limit=1\nshow_noauth=0\nshow_title=1\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n', 0, 0, 0),
(48, 'mainmenu', 'Enlaces', 'web-links', 'index.php?option=com_weblinks&view=categories', 'component', 0, 0, 4, 0, 13, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'page_title=Weblinks\nimage=-1\nimage_align=right\npageclass_sfx=\nmenu_image=-1\nsecure=0\nshow_comp_description=1\ncomp_description=\nshow_link_hits=1\nshow_link_description=1\nshow_other_cats=1\nshow_headings=1\nshow_page_title=1\nlink_target=0\nlink_icons=\n\n', 0, 0, 0),
(49, 'mainmenu', 'Servidor de noticias', 'news-feeds', 'index.php?option=com_newsfeeds&view=categories', 'component', 0, 0, 11, 0, 14, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_page_title=1\npage_title=Newsfeeds\nshow_comp_description=1\ncomp_description=\nimage=-1\nimage_align=right\npageclass_sfx=\nmenu_image=-1\nsecure=0\nshow_headings=1\nshow_name=1\nshow_articles=1\nshow_link=1\nshow_other_cats=1\nshow_cat_description=1\nshow_cat_items=1\nshow_feed_image=1\nshow_feed_description=1\nshow_item_description=1\nfeed_word_count=0\n\n', 0, 0, 0),
(50, 'mainmenu', 'Noticias', 'the-news', 'index.php?option=com_content&view=category&layout=blog&id=1', 'component', 1, 0, 20, 0, 12, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_page_title=1\npage_title=The News\nshow_description=0\nshow_description_image=0\nnum_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\nshow_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\norderby_pri=\norderby_sec=\nshow_pagination=2\nshow_pagination_results=1\nshow_noauth=0\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n', 0, 0, 0),
(51, 'usermenu', 'Enviar artículo', 'submit-an-article', 'index.php?option=com_content&view=article&layout=form', 'component', 1, 0, 20, 0, 2, 0, '0000-00-00 00:00:00', 0, 0, 2, 0, '', 0, 0, 0),
(52, 'usermenu', 'Enviar enlace', 'submit-a-web-link', 'index.php?option=com_weblinks&view=weblink&layout=form', 'component', 1, 0, 4, 0, 3, 0, '0000-00-00 00:00:00', 0, 0, 2, 0, '', 0, 0, 0),
(53, 'othermenu', 'Joomla! Spanish', ' Joomla! Spanish', 'http://www.joomlaspanish.org/', 'url', 1, 0, 0, 0, 5, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\n\n', 0, 0, 0),
(55, 'mainmenu', 'Afiliados', 'afiliados', 'index.php?option=com_content&view=article&layout=form', 'component', 1, 27, 20, 1, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(56, 'mainmenu', 'Créditos', 'simulador-de-ceditos', 'index.php?option=com_wrapper&view=wrapper', 'component', 1, 62, 17, 1, 1, 62, '2013-08-21 23:53:54', 0, 0, 0, 0, 'url=http://www.cooservicios.com.co/login/simulador.php\nscrolling=auto\nwidth=100%\nheight=300px\nheight_auto=1\nadd_scheme=1\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(57, 'mainmenu', 'Créditos', 'creditos', 'index.php?option=com_content&view=article&id=47', 'component', 1, 65, 20, 1, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=0\nlink_titles=0\nshow_intro=0\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_item_navigation=0\nshow_readmore=0\nshow_vote=0\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(58, 'mainmenu', 'Contactenos', 'contactenos', 'index.php?option=com_wrapper&view=wrapper', 'component', 1, 0, 17, 0, 15, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'url=http://www.cooservicios.com.co/login/email.php\nscrolling=no\nwidth=100%\nheight=100%\nheight_auto=1\nadd_scheme=1\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(59, 'mainmenu', 'Recaudo de Servicios', 'recaudo-de-servicios', 'index.php?option=com_content&view=article&id=48', 'component', 1, 65, 20, 1, 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=0\nlink_section=\nshow_category=0\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(60, 'mainmenu', 'Ahorros', 'simulador-de-ahorros-a-termino', 'index.php?option=com_wrapper&view=wrapper', 'component', -2, 0, 17, 1, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'url=http://127.0.0.1/login/simuladorahorros.php\nscrolling=no\nwidth=100%\nheight=100%\nheight_auto=1\nadd_scheme=1\npage_title=\nshow_page_title=0\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(61, 'mainmenu', 'Estado de Cuenta', 'estado-de-cuenta', 'index.php?option=com_wrapper&view=wrapper', 'component', 1, 63, 17, 1, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'url=http://www.cooservicios.com.co/login/formulario.php\nscrolling=no\nwidth=100%\nheight=500\nheight_auto=1\nadd_scheme=1\npage_title=\nshow_page_title=0\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(62, 'mainmenu', 'Simulador', 'simulador', '', 'url', 1, 0, 0, 0, 8, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\n\n', 0, 0, 0),
(63, 'mainmenu', 'Servicios en Línea', 'consultas-en-linea', '', 'url', 1, 0, 0, 0, 9, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\n\n', 0, 0, 0),
(64, 'mainmenu', 'Separador', 'separador', '', 'separator', -2, 0, 0, 0, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\n\n', 0, 0, 0),
(65, 'mainmenu', 'Productos', 'producto', '', 'url', 1, 0, 0, 0, 7, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\n\n', 0, 0, 0),
(66, 'mainmenu', 'Ahorros', 'ahorros', 'index.php?option=com_content&view=article&id=49', 'component', 1, 65, 20, 1, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(67, 'mainmenu', 'Vivienda y Finca Raíz', 'vivienda-y-finca-raiz', 'index.php?option=com_content&view=article&id=50', 'component', 1, 65, 20, 1, 5, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(68, 'mainmenu', 'Recreación', 'recreacion', 'index.php?option=com_content&view=article&id=51', 'component', 1, 65, 20, 1, 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(69, 'mainmenu', 'Afiliados', 'afiliados', '', 'url', 1, 0, 0, 0, 10, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\n\n', 0, 0, 0),
(70, 'mainmenu', 'Como Afiliarse', 'como-afiliarse', 'index.php?option=com_content&view=article&id=52', 'component', 1, 69, 20, 1, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=1\nlink_titles=\nshow_intro=\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(71, 'mainmenu', 'Deberes y Derechos', 'deberes-y-derechos', 'index.php?option=com_content&view=article&id=53', 'component', 1, 69, 20, 1, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=0\nshow_title=\nlink_titles=0\nshow_intro=0\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(72, 'mainmenu', 'PQR', 'pqr', 'index.php?option=com_content&view=article&id=61', 'component', 1, 58, 20, 1, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jos_menu_types`
--

CREATE TABLE `jos_menu_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `menutype` varchar(75) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `jos_menu_types`
--

INSERT INTO `jos_menu_types` (`id`, `menutype`, `title`, `description`) VALUES
(1, 'mainmenu', 'Menú principal', 'Este es el menú principal del sitio'),
(2, 'usermenu', 'Menú de usuario', 'Menú para usuarios logueados'),
(3, 'topmenu', 'Menú principal', 'Navegador principal'),
(4, 'othermenu', 'Recursos', 'Enlaces adicionales'),
(5, 'ExamplePages', 'Páginas de ejemplo', 'Páginas de ejemplo'),
(6, 'keyconcepts', 'Conceptos clave', 'Descripción de alguna información crítica para usuarios nuevos.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jos_messages`
--

CREATE TABLE `jos_messages` (
  `message_id` int(10) UNSIGNED NOT NULL,
  `user_id_from` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `user_id_to` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `folder_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` int(11) NOT NULL DEFAULT 0,
  `priority` int(1) UNSIGNED NOT NULL DEFAULT 0,
  `subject` text NOT NULL,
  `message` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jos_messages_cfg`
--

CREATE TABLE `jos_messages_cfg` (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `cfg_name` varchar(100) NOT NULL DEFAULT '',
  `cfg_value` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jos_migration_backlinks`
--

CREATE TABLE `jos_migration_backlinks` (
  `itemid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `url` text NOT NULL,
  `sefurl` text NOT NULL,
  `newurl` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jos_modules`
--

CREATE TABLE `jos_modules` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `content` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `position` varchar(50) DEFAULT NULL,
  `checked_out` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT 0,
  `module` varchar(50) DEFAULT NULL,
  `numnews` int(11) NOT NULL DEFAULT 0,
  `access` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `showtitle` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `params` text NOT NULL,
  `iscore` tinyint(4) NOT NULL DEFAULT 0,
  `client_id` tinyint(4) NOT NULL DEFAULT 0,
  `control` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `jos_modules`
--

INSERT INTO `jos_modules` (`id`, `title`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `published`, `module`, `numnews`, `access`, `showtitle`, `params`, `iscore`, `client_id`, `control`) VALUES
(1, 'Menú principal', '', 0, 'left', 0, '0000-00-00 00:00:00', 1, 'mod_mainmenu', 0, 0, 1, 'menutype=mainmenu\nmenu_style=list\nstartLevel=0\nendLevel=0\nshowAllChildren=0\nwindow_open=\nshow_whitespace=0\ncache=1\ntag_id=\nclass_sfx=\nmoduleclass_sfx=_menu\nmaxdepth=10\nmenu_images=0\nmenu_images_align=0\nmenu_images_link=0\nexpand_menu=0\nactivate_parent=0\nfull_active_id=0\nindent_image=0\nindent_image1=\nindent_image2=\nindent_image3=\nindent_image4=\nindent_image5=\nindent_image6=\nspacer=\nend_spacer=\n\n', 1, 0, ''),
(2, 'Acceso', '', 1, 'login', 0, '0000-00-00 00:00:00', 1, 'mod_login', 0, 0, 1, '', 1, 1, ''),
(3, 'Popular', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', 1, 'mod_popular', 0, 2, 1, '', 0, 1, ''),
(4, 'Artículos añadidos recientemente', '', 4, 'cpanel', 0, '0000-00-00 00:00:00', 1, 'mod_latest', 0, 2, 1, 'ordering=c_dsc\nuser_id=0\ncache=0\n\n', 0, 1, ''),
(5, 'Menú de estadísticas', '', 5, 'cpanel', 0, '0000-00-00 00:00:00', 1, 'mod_stats', 0, 2, 1, '', 0, 1, ''),
(6, 'Los mensajes no leídos', '', 1, 'header', 0, '0000-00-00 00:00:00', 1, 'mod_unread', 0, 2, 1, '', 1, 1, ''),
(7, 'Usuarios Online', '', 2, 'header', 0, '0000-00-00 00:00:00', 1, 'mod_online', 0, 2, 1, '', 1, 1, ''),
(8, 'Toolbar', '', 1, 'toolbar', 0, '0000-00-00 00:00:00', 1, 'mod_toolbar', 0, 2, 1, '', 1, 1, ''),
(9, 'Iconos rápidos', '', 1, 'icon', 0, '0000-00-00 00:00:00', 1, 'mod_quickicon', 0, 2, 1, '', 1, 1, ''),
(10, 'Usuarios identificados', '', 2, 'cpanel', 0, '0000-00-00 00:00:00', 1, 'mod_logged', 0, 2, 1, '', 0, 1, ''),
(11, 'Footer', '', 0, 'footer', 0, '0000-00-00 00:00:00', 1, 'mod_footer', 0, 0, 1, '', 1, 1, ''),
(12, 'Menú Admin', '', 1, 'menu', 0, '0000-00-00 00:00:00', 1, 'mod_menu', 0, 2, 1, '', 0, 1, ''),
(13, 'Admin SubMenu', '', 1, 'submenu', 0, '0000-00-00 00:00:00', 1, 'mod_submenu', 0, 2, 1, '', 0, 1, ''),
(14, 'Estado del usuario', '', 1, 'status', 0, '0000-00-00 00:00:00', 1, 'mod_status', 0, 2, 1, '', 0, 1, ''),
(15, 'Título', '', 1, 'title', 0, '0000-00-00 00:00:00', 1, 'mod_title', 0, 2, 1, '', 0, 1, ''),
(16, 'Encuestas', '', 0, 'right', 0, '0000-00-00 00:00:00', 1, 'mod_poll', 0, 0, 1, 'id=14\nmoduleclass_sfx=\ncache=1\ncache_time=900\n\n', 0, 0, ''),
(17, 'Menú de usuario', '', 4, 'left', 0, '0000-00-00 00:00:00', 1, 'mod_mainmenu', 0, 1, 1, 'menutype=usermenu\nmoduleclass_sfx=_menu\ncache=1', 1, 0, ''),
(18, 'Acceso', '', 8, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_login', 0, 0, 1, 'greeting=1\nname=0', 1, 0, ''),
(19, 'Lo más Visitado', '', 0, 'user1', 0, '0000-00-00 00:00:00', 1, 'mod_latestnews', 0, 0, 1, 'count=5\nordering=c_dsc\nuser_id=0\nshow_front=1\nsecid=\ncatid=\nmoduleclass_sfx=\ncache=1\ncache_time=900\n\n', 1, 0, ''),
(20, 'Estadísticas', '', 6, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_stats', 0, 0, 1, 'serverinfo=1\nsiteinfo=1\ncounter=1\nincrease=0\nmoduleclass_sfx=', 0, 0, ''),
(21, '¿Quién está en línea?', '', 3, 'right', 0, '0000-00-00 00:00:00', 0, 'mod_whosonline', 0, 0, 1, 'online=1\nusers=1\nmoduleclass_sfx=', 0, 0, ''),
(22, 'Popular', '', 6, 'user2', 0, '0000-00-00 00:00:00', 1, 'mod_mostread', 0, 0, 1, 'cache=1', 0, 0, ''),
(23, 'Archivo', '', 9, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_archive', 0, 0, 1, 'cache=1', 1, 0, ''),
(24, 'Secciones', '', 10, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_sections', 0, 0, 1, 'cache=1', 1, 0, ''),
(25, 'Newsflash', '', 1, 'top', 0, '0000-00-00 00:00:00', 1, 'mod_newsflash', 0, 0, 1, 'catid=3\r\nstyle=random\r\nitems=\r\nmoduleclass_sfx=', 0, 0, ''),
(26, 'Items relacionados', '', 11, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_related_items', 0, 0, 1, '', 0, 0, ''),
(27, 'Buscar', '', 1, 'user4', 0, '0000-00-00 00:00:00', 1, 'mod_search', 0, 0, 0, 'cache=1', 0, 0, ''),
(28, 'Imagen aleatoria', '', 9, 'right', 0, '0000-00-00 00:00:00', 1, 'mod_random_image', 0, 0, 1, '', 0, 0, ''),
(29, 'Menú principal', '', 0, 'user3', 0, '0000-00-00 00:00:00', 0, 'mod_mainmenu', 0, 0, 0, 'menutype=topmenu\nmenu_style=list\nstartLevel=0\nendLevel=0\nshowAllChildren=0\nwindow_open=\nshow_whitespace=0\ncache=1\ntag_id=\nclass_sfx=-nav\nmoduleclass_sfx=\nmaxdepth=10\nmenu_images_link=0\nactivate_parent=0\nfull_active_id=0\nindent_image=0\nindent_image1=-1\nindent_image2=-1\nindent_image3=-1\nindent_image4=-1\nindent_image5=-1\nindent_image6=-1\nspacer=\nend_spacer=\n\n', 1, 0, ''),
(30, 'Anuncios', '', 3, 'right', 0, '0000-00-00 00:00:00', 0, 'mod_banners', 0, 0, 1, 'target=2\ncount=1\ncid=0\ncatid=14\ntag_search=0\nordering=random\nheader_text=\nfooter_text=\nmoduleclass_sfx=\ncache=1\ncache_time=15\n\n', 1, 0, ''),
(31, 'Recursos', '', 2, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_mainmenu', 0, 0, 1, 'menutype=othermenu\nmenu_style=list\nstartLevel=0\nendLevel=0\nshowAllChildren=0\nwindow_open=\nshow_whitespace=0\ncache=1\ntag_id=\nclass_sfx=\nmoduleclass_sfx=_menu\nmaxdepth=10\nmenu_images=0\nmenu_images_align=0\nexpand_menu=0\nactivate_parent=0\nfull_active_id=0\nindent_image=0\nindent_image1=\nindent_image2=\nindent_image3=\nindent_image4=\nindent_image5=\nindent_image6=\nspacer=\nend_spacer=\n\n', 0, 0, ''),
(32, 'Wrapper', '', 12, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_wrapper', 0, 0, 1, '', 0, 0, ''),
(33, 'Pié de página', '', 2, 'footer', 0, '0000-00-00 00:00:00', 1, 'mod_footer', 0, 0, 0, 'cache=1\n\n', 1, 0, ''),
(34, 'Visor de noticias', '', 13, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_feed', 0, 0, 1, '', 1, 0, ''),
(35, 'Ruta', '', 0, 'breadcrumb', 0, '0000-00-00 00:00:00', 1, 'mod_breadcrumbs', 0, 0, 1, 'showHome=1\nhomeText=Inicio\nshowLast=1\nseparator=\nmoduleclass_sfx=\ncache=0\n\n', 1, 0, ''),
(36, 'Syndication', '', 3, 'syndicate', 0, '0000-00-00 00:00:00', 1, 'mod_syndicate', 0, 0, 0, '', 1, 0, ''),
(37, 'Recursos', '', 7, 'left', 0, '0000-00-00 00:00:00', 1, 'mod_mainmenu', 0, 0, 1, 'menutype=othermenu\nmenu_style=list\nstartLevel=0\nendLevel=0\nshowAllChildren=0\nwindow_open=\nshow_whitespace=0\ncache=1\ntag_id=\nclass_sfx=\nmoduleclass_sfx=_menu\nmaxdepth=10\nmenu_images=0\nmenu_images_align=0\nexpand_menu=0\nactivate_parent=0\nfull_active_id=0\nindent_image=0\nindent_image1=\nindent_image2=\nindent_image3=\nindent_image4=\nindent_image5=\nindent_image6=\nspacer=\nend_spacer=\n\n', 0, 0, ''),
(38, 'Anuncios', '', 0, 'right', 0, '0000-00-00 00:00:00', 1, 'mod_banners', 0, 0, 1, 'target=0\ncount=4\ncid=0\ncatid=14\ntag_search=0\nordering=random\nheader_text=\nfooter_text=\nmoduleclass_sfx=_text\ncache=0\ncache_time=900\n\n', 0, 0, ''),
(39, 'Páginas de ejemplo', '', 5, 'left', 0, '0000-00-00 00:00:00', 1, 'mod_mainmenu', 0, 0, 1, 'cache=1\nclass_sfx=\nmoduleclass_sfx=_menu\nmenutype=ExamplePages\nmenu_style=list_flat\nstartLevel=0\nendLevel=0\nshowAllChildren=0\nfull_active_id=0\nmenu_images=0\nmenu_images_align=0\nexpand_menu=0\nactivate_parent=0\nindent_image=0\nindent_image1=\nindent_image2=\nindent_image3=\nindent_image4=\nindent_image5=\nindent_image6=\nspacer=\nend_spacer=\nwindow_open=\n\n', 0, 0, ''),
(40, 'Conceptos clave', '', 3, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_mainmenu', 0, 0, 1, 'cache=1\nclass_sfx=\nmoduleclass_sfx=_menu\nmenutype=keyconcepts\nmenu_style=list\nstartLevel=0\nendLevel=0\nshowAllChildren=0\nfull_active_id=0\nmenu_images=0\nmenu_images_align=0\nexpand_menu=0\nactivate_parent=0\nindent_image=0\nindent_image1=\nindent_image2=\nindent_image3=\nindent_image4=\nindent_image5=\nindent_image6=\nspacer=\nend_spacer=\nwindow_open=\n\n', 0, 0, ''),
(41, 'Bienvenido a Joomla!', '<div style=\"padding: 5px\"><p>Felicidades por elegir Joomla! como tu sistema de gestión de contenido. Esperamos que puedas crear con éxito un sitio web con nuestro programa y quizá que puedas aportar algo a la comunidad más adelante.</p><p>Para hacer que empiceces con Joomla! lo mejor y más rapidamente posible, queremos darte unos cuantos puntos de referencia a la documentación, preguntas frecuentas y ayuda sobre la seguridad de tu servidor. Un buen lugar donde empezar es en &quot;<a href=\"http://www.joomlaspanish.org/foros/index.php\" target=\"_blank\">Foros de la comunidad de Joomla! spanish</a>&quot;.</p><p>Nota: Para eliminar este mensaje de &quot;Bienvenido a Joomla!&quot; accede al gestor de módulos (en el gestor de extensiones).  Aquí hay un <a href=\"index.php?option=com_modules&amp;client=1\">enlace rápido</a> a esa pantalla.</p></div>', 1, 'cpanel', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 2, 1, 'moduleclass_sfx=\n\n', 1, 1, ''),
(42, 'Patrocinadores', '', 0, 'right', 0, '0000-00-00 00:00:00', 1, 'mod_banners', 0, 0, 1, 'target=0\ncount=5\ncid=0\ncatid=33\ntag_search=0\nordering=0\nheader_text=\nfooter_text=\nmoduleclass_sfx=\ncache=1\ncache_time=900\n\n', 0, 0, ''),
(43, 'Patrocinadores 1', '', 2, 'right', 0, '0000-00-00 00:00:00', 0, 'mod_banners', 0, 0, 0, 'target=1\ncount=1\ncid=3\ncatid=14\ntag_search=0\nordering=0\nheader_text=\nfooter_text=\nmoduleclass_sfx=\ncache=1\ncache_time=900\n\n', 0, 0, ''),
(44, 'HXDMOOMENU', '', 2, 'user3', 0, '0000-00-00 00:00:00', 1, 'mod_hxdmoomenu', 0, 0, 0, 'menutype=mainmenu\nmoo_bgiframe=0\nmoo_delay=500\nmoo_duration=300\nmoo_fps=100\nmoo_transition=linear\nmoo_effects=height\ntag_id=\nclass_sfx=\nmoduleclass_sfx=\nhxd_div_id=hxdmoomenu\ncache=1\ncache_time=900\n\n', 0, 0, ''),
(45, 'WebEnlaces', '', 5, 'right', 0, '0000-00-00 00:00:00', 1, 'mod_banners', 0, 0, 1, 'target=0\ncount=4\ncid=0\ncatid=37\ntag_search=0\nordering=random\nheader_text=\nfooter_text=\nmoduleclass_sfx=_text\ncache=1\ncache_time=900\n\n', 0, 0, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jos_modules_menu`
--

CREATE TABLE `jos_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT 0,
  `menuid` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `jos_modules_menu`
--

INSERT INTO `jos_modules_menu` (`moduleid`, `menuid`) VALUES
(1, 0),
(16, 1),
(16, 56),
(16, 70),
(17, 0),
(18, 1),
(19, 1),
(19, 2),
(19, 50),
(21, 1),
(22, 1),
(22, 2),
(22, 4),
(22, 27),
(22, 36),
(25, 0),
(27, 0),
(29, 0),
(30, 1),
(31, 1),
(32, 0),
(33, 0),
(34, 0),
(35, 0),
(36, 0),
(38, 1),
(38, 41),
(38, 57),
(38, 59),
(38, 66),
(38, 67),
(38, 68),
(38, 71),
(39, 43),
(39, 44),
(39, 45),
(39, 46),
(39, 47),
(40, 0),
(42, 2),
(42, 58),
(42, 60),
(42, 61),
(43, 0),
(44, 0),
(45, 1),
(45, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jos_newsfeeds`
--

CREATE TABLE `jos_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT 0,
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `alias` varchar(255) NOT NULL DEFAULT '',
  `link` text NOT NULL,
  `filename` varchar(200) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT 0,
  `numarticles` int(11) UNSIGNED NOT NULL DEFAULT 1,
  `cache_time` int(11) UNSIGNED NOT NULL DEFAULT 3600,
  `checked_out` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT 0,
  `rtl` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jos_plugins`
--

CREATE TABLE `jos_plugins` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL DEFAULT '',
  `element` varchar(100) NOT NULL DEFAULT '',
  `folder` varchar(100) NOT NULL DEFAULT '',
  `access` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `published` tinyint(3) NOT NULL DEFAULT 0,
  `iscore` tinyint(3) NOT NULL DEFAULT 0,
  `client_id` tinyint(3) NOT NULL DEFAULT 0,
  `checked_out` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `params` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `jos_plugins`
--

INSERT INTO `jos_plugins` (`id`, `name`, `element`, `folder`, `access`, `ordering`, `published`, `iscore`, `client_id`, `checked_out`, `checked_out_time`, `params`) VALUES
(1, 'Autenticación - Joomla', 'joomla', 'authentication', 0, 1, 1, 1, 0, 0, '0000-00-00 00:00:00', ''),
(2, 'Autenticación - LDAP', 'ldap', 'authentication', 0, 2, 0, 1, 0, 0, '0000-00-00 00:00:00', 'host=\nport=389\nuse_ldapV3=0\nnegotiate_tls=0\nno_referrals=0\nauth_method=bind\nbase_dn=\nsearch_string=\nusers_dn=\nusername=\npassword=\nldap_fullname=fullName\nldap_email=mail\nldap_uid=uid\n\n'),
(3, 'Autenticación - GMail', 'gmail', 'authentication', 0, 4, 0, 0, 0, 0, '0000-00-00 00:00:00', ''),
(4, 'Autenticación - OpenID', 'openid', 'authentication', 0, 3, 0, 0, 0, 0, '0000-00-00 00:00:00', ''),
(5, 'Usuario - Joomla!', 'joomla', 'user', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', 'autoregister=1\n\n'),
(6, 'Buscar - Contenido', 'content', 'search', 0, 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\nsearch_content=1\nsearch_uncategorised=1\nsearch_archived=1\n\n'),
(7, 'Buscar - Contactos', 'contacts', 'search', 0, 3, 1, 1, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\n\n'),
(8, 'Buscar - Categorías', 'categories', 'search', 0, 4, 1, 0, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\n\n'),
(9, 'Buscar - Secciones', 'sections', 'search', 0, 5, 1, 0, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\n\n'),
(10, 'Buscar - Newsfeeds', 'newsfeeds', 'search', 0, 6, 1, 0, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\n\n'),
(11, 'Buscar - Weblinks', 'weblinks', 'search', 0, 2, 1, 1, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\n\n'),
(12, 'Contenido - Pagebreak', 'pagebreak', 'content', 0, 10000, 1, 1, 0, 0, '0000-00-00 00:00:00', 'enabled=1\ntitle=1\nmultipage_toc=1\nshowall=1\n\n'),
(13, 'Contenido - Votar', 'vote', 'content', 0, 4, 1, 1, 0, 0, '0000-00-00 00:00:00', ''),
(14, 'Contenido - Email Cloaking', 'emailcloak', 'content', 0, 5, 1, 0, 0, 0, '0000-00-00 00:00:00', 'mode=1\n\n'),
(15, 'Contenido - Code Hightlighter (GeSHi)', 'geshi', 'content', 0, 5, 0, 0, 0, 0, '0000-00-00 00:00:00', ''),
(16, 'Contenido - Cargar módulo', 'loadmodule', 'content', 0, 6, 1, 0, 0, 0, '0000-00-00 00:00:00', 'enabled=1\nstyle=0\n\n'),
(17, 'Contenido - Page Navigation', 'pagenavigation', 'content', 0, 2, 1, 1, 0, 0, '0000-00-00 00:00:00', 'position=1\n\n'),
(18, 'Editor - No Editor', 'none', 'editors', 0, 0, 1, 1, 0, 0, '0000-00-00 00:00:00', ''),
(19, 'Editor - TinyMCE', 'tinymce', 'editors', 0, 0, 1, 1, 0, 0, '0000-00-00 00:00:00', 'theme=advanced\ncleanup=1\ncleanup_startup=0\nautosave=0\ncompressed=0\nrelative_urls=1\ntext_direction=ltr\nlang_mode=0\nlang_code=es\ninvalid_elements=applet\ncontent_css=1\ncontent_css_custom=\nnewlines=0\ntoolbar=top\nhr=1\nsmilies=1\ntable=1\nstyle=1\nlayer=1\nxhtmlxtras=0\ntemplate=0\ndirectionality=1\nfullscreen=1\nhtml_height=550\nhtml_width=750\npreview=1\ninsertdate=1\nformat_date=%Y-%m-%d\ninserttime=1\nformat_time=%H:%M:%S\n\n'),
(20, 'Editor - XStandard Lite 2.0', 'xstandard', 'editors', 0, 0, 1, 1, 0, 0, '0000-00-00 00:00:00', ''),
(21, 'Editor Botón - Imagen', 'image', 'editors-xtd', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', ''),
(22, 'Editor Botón - Pagebreak', 'pagebreak', 'editors-xtd', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', ''),
(23, 'Editor Botón - Leer más', 'readmore', 'editors-xtd', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', ''),
(24, 'XML-RPC - Joomla', 'joomla', 'xmlrpc', 0, 7, 0, 1, 0, 0, '0000-00-00 00:00:00', ''),
(25, 'XML-RPC - Blogger API', 'blogger', 'xmlrpc', 0, 7, 0, 1, 0, 0, '0000-00-00 00:00:00', 'catid=1\nsectionid=0\n\n'),
(27, 'Sistema - SEF', 'sef', 'system', 0, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', ''),
(28, 'Sistema - Debug', 'debug', 'system', 0, 2, 1, 0, 0, 0, '0000-00-00 00:00:00', 'queries=1\nmemory=1\nlangauge=1\n\n'),
(29, 'Sistema - Legado', 'legacy', 'system', 0, 3, 0, 1, 0, 0, '0000-00-00 00:00:00', 'route=0\n\n'),
(30, 'Sistema - Cache', 'cache', 'system', 0, 4, 0, 1, 0, 0, '0000-00-00 00:00:00', 'browsercache=0\ncachetime=15\n\n'),
(31, 'Sistema - Log', 'log', 'system', 0, 5, 0, 1, 0, 0, '0000-00-00 00:00:00', ''),
(32, 'Sistema - Recordarme', 'remember', 'system', 0, 6, 1, 1, 0, 0, '0000-00-00 00:00:00', ''),
(33, 'Sistema - Backlink', 'backlink', 'system', 0, 7, 0, 1, 0, 0, '0000-00-00 00:00:00', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jos_polls`
--

CREATE TABLE `jos_polls` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `voters` int(9) NOT NULL DEFAULT 0,
  `checked_out` int(11) NOT NULL DEFAULT 0,
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT 0,
  `access` int(11) NOT NULL DEFAULT 0,
  `lag` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `jos_polls`
--

INSERT INTO `jos_polls` (`id`, `title`, `alias`, `voters`, `checked_out`, `checked_out_time`, `published`, `access`, `lag`) VALUES
(14, '¿Que Modalidad de Crédito se Ajusta a sus Necesidades ?', 'modalidad-de-credito', 124, 0, '0000-00-00 00:00:00', 1, 0, 86400);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jos_poll_data`
--

CREATE TABLE `jos_poll_data` (
  `id` int(11) NOT NULL,
  `pollid` int(11) NOT NULL DEFAULT 0,
  `text` text NOT NULL,
  `hits` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `jos_poll_data`
--

INSERT INTO `jos_poll_data` (`id`, `pollid`, `text`, `hits`) VALUES
(1, 14, 'Libre Inversión', 76),
(2, 14, 'Microcredito', 29),
(3, 14, 'Educación', 14),
(4, 14, '', 0),
(5, 14, '', 0),
(6, 14, '', 2),
(7, 14, '', 3),
(8, 14, '', 0),
(9, 14, '', 0),
(10, 14, '', 0),
(11, 14, '', 0),
(12, 14, '', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jos_poll_date`
--

CREATE TABLE `jos_poll_date` (
  `id` bigint(20) NOT NULL,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `vote_id` int(11) NOT NULL DEFAULT 0,
  `poll_id` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `jos_poll_date`
--

INSERT INTO `jos_poll_date` (`id`, `date`, `vote_id`, `poll_id`) VALUES
(1, '2006-10-09 13:01:58', 1, 14),
(2, '2006-10-10 15:19:43', 7, 14),
(3, '2006-10-11 11:08:16', 7, 14),
(4, '2006-10-11 15:02:26', 2, 14),
(5, '2006-10-11 15:43:03', 7, 14),
(6, '2006-10-11 15:43:38', 7, 14),
(7, '2006-10-12 00:51:13', 2, 14),
(8, '2007-05-10 19:12:29', 3, 14),
(9, '2007-05-14 14:18:00', 6, 14),
(10, '2007-06-10 15:20:29', 6, 14),
(11, '2007-07-03 12:37:53', 2, 14),
(12, '2010-07-11 05:21:36', 1, 14),
(13, '2010-07-17 03:06:14', 1, 14),
(14, '2011-02-08 01:31:34', 2, 14),
(15, '2011-02-17 23:44:40', 1, 14),
(16, '2011-03-11 23:40:31', 1, 14),
(17, '2011-03-16 21:27:38', 1, 14),
(18, '2011-03-22 15:59:28', 1, 14),
(19, '2011-05-10 21:33:21', 1, 14),
(20, '2011-07-19 20:09:08', 2, 14),
(21, '2011-07-26 15:24:33', 3, 14),
(22, '2011-08-16 22:31:05', 1, 14),
(23, '2011-09-14 17:39:06', 1, 14),
(24, '2011-10-25 19:37:09', 1, 14),
(25, '2011-12-04 23:55:00', 1, 14),
(26, '2011-12-15 13:22:28', 3, 14),
(27, '2011-12-20 19:43:46', 3, 14),
(28, '2012-02-13 18:49:58', 1, 14),
(29, '2012-02-23 15:23:00', 1, 14),
(30, '2012-02-23 18:21:43', 1, 14),
(31, '2012-03-13 22:24:33', 1, 14),
(32, '2012-03-19 17:52:56', 1, 14),
(33, '2012-04-10 19:23:27', 1, 14),
(34, '2012-05-02 20:33:31', 1, 14),
(35, '2012-05-26 18:00:34', 1, 14),
(36, '2012-05-31 03:26:10', 2, 14),
(37, '2012-06-27 16:14:07', 1, 14),
(38, '2012-07-05 19:53:42', 2, 14),
(39, '2012-07-06 01:43:43', 1, 14),
(40, '2012-07-23 22:24:37', 1, 14),
(41, '2012-07-24 18:41:52', 1, 14),
(42, '2012-08-17 02:27:08', 1, 14),
(43, '2012-08-28 14:08:44', 1, 14),
(44, '2012-09-06 21:04:58', 1, 14),
(45, '2012-09-11 18:54:55', 1, 14),
(46, '2012-10-01 21:30:29', 1, 14),
(47, '2012-10-13 14:17:09', 1, 14),
(48, '2012-10-24 05:38:33', 1, 14),
(49, '2012-10-31 21:35:17', 1, 14),
(50, '2012-11-09 17:49:46', 1, 14),
(51, '2012-12-13 21:14:23', 1, 14),
(52, '2012-12-14 20:40:09', 1, 14),
(53, '2013-01-09 14:55:15', 1, 14),
(54, '2013-01-18 22:58:19', 3, 14),
(55, '2013-02-25 16:43:19', 1, 14),
(56, '2013-02-26 23:04:11', 1, 14),
(57, '2013-03-27 22:01:39', 1, 14),
(58, '2013-04-20 23:24:04', 1, 14),
(59, '2013-05-15 13:49:56', 2, 14),
(60, '2013-05-23 20:52:53', 1, 14),
(61, '2013-06-14 16:45:52', 1, 14),
(62, '2013-07-09 21:31:48', 1, 14),
(63, '2013-07-12 20:05:10', 3, 14),
(64, '2013-07-18 16:51:31', 1, 14),
(65, '2013-07-22 01:44:42', 2, 14),
(66, '2013-08-02 15:17:13', 2, 14),
(67, '2013-08-12 16:22:03', 1, 14),
(68, '2013-08-18 15:19:08', 3, 14),
(69, '2013-08-27 12:37:17', 2, 14),
(70, '2013-09-10 02:20:08', 1, 14),
(71, '2013-09-20 22:55:02', 2, 14),
(72, '2013-10-04 20:15:49', 1, 14),
(73, '2013-10-08 21:30:08', 1, 14),
(74, '2013-10-09 22:58:26', 1, 14),
(75, '2013-10-21 13:43:13', 3, 14),
(76, '2013-11-05 14:23:00', 2, 14),
(77, '2014-01-15 00:29:28', 1, 14),
(78, '2014-01-16 14:14:55', 1, 14),
(79, '2014-01-16 18:27:16', 3, 14),
(80, '2014-01-19 21:59:44', 1, 14),
(81, '2014-01-23 21:53:04', 1, 14),
(82, '2014-02-08 01:04:01', 1, 14),
(83, '2014-02-11 12:31:34', 2, 14),
(84, '2014-02-15 12:35:29', 1, 14),
(85, '2014-02-19 04:53:46', 1, 14),
(86, '2014-02-27 21:56:17', 1, 14),
(87, '2014-04-23 12:05:02', 1, 14),
(88, '2014-06-10 22:39:05', 1, 14),
(89, '2014-06-16 21:22:14', 1, 14),
(90, '2014-06-23 21:26:53', 2, 14),
(91, '2014-07-18 14:52:25', 3, 14),
(92, '2014-08-05 19:46:19', 1, 14),
(93, '2014-08-05 19:46:20', 1, 14),
(94, '2014-08-17 23:03:12', 1, 14),
(95, '2014-08-26 14:59:47', 3, 14),
(96, '2014-09-19 23:51:51', 2, 14),
(97, '2014-10-05 21:28:49', 3, 14),
(98, '2014-11-04 12:58:16', 1, 14),
(99, '2014-12-25 20:58:32', 2, 14),
(100, '2015-01-17 15:02:02', 3, 14),
(101, '2015-01-23 00:24:05', 2, 14),
(102, '2015-01-23 21:59:57', 2, 14),
(103, '2015-02-10 18:33:35', 1, 14),
(104, '2015-04-10 15:26:03', 1, 14),
(105, '2015-05-15 17:59:44', 1, 14),
(106, '2015-05-22 20:37:23', 1, 14),
(107, '2015-06-01 14:37:58', 1, 14),
(108, '2015-06-01 20:55:33', 1, 14),
(109, '2015-06-08 15:29:29', 1, 14),
(110, '2015-07-09 19:39:29', 2, 14),
(111, '2015-07-09 19:48:54', 2, 14),
(112, '2015-07-09 19:50:21', 2, 14),
(113, '2015-07-09 19:51:43', 2, 14),
(114, '2015-07-09 19:52:03', 2, 14),
(115, '2015-07-09 19:52:58', 2, 14),
(116, '2015-07-10 15:09:45', 2, 14),
(117, '2015-07-13 15:27:29', 2, 14),
(118, '2015-07-15 18:33:38', 2, 14),
(119, '2015-07-16 14:28:49', 1, 14),
(120, '2015-07-28 21:50:16', 1, 14),
(121, '2015-08-03 21:46:25', 1, 14),
(122, '2015-09-21 15:53:15', 3, 14),
(123, '2015-09-30 21:10:04', 2, 14),
(124, '2015-10-07 18:56:50', 1, 14);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jos_poll_menu`
--

CREATE TABLE `jos_poll_menu` (
  `pollid` int(11) NOT NULL DEFAULT 0,
  `menuid` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jos_sections`
--

CREATE TABLE `jos_sections` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `image` text NOT NULL,
  `scope` varchar(50) NOT NULL DEFAULT '',
  `image_position` varchar(30) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT 0,
  `checked_out` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT 0,
  `access` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `count` int(11) NOT NULL DEFAULT 0,
  `params` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `jos_sections`
--

INSERT INTO `jos_sections` (`id`, `title`, `name`, `alias`, `image`, `scope`, `image_position`, `description`, `published`, `checked_out`, `checked_out_time`, `ordering`, `access`, `count`, `params`) VALUES
(1, 'Noticias', '', 'noticias', '', 'content', 'right', '', 1, 0, '0000-00-00 00:00:00', 3, 0, 4, ''),
(3, 'FAQs', '', 'faqs', '', 'content', 'left', '', 1, 0, '0000-00-00 00:00:00', 5, 0, 33, ''),
(4, 'Sobre Joomla!', '', 'about-joomla', '', 'content', 'left', '', 1, 0, '0000-00-00 00:00:00', 2, 0, 16, ''),
(5, 'Cooperativa', '', 'cooperativa', '', 'content', 'left', '', 1, 0, '0000-00-00 00:00:00', 6, 0, 2, ''),
(6, 'Productos', '', 'productos', '', 'content', 'left', '', 1, 62, '2013-08-21 22:46:11', 7, 0, 2, ''),
(7, 'Actualizacion', '', 'actualiza', '', 'content', 'left', '', 1, 0, '0000-00-00 00:00:00', 8, 0, 1, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jos_session`
--

CREATE TABLE `jos_session` (
  `username` varchar(150) DEFAULT '',
  `time` varchar(14) DEFAULT '',
  `session_id` varchar(200) NOT NULL DEFAULT '0',
  `guest` tinyint(4) DEFAULT 1,
  `userid` int(11) DEFAULT 0,
  `usertype` varchar(50) DEFAULT '',
  `gid` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `client_id` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `data` longtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `jos_session`
--

INSERT INTO `jos_session` (`username`, `time`, `session_id`, `guest`, `userid`, `usertype`, `gid`, `client_id`, `data`) VALUES
('', '1535300813', '3eb00cb05f77c9a07c4bc4694b74eff3', 1, 0, '', 0, 0, 'VqSJCQ7elipcGC_uNVQpuNIPL7RHzqjnqnKR_DCk37VZS7snQ-DRI_ZW-te3aLYAWi2Knh2tPx3NOm3xPLRbTVHkRm3Fuw96uh_GVhLA9Bg89jY-HernQr0iKs-zQtICQ8HynbnEbhhTNES6KUQu0aIZ0gTPWVCzbQGU0h3mTWKNkJ5Hx_v9X1zoToqlwGvEvUK8CLwRNSZKWxc0d8O1KmeR30SsGmfBrAG-vo-qdutDN0r92ixXkym3cBTrx1vPV5VYclsCkKTcah67N5IDKV5x6qvFFwI8PPQa1tOrB-Ieex36GrwPCRXz38zHn8PN57BRFG1wb5-x7HeBfuJSYGZwIBY35bd7uDoWmzKJaThCJZEJaEajbeNeZeuvEAp0JbRp0sm6_Oxv-6WzCmniNKMerkAyXWDQ3XZM46Gbz4vzsYCSNCh9t9dumrwIX7rM0vN3x_MZbadBcB81JGcQCcRYd5kxRylHNGUjS569BvQTIc4N07kXFmRmIhfk-i-Pek2tAL_DiuvJGEz7lejBOsmwhoKR2_rmyX-e3sX2u-wdobKOjOCeGhANve5A_M5W2zgiTE_MoQhh4mqBQ8OpKNANe1ZV3IMOI3uVX-iYgaKZhiWKICfD1_GXtLykGazR-jtVpfDq09qxWaDqQGxCZrT9h87lIqE4nImYUx7JC5g6Ed4MlgKGz50zjZkz2GJHPHU7oEOJmthfQXq6LvwnVb_zSeMEElTGiJeE57VAtwIqHIElxWJ4A4zXELucZ8NU_W9Fs_Pl9nQ_BpadMXEzJmDnS4J63B-j6cy5iFpWWDFhRkmC0Jjp_eK-rQIVqRar-BWzbo3LoNFwWll1wAkixDQjfXj-51-fUQYUZxU-EmL7JuY6Xr_-Hg5LYMjrugkAo83a0jgzWdgHx6mmaqfwTvjp_6Hlcr569GIJ2hZyVKE2Kxx2EbDcRZsMBbwJxZmh1ZMgO1Rz-kuEmHppb69Ok1uK_doNR3wn_nl5sA_n5Q1Wi5JS1eqixn2cJr3GXPVtTpFisUDoUhJo_2ipnbleiQ4HMJt_hbT_Hpf_kPY1TR6GuaLXpyDTgsHLQxz0Dx1LuGAg5LcTGiV034WasAMM6y2Pgy_zv7WjM8Qy3mkFPtkVMp2mB56tQzM1T3efyxkMdWwNxkgF4kySQQ7YwyqnBkiydgJ3q17yGSZiDfaQQvDX3rif_vmZ0qGVUoRXdTkCGXlF7XIqKuVxcphTvgacEVhX49F1QlY75sBLYMCTdyOhSv6GoNLQFkcMWJUlXPRqo3GJtKCHfexyDyAhmujGtnBCyJ4Q7XieXYBTWKHOmPTZV7R9gAXrYX82yUmcrUzNegbSSxFoUMwX8QJ1IXRzOHKpBCRAqIod85lln0eivor0fwlIbLhgWLZycgnZJqfl8yRn-bMeYQc1CryuM8-ok_HjBqHgXt-LvmASKE_kd0B2oOLmBXeOgg3lx9i1Fp8aMyk0U3otx24FCB0ebjaEeWghyWxpx4VYUzua7Qso8pCmMEMcL6r316VEki9RWvDxHo34gQDcVUEB2FMTlS3vOCRH5Dcz3iIBiASivepGom48jyGONE8kT53Mk8yC-QutjAttTjZtvWrBNXU5CYR7TUTNEgYQzCamuqJUFe--TWFjDlVi8mE4SKklk6e05NcP');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jos_stats_agents`
--

CREATE TABLE `jos_stats_agents` (
  `agent` varchar(255) NOT NULL DEFAULT '',
  `type` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `hits` int(11) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jos_templates_menu`
--

CREATE TABLE `jos_templates_menu` (
  `template` varchar(255) NOT NULL DEFAULT '',
  `menuid` int(11) NOT NULL DEFAULT 0,
  `client_id` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `jos_templates_menu`
--

INSERT INTO `jos_templates_menu` (`template`, `menuid`, `client_id`) VALUES
('yerson', 0, 0),
('khepri', 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jos_users`
--

CREATE TABLE `jos_users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(150) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `usertype` varchar(25) NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT 0,
  `sendEmail` tinyint(4) DEFAULT 0,
  `gid` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) NOT NULL DEFAULT '',
  `params` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `jos_users`
--

INSERT INTO `jos_users` (`id`, `name`, `username`, `email`, `password`, `usertype`, `block`, `sendEmail`, `gid`, `registerDate`, `lastvisitDate`, `activation`, `params`) VALUES
(62, 'Administrator', 'admin', 'yerjav@gmail.com', '92815134b65715bca8d07c0417880bbd:6g6FegwX7hMSBD6bDdml71BVABKBesbI', 'Super Administrator', 0, 1, 25, '2010-06-28 23:32:35', '2015-10-07 21:56:15', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jos_weblinks`
--

CREATE TABLE `jos_weblinks` (
  `id` int(11) UNSIGNED NOT NULL,
  `catid` int(11) NOT NULL DEFAULT 0,
  `sid` int(11) NOT NULL DEFAULT 0,
  `title` varchar(250) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `url` varchar(250) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(11) NOT NULL DEFAULT 0,
  `published` tinyint(1) NOT NULL DEFAULT 0,
  `checked_out` int(11) NOT NULL DEFAULT 0,
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT 0,
  `archived` tinyint(1) NOT NULL DEFAULT 0,
  `approved` tinyint(1) NOT NULL DEFAULT 1,
  `params` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `jos_weblinks`
--

INSERT INTO `jos_weblinks` (`id`, `catid`, `sid`, `title`, `alias`, `url`, `description`, `date`, `hits`, `published`, `checked_out`, `checked_out_time`, `ordering`, `archived`, `approved`, `params`) VALUES
(8, 19, 0, 'Supersolidaria', 'supersolidaria', 'http://www.supersolidaria.gov.co', '', '2010-09-15 22:57:17', 1, 1, 0, '0000-00-00 00:00:00', 1, 0, 1, 'target=1\n\n');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `noticias`
--

CREATE TABLE `noticias` (
  `id` int(11) NOT NULL,
  `titulo` varchar(64) NOT NULL,
  `descripcion` text NOT NULL,
  `img` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `noticias`
--

INSERT INTO `noticias` (`id`, `titulo`, `descripcion`, `img`, `created_at`, `updated_at`) VALUES
(2, 'asds', 'kjhkh', '11591.jpg', '2020-04-11 18:31:00', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `id_rol` enum('superadmin','admin_sistema','') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'admin_sistema',
  `nombres` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `documento` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `usuario` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `id_rol`, `nombres`, `documento`, `usuario`, `password`) VALUES
(2, 'admin_sistema', 'admin', '00000000000', 'informacion@cooservicios.com.co', '$2y$12$VvB3RId0yhTVEtAjDqu32.Ouk3YQPbGnyyL5izuHzHNDWNLzGZ9UG');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `aportes`
--
ALTER TABLE `aportes`
  ADD PRIMARY KEY (`cod_aporte`);

--
-- Indices de la tabla `captaciones`
--
ALTER TABLE `captaciones`
  ADD PRIMARY KEY (`cod_cdts`);

--
-- Indices de la tabla `certificaciones`
--
ALTER TABLE `certificaciones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`cod_cliente`);

--
-- Indices de la tabla `consultas`
--
ALTER TABLE `consultas`
  ADD PRIMARY KEY (`cod_consulta`);

--
-- Indices de la tabla `creditos`
--
ALTER TABLE `creditos`
  ADD PRIMARY KEY (`cod_linea`);

--
-- Indices de la tabla `creditos_activos`
--
ALTER TABLE `creditos_activos`
  ADD PRIMARY KEY (`cod_credito`);

--
-- Indices de la tabla `jos_banner`
--
ALTER TABLE `jos_banner`
  ADD PRIMARY KEY (`bid`),
  ADD KEY `viewbanner` (`showBanner`),
  ADD KEY `idx_banner_catid` (`catid`);

--
-- Indices de la tabla `jos_bannerclient`
--
ALTER TABLE `jos_bannerclient`
  ADD PRIMARY KEY (`cid`);

--
-- Indices de la tabla `jos_categories`
--
ALTER TABLE `jos_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cat_idx` (`section`,`published`,`access`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`);

--
-- Indices de la tabla `jos_components`
--
ALTER TABLE `jos_components`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent_option` (`parent`,`option`(32));

--
-- Indices de la tabla `jos_contact_details`
--
ALTER TABLE `jos_contact_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catid` (`catid`);

--
-- Indices de la tabla `jos_content`
--
ALTER TABLE `jos_content`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_section` (`sectionid`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`);

--
-- Indices de la tabla `jos_content_frontpage`
--
ALTER TABLE `jos_content_frontpage`
  ADD PRIMARY KEY (`content_id`);

--
-- Indices de la tabla `jos_content_rating`
--
ALTER TABLE `jos_content_rating`
  ADD PRIMARY KEY (`content_id`);

--
-- Indices de la tabla `jos_core_acl_aro`
--
ALTER TABLE `jos_core_acl_aro`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `jos_section_value_value_aro` (`section_value`(100),`value`(100)),
  ADD KEY `jos_gacl_hidden_aro` (`hidden`);

--
-- Indices de la tabla `jos_core_acl_aro_groups`
--
ALTER TABLE `jos_core_acl_aro_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jos_gacl_parent_id_aro_groups` (`parent_id`),
  ADD KEY `jos_gacl_lft_rgt_aro_groups` (`lft`,`rgt`);

--
-- Indices de la tabla `jos_core_acl_aro_map`
--
ALTER TABLE `jos_core_acl_aro_map`
  ADD PRIMARY KEY (`acl_id`,`section_value`,`value`);

--
-- Indices de la tabla `jos_core_acl_aro_sections`
--
ALTER TABLE `jos_core_acl_aro_sections`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `jos_gacl_value_aro_sections` (`value`),
  ADD KEY `jos_gacl_hidden_aro_sections` (`hidden`);

--
-- Indices de la tabla `jos_core_acl_groups_aro_map`
--
ALTER TABLE `jos_core_acl_groups_aro_map`
  ADD UNIQUE KEY `group_id_aro_id_groups_aro_map` (`group_id`,`section_value`,`aro_id`);

--
-- Indices de la tabla `jos_groups`
--
ALTER TABLE `jos_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `jos_menu`
--
ALTER TABLE `jos_menu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `componentid` (`componentid`,`menutype`,`published`,`access`),
  ADD KEY `menutype` (`menutype`);

--
-- Indices de la tabla `jos_menu_types`
--
ALTER TABLE `jos_menu_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menutype` (`menutype`);

--
-- Indices de la tabla `jos_messages`
--
ALTER TABLE `jos_messages`
  ADD PRIMARY KEY (`message_id`),
  ADD KEY `useridto_state` (`user_id_to`,`state`);

--
-- Indices de la tabla `jos_messages_cfg`
--
ALTER TABLE `jos_messages_cfg`
  ADD UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`);

--
-- Indices de la tabla `jos_migration_backlinks`
--
ALTER TABLE `jos_migration_backlinks`
  ADD PRIMARY KEY (`itemid`);

--
-- Indices de la tabla `jos_modules`
--
ALTER TABLE `jos_modules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `published` (`published`,`access`),
  ADD KEY `newsfeeds` (`module`,`published`);

--
-- Indices de la tabla `jos_modules_menu`
--
ALTER TABLE `jos_modules_menu`
  ADD PRIMARY KEY (`moduleid`,`menuid`);

--
-- Indices de la tabla `jos_newsfeeds`
--
ALTER TABLE `jos_newsfeeds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `published` (`published`),
  ADD KEY `catid` (`catid`);

--
-- Indices de la tabla `jos_plugins`
--
ALTER TABLE `jos_plugins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_folder` (`published`,`client_id`,`access`,`folder`);

--
-- Indices de la tabla `jos_polls`
--
ALTER TABLE `jos_polls`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `jos_poll_data`
--
ALTER TABLE `jos_poll_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pollid` (`pollid`,`text`(1));

--
-- Indices de la tabla `jos_poll_date`
--
ALTER TABLE `jos_poll_date`
  ADD PRIMARY KEY (`id`),
  ADD KEY `poll_id` (`poll_id`);

--
-- Indices de la tabla `jos_poll_menu`
--
ALTER TABLE `jos_poll_menu`
  ADD PRIMARY KEY (`pollid`,`menuid`);

--
-- Indices de la tabla `jos_sections`
--
ALTER TABLE `jos_sections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_scope` (`scope`);

--
-- Indices de la tabla `jos_session`
--
ALTER TABLE `jos_session`
  ADD PRIMARY KEY (`session_id`(64)),
  ADD KEY `whosonline` (`guest`,`usertype`),
  ADD KEY `userid` (`userid`),
  ADD KEY `time` (`time`);

--
-- Indices de la tabla `jos_templates_menu`
--
ALTER TABLE `jos_templates_menu`
  ADD PRIMARY KEY (`menuid`,`client_id`,`template`);

--
-- Indices de la tabla `jos_users`
--
ALTER TABLE `jos_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usertype` (`usertype`),
  ADD KEY `idx_name` (`name`),
  ADD KEY `gid_block` (`gid`,`block`),
  ADD KEY `username` (`username`),
  ADD KEY `email` (`email`);

--
-- Indices de la tabla `jos_weblinks`
--
ALTER TABLE `jos_weblinks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catid` (`catid`,`published`,`archived`);

--
-- Indices de la tabla `noticias`
--
ALTER TABLE `noticias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `captaciones`
--
ALTER TABLE `captaciones`
  MODIFY `cod_cdts` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `creditos`
--
ALTER TABLE `creditos`
  MODIFY `cod_linea` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT de la tabla `jos_banner`
--
ALTER TABLE `jos_banner`
  MODIFY `bid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `jos_bannerclient`
--
ALTER TABLE `jos_bannerclient`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `jos_categories`
--
ALTER TABLE `jos_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT de la tabla `jos_components`
--
ALTER TABLE `jos_components`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT de la tabla `jos_contact_details`
--
ALTER TABLE `jos_contact_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `jos_content`
--
ALTER TABLE `jos_content`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT de la tabla `jos_core_acl_aro`
--
ALTER TABLE `jos_core_acl_aro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `jos_core_acl_aro_groups`
--
ALTER TABLE `jos_core_acl_aro_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `jos_core_acl_aro_sections`
--
ALTER TABLE `jos_core_acl_aro_sections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `jos_menu`
--
ALTER TABLE `jos_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT de la tabla `jos_menu_types`
--
ALTER TABLE `jos_menu_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `jos_messages`
--
ALTER TABLE `jos_messages`
  MODIFY `message_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `jos_modules`
--
ALTER TABLE `jos_modules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT de la tabla `jos_newsfeeds`
--
ALTER TABLE `jos_newsfeeds`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `jos_plugins`
--
ALTER TABLE `jos_plugins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT de la tabla `jos_polls`
--
ALTER TABLE `jos_polls`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `jos_poll_data`
--
ALTER TABLE `jos_poll_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `jos_poll_date`
--
ALTER TABLE `jos_poll_date`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- AUTO_INCREMENT de la tabla `jos_sections`
--
ALTER TABLE `jos_sections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `jos_users`
--
ALTER TABLE `jos_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT de la tabla `jos_weblinks`
--
ALTER TABLE `jos_weblinks`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `noticias`
--
ALTER TABLE `noticias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
