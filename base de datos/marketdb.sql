-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 21-11-2013 a las 20:28:27
-- Versión del servidor: 5.5.16
-- Versión de PHP: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `marketdb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bloqueado`
--

CREATE TABLE IF NOT EXISTS `bloqueado` (
  `bloqueadoId` bigint(20) NOT NULL AUTO_INCREMENT,
  `codigoEmpresa` bigint(20) NOT NULL,
  `inicioBloqueo` datetime DEFAULT NULL,
  `finBloqueo` datetime DEFAULT NULL,
  PRIMARY KEY (`bloqueadoId`),
  KEY `fk_empresa_bloqueado` (`codigoEmpresa`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoriaproducto`
--

CREATE TABLE IF NOT EXISTS `categoriaproducto` (
  `codigoCategoria` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `descripcion` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`codigoCategoria`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Volcado de datos para la tabla `categoriaproducto`
--

INSERT INTO `categoriaproducto` (`codigoCategoria`, `nombre`, `descripcion`) VALUES
(1, 'Abarrotes', NULL),
(2, 'Bebidas', NULL),
(3, 'Cuidado personal', NULL),
(4, 'Desayuno', NULL),
(5, 'Embutidos', NULL),
(6, 'Enlatados', NULL),
(7, 'Galletas y golosinas', NULL),
(8, 'Licores', NULL),
(9, 'Limpieza', NULL),
(10, 'Snacks y piqueos', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoriatemaayuda`
--

CREATE TABLE IF NOT EXISTS `categoriatemaayuda` (
  `codigoCategoriaTema` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombreCategoriaTema` varchar(100) DEFAULT NULL,
  `descripcionTema` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`codigoCategoriaTema`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contrasenia`
--

CREATE TABLE IF NOT EXISTS `contrasenia` (
  `codigoContrasenia` bigint(20) NOT NULL AUTO_INCREMENT,
  `codigoUsuario` bigint(20) NOT NULL,
  `contrasenia` varchar(100) DEFAULT NULL,
  `preguntaSecreta` varchar(100) DEFAULT NULL,
  `respuesta` varchar(50) DEFAULT NULL,
  `flagContraseniaActual` bit(1) DEFAULT NULL,
  PRIMARY KEY (`codigoContrasenia`),
  KEY `fk_usuario_contrasenia` (`codigoUsuario`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `contrasenia`
--

INSERT INTO `contrasenia` (`codigoContrasenia`, `codigoUsuario`, `contrasenia`, `preguntaSecreta`, `respuesta`, `flagContraseniaActual`) VALUES
(1, 1, 'c7f8c3abc93afb4a71975cc1a07154e9', NULL, NULL, '1'),
(2, 2, '$1$lS3.KG5.$ODj7HdWDs6bmrXTcL4IpF1', NULL, NULL, '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa`
--

CREATE TABLE IF NOT EXISTS `empresa` (
  `codigoEmpresa` bigint(20) NOT NULL AUTO_INCREMENT,
  `razonSocial` varchar(100) DEFAULT NULL,
  `ruc` char(11) DEFAULT NULL,
  `telefono` varchar(10) DEFAULT NULL,
  `direccionFiscal` varchar(200) DEFAULT NULL,
  `correo` varchar(100) DEFAULT NULL,
  `flagContactoCorreo` bit(1) DEFAULT NULL,
  PRIMARY KEY (`codigoEmpresa`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Volcado de datos para la tabla `empresa`
--

INSERT INTO `empresa` (`codigoEmpresa`, `razonSocial`, `ruc`, `telefono`, `direccionFiscal`, `correo`, `flagContactoCorreo`) VALUES
(1, 'empresa', '11111111111', '1111111', 'av. los molinos', 'dasd@fds.sdf', '1'),
(2, 'empresa', '11111111111', '1111111', 'av. los molinos', 'dasd@fds.sdf', '1'),
(3, 'EMPRESA ABC', '12345678912', '985340144', 'los sauces', 'luis.palacinr@gmail.com', '1'),
(4, 'EMPRESA ABC', '12345678912', '985340144', 'los sauces', 'luis.palacinr@gmail.com', '1'),
(5, 'HPL', '20433333333', '123456789', 'av. la molina', 'contacto@hpltransport.com', '1'),
(6, 'HPL', '98765432222', '123456789', 'av. la molina', 'contacto@hpltransport.com', '1'),
(7, 'AERACH SA', '20393474636', '1234554', 'av. los sauces', 'abc@gmail.com', '1'),
(8, 'TRANSP. PALACIN SA', '87748399209', '546654', 'av. anonymous', 'tpal@dsf.dfds', '1'),
(9, 'hola SA', '12332434545', '99999999', 'fdsfdsfs', 'dsfsd@sdsdf.dsfds', '1'),
(10, 'MiRazon SA', '12345674545', '9898989', 'saddfdsfs', 'dsbmobile@dsb.com', '1'),
(11, 'empresa sa.', '34243556546', '5675634', 'fgdgdfg', 'rdfssd@fdgd.dfgd', '1'),
(12, 'asassd', '56545434232', '3243564', 'fdfgfdss', 'gffgf@fgg.f', '1'),
(13, 'hhh', '45674333565', '8888888', 'dffghgfgdsd', 'sds@fddf.fdd', '1'),
(14, 'LUIS SA', '12345678686', '12343545', 'calle nueva 65', 'dasd@dsfs.fsd', '0'),
(15, 'UEFA ', '32432445465', '6655543643', 'av. barcelona', 'barsa@bc.com', '1'),
(16, 'luispraraz', '24234543234', '999997543', 'fsdfsdf', 'fdfs@sdfds.sdfds', '1'),
(17, 'TSVSAC', '32435346635', '98876543', 'fsdfdsf', 'fsd@dsdf.fsdf', '0'),
(18, 'yoncho SA', '34345456242', '54578543', 'av. quechuas', 'dasdssdf@fds.fdsf', '0'),
(19, 'ULTRAEMPRESA', '99883736245', '3425546424', 'direccion', 'correo@dsfsd.fsdf', '0'),
(20, 'luispl', '10709037752', '70903775', 'urb. Los Sauces Calle Sta. InÃ©s Mz l lote 10 B', 'guido121@gmail.com', '0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grupo`
--

CREATE TABLE IF NOT EXISTS `grupo` (
  `codigoGrupo` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombreGrupo` varchar(100) DEFAULT NULL,
  `descripcion` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`codigoGrupo`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `grupo`
--

INSERT INTO `grupo` (`codigoGrupo`, `nombreGrupo`, `descripcion`) VALUES
(1, 'administrador', 'administra el sistema de carrito de compras y usuarios.'),
(2, 'usuarios consumidores', 'empresas que cuentan con una cuenta de usuario con intereses de adquirir productos al por mayor.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grupo_privilegio`
--

CREATE TABLE IF NOT EXISTS `grupo_privilegio` (
  `codigoPrivilegio` bigint(20) NOT NULL,
  `codigoGrupo` bigint(20) NOT NULL,
  `fechaAsignamiento` datetime DEFAULT NULL,
  PRIMARY KEY (`codigoPrivilegio`,`codigoGrupo`),
  KEY `fk_grupo_grupoPrivilegio` (`codigoGrupo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grupo_usuario`
--

CREATE TABLE IF NOT EXISTS `grupo_usuario` (
  `codigoGrupo` bigint(20) NOT NULL,
  `codigoUsuario` bigint(20) NOT NULL,
  `fechaAsignamiento` datetime DEFAULT NULL,
  PRIMARY KEY (`codigoGrupo`,`codigoUsuario`),
  KEY `fk_usuario_grupoUsuario` (`codigoUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `grupo_usuario`
--

INSERT INTO `grupo_usuario` (`codigoGrupo`, `codigoUsuario`, `fechaAsignamiento`) VALUES
(1, 2, '2013-11-11 00:00:00'),
(2, 1, '2013-11-11 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `intentofallido`
--

CREATE TABLE IF NOT EXISTS `intentofallido` (
  `codigoIntentoFallido` bigint(20) NOT NULL AUTO_INCREMENT,
  `codigoUsuario` bigint(20) NOT NULL,
  `fechaHoraIntentoFallido` datetime DEFAULT NULL,
  PRIMARY KEY (`codigoIntentoFallido`),
  KEY `fk_usuario_intentoFallido` (`codigoUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marca`
--

CREATE TABLE IF NOT EXISTS `marca` (
  `codigoMarca` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombreMarca` varchar(100) DEFAULT NULL,
  `descripcion` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`codigoMarca`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=125 ;

--
-- Volcado de datos para la tabla `marca`
--

INSERT INTO `marca` (`codigoMarca`, `nombreMarca`, `descripcion`) VALUES
(1, 'A1', NULL),
(2, 'Ace', NULL),
(3, 'Adams', NULL),
(4, 'Aguitas', NULL),
(5, 'Air Wick', NULL),
(6, 'AK-1', NULL),
(7, 'Always', NULL),
(8, 'Ambrosoli', NULL),
(9, 'Arica', NULL),
(10, 'Ariel', NULL),
(11, 'Aro', NULL),
(12, 'Bolivar', NULL),
(13, 'Bonlé', NULL),
(14, 'Borges', NULL),
(15, 'Braedt', NULL),
(16, 'Capri', NULL),
(17, 'Carbonell', NULL),
(18, 'Celima', NULL),
(19, 'Cerdeña', NULL),
(20, 'Cheetos', NULL),
(21, 'Chema', NULL),
(22, 'Chipy', NULL),
(23, 'Cif', NULL),
(24, 'Clorox', NULL),
(25, 'Conejo', NULL),
(26, 'Costeño', NULL),
(27, 'Del Prado', NULL),
(28, 'Don Vittorio', NULL),
(29, 'Dos Caballos', NULL),
(30, 'Dove', NULL),
(31, 'Dulfina', NULL),
(32, 'El Cesro', NULL),
(33, 'El Olivar', NULL),
(34, 'Elite', NULL),
(35, 'Elvive', NULL),
(36, 'Fanny', NULL),
(37, 'Field', NULL),
(38, 'Flex', NULL),
(39, 'Florida', NULL),
(40, 'Frito Lay', NULL),
(41, 'Glade', NULL),
(42, 'Gloria', NULL),
(43, 'Gourmet', NULL),
(44, 'Halls', NULL),
(45, 'Haribo', NULL),
(46, 'Harpic', NULL),
(47, 'Heno de Pravia', NULL),
(48, 'Ideal', NULL),
(49, 'Incauca', NULL),
(50, 'Jelly Belly', NULL),
(51, 'Karinto', NULL),
(52, 'Kotex', NULL),
(53, 'La Salud', NULL),
(54, 'Laive', NULL),
(55, 'Los Cuates', NULL),
(56, 'Lysol', NULL),
(57, 'Magia Blanca', NULL),
(58, 'Mentos', NULL),
(59, 'Molitalia', NULL),
(60, 'Mr. Musculo', NULL),
(61, 'Nabisco', NULL),
(62, 'Nestle', NULL),
(63, 'Neutrex', NULL),
(64, 'Noa Gourmet', NULL),
(65, 'Nosotras', NULL),
(66, 'Opal', NULL),
(67, 'OttoKunz', NULL),
(68, 'Paisana', NULL),
(69, 'Palmolive', NULL),
(70, 'Pantene', NULL),
(71, 'Pepperidge Farm ', NULL),
(72, 'Pine-Sol', NULL),
(73, 'Pino', NULL),
(74, 'Pinolim', NULL),
(75, 'Poett', NULL),
(76, 'Primor', NULL),
(77, 'Pringles', NULL),
(78, 'Quaker', NULL),
(79, 'Razzeto', NULL),
(80, 'Rindex', NULL),
(81, 'Saman', NULL),
(82, 'San Fernando', NULL),
(83, 'San Jorge', NULL),
(84, 'Santa Catalina', NULL),
(85, 'Sapolio', NULL),
(86, 'Sayon', NULL),
(87, 'Scott', NULL),
(88, 'Sedal', NULL),
(89, 'Starbust', NULL),
(90, 'Starkist', NULL),
(91, 'Suave', NULL),
(92, 'Suiza', NULL),
(93, 'Sutter Professional', NULL),
(94, 'Tic Tac', NULL),
(95, 'Tor-Tees', NULL),
(96, 'Trident', NULL),
(97, 'Valdez', NULL),
(98, 'Valot Professional', NULL),
(99, 'Voortman', NULL),
(100, 'Windex', NULL),
(101, 'Winter''s', NULL),
(102, 'Wrigley''s', NULL),
(103, 'La Serranita', NULL),
(104, 'Tesoro del Campo', NULL),
(105, 'Coca-Cola', NULL),
(106, 'Fanta', NULL),
(107, 'Inka Kola', NULL),
(108, 'Pepsi', NULL),
(109, 'Cielo', NULL),
(110, 'San Luis', NULL),
(111, 'San Mateo', NULL),
(112, 'Varela Hnos', NULL),
(113, 'Appleton State', NULL),
(114, 'Botran Rum', NULL),
(115, 'Cartavio', NULL),
(116, 'Cinzano', NULL),
(117, 'Martini', NULL),
(118, 'Absolut', NULL),
(119, 'Danzka', NULL),
(120, 'Finlandia', NULL),
(121, 'Ballantines', NULL),
(122, 'Black Label', NULL),
(123, 'Chivas Regal', NULL),
(124, 'The Glenlivet', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mensajecontacto`
--

CREATE TABLE IF NOT EXISTS `mensajecontacto` (
  `codigoMensaje` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `correo` varchar(100) DEFAULT NULL,
  `mensaje` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`codigoMensaje`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modalidaddepago`
--

CREATE TABLE IF NOT EXISTS `modalidaddepago` (
  `codigoModalidadPago` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `descripcion` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`codigoModalidadPago`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oferta`
--

CREATE TABLE IF NOT EXISTS `oferta` (
  `codigoOferta` bigint(20) NOT NULL AUTO_INCREMENT,
  `codigoProducto` bigint(20) NOT NULL,
  `direccionImagen` varchar(300) DEFAULT NULL,
  `fechaFinOferta` datetime DEFAULT NULL,
  `fechaInicioOferta` datetime DEFAULT NULL,
  `precioOferta` decimal(5,2) DEFAULT NULL,
  PRIMARY KEY (`codigoOferta`),
  KEY `fk_producto_oferta` (`codigoProducto`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `privilegio`
--

CREATE TABLE IF NOT EXISTS `privilegio` (
  `codigoPrivilegio` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombreRol` varchar(100) DEFAULT NULL,
  `direccionRecurso` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`codigoPrivilegio`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE IF NOT EXISTS `producto` (
  `codigoProducto` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombreProducto` varchar(100) DEFAULT NULL,
  `codigoMarca` bigint(20) NOT NULL,
  `codigosubCategoria` bigint(20) NOT NULL,
  `precioUnitario` decimal(6,2) DEFAULT NULL,
  `precioCaja` decimal(6,2) DEFAULT NULL,
  `unidadesCaja` decimal(6,1) DEFAULT NULL,
  `stock` decimal(6,1) DEFAULT NULL,
  `unidadMedida` varchar(5) DEFAULT NULL,
  `tamanioUnidad` decimal(6,2) DEFAULT NULL,
  `direccionImagen` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`codigoProducto`),
  KEY `fk_marca_producto` (`codigoMarca`),
  KEY `fk_subCategoriaProducto_producto` (`codigosubCategoria`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=567 ;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`codigoProducto`, `nombreProducto`, `codigoMarca`, `codigosubCategoria`, `precioUnitario`, `precioCaja`, `unidadesCaja`, `stock`, `unidadMedida`, `tamanioUnidad`, `direccionImagen`) VALUES
(284, 'Extra Virgen', 14, 1, 34.59, 204.54, 6.0, 20.0, 'ml', 750.00, 'img/abarrotes/aceiteDeOliva/aceiteOliva_Borges750.jpg'),
(285, 'Extra Virgen', 14, 1, 11.59, 136.08, 12.0, 20.0, 'ml', 250.00, 'img/abarrotes/aceiteDeOliva/aceiteOliva_Borges250.jpg'),
(286, 'Puro', 14, 1, 18.59, 108.54, 6.0, 20.0, 'ml', 500.00, 'img/abarrotes/aceiteDeOliva/aceiteOliva_Borges500.jpg'),
(287, 'Extra Virgen Mesquita', 17, 1, 32.99, 194.94, 6.0, 20.0, 'ml', 500.00, 'img/abarrotes/aceiteDeOliva/aceiteOliva_Carbonell500.jpg'),
(288, 'Extra Virgen Mesquita', 17, 1, 46.90, 278.40, 6.0, 20.0, 'ml', 750.00, 'img/abarrotes/aceiteDeOliva/aceiteOliva_Carbonell750.jpg'),
(289, 'Extra Virgen', 17, 1, 56.60, 336.60, 6.0, 20.0, 'ml', 250.00, 'img/abarrotes/aceiteDeOliva/aceiteOliva_Carbonell250.jpg'),
(290, 'Extra Virgen', 17, 1, 19.99, 236.88, 12.0, 20.0, 'ml', 250.00, 'img/abarrotes/aceiteDeOliva/aceiteOliva_Carbonell250.jpg'),
(291, 'Puro', 17, 1, 49.50, 294.00, 6.0, 20.0, 'lt', 1.00, 'img/abarrotes/aceiteDeOliva/aceiteOliva_Carbonell1.jpg'),
(292, 'Orgánico', 27, 1, 26.99, 158.94, 6.0, 20.0, 'ml', 500.00, 'img/abarrotes/aceiteDeOliva/aceiteOliva_delPrado500.jpg'),
(293, 'Orgánico', 27, 1, 15.99, 188.88, 12.0, 20.0, 'ml', 250.00, 'img/abarrotes/aceiteDeOliva/aceiteOliva_delPrado250.jpg'),
(294, 'Con Ajo', 33, 1, 15.99, 188.88, 12.0, 20.0, 'ml', 250.00, 'img/abarrotes/aceiteDeOliva/aceiteOliva_ElOlivarA250.jpg'),
(295, 'Extra Virgen c/Orégano', 33, 1, 15.99, 188.88, 12.0, 20.0, 'ml', 250.00, 'img/abarrotes/aceiteDeOliva/aceiteOliva_ElOlivar250.jpg'),
(296, 'Extra Virgen sabor Intenso', 33, 1, 22.40, 256.20, 6.0, 20.0, 'lt', 1.00, 'img/abarrotes/aceiteDeOliva/aceiteOliva_ElOlivar1.jpg'),
(297, 'Extra Virgen sabor Intenso', 33, 1, 21.60, 154.80, 6.0, 20.0, 'lt', 1.00, 'img/abarrotes/aceiteDeOliva/aceiteOliva_ElOlivar1l.jpg'),
(298, 'Extra Virgen', 33, 1, 43.20, 256.20, 6.0, 20.0, 'ml', 500.00, 'img/abarrotes/aceiteDeOliva/aceiteOliva_ElOlivar500.jpg'),
(299, 'Extra Virgen', 33, 1, 11.60, 136.20, 12.0, 20.0, 'ml', 200.00, 'img/abarrotes/aceiteDeOliva/aceiteOliva_ElOlivarA200.jpg'),
(300, 'Botella', 16, 2, 7.10, 39.60, 6.0, 20.0, 'ml', 150.00, 'img/abarrotes/aceiteVegetal/aceite_Capri.jpg'),
(301, 'Clásico', 76, 2, 7.20, 40.20, 6.0, 20.0, 'ml', 150.00, 'img/abarrotes/aceiteVegetal/aceite_Primor.jpg'),
(302, 'Premium', 76, 2, 6.69, 37.14, 6.0, 20.0, 'ml', 150.00, 'img/abarrotes/aceiteVegetal/aceite_PrimorP.jpg'),
(303, 'Botella', 48, 2, 7.45, 41.70, 6.0, 20.0, 'ml', 150.00, 'img/abarrotes/aceiteVegetal/aceite_Ideal.jpg'),
(304, 'Arroz arborio', 26, 3, 5.90, 138.60, 24.0, 20.0, 'gr', 750.00, 'img/abarrotes/arroz/arroz_CostenioArb750.jpg'),
(305, 'Arroz Extra', 26, 3, 21.20, 124.20, 6.0, 20.0, 'kg', 5.00, 'img/abarrotes/arroz/arroz_Costenio5.jpg'),
(306, 'Arroz Extra', 26, 3, 2.99, 32.88, 12.0, 20.0, 'gr', 750.00, 'img/abarrotes/arroz/arroz_Costenio750.jpg'),
(307, 'Arroz Integral', 26, 3, 3.19, 35.28, 12.0, 20.0, 'gr', 750.00, 'img/abarrotes/arroz/arroz_CostenioInt750.jpg'),
(308, 'Arroz Superior', 26, 3, 13.99, 80.94, 6.0, 20.0, 'kg', 5.00, 'img/abarrotes/arroz/arroz_CostenioSup5.jpg'),
(309, 'Arroz Extra Ocasión Perfecta', 68, 3, 4.39, 49.68, 12.0, 20.0, 'kg', 1.00, 'img/abarrotes/arroz/arroz_Paisana1.jpg'),
(310, 'Arroz Extra Ocasión Perfecta', 68, 3, 21.60, 126.60, 6.0, 20.0, 'kg', 5.00, 'img/abarrotes/arroz/arroz_Paisana5.jpg'),
(311, 'Arroz Risotto', 68, 3, 7.20, 40.20, 6.0, 20.0, 'kg', 1.00, 'img/abarrotes/arroz/arroz_PaisanaRis1.jpg'),
(312, 'Arroz Don Ruggero, Carnoroli', 81, 3, 8.40, 97.80, 12.0, 20.0, 'kg', 1.00, 'img/abarrotes/arroz/arroz_SamanRug1.jpg'),
(313, 'Arroz Parboleid', 81, 3, 4.90, 55.80, 12.0, 20.0, 'kg', 1.00, 'img/abarrotes/arroz/arroz_SamanPar1.jpg'),
(314, 'Arroz Urumati', 81, 3, 7.10, 82.20, 12.0, 20.0, 'kg', 1.00, 'img/abarrotes/arroz/arroz_SamanUru.jpg'),
(315, 'Azúcar Blanca', 31, 4, 3.99, 44.88, 12.0, 20.0, 'kg', 1.00, 'img/abarrotes/azucar/azucar_Dulfina1.jpg'),
(316, 'Azúcar Rubia', 31, 4, 3.65, 40.80, 12.0, 20.0, 'kg', 1.00, 'img/abarrotes/azucar/azucar_DulfinaRub1.jpg'),
(317, 'Azúcar Rubia', 31, 4, 7.19, 40.14, 6.0, 20.0, 'kg', 2.00, 'img/abarrotes/azucar/azucar_DulfinaRub2.jpg'),
(318, 'Azúcar Blanca Light en Bolsa', 49, 4, 9.80, 114.60, 12.0, 20.0, 'gr', 850.00, 'img/abarrotes/azucar/azucar_IncaucaBol850.jpg'),
(319, 'Azúcar Blanca Light en Caja', 49, 4, 9.80, 114.60, 12.0, 20.0, 'gr', 850.00, 'img/abarrotes/azucar/azucar_IncaucaCaj850.jpg'),
(320, 'Azúcar Morena Light', 49, 4, 7.40, 174.60, 24.0, 20.0, 'gr', 454.00, 'img/abarrotes/azucar/azucar_IncaucaRub454.jpg'),
(321, 'Azúcar Morena Light', 49, 4, 9.80, 114.60, 12.0, 20.0, 'gr', 850.00, 'img/abarrotes/azucar/azucar_IncaucaRub850.jpg'),
(322, 'Azúcar Blanca Light', 97, 4, 10.60, 124.20, 12.0, 20.0, 'kg', 1.00, 'img/abarrotes/azucar/azucar_Valdez1.jpg'),
(323, 'Azúcar Blanca Light', 97, 4, 7.30, 172.20, 24.0, 20.0, 'gr', 500.00, 'img/abarrotes/azucar/azucar_Valdez500.jpg'),
(324, 'Azúcar Blanca Light Caja', 97, 4, 8.99, 104.88, 12.0, 20.0, 'gr', 300.00, 'img/abarrotes/azucar/azucar_Valdez300.jpg'),
(325, 'Fideo Cabello de Ángel', 28, 5, 1.25, 27.00, 24.0, 20.0, 'gr', 250.00, 'img/abarrotes/fideos/fideo_DonVittoCab.jpg'),
(326, 'Fideo Canuto Chico', 28, 5, 1.20, 25.80, 24.0, 20.0, 'gr', 250.00, 'img/abarrotes/fideos/fideo_DonVittoCan.jpg'),
(327, 'Fideo Canuto Rayado', 28, 5, 1.20, 25.80, 24.0, 20.0, 'gr', 250.00, 'img/abarrotes/fideos/fideo_DonVittoCanRa.jpg'),
(328, 'Fideo Tornillo', 28, 5, 1.20, 25.80, 24.0, 20.0, 'gr', 250.00, 'img/abarrotes/fideos/fideo_DonVittoTor.jpg'),
(329, 'Fideo Linguini Grosso #42', 28, 5, 2.25, 24.00, 12.0, 20.0, 'gr', 500.00, 'img/abarrotes/fideos/fideo_DonVitto42.jpg'),
(330, 'Spaghetti #34', 28, 5, 2.24, 23.88, 12.0, 20.0, 'gr', 500.00, 'img/abarrotes/fideos/fideo_DonVittoSpa.jpg'),
(331, 'Fideo Cabello de Ángel', 59, 5, 1.25, 27.00, 24.0, 20.0, 'gr', 250.00, 'img/abarrotes/fideos/fideo_MoliAn.jpg'),
(332, 'Fideo Canuto Chico', 59, 5, 0.85, 17.40, 24.0, 20.0, 'gr', 250.00, 'img/abarrotes/fideos/fideo_MoliCan.jpg'),
(333, 'Fideo Corbata Mediano', 59, 5, 0.85, 17.40, 24.0, 20.0, 'gr', 250.00, 'img/abarrotes/fideos/fideo_MoliCor.jpg'),
(334, 'Fideo Munición', 59, 5, 0.85, 17.40, 24.0, 20.0, 'gr', 250.00, 'img/abarrotes/fideos/fideo_MoliMuni.jpg'),
(335, 'Spaghetti #32', 59, 5, 2.20, 23.40, 12.0, 20.0, 'gr', 500.00, 'img/abarrotes/fideos/fideo_Moli32.jpg'),
(336, 'Tallarín #42', 59, 5, 2.20, 23.40, 12.0, 20.0, 'gr', 500.00, 'img/abarrotes/fideos/fideo_Moli42.jpg'),
(337, 'Galleta de Animalitos', 86, 21, 2.10, 39.00, 20.0, 20.0, 'gr', 500.00, 'img/galletasGolosinas/galletaDulce/Galleta_Animalitos.jpg'),
(338, 'Galleta Choco Chips', 61, 21, 1.00, 17.00, 20.0, 20.0, 'gr', 50.00, 'img/galletasGolosinas/galletaDulce/Galleta_ChipsAhoy.jpg'),
(339, 'Galleta Fudge', 99, 21, 8.20, 161.00, 20.0, 20.0, 'gr', 400.00, 'img/galletasGolosinas/galletaDulce/Galleta_Fudge.jpg'),
(340, 'Galleta Margarita', 86, 21, 2.10, 39.00, 20.0, 20.0, 'gr', 500.00, 'img/galletasGolosinas/galletaDulce/Galleta_Margarita.jpg'),
(341, 'Galleta Cracknel', 83, 22, 1.60, 29.00, 20.0, 20.0, 'gr', 185.00, 'img/galletasGolosinas/galletaIntegral/Galleta_CracknelIntegral.jpg'),
(342, 'Galleta de Agua', 4, 22, 13.50, 132.00, 10.0, 20.0, 'gr', 120.00, 'img/galletasGolosinas/galletaIntegral/Galleta_DeAgua.jpg'),
(343, 'Galleta de Salvado de Trigo', 32, 22, 2.15, 14.20, 8.0, 20.0, 'gr', 120.00, 'img/galletasGolosinas/galletaIntegral/Galleta_SalvadodeTrigo.jpg'),
(344, 'Galleta de Semola', 64, 22, 6.90, 135.00, 20.0, 20.0, 'gr', 50.00, 'img/galletasGolosinas/galletaIntegral/Galleta_Semola.jpg'),
(345, 'Galletas Gold Fish', 71, 23, 13.80, 273.00, 20.0, 20.0, 'gr', 187.00, 'img/galletasGolosinas/galletaSalada/Galleta_Gold_Fish.jpg'),
(346, 'Galleta Ritz', 61, 23, 1.09, 18.80, 20.0, 20.0, 'gr', 67.00, 'img/galletasGolosinas/galletaSalada/Galleta_Ritz.jpg'),
(347, 'Galleta Soda Field', 37, 23, 1.99, 36.80, 20.0, 20.0, 'gr', 164.00, 'img/galletasGolosinas/galletaSalada/Galleta_Soda_Field.jpg'),
(348, 'Galleta San Jorge', 83, 23, 1.20, 21.00, 20.0, 20.0, 'gr', 85.00, 'img/galletasGolosinas/galletaSalada/Galleta_Soda_SanJorge.jpg'),
(349, 'Galleta Morochas', 62, 24, 3.99, 20.94, 6.0, 20.0, 'gr', 360.00, 'img/galletasGolosinas/galletaSixpack/Galleta_Morochas.jpg'),
(350, 'Galleta Oreo', 61, 24, 3.99, 20.94, 6.0, 20.0, 'gr', 360.00, 'img/galletasGolosinas/galletaSixpack/Galleta_Oreo.jpg'),
(351, 'Galleta Picaras de Fresa', 101, 24, 3.30, 16.80, 6.0, 20.0, 'gr', 360.00, 'img/galletasGolosinas/galletaSixpack/Galleta_PicarasFresa.jpg'),
(352, 'Galleta Vanilia Field', 37, 24, 3.10, 15.60, 6.0, 20.0, 'gr', 360.00, 'img/galletasGolosinas/galletaSixpack/Galleta_VaniliaField.jpg'),
(353, 'Caramelos Fruit Bowl', 50, 25, 13.50, 267.00, 20.0, 20.0, 'gr', 99.00, 'img/galletasGolosinas/caramelos/Caramelos_FruitBowl.jpg'),
(354, 'Caramelos Halls', 44, 25, 1.65, 79.50, 50.0, 20.0, 'gr', 17.00, 'img/galletasGolosinas/caramelos/Caramelos_Halls.jpg'),
(355, 'Caramelos Mentos', 58, 25, 1.10, 52.00, 50.0, 20.0, 'unid', 11.00, 'img/galletasGolosinas/caramelos/Caramelos_Mentos.jpg'),
(356, 'Caramelos TicTac', 94, 25, 1.20, 57.00, 50.0, 20.0, 'gr', 16.00, 'img/galletasGolosinas/caramelos/Caramelos_TicTac.jpg'),
(357, 'Chicle Chiclets', 3, 26, 1.25, 59.50, 50.0, 20.0, 'unid', 12.00, 'img/galletasGolosinas/chicle/Chicle_Chiclets.jpg'),
(358, 'Chicle Eclipse', 102, 26, 6.50, 322.00, 50.0, 20.0, 'unid', 12.00, 'img/galletasGolosinas/chicle/Chicle_Eclipse.jpg'),
(359, 'Chicle Sensations', 96, 26, 2.25, 109.50, 50.0, 20.0, 'gr', 16.80, 'img/galletasGolosinas/chicle/Chicle_Sensations.jpg'),
(360, 'Chicle Splash', 96, 26, 2.60, 127.00, 50.0, 20.0, 'unid', 8.00, 'img/galletasGolosinas/chicle/Chicle_Splash.jpg'),
(361, 'Frunas Fruna', 8, 27, 9.90, 195.00, 20.0, 20.0, 'gr', 500.00, 'img/galletasGolosinas/frunas/Frunas_Fruna.jpg'),
(362, 'Frunas Fruna Halloween', 8, 27, 6.90, 135.00, 20.0, 20.0, 'gr', 490.00, 'img/galletasGolosinas/frunas/Frunas_Halloween.jpg'),
(363, 'Frunas Frutonga', 101, 27, 4.90, 95.00, 20.0, 20.0, 'unid', 12.00, 'img/galletasGolosinas/frunas/Frunas_Frutonga.jpg'),
(364, 'Frunas Starbush', 89, 27, 4.30, 83.00, 20.0, 20.0, 'gr', 58.70, 'img/galletasGolosinas/frunas/Frunas_Starbush.jpg'),
(365, 'Gomitas Dinosaurios', 101, 28, 18.00, 177.00, 10.0, 20.0, 'kg', 1.00, 'img/galletasGolosinas/gomitas/Gomitas_Dinosaurios.jpg'),
(366, 'Gomitas Gusano', 101, 28, 18.50, 182.00, 10.0, 20.0, 'kg', 1.00, 'img/galletasGolosinas/gomitas/Gomitas_Gusano.jpg'),
(367, 'Gomitas Haribo', 45, 28, 4.59, 226.50, 50.0, 20.0, 'gr', 90.00, 'img/galletasGolosinas/gomitas/Gomitas_Haribo.jpg'),
(368, 'Gomitas Osito de Oro', 45, 28, 4.59, 226.50, 50.0, 20.0, 'gr', 100.00, 'img/galletasGolosinas/gomitas/Gomitas_OsitodeOro.jpg'),
(369, 'Chorizo Braedt', 15, 11, 40.70, 404.00, 10.0, 20.0, 'kg', 1.00, 'img/embutidos/chorizo/chorizo_Braedt.jpg'),
(370, 'Chorizo Cerdeña', 19, 11, 9.50, 472.00, 50.0, 20.0, 'gr', 500.00, 'img/embutidos/chorizo/chorizo_cerdenia.jpg'),
(371, 'Chorizo San Fernando', 82, 11, 10.01, 497.50, 50.0, 20.0, 'gr', 500.00, 'img/embutidos/chorizo/chorizo_sanFernando.jpg'),
(372, 'Hot-Dog Laive', 54, 12, 4.50, 222.00, 50.0, 20.0, 'gr', 200.00, 'img/embutidos/hot-Dog/hot-dog_Laive.jpg'),
(373, 'Hot-Dog San Fernando', 82, 12, 4.20, 207.00, 50.0, 20.0, 'gr', 200.00, 'img/embutidos/hot-Dog/hot-dog_SanFernando.jpg'),
(374, 'Hot-Dog Suiza', 92, 12, 3.59, 176.50, 50.0, 20.0, 'gr', 165.00, 'img/embutidos/hot-Dog/hot-dog_Suiza.jpg'),
(375, 'Jamón del Pais Gourmet', 43, 13, 60.00, 597.00, 10.0, 20.0, 'kg', 1.00, 'img/embutidos/jamonDelPais/jamonDelPais_Gourmet.jpg'),
(376, 'Jamón del Pais Razzeto', 79, 13, 53.50, 532.00, 10.0, 20.0, 'kg', 1.00, 'img/embutidos/jamonDelPais/jamonDelPais_Razzeto.jpg'),
(377, 'Jamón del Pais Suiza', 92, 13, 55.00, 547.00, 10.0, 20.0, 'kg', 1.00, 'img/embutidos/jamonDelPais/jamonDelPais_Suiza.jpg'),
(378, 'Jamón Ingles Braedt', 15, 14, 58.00, 577.00, 10.0, 20.0, 'kg', 1.00, 'img/embutidos/jamonIngles/jamon-ingles_braedt.jpg'),
(379, 'Jamón Ingles OttoKunz', 67, 14, 62.00, 617.00, 10.0, 20.0, 'kg', 1.00, 'img/embutidos/jamonIngles/jamon-ingles_OttoKunz.jpg'),
(380, 'Jamón Ingles Suiza', 92, 14, 60.50, 602.00, 10.0, 20.0, 'kg', 1.00, 'img/embutidos/jamonIngles/jamon-ingles_Suiza.jpg'),
(381, 'Jamonada Braedt', 15, 15, 17.90, 176.00, 10.0, 20.0, 'kg', 1.00, 'img/embutidos/jamonadas/jamonada-braedt.jpg'),
(382, 'Jamonada Razzeto', 79, 15, 21.00, 207.00, 10.0, 20.0, 'kg', 1.00, 'img/embutidos/jamonadas/jamonada-razzeto.jpg'),
(383, 'Jamonada Suiza', 92, 15, 17.90, 176.00, 10.0, 20.0, 'kg', 1.00, 'img/embutidos/jamonadas/jamonada-suiza.jpg'),
(384, 'Queso Edam Bonlé', 13, 16, 4.49, 221.50, 50.0, 20.0, 'gr', 100.00, 'img/embutidos/quesos/queso-edam_bonle.jpg'),
(385, 'Queso Edam Laive', 54, 16, 9.95, 494.50, 50.0, 20.0, 'gr', 249.00, 'img/embutidos/quesos/queso-edam_laive.jpg'),
(386, 'Queso Fundido Bonlé', 13, 16, 5.30, 262.00, 50.0, 20.0, 'gr', 136.00, 'img/embutidos/quesos/queso-fundido_bonle.jpg'),
(387, 'Queso Fundido Laive', 54, 16, 10.90, 542.00, 50.0, 20.0, 'unid', 12.00, 'img/embutidos/quesos/queso-fundido_laive.jpg'),
(388, 'Atun Filete Fanny', 36, 17, 6.99, 346.50, 50.0, 20.0, 'gr', 125.00, 'img/enlatados/atunFilete/atun-filete_Fanny.jpg'),
(389, 'Atun Filete Florida', 39, 17, 7.30, 362.00, 50.0, 20.0, 'gr', 170.00, 'img/enlatados/atunFilete/atun-filete_Florida.jpg'),
(390, 'Atun Filete Starkist', 90, 17, 6.99, 346.50, 50.0, 20.0, 'gr', 170.00, 'img/enlatados/atunFilete/atun-filete_StarKist.jpg'),
(391, 'Atun Grated A1', 1, 18, 3.50, 172.00, 50.0, 20.0, 'gr', 170.00, 'img/enlatados/atunGrated/atun-grated_A1.jpg'),
(392, 'Atun Grated Florida', 39, 18, 3.60, 177.00, 50.0, 20.0, 'gr', 170.00, 'img/enlatados/atunGrated/atun-grated_florida.jpg'),
(393, 'Atun Trozos A1', 1, 19, 4.60, 227.00, 50.0, 20.0, 'gr', 170.00, 'img/enlatados/atunTrozos/atun-trozos_A1.jpg'),
(394, 'Atun Trozos Florida', 39, 19, 11.90, 592.00, 50.0, 20.0, 'gr', 170.00, 'img/enlatados/atunTrozos/atun-trozos_Florida.jpg'),
(395, 'Atun Trozos Gloria', 42, 19, 4.00, 197.00, 50.0, 20.0, 'gr', 170.00, 'img/enlatados/atunTrozos/atun-trozos_Gloria.jpg'),
(396, 'Conserva de Frutas Arica', 9, 20, 8.50, 82.00, 10.0, 20.0, 'gr', 820.00, 'img/enlatados/conservaDeFrutas/conservaFrutas_Arica.jpg'),
(397, 'Conserva de Frutas Dos Caballos', 29, 20, 9.20, 89.00, 10.0, 20.0, 'gr', 820.00, 'img/enlatados/conservaDeFrutas/conservaFrutas_DosCaballos.jpg'),
(398, 'Conserva de Frutas Fanny', 36, 20, 8.90, 86.00, 10.0, 20.0, 'gr', 820.00, 'img/enlatados/conservaDeFrutas/conservaFrutas_Fanny.jpg'),
(399, 'Dove Cremoso', 30, 7, 3.10, 71.40, 24.0, 20.0, 'gr', 90.00, 'img/cuidadoPersonal/jabones/dove_cremoso.jpg'),
(400, 'Heno de Pravia Hidratante', 47, 7, 5.40, 126.60, 24.0, 20.0, 'gr', 150.00, 'img/cuidadoPersonal/jabones/henodepravia_hidratante.jpg'),
(401, 'Heno de Pravia Antibacterial', 47, 7, 3.60, 83.40, 24.0, 20.0, 'gr', 85.00, 'img/cuidadoPersonal/jabones/henodepravia_antibacterial.jpg'),
(402, 'Heno de Pravia Original', 47, 7, 3.60, 83.40, 24.0, 20.0, 'gr', 85.00, 'img/cuidadoPersonal/jabones/henodepravia_original.jpg'),
(403, 'Palmolive Tono Perfecto', 69, 7, 2.75, 63.00, 24.0, 20.0, 'gr', 130.00, 'img/cuidadoPersonal/jabones/palmolive_tonoperfecto.jpg'),
(404, 'Palmolive Suavidad Exfoliante', 69, 7, 2.75, 63.00, 24.0, 20.0, 'gr', 130.00, 'img/cuidadoPersonal/jabones/palmolive_suavidadexfoliante.jpg'),
(405, 'Palmolive Exfolicion Diaria', 69, 7, 2.75, 63.00, 24.0, 20.0, 'gr', 130.00, 'img/cuidadoPersonal/jabones/palmolive_exfoliaciondiaria.jpg'),
(406, 'Elvive Full restore 5', 35, 8, 18.40, 217.80, 12.0, 20.0, 'ml', 400.00, 'img/cuidadoPersonal/shampoo/Elvive-full-restore-5-shampoo.jpg'),
(407, 'Pantene Restauracion', 70, 8, 12.90, 151.80, 12.0, 20.0, 'ml', 400.00, 'img/cuidadoPersonal/shampoo/pantene_restauracion_shampoo.jpg'),
(408, 'Sedal Colorvital', 88, 8, 8.99, 104.88, 12.0, 20.0, 'ml', 400.00, 'img/cuidadoPersonal/shampoo/sedal_colorvital_shampoo.jpg'),
(409, 'Sedal Crematratamiento colorvital', 88, 43, 14.20, 139.00, 10.0, 20.0, 'gr', 400.00, 'img/cuidadoPersonal/cremaTratamiento/sedal_crematratamiento_colorvital.jpg'),
(410, 'Elvive Reparacion Total 5 Reparador', 35, 44, 18.40, 217.80, 12.0, 20.0, 'ml', 400.00, 'img/cuidadoPersonal/acondicionador/Elvive-Reparacion-Total-5-Acondicionador-Reparador.jpg'),
(411, 'Pantene Restauracion', 70, 44, 12.90, 151.80, 12.0, 20.0, 'ml', 400.00, 'img/cuidadoPersonal/acondicionador/pantene_restauracion_acondicionador.jpg'),
(412, 'Sedal Colorvital', 88, 44, 8.99, 104.88, 12.0, 20.0, 'ml', 400.00, 'img/cuidadoPersonal/acondicionador/sedal_colorvital_acondicionador.jpg'),
(413, 'Always Nocturno', 7, 9, 5.50, 52.00, 10.0, 20.0, 'unid', 8.00, 'img/cuidadoPersonal/toallasHigienicas/always_nocturno.jpg'),
(414, 'Always Normal', 7, 9, 3.90, 36.00, 10.0, 20.0, 'unid', 10.00, 'img/cuidadoPersonal/toallasHigienicas/always_normal.jpg'),
(415, 'Always Ultrafina', 7, 9, 5.50, 52.00, 10.0, 20.0, 'unid', 10.00, 'img/cuidadoPersonal/toallasHigienicas/always_ultrafina.png'),
(416, 'Kotex Nocturna', 52, 9, 6.70, 64.00, 10.0, 20.0, 'unid', 8.00, 'img/cuidadoPersonal/toallasHigienicas/kotex_nocturna.jpg'),
(417, 'Kotex Normal', 52, 9, 3.99, 36.90, 10.0, 20.0, 'unid', 14.00, 'img/cuidadoPersonal/toallasHigienicas/kotex_normal.jpg'),
(418, 'Kotex Ultrafina', 52, 9, 3.99, 36.90, 10.0, 20.0, 'unid', 8.00, 'img/cuidadoPersonal/toallasHigienicas/kotex_ultrafina.jpg'),
(419, 'Nosotras Buenas Noches', 65, 9, 6.99, 66.90, 10.0, 20.0, 'unid', 8.00, 'img/cuidadoPersonal/toallasHigienicas/nosotras_buenasnoches.jpg'),
(420, 'Nosotras Invisiblerapigel', 65, 9, 5.35, 50.50, 10.0, 20.0, 'unid', 10.00, 'img/cuidadoPersonal/toallasHigienicas/nosotras_invisiblerapigel.jpg'),
(421, 'Nosotras Normal_rapigel', 65, 9, 4.45, 41.50, 10.0, 20.0, 'unid', 20.00, 'img/cuidadoPersonal/toallasHigienicas/nosotras_normal_rapigel.jpg'),
(422, 'Santa Catalina Quinua y avena', 84, 10, 4.70, 53.40, 12.0, 20.0, 'gr', 380.00, 'img/desayuno/avena/avena_santacatalina_quinua.jpg'),
(423, 'Santa Catalina Avena', 84, 10, 3.20, 35.40, 12.0, 20.0, 'gr', 380.00, 'img/desayuno/avena/avena-santa-catalina-bolsa-380-gr.jpg'),
(424, 'Santa Catalina Soya y Avena', 84, 10, 4.30, 48.60, 12.0, 20.0, 'gr', 380.00, 'img/desayuno/avena/soya_avena_santacatalina.jpg'),
(425, 'Quaker Tradicional', 78, 10, 4.70, 128.60, 28.0, 20.0, 'gr', 400.00, 'img/desayuno/avena/quaker_tradicional.jpg'),
(426, 'Gloria Bebible', 42, 45, 6.00, 51.00, 9.0, 20.0, 'lt', 1.00, 'img/desayuno/yogurt/gloria_fresa.jpg'),
(427, 'Gloria Actibio', 42, 45, 6.60, 56.40, 9.0, 20.0, 'lt', 1.00, 'img/desayuno/yogurt/yogurt_gloria_actibio.jpg'),
(428, 'Gloria Light', 42, 45, 6.05, 51.45, 9.0, 20.0, 'lt', 1.00, 'img/desayuno/yogurt/yogurt_gloria_light.jpg'),
(429, 'Gloria Vitacol', 42, 45, 6.99, 59.91, 9.0, 20.0, 'lt', 1.00, 'img/desayuno/yogurt/yogurt_gloria_vitacol.jpg'),
(430, 'Aromatizante Air Wick Citrico', 5, 33, 8.00, 189.00, 24.0, 20.0, 'ml', 410.00, 'img/limpieza/aromatizantes/aromatizante-AirWick.jpg'),
(431, 'Aromatizante Glade Floral', 41, 33, 8.00, 189.00, 24.0, 20.0, 'ml', 410.00, 'img/limpieza/aromatizantes/aromatizante-Glade.jpg'),
(432, 'Aromatizante Glade Brisas', 41, 33, 7.00, 165.00, 24.0, 20.0, 'ml', 400.00, 'img/limpieza/aromatizantes/aromatizante-GladeBrisas.jpg'),
(433, 'Aromatizante Glade Frescura Matinal', 41, 33, 7.00, 249.00, 36.0, 20.0, 'ml', 400.00, 'img/limpieza/aromatizantes/aromatizante-GladeFrescuraMatinal.jpg'),
(434, 'Aromatizante Glade Manzanilla', 41, 33, 7.00, 249.00, 36.0, 20.0, 'ml', 360.00, 'img/limpieza/aromatizantes/aromatizante-GladeManzanilla.jpg'),
(435, 'Aromatizante Poett', 75, 33, 24.00, 93.00, 4.0, 20.0, 'lt', 4.00, 'img/limpieza/aromatizantes/aromatizante-poett.jpg'),
(436, 'Aromatizante Sapolio Floral', 85, 33, 9.00, 213.00, 24.0, 20.0, 'ml', 410.00, 'img/limpieza/aromatizantes/aromatizante-Sapolio.jpg'),
(437, 'Ace accion instantanea', 2, 34, 28.00, 53.00, 2.0, 20.0, 'kg', 5.00, 'img/limpieza/detergentes/detergente-Ace.jpg'),
(438, 'AK-1 manchas dificiles', 6, 34, 1.00, 17.00, 20.0, 20.0, 'gr', 270.00, 'img/limpieza/detergentes/detergente-Ak1.jpg'),
(439, 'Ariel anillos doble poder', 10, 34, 1.50, 30.00, 22.0, 20.0, 'gr', 226.00, 'img/limpieza/detergentes/detergente-Ariel.jpg'),
(440, 'Detergente bolivar', 12, 34, 1.00, 19.00, 22.0, 20.0, 'gr', 225.00, 'img/limpieza/detergentes/detergente-Bolivar.jpg'),
(441, 'Opal bio cristales', 66, 34, 1.50, 30.00, 22.0, 20.0, 'gr', 360.00, 'img/limpieza/detergentes/detergente-Opal.jpg'),
(442, 'Rindex espuma activa', 80, 34, 14.00, 25.00, 2.0, 20.0, 'kg', 2.70, 'img/limpieza/detergentes/detergente-Rindex.jpg'),
(443, 'Detergente Sapolio', 85, 34, 1.50, 27.00, 20.0, 20.0, 'gr', 350.00, 'img/limpieza/detergentes/detergente-Sapolio.jpg'),
(444, 'Lejia Ace', 2, 35, 3.00, 15.00, 6.0, 20.0, 'lt', 2.00, 'img/limpieza/lejias/lejia-Ace.jpg'),
(445, 'Lejia Clorox Regular', 24, 35, 3.50, 18.00, 6.0, 20.0, 'lt', 2.00, 'img/limpieza/lejias/lejia-Clorox.jpg'),
(446, 'Lejia Conejo', 25, 35, 1.50, 15.00, 12.0, 20.0, 'lt', 1.00, 'img/limpieza/lejias/lejia-Conejo.jpg'),
(447, 'Lejia La Salud', 53, 35, 3.00, 21.00, 8.0, 20.0, 'lt', 2.00, 'img/limpieza/lejias/lejia-LaSalud.jpg'),
(448, 'Lejia Magia Blanca', 57, 35, 2.80, 19.40, 8.0, 20.0, 'lt', 2.00, 'img/limpieza/lejias/lejia-MagiaBlanca.jpg'),
(449, 'Neutrex Futura', 63, 35, 1.20, 9.00, 10.0, 20.0, 'lt', 1.50, 'img/limpieza/lejias/lejia-Neutrex.jpg'),
(450, 'Lejia Sapolio', 85, 35, 3.80, 27.40, 8.0, 20.0, 'lt', 2.00, 'img/limpieza/lejias/lejia-Sapolio.jpg'),
(451, 'Limpiador universal Celima', 18, 36, 18.00, 213.00, 12.0, 20.0, 'ml', 700.00, 'img/limpieza/limpiadorPorcelanato/limpiador-Celima.jpg'),
(452, 'Chema Clean Limpiador multiuso', 21, 36, 24.50, 193.00, 8.0, 20.0, 'lt', 1.00, 'img/limpieza/limpiadorPorcelanato/limpiador-Chema.jpg'),
(453, 'Protector Porcelanato', 38, 36, 16.00, 189.00, 12.0, 20.0, 'ml', 500.00, 'img/limpieza/limpiadorPorcelanato/limpiador-Protector.jpg'),
(454, 'Limpiador reflesh', 93, 36, 19.80, 234.60, 12.0, 20.0, 'ml', 700.00, 'img/limpieza/limpiadorPorcelanato/limpiador-Sutter.jpg'),
(455, 'Valot Limpiador porcelanato marmol', 98, 36, 38.80, 74.60, 2.0, 20.0, 'lt', 5.00, 'img/limpieza/limpiadorPorcelanato/limpiador-Valot.jpg'),
(456, 'Aro Limpiavidrios', 11, 37, 16.00, 61.00, 4.0, 20.0, 'lt', 2.00, 'img/limpieza/limpiavidrios/limpiaVidrios-Aro.jpg'),
(457, 'Cif Vidrios y Multiuso', 23, 37, 7.00, 81.00, 12.0, 20.0, 'ml', 500.00, 'img/limpieza/limpiavidrios/limpiaVidrios-Cif.jpg'),
(458, 'Mr Musculo Limpiavidrios', 60, 37, 7.00, 81.00, 12.0, 20.0, 'ml', 500.00, 'img/limpieza/limpiavidrios/limpiaVidrios-MrMusculo.jpg'),
(459, 'Sapolio Limpiavidrios', 85, 37, 8.70, 101.40, 12.0, 20.0, 'ml', 550.00, 'img/limpieza/limpiavidrios/limpiaVidrios-Sapolio.jpg'),
(460, 'Limpiavidrios Windex Original', 100, 37, 8.00, 93.00, 12.0, 20.0, 'ml', 570.00, 'img/limpieza/limpiavidrios/limpiaVidrios-Windex.jpg'),
(461, 'Papel Elite Premium', 34, 38, 24.00, 93.00, 4.0, 20.0, 'unid', 24.00, 'img/limpieza/papelHigienico/papel-elite.jpg'),
(462, 'Papel Suave Doble Hoja', 91, 38, 19.60, 75.40, 4.0, 20.0, 'unid', 16.00, 'img/limpieza/papelHigienico/papel-suave.jpg'),
(463, 'Papel Toalla Elite Ultra', 34, 46, 9.60, 35.40, 4.0, 20.0, 'unid', 3.00, 'img/limpieza/papelToalla/papelToalla-Elite.jpg'),
(464, 'Papel cocina multicortes Scott', 87, 46, 6.80, 24.20, 4.0, 20.0, 'unid', 2.00, 'img/limpieza/papelToalla/papelToalla-Scott.jpg'),
(465, 'Scott Gigante Triple Hoja', 87, 38, 34.00, 133.00, 4.0, 20.0, 'unid', 18.00, 'img/limpieza/papelHigienico/papel-Scott.jpg'),
(466, 'Harpic Limpiador desinfectante', 46, 39, 5.20, 90.60, 18.0, 20.0, 'ml', 500.00, 'img/limpieza/pino/pino-Harpic.jpg'),
(467, 'Lysol Disinfectant', 56, 39, 9.60, 35.40, 4.0, 20.0, 'ml', 1785.00, 'img/limpieza/pino/pino-Lisol.jpg'),
(468, 'Desinfectante Pino', 73, 39, 36.80, 144.20, 4.0, 20.0, 'lt', 5.00, 'img/limpieza/pino/pino-Losaro.jpg'),
(469, 'Pinesol Desinfectante', 72, 39, 3.40, 58.20, 18.0, 20.0, 'ml', 250.00, 'img/limpieza/pino/pino-Pinesol.jpg'),
(470, 'Pinolim multiuso desinfectante', 74, 39, 32.20, 125.80, 4.0, 20.0, 'lt', 4.00, 'img/limpieza/pino/pino-Pinolim.jpg'),
(471, 'Sapolio Pino desinfectante', 85, 39, 24.60, 144.60, 6.0, 20.0, 'lt', 3.00, 'img/limpieza/pino/pino-sapolio.jpg'),
(472, 'Los Cuates Natural', 55, 40, 0.50, 14.40, 36.0, 20.0, 'gr', 43.00, 'img/snacksPiqueos/maizFrito/cuatesNatural.gif'),
(473, 'Los Cuates Picante', 55, 40, 0.50, 14.40, 36.0, 20.0, 'gr', 43.00, 'img/snacksPiqueos/maizFrito/cuatesPicante.gif'),
(474, 'Tot-Tees Picante', 95, 40, 0.50, 14.40, 36.0, 20.0, 'gr', 45.00, 'img/snacksPiqueos/maizFrito/tor-teesPicante.jpg'),
(475, 'Tot-Tees Natural', 95, 40, 0.50, 14.40, 36.0, 20.0, 'gr', 45.00, 'img/snacksPiqueos/maizFrito/tor-teesNatural.jpg'),
(476, 'Cheese tris Tocineta', 40, 41, 0.50, 14.40, 36.0, 20.0, 'gr', 36.00, 'img/snacksPiqueos/mixQueso/cheeseTris.jpg'),
(477, 'Cheetos Crunchy', 20, 41, 0.50, 14.40, 36.0, 20.0, 'gr', 55.00, 'img/snacksPiqueos/mixQueso/cheetos.jpg'),
(478, 'Cheetos Horneados', 20, 41, 0.50, 14.40, 36.0, 20.0, 'gr', 85.00, 'img/snacksPiqueos/mixQueso/cheetosHorneados.jpg'),
(479, 'Chizitos', 22, 41, 0.50, 14.40, 36.0, 20.0, 'gr', 28.00, 'img/snacksPiqueos/mixQueso/chizitoClasico.jpg'),
(480, 'Chizitos Fiesta', 22, 41, 3.20, 15.36, 6.0, 20.0, 'gr', 270.00, 'img/snacksPiqueos/mixQueso/chizitoFiesta.jpg'),
(481, 'Doritos Nacho Cheesier', 40, 41, 0.50, 12.80, 32.0, 20.0, 'gr', 45.00, 'img/snacksPiqueos/mixQueso/doritosNachoChessier.jpg'),
(482, 'Doritos Tangy Cheese', 40, 41, 0.50, 12.80, 32.0, 20.0, 'gr', 45.00, 'img/snacksPiqueos/mixQueso/doritosTangyCheese.jpg'),
(483, 'Combo Lays Piqueos', 40, 42, 0.90, 23.04, 32.0, 20.0, 'unid', 2.00, 'img/snacksPiqueos/papas/comboPiqueoSnack.png'),
(484, 'Free Papas', 51, 42, 0.50, 12.80, 32.0, 20.0, 'gr', 30.00, 'img/snacksPiqueos/papas/freePapas.jpg'),
(485, 'Lays Andinas', 40, 42, 1.00, 19.20, 24.0, 20.0, 'gr', 30.00, 'img/snacksPiqueos/papas/laysAndinas.jpg'),
(486, 'Lays Clasicas', 40, 42, 3.50, 67.20, 24.0, 20.0, 'gr', 150.00, 'img/snacksPiqueos/papas/laysClasica.jpg'),
(487, 'Lays Corte Americano', 40, 42, 2.00, 19.20, 12.0, 20.0, 'gr', 250.00, 'img/snacksPiqueos/papas/laysCorteAmericano.jpg'),
(488, 'Lays Wasabi', 40, 42, 0.50, 12.80, 32.0, 20.0, 'gr', 45.00, 'img/snacksPiqueos/papas/laysWasabi.jpg'),
(489, 'Combo Pringles', 77, 42, 5.00, 48.00, 12.0, 20.0, 'unid', 3.00, 'img/snacksPiqueos/papas/pringles.jpg'),
(490, 'Aromatizante Air Wick Citrico', 5, 33, 8.00, 189.00, 24.0, 20.0, 'ml', 410.00, 'img/limpieza/aromatizantes/aromatizante-AirWick.jpg'),
(491, 'Arverja Verde', 26, 6, 4.10, 95.40, 24.0, 20.0, 'gr', 500.00, 'img/abarrotes/menestras/menestra_CostenioArve.jpg'),
(492, 'Frijol Caballero', 26, 6, 5.60, 131.40, 24.0, 20.0, 'gr', 500.00, 'img/abarrotes/menestras/menestra_CostenioCaba.jpg'),
(493, 'Frijol Canario', 26, 6, 6.30, 148.20, 24.0, 20.0, 'gr', 500.00, 'img/abarrotes/menestras/menestra_CostenioCana.jpg'),
(494, 'Frijol Castilla', 26, 6, 3.25, 75.00, 24.0, 20.0, 'gr', 500.00, 'img/abarrotes/menestras/menestra_CostenioCas.jpg'),
(495, 'Frijol Panamito', 26, 6, 3.49, 80.76, 24.0, 20.0, 'gr', 500.00, 'img/abarrotes/menestras/menestra_CostenioPana.jpg'),
(496, 'Garbanzos', 26, 6, 5.95, 139.80, 24.0, 20.0, 'gr', 500.00, 'img/abarrotes/menestras/menestra_CostenioGar.jpg'),
(497, 'Lenteja', 26, 6, 3.19, 73.56, 24.0, 20.0, 'gr', 500.00, 'img/abarrotes/menestras/menestra_CostenioLenteja.jpg'),
(498, 'Arverja Verde', 103, 6, 4.60, 107.40, 24.0, 20.0, 'gr', 500.00, 'img/abarrotes/menestras/menestra_SerranitaArve.jpg'),
(499, 'Frijol Canario', 103, 6, 5.95, 139.80, 24.0, 20.0, 'gr', 500.00, 'img/abarrotes/menestras/menestra_SerranitaCana.jpg'),
(500, 'Frijol Panamito', 103, 6, 4.00, 93.00, 24.0, 20.0, 'gr', 500.00, 'img/abarrotes/menestras/menestra_SerranitaPana.jpg'),
(501, 'Garbanzos', 103, 6, 5.99, 140.76, 24.0, 20.0, 'gr', 500.00, 'img/abarrotes/menestras/menestra_SerranitaGar.jpg'),
(502, 'Lenteja', 103, 6, 3.50, 81.00, 24.0, 20.0, 'gr', 500.00, 'img/abarrotes/menestras/menestra_SerranitaLenteja.jpg'),
(503, 'Maíz Pop Corn', 103, 6, 3.90, 90.60, 24.0, 20.0, 'gr', 500.00, 'img/abarrotes/menestras/menestra_SerranitaPop.jpg'),
(504, 'Pallares', 103, 6, 5.25, 123.00, 24.0, 20.0, 'gr', 500.00, 'img/abarrotes/menestras/menestra_SerranitaPalla.jpg'),
(505, 'Arverja Verde', 104, 6, 3.20, 73.80, 24.0, 20.0, 'gr', 500.00, 'img/abarrotes/menestras/menestra_CampArve.jpg'),
(506, 'Frijol Canario', 104, 6, 6.25, 147.00, 24.0, 20.0, 'gr', 500.00, 'img/abarrotes/menestras/menestra_CampCana.jpg'),
(507, 'Frijol Castilla', 104, 6, 3.00, 69.00, 24.0, 20.0, 'gr', 500.00, 'img/abarrotes/menestras/menestra_CampCas.jpg'),
(508, 'Frijol Panamito', 104, 6, 3.25, 75.00, 24.0, 20.0, 'gr', 500.00, 'img/abarrotes/menestras/menestra_CampPana.jpg'),
(509, 'Garbanzos', 104, 6, 5.30, 124.20, 24.0, 20.0, 'gr', 500.00, 'img/abarrotes/menestras/menestra_CampGar.jpg'),
(510, 'Lenteja', 104, 6, 3.10, 71.40, 24.0, 20.0, 'gr', 500.00, 'img/abarrotes/menestras/menestra_CampLenteja.jpg'),
(511, 'Lenteja Bebé', 104, 6, 3.50, 81.00, 24.0, 20.0, 'gr', 500.00, 'img/abarrotes/menestras/menestra_CampBb.jpg'),
(512, 'Trigo Mote', 104, 6, 2.45, 55.80, 24.0, 20.0, 'gr', 500.00, 'img/abarrotes/menestras/menestra_CampTrigo.jpg'),
(513, 'Botella no retornable', 105, 48, 6.99, 38.94, 6.0, 20.0, 'lt', 3.00, 'img/bebidas/gaseosas/gaseosas_Coca3.jpg'),
(514, 'Botella no retornable', 105, 48, 6.09, 33.54, 6.0, 20.0, 'lt', 2.50, 'img/bebidas/gaseosas/gaseosas_Coca25.jpeg'),
(515, 'Botella no retornable', 105, 48, 5.40, 29.40, 6.0, 20.0, 'lt', 1.50, 'img/bebidas/gaseosas/gaseosas_Coca15.jpg'),
(516, 'Zero', 105, 48, 5.40, 29.40, 6.0, 20.0, 'lt', 1.50, 'img/bebidas/gaseosas/gaseosas_CocaZ.jpg'),
(517, 'Zero', 105, 48, 2.10, 22.20, 12.0, 20.0, 'ml', 500.00, 'img/bebidas/gaseosas/gaseosas_Cocazero.jpg'),
(518, 'Lata', 105, 48, 3.10, 15.60, 6.0, 20.0, 'ml', 350.00, 'img/bebidas/gaseosas/gaseosas_CocaL.jpg'),
(519, 'Botella no retornable', 106, 48, 6.80, 37.80, 6.0, 20.0, 'lt', 3.00, 'img/bebidas/gaseosas/gaseosas_Fanta3.jpg'),
(520, 'Botella no retornable', 106, 48, 4.70, 25.20, 6.0, 20.0, 'lt', 1.75, 'img/bebidas/gaseosas/gaseosas_Fanta1.jpg'),
(521, 'Botella no retornable', 106, 48, 1.90, 19.80, 12.0, 20.0, 'ml', 500.00, 'img/bebidas/gaseosas/gaseosas_Fanta500.jpg'),
(522, 'Botella no retornable', 107, 48, 8.50, 48.00, 6.0, 20.0, 'lt', 3.00, 'img/bebidas/gaseosas/gaseosas_Inka3.jpg'),
(523, 'Botella no retornable', 107, 48, 6.05, 33.30, 6.0, 20.0, 'lt', 2.50, 'img/bebidas/gaseosas/gaseosas_Inka2.jpg'),
(524, 'Botella no retornable', 107, 48, 5.40, 29.40, 6.0, 20.0, 'lt', 1.50, 'img/bebidas/gaseosas/gaseosas_Inka15.jpg'),
(525, 'Botella no retornable', 107, 48, 1.90, 19.80, 12.0, 20.0, 'ml', 410.00, 'img/bebidas/gaseosas/gaseosas_Inka410.jpg'),
(526, 'Zero', 107, 48, 5.40, 29.40, 6.0, 20.0, 'lt', 1.50, 'img/bebidas/gaseosas/gaseosas_InkaZ.jpg'),
(527, 'Zero', 107, 48, 1.90, 19.80, 12.0, 20.0, 'ml', 410.00, 'img/bebidas/gaseosas/gaseosas_InkaZero.jpg'),
(528, 'Botella no retornable', 108, 48, 5.50, 30.00, 6.0, 20.0, 'lt', 2.80, 'img/bebidas/gaseosas/gaseosas_Pepsi28.jpg'),
(529, 'Botella no retornable', 108, 48, 3.00, 15.00, 6.0, 20.0, 'lt', 1.30, 'img/bebidas/gaseosas/gaseosas_Pepsi13.jpg'),
(530, 'Botella no retornable', 108, 48, 1.80, 18.60, 12.0, 20.0, 'ml', 750.00, 'img/bebidas/gaseosas/gaseosas_Pepsi750.jpg'),
(531, 'Botella no retornable', 108, 48, 1.20, 11.40, 12.0, 20.0, 'ml', 500.00, 'img/bebidas/gaseosas/gaseosas_Pepsi500.jpg'),
(532, 'Light', 108, 48, 3.50, 18.00, 6.0, 20.0, 'lt', 1.30, 'img/bebidas/gaseosas/gaseosas_PepsiL.jpg'),
(533, 'Light', 108, 48, 1.40, 13.80, 12.0, 20.0, 'ml', 500.00, 'img/bebidas/gaseosas/gaseosas_PepsiLight.jpg'),
(534, 'Con gas', 109, 47, 1.10, 10.20, 12.0, 20.0, 'ml', 625.00, 'img/bebidas/agua/agua_CieloCg625.jpg'),
(535, 'Con gas', 109, 47, 2.60, 12.60, 6.0, 20.0, 'lt', 2.50, 'img/bebidas/agua/agua_CieloCg25.jpg'),
(536, 'Sin gas', 109, 47, 1.10, 10.20, 12.0, 20.0, 'ml', 625.00, 'img/bebidas/agua/agua_Cielo625.jpg'),
(537, 'Sin gas', 109, 47, 2.60, 12.60, 6.0, 20.0, 'lt', 2.50, 'img/bebidas/agua/agua_Cielo25.jpg'),
(538, 'Sin gas', 109, 47, 6.40, 35.40, 6.0, 20.0, 'lt', 7.00, 'img/bebidas/agua/agua_Cielo7.jpg'),
(539, 'Sin gas', 109, 47, 23.99, 20.99, 1.0, 20.0, 'lt', 20.00, 'img/bebidas/agua/agua_Cielo20.jpg'),
(540, 'Sin gas', 110, 47, 1.30, 12.60, 12.0, 20.0, 'ml', 625.00, 'img/bebidas/agua/agua_Luis625.jpg'),
(541, 'Sin gas', 110, 47, 2.20, 23.40, 12.0, 20.0, 'lt', 1.00, 'img/bebidas/agua/agua_Luis1.jpg'),
(542, 'Sin gas', 110, 47, 3.10, 15.60, 6.0, 20.0, 'lt', 2.50, 'img/bebidas/agua/agua_Luis25.jpg'),
(543, 'Sin gas', 110, 47, 7.60, 42.60, 6.0, 20.0, 'lt', 7.00, 'img/bebidas/agua/agua_Luis7.jpg'),
(544, 'Sin gas, Caja no retornable', 110, 47, 20.90, 17.90, 1.0, 20.0, 'lt', 20.00, 'img/bebidas/agua/agua_LuisCaja.jpg'),
(545, 'Sin gas, Bidón retornable', 110, 47, 18.20, 15.20, 1.0, 20.0, 'lt', 20.00, 'img/bebidas/agua/agua_LuisB.jpg'),
(546, 'Con gas', 111, 47, 1.50, 15.00, 12.0, 20.0, 'ml', 600.00, 'img/bebidas/agua/agua_MateoCg600.jpg'),
(547, 'Con gas', 111, 47, 2.60, 12.60, 6.0, 20.0, 'lt', 1.60, 'img/bebidas/agua/agua_MateoCg16.jpg'),
(548, 'Sin gas', 111, 47, 1.50, 15.00, 12.0, 20.0, 'ml', 600.00, 'img/bebidas/agua/agua_Mateo600.jpg'),
(549, 'Sin gas', 111, 47, 3.70, 19.20, 6.0, 20.0, 'lt', 2.50, 'img/bebidas/agua/agua_Mateo25.jpg'),
(550, 'Sin gas', 111, 47, 20.50, 17.50, 1.0, 20.0, 'lt', 21.00, 'img/bebidas/agua/agua_Mateo21.jpg'),
(551, 'Ron Abuelo', 112, 29, 85.90, 1649.28, 24.0, 20.0, 'ml', 750.00, 'img/licores/ron/Ron_Abuelo.jpg'),
(552, 'Ron Appleton Jamaican Rum Special Gold', 113, 29, 36.90, 708.48, 24.0, 20.0, 'lt', 1.00, 'img/licores/ron/Ron_Appleton.jpg'),
(553, 'Ron Botran Añejo 8 años', 114, 29, 72.90, 699.84, 12.0, 20.0, 'ml', 750.00, 'img/licores/ron/Ron_Botran.jpg'),
(554, 'Ron Cartavio', 115, 29, 17.90, 343.68, 24.0, 20.0, 'lt', 1.00, 'img/licores/ron/Ron_Botran.jpg'),
(555, 'Vermouth Cinzano', 116, 30, 24.43, 469.06, 24.0, 20.0, 'ml', 750.00, 'img/licores/vermouth/Vermouth_Cinzano.jpg'),
(556, 'Vermouth Cinzano Rosso', 116, 30, 24.43, 469.06, 24.0, 20.0, 'ml', 750.00, 'img/licores/vermouth/Vermouth_CinzanoRosa.jpg'),
(557, 'Vermouth Martini Bianco', 117, 30, 39.50, 632.00, 20.0, 18.0, 'ml', 900.00, 'img/licores/vermouth/Vermouth_Martini.jpg'),
(558, 'Vermouth Martini Rosso', 117, 30, 39.50, 758.40, 24.0, 18.0, 'ml', 900.00, 'img/licores/vermouth/Vermouth_MartiniRossa.jpg'),
(559, 'Vodka Absolut Citron', 118, 31, 57.50, 1104.00, 24.0, 20.0, 'ml', 750.00, 'img/licores/vodka/Vodka_AbsolutCitron.jpg'),
(560, 'Vodka Absolut Vainilla', 118, 31, 69.90, 1342.08, 24.0, 20.0, 'ml', 750.00, 'img/licores/vodka/Vodka_AbsolutVanilia.jpg'),
(561, 'Vodka Danzka', 119, 31, 57.00, 1094.40, 24.0, 20.0, 'ml', 750.00, 'img/licores/vodka/Vodka_Danzka.jpg'),
(562, 'Vodka Finlandia', 120, 31, 57.50, 1104.00, 24.0, 20.0, 'ml', 750.00, 'img/licores/vodka/Vodka_Finlandia.jpg'),
(563, 'Whisky Ballantines', 121, 32, 131.90, 1266.24, 12.0, 20.0, 'ml', 750.00, 'img/licores/whisky/Whisky_Ballantines.jpg'),
(564, 'Whisky Black Label', 122, 32, 120.90, 1160.64, 12.0, 20.0, 'ml', 750.00, 'img/licores/whisky/Whisky_BlackLabel.jpg'),
(565, 'Whisky Chivas Regal', 123, 32, 389.90, 1247.68, 4.0, 20.0, 'ml', 750.00, 'img/licores/whisky/Whisky_ChivasRegal.jpg'),
(566, 'Whisky The Genlivet', 124, 32, 254.90, 1223.52, 6.0, 20.0, 'ml', 750.00, 'img/licores/whisky/Whisky_TheGenlivet.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subcategoriaproducto`
--

CREATE TABLE IF NOT EXISTS `subcategoriaproducto` (
  `codigosubCategoria` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `codigoCategoria` bigint(20) NOT NULL,
  `descripcion` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`codigosubCategoria`),
  KEY `fk_categoriaProducto_subCategoriaProducto` (`codigoCategoria`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=49 ;

--
-- Volcado de datos para la tabla `subcategoriaproducto`
--

INSERT INTO `subcategoriaproducto` (`codigosubCategoria`, `nombre`, `codigoCategoria`, `descripcion`) VALUES
(1, 'Aceite de Oliva', 1, NULL),
(2, 'Aceite Vegetal', 1, NULL),
(3, 'Arroz', 1, NULL),
(4, 'Azúcar', 1, NULL),
(5, 'Fideos', 1, NULL),
(6, 'Menestras', 1, NULL),
(7, 'Jabones', 3, NULL),
(8, 'Shampoo', 3, NULL),
(9, 'Toallas Higi&eacute;nicas', 3, NULL),
(10, 'Avena', 4, NULL),
(11, 'Chorizo', 5, NULL),
(12, 'Hot-dog', 5, NULL),
(13, 'Jam&oacute;n del Pa&iacute;s', 5, NULL),
(14, 'Jamón Ingl&eacutes', 5, NULL),
(15, 'Jamonadas', 5, NULL),
(16, 'Quesos', 5, NULL),
(17, 'Atún Filete', 6, NULL),
(18, 'Atún Grated', 6, NULL),
(19, 'Atún en Trozos', 6, NULL),
(20, 'Conserva de Frutas', 6, NULL),
(21, 'Galleta Dulce', 7, NULL),
(22, 'Galleta Integral', 7, NULL),
(23, 'Galleta Salada', 7, NULL),
(24, 'Galleta sixpack', 7, NULL),
(25, 'Caramelos', 7, NULL),
(26, 'Chicle', 7, NULL),
(27, 'Frunas', 7, NULL),
(28, 'Gomitas', 7, NULL),
(29, 'Ron', 8, NULL),
(30, 'Vermouth', 8, NULL),
(31, 'Vodka', 8, NULL),
(32, 'Whisky', 8, NULL),
(33, 'Aromatizantes', 9, NULL),
(34, 'Detergentes', 9, NULL),
(35, 'Lejías', 9, NULL),
(36, 'Limpiador Porcelanato', 9, NULL),
(37, 'Limpiavidrios', 9, NULL),
(38, 'Papel Higiénico', 9, NULL),
(39, 'Pino', 9, NULL),
(40, 'Maíz Frito', 10, NULL),
(41, 'Mix Queso', 10, NULL),
(42, 'Papas', 10, NULL),
(43, 'Cremas de Tratamiento', 3, NULL),
(44, 'Acondicionador', 3, NULL),
(45, 'Yogurt', 4, NULL),
(46, 'Papel Toalla', 9, NULL),
(47, 'Agua', 2, NULL),
(48, 'Gaseosas', 2, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `temaayuda`
--

CREATE TABLE IF NOT EXISTS `temaayuda` (
  `codigoAyuda` bigint(20) NOT NULL AUTO_INCREMENT,
  `codigoCategoriaTema` bigint(20) NOT NULL,
  `respuestaPregunta` varchar(100) DEFAULT NULL,
  `enunciadoPregunta` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`codigoAyuda`),
  KEY `fk_categoriaTemaAyuda_temaAyuda` (`codigoCategoriaTema`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE IF NOT EXISTS `usuario` (
  `codigoUsuario` bigint(20) NOT NULL AUTO_INCREMENT,
  `codigoEmpresa` bigint(20) NOT NULL,
  `nombreUsuario` char(11) DEFAULT NULL,
  PRIMARY KEY (`codigoUsuario`),
  UNIQUE KEY `codigoUsuario` (`codigoUsuario`),
  KEY `fk_empresa_usuario` (`codigoEmpresa`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`codigoUsuario`, `codigoEmpresa`, `nombreUsuario`) VALUES
(1, 19, '99883736245'),
(2, 20, '10709037752');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta`
--

CREATE TABLE IF NOT EXISTS `venta` (
  `codigoVenta` bigint(20) NOT NULL AUTO_INCREMENT,
  `codigoModalidadPago` bigint(20) NOT NULL,
  `fecha` datetime DEFAULT NULL,
  PRIMARY KEY (`codigoVenta`),
  KEY `fk_modalidadDePago_venta` (`codigoModalidadPago`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventadetalle`
--

CREATE TABLE IF NOT EXISTS `ventadetalle` (
  `codigoItem` bigint(20) NOT NULL AUTO_INCREMENT,
  `codigoVenta` bigint(20) NOT NULL,
  `codigoProducto` bigint(20) NOT NULL,
  `cantidadVendida` decimal(6,2) DEFAULT NULL,
  PRIMARY KEY (`codigoItem`),
  KEY `fk_venta_ventaDetalle` (`codigoVenta`),
  KEY `fk_producto_ventaDetalle` (`codigoProducto`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `bloqueado`
--
ALTER TABLE `bloqueado`
  ADD CONSTRAINT `fk_empresa_bloqueado` FOREIGN KEY (`codigoEmpresa`) REFERENCES `empresa` (`codigoEmpresa`);

--
-- Filtros para la tabla `contrasenia`
--
ALTER TABLE `contrasenia`
  ADD CONSTRAINT `fk_usuario_contrasenia` FOREIGN KEY (`codigoUsuario`) REFERENCES `usuario` (`codigoUsuario`);

--
-- Filtros para la tabla `grupo_privilegio`
--
ALTER TABLE `grupo_privilegio`
  ADD CONSTRAINT `fk_grupo_grupoPrivilegio` FOREIGN KEY (`codigoGrupo`) REFERENCES `grupo` (`codigoGrupo`),
  ADD CONSTRAINT `fk_privilegio_grupoPrivilegio` FOREIGN KEY (`codigoPrivilegio`) REFERENCES `privilegio` (`codigoPrivilegio`);

--
-- Filtros para la tabla `grupo_usuario`
--
ALTER TABLE `grupo_usuario`
  ADD CONSTRAINT `fk_grupo_grupoUsuario` FOREIGN KEY (`codigoGrupo`) REFERENCES `grupo` (`codigoGrupo`),
  ADD CONSTRAINT `fk_usuario_grupoUsuario` FOREIGN KEY (`codigoUsuario`) REFERENCES `usuario` (`codigoUsuario`);

--
-- Filtros para la tabla `intentofallido`
--
ALTER TABLE `intentofallido`
  ADD CONSTRAINT `fk_usuario_intentoFallido` FOREIGN KEY (`codigoUsuario`) REFERENCES `usuario` (`codigoUsuario`);

--
-- Filtros para la tabla `oferta`
--
ALTER TABLE `oferta`
  ADD CONSTRAINT `fk_producto_oferta` FOREIGN KEY (`codigoProducto`) REFERENCES `producto` (`codigoProducto`);

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `fk_marca_producto` FOREIGN KEY (`codigoMarca`) REFERENCES `marca` (`codigoMarca`),
  ADD CONSTRAINT `fk_subCategoriaProducto_producto` FOREIGN KEY (`codigosubCategoria`) REFERENCES `subcategoriaproducto` (`codigosubCategoria`);

--
-- Filtros para la tabla `subcategoriaproducto`
--
ALTER TABLE `subcategoriaproducto`
  ADD CONSTRAINT `fk_categoriaProducto_subCategoriaProducto` FOREIGN KEY (`codigoCategoria`) REFERENCES `categoriaproducto` (`codigoCategoria`);

--
-- Filtros para la tabla `temaayuda`
--
ALTER TABLE `temaayuda`
  ADD CONSTRAINT `fk_categoriaTemaAyuda_temaAyuda` FOREIGN KEY (`codigoCategoriaTema`) REFERENCES `categoriatemaayuda` (`codigoCategoriaTema`);

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `fk_empresa_usuario` FOREIGN KEY (`codigoEmpresa`) REFERENCES `empresa` (`codigoEmpresa`);

--
-- Filtros para la tabla `venta`
--
ALTER TABLE `venta`
  ADD CONSTRAINT `fk_modalidadDePago_venta` FOREIGN KEY (`codigoModalidadPago`) REFERENCES `modalidaddepago` (`codigoModalidadPago`);

--
-- Filtros para la tabla `ventadetalle`
--
ALTER TABLE `ventadetalle`
  ADD CONSTRAINT `fk_producto_ventaDetalle` FOREIGN KEY (`codigoProducto`) REFERENCES `producto` (`codigoProducto`),
  ADD CONSTRAINT `fk_venta_ventaDetalle` FOREIGN KEY (`codigoVenta`) REFERENCES `venta` (`codigoVenta`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
