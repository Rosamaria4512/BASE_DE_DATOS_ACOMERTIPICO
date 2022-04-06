-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-04-2022 a las 00:49:18
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `acomertipico_com`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrador`
--

CREATE TABLE `administrador` (
  `id_administrador` int(11) NOT NULL,
  `Nombre` varchar(45) NOT NULL,
  `apellidos` varchar(45) NOT NULL,
  `contraseña` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `administrador`
--

INSERT INTO `administrador` (`id_administrador`, `Nombre`, `apellidos`, `contraseña`) VALUES
(0, 'Andres', 'Ortiz', 'andres0654'),
(1, 'Yojan', 'Ortiz', 'yojan654'),
(2, 'Maritza', 'sancho', 'maritza654');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentario`
--

CREATE TABLE `comentario` (
  `id_comentario` int(11) NOT NULL,
  `comentario` varchar(250) DEFAULT NULL,
  `calificacion` int(11) DEFAULT NULL,
  `id_comprador` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `comentario`
--

INSERT INTO `comentario` (`id_comentario`, `comentario`, `calificacion`, `id_comprador`) VALUES
(1, 'Excelente servicio', 5, 1),
(2, 'Buen servicio', 3, 2),
(3, 'Mal servicio', 2, 3),
(4, 'Pesimo servicio', 1, 4),
(5, 'No lo recomiendo', 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comprador`
--

CREATE TABLE `comprador` (
  `id_comprador` int(11) NOT NULL,
  `Nombre` varchar(45) NOT NULL,
  `Apellido` varchar(45) NOT NULL,
  `tipo_id` varchar(45) NOT NULL,
  `Numero_documento` varchar(20) DEFAULT NULL,
  `tipo_telefono` varchar(45) DEFAULT NULL,
  `numero_telefono` varchar(20) DEFAULT NULL,
  `direccion` varchar(60) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `contraseña` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `comprador`
--

INSERT INTO `comprador` (`id_comprador`, `Nombre`, `Apellido`, `tipo_id`, `Numero_documento`, `tipo_telefono`, `numero_telefono`, `direccion`, `email`, `contraseña`) VALUES
(0, 'Jose', 'lopez', 'CC', '1061156563', 'celular', '3016245952', 'Comuneros', 'jose@gmail.com', 'jose54321'),
(1, 'Jhon', 'Ruiz', 'CC', '1061156874', 'celular', '3156214952', 'chapinero', 'Jhon@gmail.com', 'jhon321'),
(2, 'Felipe', 'mosquera', 'CC', '1061156898', 'celular', '3006244952', 'La libertad', 'felipe@gmail.com', 'felipe4321'),
(3, 'Brayan', 'campo', 'CC', '10041157563', 'celular', '3216245852', 'Los sauces', 'Brayan@gmail.com', 'Brayan1'),
(4, 'Karen', 'chavez', 'CC', '10041158963', 'celular', '4561236951', 'Santo Domingo', 'Karen@gmail.com', 'Karen12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comprador_productos`
--

CREATE TABLE `comprador_productos` (
  `id_comprador_producto` int(11) NOT NULL,
  `id_comprador` int(11) DEFAULT NULL,
  `id_producto` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `id_producto` int(11) NOT NULL,
  `Nombre_producto` varchar(45) NOT NULL,
  `Precio` float NOT NULL,
  `Fotos` blob DEFAULT NULL,
  `Descripcion` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id_producto`, `Nombre_producto`, `Precio`, `Fotos`, `Descripcion`) VALUES
(1, 'Empanadas de Pipian', 1000, '', 'Papa, cebolla, color, ajo, mani, sal, agua, promasa'),
(2, 'Tamales de Pipian', 3000, '', 'Papa, cebolla, color, ajo, mani, sal, agua, promasa'),
(3, 'Champus', 3000, '', 'Maiz blanco, agua, azucar, lulo, limon, panela'),
(4, 'Repollitas', 500, '', 'dulce'),
(5, 'Carantanta', 2500, '', 'maiz, sal, agua');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos_restaurantes`
--

CREATE TABLE `productos_restaurantes` (
  `id_producto_restaurante` int(11) NOT NULL,
  `Nit_restaurante` int(11) DEFAULT NULL,
  `id_producto` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `restaurante`
--

CREATE TABLE `restaurante` (
  `Nit_restaurante` int(11) NOT NULL,
  `Nombres` varchar(45) NOT NULL,
  `Tipo_telefono` varchar(45) NOT NULL,
  `Numero_telefono` int(20) NOT NULL,
  `Tipo_persona` varchar(45) DEFAULT NULL,
  `Foto` blob DEFAULT NULL,
  `Descripcion` varchar(200) DEFAULT NULL,
  `Contraseña` varchar(45) NOT NULL,
  `id_vendedor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `restaurante`
--

INSERT INTO `restaurante` (`Nit_restaurante`, `Nombres`, `Tipo_telefono`, `Numero_telefono`, `Tipo_persona`, `Foto`, `Descripcion`, `Contraseña`, `id_vendedor`) VALUES
(1, 'Aplanchados de doña chepa', 'Fijo', 80144444, 'natural', '', 'postres', 'chepa123', 1),
(2, 'Mora castilla', 'Celular', 2147483647, 'Juridica', '', 'todo lo tipico', 'mora1123', 2),
(3, 'Empanadas de Javi', 'Celular', 2147483647, 'Juridica', '', 'Venta de empanadas', 'empanadas321', 3),
(4, 'Chuleta pobre', 'Celular', 2147483647, 'Juridica', '', 'Venta de chuletas', 'chuletarancia321', 4),
(5, 'Carantanta', 'Fijo', 80265432, 'Juridica', '', 'Comida tipica', 'carantanta321', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vendedor`
--

CREATE TABLE `vendedor` (
  `id_vendedor` int(11) NOT NULL,
  `nombres` varchar(45) DEFAULT NULL,
  `apellidos` varchar(45) DEFAULT NULL,
  `tipo_id` varchar(45) DEFAULT NULL,
  `numero_documento` varchar(20) DEFAULT NULL,
  `direccion` varchar(60) DEFAULT NULL,
  `tipo_telefono` varchar(45) DEFAULT NULL,
  `numero_telefono` bigint(10) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `contraseña` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `vendedor`
--

INSERT INTO `vendedor` (`id_vendedor`, `nombres`, `apellidos`, `tipo_id`, `numero_documento`, `direccion`, `tipo_telefono`, `numero_telefono`, `email`, `contraseña`) VALUES
(1, 'Rosa', 'ledezma', 'CC', '10025545', 'la esmeralda', 'celular', 322551616, 'rosa@gmail.com', 'rosa123'),
(2, 'Rodrigo', 'papamija', 'CC', '1002968664', 'El mirador', 'celular', 3147483647, 'rodrigo@gmail.com', 'rodrigo321'),
(3, 'Eleny', 'Sancho', 'CC', '1234567890', 'la paz', 'celular', 3122296840, 'eleny@gmail.com', 'eleny453'),
(4, 'Sofia', 'Rodriguez', 'CC', '1002554501', 'San jose', 'celular', 3122560307, 'Sofia@gmail.com', 'sofia1123'),
(5, 'Natalia', 'Carvajal', 'CC', '1002554515', 'Tunel Bajo', 'celular', 3156952121, 'natalia@gmail.com', 'nataliaM123');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta`
--

CREATE TABLE `venta` (
  `id_ventas` int(11) NOT NULL,
  `fecha` date DEFAULT NULL,
  `unidad` int(11) DEFAULT NULL,
  `valor` float DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `id_vendedor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `venta`
--

INSERT INTO `venta` (`id_ventas`, `fecha`, `unidad`, `valor`, `cantidad`, `id_vendedor`) VALUES
(1, '0000-00-00', 2, 1500, 2, 1),
(2, '0000-00-00', 4, 3500, 4, 2),
(3, '0000-00-00', 5, 15500, 5, 3),
(4, '0000-00-00', 6, 10500, 6, 4),
(5, '0000-00-00', 9, 14500, 9, 5);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administrador`
--
ALTER TABLE `administrador`
  ADD PRIMARY KEY (`id_administrador`);

--
-- Indices de la tabla `comentario`
--
ALTER TABLE `comentario`
  ADD PRIMARY KEY (`id_comentario`),
  ADD KEY `id_comprador` (`id_comprador`);

--
-- Indices de la tabla `comprador`
--
ALTER TABLE `comprador`
  ADD PRIMARY KEY (`id_comprador`);

--
-- Indices de la tabla `comprador_productos`
--
ALTER TABLE `comprador_productos`
  ADD PRIMARY KEY (`id_comprador_producto`),
  ADD KEY `id_comprador` (`id_comprador`),
  ADD KEY `id_producto` (`id_producto`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id_producto`);

--
-- Indices de la tabla `productos_restaurantes`
--
ALTER TABLE `productos_restaurantes`
  ADD KEY `Nit_restaurante` (`Nit_restaurante`),
  ADD KEY `id_producto` (`id_producto`);

--
-- Indices de la tabla `restaurante`
--
ALTER TABLE `restaurante`
  ADD PRIMARY KEY (`Nit_restaurante`),
  ADD KEY `id_vendedor` (`id_vendedor`);

--
-- Indices de la tabla `vendedor`
--
ALTER TABLE `vendedor`
  ADD PRIMARY KEY (`id_vendedor`);

--
-- Indices de la tabla `venta`
--
ALTER TABLE `venta`
  ADD PRIMARY KEY (`id_ventas`),
  ADD KEY `id_vendedor` (`id_vendedor`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `vendedor`
--
ALTER TABLE `vendedor`
  MODIFY `id_vendedor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `comentario`
--
ALTER TABLE `comentario`
  ADD CONSTRAINT `comentario_ibfk_1` FOREIGN KEY (`id_comprador`) REFERENCES `comprador` (`id_comprador`);

--
-- Filtros para la tabla `comprador_productos`
--
ALTER TABLE `comprador_productos`
  ADD CONSTRAINT `comprador_productos_ibfk_1` FOREIGN KEY (`id_comprador`) REFERENCES `comprador` (`id_comprador`),
  ADD CONSTRAINT `comprador_productos_ibfk_2` FOREIGN KEY (`id_producto`) REFERENCES `producto` (`id_producto`);

--
-- Filtros para la tabla `productos_restaurantes`
--
ALTER TABLE `productos_restaurantes`
  ADD CONSTRAINT `productos_restaurantes_ibfk_1` FOREIGN KEY (`Nit_restaurante`) REFERENCES `restaurante` (`Nit_restaurante`),
  ADD CONSTRAINT `productos_restaurantes_ibfk_2` FOREIGN KEY (`id_producto`) REFERENCES `producto` (`id_producto`);

--
-- Filtros para la tabla `restaurante`
--
ALTER TABLE `restaurante`
  ADD CONSTRAINT `restaurante_ibfk_1` FOREIGN KEY (`id_vendedor`) REFERENCES `vendedor` (`id_vendedor`);

--
-- Filtros para la tabla `venta`
--
ALTER TABLE `venta`
  ADD CONSTRAINT `venta_ibfk_1` FOREIGN KEY (`id_vendedor`) REFERENCES `vendedor` (`id_vendedor`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
