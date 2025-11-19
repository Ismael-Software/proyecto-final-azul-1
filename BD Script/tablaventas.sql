-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-11-2025 a las 03:49:00
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tiendadeabarrotes`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tablaventas`
--

CREATE TABLE `tablaventas` (
  `idVenta` int(50) NOT NULL,
  `Fecha` date NOT NULL,
  `Total` decimal(50,0) NOT NULL,
  `Cantidad` int(100) NOT NULL,
  `idCliente` int(50) NOT NULL,
  `idEmpleado` int(50) NOT NULL,
  `idProducto` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tablaventas`
--

INSERT INTO `tablaventas` (`idVenta`, `Fecha`, `Total`, `Cantidad`, `idCliente`, `idEmpleado`, `idProducto`) VALUES
(1, '2025-11-18', 10, 1, 1, 2, 1),
(2, '2025-11-11', 24, 2, 2, 1, 6),
(3, '2025-11-10', 18, 1, 3, 2, 2),
(4, '2025-11-09', 17, 1, 4, 1, 9),
(5, '2025-11-08', 24, 1, 5, 1, 4),
(6, '2025-11-15', 90, 5, 6, 3, 3),
(7, '2025-11-15', 15, 1, 7, 4, 7),
(8, '2025-11-15', 20, 1, 8, 5, 5),
(9, '2025-11-15', 84, 3, 9, 5, 8),
(10, '2025-11-02', 34, 2, 10, 4, 10);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
