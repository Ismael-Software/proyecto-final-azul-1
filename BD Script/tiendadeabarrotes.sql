-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-11-2025 a las 21:15:09
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
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `idCliente` int(50) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Teléfono` decimal(50,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`idCliente`, `Nombre`, `Teléfono`) VALUES
(1, 'Ana López', 5512345678),
(2, 'José Martínez', 5523456789),
(3, 'María Hernández', 3245678311),
(4, 'Nicole Juárez', 5592711355),
(5, 'Carlos Ruiz', 5545678901),
(6, 'Lucia Gómez', 5567324674),
(7, 'Aldo Resendiz', 5556789012),
(8, 'Diana Torres', 5234556632),
(9, 'Sofia Vergara', 5524563223),
(10, 'Estrella Cebolla', 5234567891);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `idEmpleado` int(50) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `Turno` varchar(100) NOT NULL,
  `Salario` decimal(50,0) NOT NULL,
  `Telefono` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`idEmpleado`, `Nombre`, `Turno`, `Salario`, `Telefono`) VALUES
(1, 'Juan Herrera', 'Matutino', 8500, 7751235467),
(2, 'Zoe Zanahorias', 'Matutino', 8500, 5246573453),
(3, 'Luis Mendéz', 'Vespertino', 8500, 5246686532),
(4, 'Karen Soto', 'Vespertino', 8500, 5576786744),
(5, 'Diego Ramos', 'Vespertino', 8500, 5523456878);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productosdelatienda`
--

CREATE TABLE `productosdelatienda` (
  `idProducto` int(50) NOT NULL,
  `Producto` varchar(100) NOT NULL,
  `Tipo` varchar(50) NOT NULL,
  `Cantidad` int(50) NOT NULL,
  `Fecha de Caducidad` date NOT NULL,
  `Precio` decimal(10,2) NOT NULL,
  `idProveedor` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productosdelatienda`
--

INSERT INTO `productosdelatienda` (`idProducto`, `Producto`, `Tipo`, `Cantidad`, `Fecha de Caducidad`, `Precio`, `idProveedor`) VALUES
(1, 'Queso Oaxaca (1/4)', 'Abarrote', 10, '2026-10-13', 10.00, 2),
(2, 'Coca Cola', 'Bebida', 30, '2026-05-07', 18.00, 4),
(3, 'Flamin Hot', 'Botana', 13, '2026-07-20', 18.00, 2),
(4, 'Arroz (kg)', 'Abarrote', 20, '2026-03-09', 23.50, 3),
(5, 'Jugo Del Valle', 'Bebida', 20, '2026-06-18', 20.00, 4),
(6, 'Paleta Payaso', 'Dulce', 40, '2026-11-16', 12.00, 5),
(7, 'Gansito', 'Botana', 35, '2026-11-09', 15.00, 2),
(8, 'Frijol (kg)', 'Abarrote', 25, '2026-11-14', 28.00, 3),
(9, 'Pepsi', 'Bebida', 28, '2026-11-23', 17.00, 4),
(10, 'Pam Bimbo', 'Abarrote', 20, '2026-11-27', 17.00, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE `proveedor` (
  `idProveedor` int(50) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `Telefono` double NOT NULL,
  `Producto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `proveedor`
--

INSERT INTO `proveedor` (`idProveedor`, `Nombre`, `Telefono`, `Producto`) VALUES
(1, 'Lácteos del Sur', 5545678913, 'Quesos, arroz'),
(2, 'Bimbo', 5524466854, 'Pan, botanas'),
(3, 'GranoFino', 5245567754, 'Granos'),
(4, 'Bedidas Nacionales', 7711038200, 'Refrescos, jugos'),
(5, 'Dulce Manía', 7713536495, 'Dulces');

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
