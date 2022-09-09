-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-07-2022 a las 06:28:02
-- Versión del servidor: 10.4.17-MariaDB
-- Versión de PHP: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `csgo_3erobv`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asocia`
--

CREATE TABLE `asocia` (
  `Codigo_Vegetal_Primario` int(6) NOT NULL,
  `Codigo_Vegetal_Asociado` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calendario`
--

CREATE TABLE `calendario` (
  `Fecha_Inicio` datetime NOT NULL,
  `Fecha_Fin` datetime NOT NULL,
  `Tiempo_De_Cosecha` datetime NOT NULL,
  `Tiempo_De_Germinar` datetime NOT NULL,
  `Metodo_De_Siembra` varchar(16) NOT NULL,
  `Profundidad_De_Siembra` varchar(16) NOT NULL,
  `Tiempo_De_Transplantar` datetime NOT NULL,
  `Codigo_Vegetal` int(6) NOT NULL,
  `ID_Variedad` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `N°_Cliente` int(6) NOT NULL,
  `Codigo_Postal` int(5) NOT NULL,
  `Numero_de_Puerta` varchar(16) NOT NULL,
  `Calle` varchar(16) NOT NULL,
  `Correo_Electronico` varchar(24) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente_empresa`
--

CREATE TABLE `cliente_empresa` (
  `N°_Cliente` int(6) NOT NULL,
  `Nombre` varchar(16) NOT NULL,
  `RUT` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente_web`
--

CREATE TABLE `cliente_web` (
  `N°_Cliente` int(6) NOT NULL,
  `Nombre` varchar(16) NOT NULL,
  `Apellido` varchar(16) NOT NULL,
  `CI` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `control`
--

CREATE TABLE `control` (
  `Fecha_Inicio_Vegetal` datetime NOT NULL,
  `Codigo_Vegetal` int(6) NOT NULL,
  `ID_Variedad` int(6) NOT NULL,
  `Fecha_Final_Vegetal` datetime NOT NULL,
  `Id_Estado_Vegetal` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cultiva`
--

CREATE TABLE `cultiva` (
  `Codigo_Vegetal` int(6) NOT NULL,
  `ID_Variedad` int(6) NOT NULL,
  `ID_Huerta` int(6) NOT NULL,
  `Fecha` datetime NOT NULL,
  `Unidad` varchar(16) NOT NULL,
  `Cantidad_Estimada` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `esta`
--

CREATE TABLE `esta` (
  `Fecha_Inicio_Pedido` datetime NOT NULL,
  `N°_Pedido` int(6) NOT NULL,
  `Fecha_De_Entrega` datetime NOT NULL,
  `Id_Estado_Pedido` int(6) NOT NULL,
  `Fecha_Final_Pedido` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado_pedido`
--

CREATE TABLE `estado_pedido` (
  `Id_Estado_Pedido` int(6) NOT NULL,
  `Nombre_Estado_Pedido` varchar(16) NOT NULL,
  `N°_Pedido` int(6) NOT NULL,
  `Fecha_De_Entrega` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado_vegetal`
--

CREATE TABLE `estado_vegetal` (
  `Id_Estado_Vegetal` int(6) NOT NULL,
  `Estado_Del_Vegetal` varchar(16) NOT NULL,
  `Codigo_Vegetal` int(6) NOT NULL,
  `Id_Variedad` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `feriante`
--

CREATE TABLE `feriante` (
  `Nombre_Vendedor` int(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `genera`
--

CREATE TABLE `genera` (
  `N°_Pedido` int(6) NOT NULL,
  `Fecha_De_Entrega` datetime NOT NULL,
  `ID_Variedad` int(6) NOT NULL,
  `Codigo_Vegetal` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `huerta`
--

CREATE TABLE `huerta` (
  `ID_Huerta` int(6) NOT NULL,
  `Tamaño_Huerta` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido`
--

CREATE TABLE `pedido` (
  `N°_Pedido` int(6) NOT NULL,
  `Fecha_De_Entrega` datetime NOT NULL,
  `Precio_Unidad` int(3) NOT NULL,
  `Cantidad` int(2) NOT NULL,
  `Precio_Total` int(4) NOT NULL,
  `Metodo_De_Pago` varchar(16) NOT NULL,
  `Fecha_Realizado` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `realiza`
--

CREATE TABLE `realiza` (
  `N°_Cliente` int(6) NOT NULL,
  `Numero_Pedido` int(6) NOT NULL,
  `Fecha_De_Entrega` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `se_almacena`
--

CREATE TABLE `se_almacena` (
  `Codigo_Vegetal` int(6) NOT NULL,
  `ID_Variedad` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `stock`
--

CREATE TABLE `stock` (
  `Cantidad_Actual` varchar(16) NOT NULL,
  `Codigo_Vegetal` int(6) NOT NULL,
  `ID_Variedad` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `Nombre_Usuario` varchar(16) NOT NULL,
  `Contraseña` varchar(16) NOT NULL,
  `Rol` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `variedad`
--

CREATE TABLE `variedad` (
  `ID_Variedad` int(6) NOT NULL,
  `Codigo_Vegetal` int(6) NOT NULL,
  `Variedad_Nombre` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vegetales`
--

CREATE TABLE `vegetales` (
  `Codigo_Vegetal` int(6) NOT NULL,
  `Nombre_Vegetal` varchar(16) NOT NULL,
  `Tipo_De_Unidad` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vende`
--

CREATE TABLE `vende` (
  `Fecha_Venta` datetime NOT NULL,
  `Codigo_Vegetal` int(6) NOT NULL,
  `ID_Variedad` int(6) NOT NULL,
  `Nombre_Cliente` varchar(16) NOT NULL,
  `Cantidad` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vincula`
--

CREATE TABLE `vincula` (
  `Codigo_Vegetal` int(6) NOT NULL,
  `ID_Variedad` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `asocia`
--
ALTER TABLE `asocia`
  ADD KEY `Codigo_Vegetal_Primario` (`Codigo_Vegetal_Primario`,`Codigo_Vegetal_Asociado`),
  ADD KEY `Codigo_Vegetal_Asociado` (`Codigo_Vegetal_Asociado`);

--
-- Indices de la tabla `calendario`
--
ALTER TABLE `calendario`
  ADD KEY `Codigo_Vegetal` (`Codigo_Vegetal`,`ID_Variedad`),
  ADD KEY `ID_Variedad` (`ID_Variedad`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`N°_Cliente`);

--
-- Indices de la tabla `cliente_empresa`
--
ALTER TABLE `cliente_empresa`
  ADD PRIMARY KEY (`N°_Cliente`),
  ADD KEY `N°_Cliente` (`N°_Cliente`);

--
-- Indices de la tabla `cliente_web`
--
ALTER TABLE `cliente_web`
  ADD PRIMARY KEY (`N°_Cliente`),
  ADD KEY `N°_Cliente` (`N°_Cliente`);

--
-- Indices de la tabla `control`
--
ALTER TABLE `control`
  ADD PRIMARY KEY (`Fecha_Inicio_Vegetal`),
  ADD KEY `Codigo_Vegetal` (`Codigo_Vegetal`,`ID_Variedad`),
  ADD KEY `Id_Estado_Vegetal` (`Id_Estado_Vegetal`),
  ADD KEY `ID_Variedad` (`ID_Variedad`);

--
-- Indices de la tabla `cultiva`
--
ALTER TABLE `cultiva`
  ADD KEY `Codigo_Vegetal` (`Codigo_Vegetal`,`ID_Variedad`,`ID_Huerta`),
  ADD KEY `ID_Variedad` (`ID_Variedad`),
  ADD KEY `ID_Huerta` (`ID_Huerta`);

--
-- Indices de la tabla `esta`
--
ALTER TABLE `esta`
  ADD PRIMARY KEY (`Fecha_Inicio_Pedido`),
  ADD KEY `N°_Pedido` (`N°_Pedido`,`Fecha_De_Entrega`),
  ADD KEY `Id_Estado_Pedido` (`Id_Estado_Pedido`),
  ADD KEY `Fecha_De_Entrega` (`Fecha_De_Entrega`);

--
-- Indices de la tabla `estado_pedido`
--
ALTER TABLE `estado_pedido`
  ADD PRIMARY KEY (`Id_Estado_Pedido`),
  ADD KEY `N°_Pedido` (`N°_Pedido`);

--
-- Indices de la tabla `estado_vegetal`
--
ALTER TABLE `estado_vegetal`
  ADD PRIMARY KEY (`Id_Estado_Vegetal`),
  ADD KEY `Codigo_Vegetal` (`Codigo_Vegetal`,`Id_Variedad`),
  ADD KEY `Id_Variedad` (`Id_Variedad`);

--
-- Indices de la tabla `genera`
--
ALTER TABLE `genera`
  ADD KEY `N°_Pedido` (`N°_Pedido`,`Fecha_De_Entrega`,`ID_Variedad`,`Codigo_Vegetal`),
  ADD KEY `Codigo_Vegetal` (`Codigo_Vegetal`),
  ADD KEY `ID_Variedad` (`ID_Variedad`);

--
-- Indices de la tabla `huerta`
--
ALTER TABLE `huerta`
  ADD PRIMARY KEY (`ID_Huerta`);

--
-- Indices de la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`N°_Pedido`,`Fecha_De_Entrega`);

--
-- Indices de la tabla `realiza`
--
ALTER TABLE `realiza`
  ADD KEY `N°_Cliente` (`N°_Cliente`,`Numero_Pedido`,`Fecha_De_Entrega`),
  ADD KEY `Numero_Pedido` (`Numero_Pedido`);

--
-- Indices de la tabla `se_almacena`
--
ALTER TABLE `se_almacena`
  ADD KEY `Codigo_Vegetal` (`Codigo_Vegetal`,`ID_Variedad`),
  ADD KEY `ID_Variedad` (`ID_Variedad`);

--
-- Indices de la tabla `stock`
--
ALTER TABLE `stock`
  ADD KEY `Codigo_Vegetal` (`Codigo_Vegetal`,`ID_Variedad`),
  ADD KEY `ID_Variedad` (`ID_Variedad`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`Nombre_Usuario`,`Contraseña`);

--
-- Indices de la tabla `variedad`
--
ALTER TABLE `variedad`
  ADD PRIMARY KEY (`ID_Variedad`),
  ADD KEY `Codigo_Vegetal` (`Codigo_Vegetal`);

--
-- Indices de la tabla `vegetales`
--
ALTER TABLE `vegetales`
  ADD PRIMARY KEY (`Codigo_Vegetal`);

--
-- Indices de la tabla `vende`
--
ALTER TABLE `vende`
  ADD PRIMARY KEY (`Fecha_Venta`),
  ADD KEY `Codigo_Vegetal` (`Codigo_Vegetal`,`ID_Variedad`),
  ADD KEY `ID_Variedad` (`ID_Variedad`);

--
-- Indices de la tabla `vincula`
--
ALTER TABLE `vincula`
  ADD KEY `Codigo_Vegetal` (`Codigo_Vegetal`,`ID_Variedad`),
  ADD KEY `ID_Variedad` (`ID_Variedad`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `asocia`
--
ALTER TABLE `asocia`
  ADD CONSTRAINT `asocia_ibfk_1` FOREIGN KEY (`Codigo_Vegetal_Primario`) REFERENCES `vegetales` (`Codigo_Vegetal`) ON DELETE CASCADE,
  ADD CONSTRAINT `asocia_ibfk_2` FOREIGN KEY (`Codigo_Vegetal_Asociado`) REFERENCES `vegetales` (`Codigo_Vegetal`) ON DELETE CASCADE;

--
-- Filtros para la tabla `calendario`
--
ALTER TABLE `calendario`
  ADD CONSTRAINT `calendario_ibfk_1` FOREIGN KEY (`Codigo_Vegetal`) REFERENCES `vegetales` (`Codigo_Vegetal`) ON DELETE CASCADE,
  ADD CONSTRAINT `calendario_ibfk_2` FOREIGN KEY (`ID_Variedad`) REFERENCES `variedad` (`ID_Variedad`) ON DELETE CASCADE;

--
-- Filtros para la tabla `cliente_empresa`
--
ALTER TABLE `cliente_empresa`
  ADD CONSTRAINT `cliente_empresa_ibfk_1` FOREIGN KEY (`N°_Cliente`) REFERENCES `cliente` (`N°_Cliente`) ON DELETE CASCADE;

--
-- Filtros para la tabla `cliente_web`
--
ALTER TABLE `cliente_web`
  ADD CONSTRAINT `cliente_web_ibfk_1` FOREIGN KEY (`N°_Cliente`) REFERENCES `cliente` (`N°_Cliente`) ON DELETE CASCADE;

--
-- Filtros para la tabla `control`
--
ALTER TABLE `control`
  ADD CONSTRAINT `control_ibfk_1` FOREIGN KEY (`Codigo_Vegetal`) REFERENCES `vegetales` (`Codigo_Vegetal`) ON DELETE CASCADE,
  ADD CONSTRAINT `control_ibfk_2` FOREIGN KEY (`ID_Variedad`) REFERENCES `variedad` (`ID_Variedad`) ON DELETE CASCADE,
  ADD CONSTRAINT `control_ibfk_3` FOREIGN KEY (`Id_Estado_Vegetal`) REFERENCES `estado_vegetal` (`Id_Estado_Vegetal`) ON DELETE CASCADE;

--
-- Filtros para la tabla `cultiva`
--
ALTER TABLE `cultiva`
  ADD CONSTRAINT `cultiva_ibfk_1` FOREIGN KEY (`Codigo_Vegetal`) REFERENCES `vegetales` (`Codigo_Vegetal`) ON DELETE CASCADE,
  ADD CONSTRAINT `cultiva_ibfk_2` FOREIGN KEY (`ID_Variedad`) REFERENCES `variedad` (`ID_Variedad`) ON DELETE CASCADE,
  ADD CONSTRAINT `cultiva_ibfk_3` FOREIGN KEY (`ID_Huerta`) REFERENCES `huerta` (`ID_Huerta`) ON DELETE CASCADE;

--
-- Filtros para la tabla `esta`
--
ALTER TABLE `esta`
  ADD CONSTRAINT `esta_ibfk_1` FOREIGN KEY (`N°_Pedido`) REFERENCES `pedido` (`N°_Pedido`) ON DELETE CASCADE,
  ADD CONSTRAINT `esta_ibfk_2` FOREIGN KEY (`Id_Estado_Pedido`) REFERENCES `estado_pedido` (`Id_Estado_Pedido`) ON DELETE CASCADE;

--
-- Filtros para la tabla `estado_pedido`
--
ALTER TABLE `estado_pedido`
  ADD CONSTRAINT `estado_pedido_ibfk_1` FOREIGN KEY (`N°_Pedido`) REFERENCES `pedido` (`N°_Pedido`) ON DELETE CASCADE;

--
-- Filtros para la tabla `estado_vegetal`
--
ALTER TABLE `estado_vegetal`
  ADD CONSTRAINT `estado_vegetal_ibfk_1` FOREIGN KEY (`Id_Variedad`) REFERENCES `variedad` (`ID_Variedad`) ON DELETE CASCADE;

--
-- Filtros para la tabla `genera`
--
ALTER TABLE `genera`
  ADD CONSTRAINT `genera_ibfk_1` FOREIGN KEY (`N°_Pedido`) REFERENCES `pedido` (`N°_Pedido`) ON DELETE CASCADE,
  ADD CONSTRAINT `genera_ibfk_2` FOREIGN KEY (`Codigo_Vegetal`) REFERENCES `vegetales` (`Codigo_Vegetal`) ON DELETE CASCADE,
  ADD CONSTRAINT `genera_ibfk_3` FOREIGN KEY (`ID_Variedad`) REFERENCES `variedad` (`ID_Variedad`) ON DELETE CASCADE;

--
-- Filtros para la tabla `realiza`
--
ALTER TABLE `realiza`
  ADD CONSTRAINT `realiza_ibfk_1` FOREIGN KEY (`N°_Cliente`) REFERENCES `cliente` (`N°_Cliente`) ON DELETE CASCADE,
  ADD CONSTRAINT `realiza_ibfk_2` FOREIGN KEY (`Numero_Pedido`) REFERENCES `pedido` (`N°_Pedido`) ON DELETE CASCADE;

--
-- Filtros para la tabla `se_almacena`
--
ALTER TABLE `se_almacena`
  ADD CONSTRAINT `se_almacena_ibfk_1` FOREIGN KEY (`Codigo_Vegetal`) REFERENCES `vegetales` (`Codigo_Vegetal`) ON DELETE CASCADE,
  ADD CONSTRAINT `se_almacena_ibfk_2` FOREIGN KEY (`ID_Variedad`) REFERENCES `variedad` (`ID_Variedad`) ON DELETE CASCADE;

--
-- Filtros para la tabla `stock`
--
ALTER TABLE `stock`
  ADD CONSTRAINT `stock_ibfk_1` FOREIGN KEY (`Codigo_Vegetal`) REFERENCES `vegetales` (`Codigo_Vegetal`) ON DELETE CASCADE,
  ADD CONSTRAINT `stock_ibfk_2` FOREIGN KEY (`ID_Variedad`) REFERENCES `variedad` (`ID_Variedad`) ON DELETE CASCADE;

--
-- Filtros para la tabla `variedad`
--
ALTER TABLE `variedad`
  ADD CONSTRAINT `variedad_ibfk_1` FOREIGN KEY (`Codigo_Vegetal`) REFERENCES `vegetales` (`Codigo_Vegetal`) ON DELETE CASCADE;

--
-- Filtros para la tabla `vegetales`
--
ALTER TABLE `vegetales`
  ADD CONSTRAINT `vegetales_ibfk_1` FOREIGN KEY (`Codigo_Vegetal`) REFERENCES `estado_vegetal` (`Codigo_Vegetal`) ON DELETE CASCADE;

--
-- Filtros para la tabla `vende`
--
ALTER TABLE `vende`
  ADD CONSTRAINT `vende_ibfk_1` FOREIGN KEY (`Codigo_Vegetal`) REFERENCES `vegetales` (`Codigo_Vegetal`) ON DELETE CASCADE,
  ADD CONSTRAINT `vende_ibfk_2` FOREIGN KEY (`ID_Variedad`) REFERENCES `variedad` (`ID_Variedad`) ON DELETE CASCADE;

--
-- Filtros para la tabla `vincula`
--
ALTER TABLE `vincula`
  ADD CONSTRAINT `vincula_ibfk_1` FOREIGN KEY (`Codigo_Vegetal`) REFERENCES `vegetales` (`Codigo_Vegetal`) ON DELETE CASCADE,
  ADD CONSTRAINT `vincula_ibfk_2` FOREIGN KEY (`ID_Variedad`) REFERENCES `variedad` (`ID_Variedad`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
