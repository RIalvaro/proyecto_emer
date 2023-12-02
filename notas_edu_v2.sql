-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 29, 2023 at 11:12 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `notas_edu`
--

-- --------------------------------------------------------

--
-- Table structure for table `asignatura`
--

CREATE TABLE `asignatura` (
  `id` int NOT NULL,
  `idUsuario` int NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `creditos` int NOT NULL,
  `profesor` varchar(50) DEFAULT NULL,
  `promedioTotal` decimal(3,1) NOT NULL DEFAULT '0.0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `asignatura`
--

INSERT INTO `asignatura` (`id`, `idUsuario`, `nombre`, `creditos`, `profesor`, `promedioTotal`) VALUES
(1, 1, 'Programacion', 3, 'Carlos Angarita', '0.0'),
(2, 1, 'ARQ. PC', 15, 'Marco Adarme', '0.0'),
(3, 3, 'fisica', 50, 'SALGUA', '0.0'),
(4, 3, 'FISICA 2', 100, 'NELZON', '0.0'),
(5, 3, 'TEC EMEGERTES', 15, 'SANTOS', '0.0'),
(6, 3, 'fisica', 45, 'SALGUA', '0.0'),
(7, 2, 'fisica', 45, 'SALGUA', '0.0'),
(8, 2, 'matematicas', 22, 'sosa', '0.0');

-- --------------------------------------------------------

--
-- Table structure for table `asignaturanota`
--

CREATE TABLE `asignaturanota` (
  `idAsignatura` int NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `nota` decimal(2,1) NOT NULL DEFAULT '0.0',
  `porcentaje` decimal(3,1) NOT NULL DEFAULT '0.0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `asignaturanota`
--

INSERT INTO `asignaturanota` (`idAsignatura`, `nombre`, `nota`, `porcentaje`) VALUES
(1, 'Nota 1', '0.0', '23.3'),
(1, 'Nota 2', '0.0', '22.3'),
(1, 'Nota 3', '0.0', '23.3'),
(1, 'Nota 4', '0.0', '30.0'),
(2, 'Nota 1', '0.0', '23.3'),
(2, 'Nota 2', '0.0', '23.3'),
(2, 'Nota 3', '0.0', '23.3'),
(2, 'Nota 4', '0.0', '30.0'),
(2, 'Nota 1', '0.0', '0.0'),
(2, 'Nota 2', '0.0', '0.0'),
(2, 'Nota 3', '0.0', '0.0'),
(2, 'Nota 4', '0.0', '0.0'),
(2, 'Nota 1', '0.0', '0.0'),
(2, 'Nota 2', '0.0', '0.0'),
(2, 'Nota 3', '0.0', '0.0'),
(2, 'Nota 4', '0.0', '0.0'),
(2, 'Nota 1', '0.0', '0.0'),
(2, 'Nota 2', '0.0', '0.0'),
(2, 'Nota 3', '0.0', '0.0'),
(2, 'Nota 4', '0.0', '0.0'),
(2, 'Nota 1', '0.0', '0.0'),
(2, 'Nota 2', '0.0', '0.0'),
(2, 'Nota 3', '0.0', '0.0'),
(2, 'Nota 4', '0.0', '0.0'),
(3, 'ramiro', '1.0', '0.0'),
(2, 'Nota 1', '0.0', '0.0'),
(2, 'Nota 2', '0.0', '0.0'),
(2, 'Nota 3', '0.0', '0.0'),
(2, 'Nota 4', '0.0', '0.0'),
(2, 'Nota 1', '0.0', '0.0'),
(2, 'Nota 2', '0.0', '0.0'),
(2, 'Nota 3', '0.0', '0.0'),
(2, 'Nota 4', '0.0', '0.0');

--
-- Triggers `asignaturanota`
--
DELIMITER $$
CREATE TRIGGER `asignaturaNota_update` AFTER UPDATE ON `asignaturanota` FOR EACH ROW BEGIN

	set @newTotal = (select sum(nota * porcentaje * 0.01) as total from asignaturaNota where idAsignatura = old.idAsignatura);
	
	set @oldTotal = (select promedioTotal from asignatura WHERE id = old.idAsignatura);
	
	if (@newTotal != @oldTotal) then
		update asignatura set promedioTotal = @newTotal where id = old.idAsignatura;
	end if;
    
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `usuario`
--

CREATE TABLE `usuario` (
  `id` int NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `telefono` varchar(50) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `usuario`
--

INSERT INTO `usuario` (`id`, `nombre`, `apellido`, `email`, `telefono`, `usuario`, `password`) VALUES
(1, 'Alvaro', 'Rojas LLARI', 'alvariror@gmail.com', '78545254', 'root', 'root'),
(2, 'miguel', 'oliva', 'livera@gmail.com', '12345678', 'miguel', 'miguel'),
(3, 'Joselito', 'flores', 'elfacilk@gmail.com', '123456789', 'joselito', 'joselito');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `asignatura`
--
ALTER TABLE `asignatura`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idUsuario` (`idUsuario`);

--
-- Indexes for table `asignaturanota`
--
ALTER TABLE `asignaturanota`
  ADD KEY `idAsignatura` (`idAsignatura`);

--
-- Indexes for table `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `usuario` (`usuario`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `asignatura`
--
ALTER TABLE `asignatura`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `asignatura`
--
ALTER TABLE `asignatura`
  ADD CONSTRAINT `asignatura_ibfk_1` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `asignaturanota`
--
ALTER TABLE `asignaturanota`
  ADD CONSTRAINT `asignaturanota_ibfk_1` FOREIGN KEY (`idAsignatura`) REFERENCES `asignatura` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
