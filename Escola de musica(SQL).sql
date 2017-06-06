-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 05, 2017 at 07:07 PM
-- Server version: 5.6.35
-- PHP Version: 7.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `Escola_de_Musica`
--

-- --------------------------------------------------------

--
-- Table structure for table `Alunos`
--

CREATE TABLE `Alunos` (
                       `IdAl` int(11) NOT NULL,
                       `Data de Nascimento` date NOT NULL,
                       `Morada` varchar(250) NOT NULL
                       ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Alunos`
--

INSERT INTO `Alunos` (`IdAl`, `Data de Nascimento`, `Morada`) VALUES
(4441, '1999-01-20', 'Rua Direita,1A'),
(4442, '1999-05-27', 'Rua Das Pretas nº11'),
(4443, '1999-10-05', 'Praceta Do Almirante nº21'),
(4444, '1999-08-10', 'Travessa 25 de Abril nº1'),
(4445, '1999-06-03', 'Rua de Espinho, nº33');

-- --------------------------------------------------------

--
-- Table structure for table `Disciplinas`
--

CREATE TABLE `Disciplinas` (
                            `IdDis` int(11) NOT NULL DEFAULT '0',
                            `Precedencias` int(11) DEFAULT NULL,
                            `Capacidade_Maxima` int(11) DEFAULT NULL
                            ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Disciplinas`
--

INSERT INTO `Disciplinas` (`IdDis`, `Precedencias`, `Capacidade_Maxima`) VALUES
(3331, NULL, 20),
(3332, NULL, 20),
(3333, NULL, 20),
(3334, NULL, 20),
(3335, NULL, 20);

-- --------------------------------------------------------

--
-- Table structure for table `Instrumentos`
--

CREATE TABLE `Instrumentos` (
                             `IdInst` int(11) NOT NULL DEFAULT '0',
                             `Peso` float DEFAULT NULL,
                             `Valor` smallint(6) DEFAULT NULL
                             ) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Instrumentos`
--

INSERT INTO `Instrumentos` (`IdInst`, `Peso`, `Valor`) VALUES
(1111, 5, 100),
(1112, 5, 100),
(1113, 5, 100),
(1114, 10, 150),
(1115, 10, 150);

-- --------------------------------------------------------

--
-- Table structure for table `Notas`
--

CREATE TABLE `Notas` (
                      `IdAl` int(11) DEFAULT NULL,
                      `IdDis` int(11) DEFAULT NULL,
                      `Notas` int(11) NOT NULL DEFAULT '0'
                      ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Notas`
--

INSERT INTO `Notas` (`IdAl`, `IdDis`, `Notas`) VALUES
(4441, 3333, 8),
(4441, 3331, 10),
(4441, 3334, 11),
(4441, 3332, 13),
(4441, 3335, 14),
(4442, 3331, 4),
(4442, 3332, 8),
(4442, 3333, 9),
(4442, 3334, 11),
(4442, 3335, 10),
(4443, 3331, 19),
(4443, 3332, 18),
(4443, 3333, 20),
(4443, 3334, 17),
(4443, 3335, 17),
(4443, 3331, 13),
(4443, 3332, 14),
(4443, 3333, 15),
(4443, 3334, 16),
(4443, 3335, 13),
(4445, 3331, 9),
(4445, 3332, 10),
(4445, 3333, 10),
(4445, 3334, 11),
(4445, 3335, 10);

-- --------------------------------------------------------

--
-- Table structure for table `Professor`
--

CREATE TABLE `Professor` (
                          `IdProf` int(11) NOT NULL,
                          `Morada` varchar(250) NOT NULL,
                          `Data de Nascimento` date NOT NULL
                          ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Professor`
--

INSERT INTO `Professor` (`IdProf`, `Morada`, `Data de Nascimento`) VALUES
(2221, 'Rua Das Furnas 1A', '1971-03-14'),
(2222, 'Avenida Da Liberdade Nº101 3ºEsq', '1970-01-08'),
(2223, 'Rua Dos Lusiadas lote 3', '1964-06-30'),
(2224, 'Calçada de Carriche Nº1', '1961-10-21'),
(2225, 'Apartamento 2 da Esquina 3, 3ºD', '1963-06-07');

-- --------------------------------------------------------

--
-- Table structure for table `Sala`
--

CREATE TABLE `Sala` (
                     `Número` int(11) NOT NULL,
                     `Capacidade` int(11) NOT NULL
                     ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Sala`
--

INSERT INTO `Sala` (`Número`, `Capacidade`) VALUES
(1, 20),
(2, 20),
(3, 25),
(4, 10),
(5, 25);

-- --------------------------------------------------------

--
-- Table structure for table `Secção`
--

CREATE TABLE `Secção` (
                       `IdSec` varchar(11) NOT NULL
                       ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Secção`
--

INSERT INTO `Secção` (`IdSec`) VALUES
('Cordas'),
('Eléctricos'),
('Sopro'),
('Tambores'),
('Teclas');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Alunos`
--
ALTER TABLE `Alunos`
ADD PRIMARY KEY (`IdAl`);

--
-- Indexes for table `Disciplinas`
--
ALTER TABLE `Disciplinas`
ADD PRIMARY KEY (`IdDis`);

--
-- Indexes for table `Instrumentos`
--
ALTER TABLE `Instrumentos`
ADD PRIMARY KEY (`IdInst`);

--
-- Indexes for table `Notas`
--
ALTER TABLE `Notas`
ADD KEY `IdAl` (`IdAl`),
ADD KEY `IdDis` (`IdDis`);

--
-- Indexes for table `Professor`
--
ALTER TABLE `Professor`
ADD PRIMARY KEY (`IdProf`);

--
-- Indexes for table `Sala`
--
ALTER TABLE `Sala`
ADD PRIMARY KEY (`Número`);

--
-- Indexes for table `Secção`
--
ALTER TABLE `Secção`
ADD PRIMARY KEY (`IdSec`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Notas`
--
ALTER TABLE `Notas`
ADD CONSTRAINT `notas_ibfk_1` FOREIGN KEY (`IdAl`) REFERENCES `Alunos` (`IdAl`),
ADD CONSTRAINT `notas_ibfk_2` FOREIGN KEY (`IdDis`) REFERENCES `Disciplinas` (`IdDis`);
