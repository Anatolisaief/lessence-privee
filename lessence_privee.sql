-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-06-2025 a las 21:59:19
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `lessence_privee`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos`
--

CREATE TABLE `pedidos` (
  `id_pedidos` int(11) NOT NULL,
  `nombre_cliente` varchar(100) NOT NULL,
  `email_cliente` varchar(100) NOT NULL,
  `telefono_cliente` varchar(20) DEFAULT NULL,
  `direccion_cliente` text NOT NULL,
  `id_perfumes` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL DEFAULT 1,
  `metodo_pago` varchar(50) NOT NULL,
  `comentarios` text DEFAULT NULL,
  `fecha_pedido` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pedidos`
--

INSERT INTO `pedidos` (`id_pedidos`, `nombre_cliente`, `email_cliente`, `telefono_cliente`, `direccion_cliente`, `id_perfumes`, `cantidad`, `metodo_pago`, `comentarios`, `fecha_pedido`) VALUES
(2, 'Anatoli', 'anatoli@gmail.com', '1234567891', 'Calle Ilustracion', 3, 1, 'tarjeta', '2', '2025-06-04 13:27:54'),
(3, 'Anatoli', 'anatoli@gmail.com', '1234567891', 'Calle Ilustracion', 1, 1, 'paypal', '1', '2025-06-04 13:29:13'),
(6, 'Laura Sánchez', 'laura.sanchez@example.com', '654321987', 'Calle Luna 12, Valencia', 5, 1, 'transferencia', '', '2025-06-05 21:56:41'),
(7, 'Marta', 'marta@gmail.com', '699887766', 'Calle Jardines 89, Sevilla', 3, 2, 'paypal', '', '2025-06-05 21:58:01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfumes`
--

CREATE TABLE `perfumes` (
  `id_perfumes` int(11) NOT NULL,
  `nombre_perfumes` varchar(100) NOT NULL,
  `descripcion_perfumes` text NOT NULL,
  `imagen_perfumes` varchar(255) DEFAULT NULL,
  `precio_perfumes` decimal(10,2) NOT NULL,
  `stock_perfumes` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `perfumes`
--

INSERT INTO `perfumes` (`id_perfumes`, `nombre_perfumes`, `descripcion_perfumes`, `imagen_perfumes`, `precio_perfumes`, `stock_perfumes`) VALUES
(1, 'Crimson Éclat', '<p style=\"color: #ccc; text-align: center;\">\r\n  Una fragancia audaz y sensual que se abre con la elegancia carmesí de la rosa y se transforma en un corazón especiado y cálido, para finalmente envolverse en la opulencia del oud.\r\n</p>\r\n<p style=\"color: white;\">\r\n  <span style=\"font-weight: bold;\">Notas de salida: </span>  Rosa de Damasco, pimienta rosa.\r\n  <span style=\"font-weight: bold;\">Notas de corazón: </span>  Canela, clavo, flor de azahar.\r\n  <span style=\"font-weight: bold;\">Notas de fondo: </span>  Madera de oud, pachulí, vainilla negra.\r\n</p>', 'images/crimson_eclat.png', 110.00, 200),
(2, 'Azure Veil', '<p style=\"color: #ccc; text-align: center;\">\r\n  Como una brisa marina al amanecer, esta fragancia transmite serenidad. La frescura de la lavanda se funde con notas herbales y un fondo limpio.\r\n</p>\r\n<p style=\"color: white;\">\r\n  <span style=\"font-weight: bold;\">Notas de salida: </span> Lavanda azul, bergamota de Calabria.\r\n  <span style=\"font-weight: bold;\">Notas de corazón: </span>  Salvia, vetiver haitiano.\r\n  <span style=\"font-weight: bold;\">Notas de fondo: </span>  Almizcle blanco, ámbar acuático.\r\n</p>', 'images/azure_veil.png', 110.00, 200),
(3, 'Magenta Bloom', '<p style=\"color: #ccc; text-align: center;\">\r\n  Una celebración vibrante de la feminidad contemporánea. Frutal y floral a la vez, con una base dulce y elegante.\r\n</p>\r\n<p style=\"color: white;\">\r\n  <span style=\"font-weight: bold;\">Notas de salida: </span> Frambuesa negra, bergamota.\r\n  <span style=\"font-weight: bold;\">Notas de corazón: </span> Peonía, jazmín sambac.\r\n  <span style=\"font-weight: bold;\">Notas de fondo: </span> Vainilla de Madagascar, almizcle aterciopelado.\r\n</p>', 'images/magenta_bloom.png', 110.00, 200),
(4, 'Violet Nocturne', '<p style=\"color: #ccc; text-align: center;\">\r\n  Evocadora y etérea, esta fragancia se desliza como una melodía nocturna.\r\n</p>\r\n<p style=\"color: white;\">\r\n  <span style=\"font-weight: bold;\">Notas de salida: </span> Violeta, pimienta negra.\r\n  <span style=\"font-weight: bold;\">Notas de corazón: </span> Iris, incienso.\r\n  <span style=\"font-weight: bold;\">Notas de fondo: </span> Ámbar gris, cuero suave.\r\n</p>', 'images/violet_nocturne.jpg', 110.00, 200),
(5, 'Verdant Muse', '<p style=\"color: #ccc; text-align: center;\">\r\n  Un homenaje a la naturaleza en su forma más pura. Esta composición verde y luminosa despierta los sentidos con frescura botánica.\r\n</p>\r\n<p style=\"color: white;\">\r\n  <span style=\"font-weight: bold;\">Notas de salida: </span>  Hojas de higuera, lima verde.\r\n  <span style=\"font-weight: bold;\">Notas de corazón: </span> Menta fresca, té blanco.\r\n  <span style=\"font-weight: bold;\">Notas de fondo: </span> Musgo de roble, vetiver verde.\r\n</p>', 'images/verdant_muse.png', 110.00, 200);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`id_pedidos`),
  ADD KEY `id_perfumes` (`id_perfumes`);

--
-- Indices de la tabla `perfumes`
--
ALTER TABLE `perfumes`
  ADD PRIMARY KEY (`id_perfumes`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `id_pedidos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `perfumes`
--
ALTER TABLE `perfumes`
  MODIFY `id_perfumes` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD CONSTRAINT `pedidos_ibfk_1` FOREIGN KEY (`id_perfumes`) REFERENCES `perfumes` (`id_perfumes`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
