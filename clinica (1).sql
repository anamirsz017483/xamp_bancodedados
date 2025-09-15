-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 15/09/2025 às 18:50
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `clinica`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `consulta`
--

CREATE TABLE `consulta` (
  `id` int(11) NOT NULL,
  `id_paciente` int(11) DEFAULT NULL,
  `id_medico` int(11) DEFAULT NULL,
  `data_hora` datetime DEFAULT NULL,
  `observacoes` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `consulta`
--

INSERT INTO `consulta` (`id`, `id_paciente`, `id_medico`, `data_hora`, `observacoes`) VALUES
(1, 1, 3, '2025-09-19 14:00:00', 'consulta de rotina'),
(2, 1, 3, '2025-09-19 14:00:00', 'consulta de rotina'),
(3, 6, 5, '2022-10-30 15:15:00', 'consulta de rotina'),
(4, 1, 3, '2025-09-19 14:00:00', 'consulta de rotina'),
(5, 6, 5, '2022-10-30 15:15:00', 'consulta de rotina'),
(6, 2, 1, '1980-04-13 00:00:00', 'consulta de rotina'),
(7, 1, 3, '2025-09-19 14:00:00', 'consulta de rotina'),
(8, 6, 5, '2022-10-30 15:15:00', 'consulta de rotina'),
(9, 3, 1, '2000-09-12 12:30:00', 'consulta de rotina'),
(10, 1, 3, '2025-09-19 14:00:00', 'consulta de rotina'),
(11, 6, 5, '2022-10-30 15:15:00', 'consulta de rotina'),
(12, 2, 1, '1980-04-13 00:00:00', 'consulta de rotina'),
(13, 1, 3, '2025-09-19 14:00:00', 'consulta de rotina'),
(14, 6, 5, '2022-10-30 15:15:00', 'consulta de rotina'),
(15, 2, 1, '1980-04-13 12:30:00', 'consulta de rotina'),
(16, 2, 3, '2025-12-25 11:55:00', 'consulta de rotina'),
(17, 1, 3, '2025-09-19 14:00:00', 'consulta de rotina'),
(18, 6, 5, '2022-10-30 15:15:00', 'consulta de rotina'),
(19, 2, 1, '1980-04-13 12:30:00', 'consulta de rotina'),
(20, 2, 3, '2025-12-25 11:55:00', 'consulta de rotina');

-- --------------------------------------------------------

--
-- Estrutura para tabela `medico`
--

CREATE TABLE `medico` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `especialidade` varchar(50) DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `crm` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `medico`
--

INSERT INTO `medico` (`id`, `nome`, `especialidade`, `telefone`, `crm`) VALUES
(1, 'Dr.Carlos Souza', ' Cardiologista', '5555-6666', 'CRM12345'),
(2, 'Dra.Ana Lima', 'pediatra', '7878-0000', 'CRM67890'),
(3, 'Dr.Marcos Alves', 'Dermatologista', '8889-7070', 'CRM11223'),
(4, 'Dra. Luisa Costa', 'ginecologista', '9998-9090', 'CRM44556'),
(5, 'Dr.Jairo Miranda', 'cirurgia geral', '7777-3333', 'CRM2232'),
(6, 'Dra.Rita Cassia', 'oftalmologia', '2232-3844', 'CRM3348'),
(7, 'Dra.Isis Cruz', 'Anestesiologia', '1573-7632', 'CRM98321'),
(8, 'Dra.Isis Cruz', 'Anestesiologia', '1573-7632', 'CRM98321');

-- --------------------------------------------------------

--
-- Estrutura para tabela `paciente`
--

CREATE TABLE `paciente` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `data_nascimento` date DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `endereco` varchar(200) DEFAULT NULL,
  `cep` varchar(10) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `paciente`
--

INSERT INTO `paciente` (`id`, `nome`, `data_nascimento`, `telefone`, `endereco`, `cep`, `email`) VALUES
(1, 'João Silva', '1990-05-12', '9998-9090', 'Rua Das Menções, 34', '12345-520', 'joao@gmail.com'),
(2, 'João Silva', '1990-05-12', '9998-9090', 'Rua Das Menções, 34', '12345-520', 'joao@gmail.com'),
(3, 'Ana Clara', '2005-10-05', '8765-2134', 'Rua Dos sorvetes, 29', '13455-720', 'anaclara@gmail.com'),
(4, 'Isis Miranda', '2023-07-15', '6782-1359', 'Rua Francisco,17', '18117-381', 'isis@gmail.com'),
(5, 'Rafael lima', '0000-00-00', '5362-9876', 'Rua Dos parques, 90', '98765-902', 'Rafael@gmail.com'),
(6, 'João Silva', '1990-05-12', '9998-9090', 'Rua Das Menções, 34', '12345-520', 'joao@gmail.com'),
(7, 'Ana Clara', '2005-10-05', '8765-2134', 'Rua Dos sorvetes, 29', '13455-720', 'anaclara@gmail.com'),
(8, 'Isis Miranda', '2023-07-15', '6782-1359', 'Rua Francisco,17', '18117-381', 'isis@gmail.com'),
(9, 'Rafael lima', '0000-00-00', '5362-9876', 'Rua Dos parques, 90', '98765-902', 'Rafael@gmail.com'),
(10, 'Vitor Manuel', '2009-08-30', '1599-0874', 'Rua Jose de carvalho, 68', '33282-0762', 'vitor@gmail.com'),
(11, 'Rfaelly Araujo', '2012-08-11', '3228-7654', 'Rua Balneario, 68', '21457-9054', 'rafaelly@gmail.com'),
(12, 'João Silva', '1990-05-12', '9998-9090', 'Rua Das Menções, 34', '12345-520', 'joao@gmail.com'),
(13, 'Ana Clara', '2005-10-05', '8765-2134', 'Rua Dos sorvetes, 29', '13455-720', 'anaclara@gmail.com'),
(14, 'Isis Miranda', '2023-07-15', '6782-1359', 'Rua Francisco,17', '18117-381', 'isis@gmail.com'),
(15, 'Rafael lima', '0000-00-00', '5362-9876', 'Rua Dos parques, 90', '98765-902', 'Rafael@gmail.com'),
(16, 'Vitor Manuel', '2009-08-30', '1599-0874', 'Rua Jose de carvalho, 68', '33282-0762', 'vitor@gmail.com'),
(17, 'Rfaelly Araujo', '2012-08-11', '3228-7654', 'Rua Balneario, 68', '21457-9054', 'rafaelly@gmail.com'),
(18, 'Jorge valdeare', '1967-11-09', '4321-5678', 'Rua Rosalia, 89', '21468-097', 'jorge@gmail.com'),
(19, 'Gustavo Henrique', '2008-02-15', '7654-8906', 'Rua dos Santos, 27', '37028-978', 'gustavo@gmail.com'),
(20, 'João Silva', '1990-05-12', '9998-9090', 'Rua Das Menções, 34', '12345-520', 'joao@gmail.com'),
(21, 'Ana Clara', '2005-10-05', '8765-2134', 'Rua Dos sorvetes, 29', '13455-720', 'anaclara@gmail.com'),
(22, 'Isis Miranda', '2023-07-15', '6782-1359', 'Rua Francisco,17', '18117-381', 'isis@gmail.com'),
(23, 'Rafael lima', '0000-00-00', '5362-9876', 'Rua Dos parques, 90', '98765-902', 'Rafael@gmail.com'),
(24, 'Vitor Manuel', '2009-08-30', '1599-0874', 'Rua Jose de carvalho, 68', '33282-0762', 'vitor@gmail.com'),
(25, 'Rfaelly Araujo', '2012-08-11', '3228-7654', 'Rua Balneario, 68', '21457-9054', 'rafaelly@gmail.com'),
(26, 'Jorge valdeare', '1967-11-09', '4321-5678', 'Rua Rosalia, 89', '21468-097', 'jorge@gmail.com'),
(27, 'Gustavo Henrique', '2008-02-15', '7654-8906', 'Rua dos Santos, 27', '37028-978', 'gustavo@gmail.com'),
(28, 'João Silva', '1990-05-12', '9998-9090', 'Rua Das Menções, 34', '12345-520', 'joao@gmail.com'),
(29, 'Ana Clara', '2005-10-05', '8765-2134', 'Rua Dos sorvetes, 29', '13455-720', 'anaclara@gmail.com'),
(30, 'Isis Miranda', '2023-07-15', '6782-1359', 'Rua Francisco,17', '18117-381', 'isis@gmail.com'),
(31, 'Rafael lima', '0000-00-00', '5362-9876', 'Rua Dos parques, 90', '98765-902', 'Rafael@gmail.com'),
(32, 'Vitor Manuel', '2009-08-30', '1599-0874', 'Rua Jose de carvalho, 68', '33282-0762', 'vitor@gmail.com'),
(33, 'Rfaelly Araujo', '2012-08-11', '3228-7654', 'Rua Balneario, 68', '21457-9054', 'rafaelly@gmail.com'),
(34, 'Jorge valdeare', '1967-11-09', '4321-5678', 'Rua Rosalia, 89', '21468-097', 'jorge@gmail.com'),
(35, 'Gustavo Henrique', '2008-02-15', '7654-8906', 'Rua dos Santos, 27', '37028-978', 'gustavo@gmail.com'),
(36, 'João Silva', '1990-05-12', '9998-9090', 'Rua Das Menções, 34', '12345-520', 'joao@gmail.com'),
(37, 'Ana Clara', '2005-10-05', '8765-2134', 'Rua Dos sorvetes, 29', '13455-720', 'anaclara@gmail.com'),
(38, 'Isis Miranda', '2023-07-15', '6782-1359', 'Rua Francisco,17', '18117-381', 'isis@gmail.com'),
(39, 'Rafael lima', '0000-00-00', '5362-9876', 'Rua Dos parques, 90', '98765-902', 'Rafael@gmail.com'),
(40, 'Vitor Manuel', '2009-08-30', '1599-0874', 'Rua Jose de carvalho, 68', '33282-0762', 'vitor@gmail.com'),
(41, 'Rfaelly Araujo', '2012-08-11', '3228-7654', 'Rua Balneario, 68', '21457-9054', 'rafaelly@gmail.com'),
(42, 'Jorge valdeare', '1967-11-09', '4321-5678', 'Rua Rosalia, 89', '21468-097', 'jorge@gmail.com'),
(43, 'Gustavo Henrique', '2008-02-15', '7654-8906', 'Rua dos Santos, 27', '37028-978', 'gustavo@gmail.com'),
(44, 'João Silva', '1990-05-12', '9998-9090', 'Rua Das Menções, 34', '12345-520', 'joao@gmail.com'),
(45, 'Ana Clara', '2005-10-05', '8765-2134', 'Rua Dos sorvetes, 29', '13455-720', 'anaclara@gmail.com'),
(46, 'Isis Miranda', '2023-07-15', '6782-1359', 'Rua Francisco,17', '18117-381', 'isis@gmail.com'),
(47, 'Rafael lima', '0000-00-00', '5362-9876', 'Rua Dos parques, 90', '98765-902', 'Rafael@gmail.com'),
(48, 'Vitor Manuel', '2009-08-30', '1599-0874', 'Rua Jose de carvalho, 68', '33282-0762', 'vitor@gmail.com'),
(49, 'Rfaelly Araujo', '2012-08-11', '3228-7654', 'Rua Balneario, 68', '21457-9054', 'rafaelly@gmail.com'),
(50, 'Jorge valdeare', '1967-11-09', '4321-5678', 'Rua Rosalia, 89', '21468-097', 'jorge@gmail.com'),
(51, 'Gustavo Henrique', '2008-02-15', '7654-8906', 'Rua dos Santos, 27', '37028-978', 'gustavo@gmail.com'),
(52, 'João Silva', '1990-05-12', '9998-9090', 'Rua Das Menções, 34', '12345-520', 'joao@gmail.com'),
(53, 'Ana Clara', '2005-10-05', '8765-2134', 'Rua Dos sorvetes, 29', '13455-720', 'anaclara@gmail.com'),
(54, 'Isis Miranda', '2023-07-15', '6782-1359', 'Rua Francisco,17', '18117-381', 'isis@gmail.com'),
(55, 'Rafael lima', '0000-00-00', '5362-9876', 'Rua Dos parques, 90', '98765-902', 'Rafael@gmail.com'),
(56, 'Vitor Manuel', '2009-08-30', '1599-0874', 'Rua Jose de carvalho, 68', '33282-0762', 'vitor@gmail.com'),
(57, 'Rfaelly Araujo', '2012-08-11', '3228-7654', 'Rua Balneario, 68', '21457-9054', 'rafaelly@gmail.com'),
(58, 'Jorge valdeare', '1967-11-09', '4321-5678', 'Rua Rosalia, 89', '21468-097', 'jorge@gmail.com'),
(59, 'Gustavo Henrique', '2008-02-15', '7654-8906', 'Rua dos Santos, 27', '37028-978', 'gustavo@gmail.com'),
(60, 'João Silva', '1990-05-12', '9998-9090', 'Rua Das Menções, 34', '12345-520', 'joao@gmail.com'),
(61, 'Ana Clara', '2005-10-05', '8765-2134', 'Rua Dos sorvetes, 29', '13455-720', 'anaclara@gmail.com'),
(62, 'Isis Miranda', '2023-07-15', '6782-1359', 'Rua Francisco,17', '18117-381', 'isis@gmail.com'),
(63, 'Rafael lima', '0000-00-00', '5362-9876', 'Rua Dos parques, 90', '98765-902', 'Rafael@gmail.com'),
(64, 'Vitor Manuel', '2009-08-30', '1599-0874', 'Rua Jose de carvalho, 68', '33282-0762', 'vitor@gmail.com'),
(65, 'Rfaelly Araujo', '2012-08-11', '3228-7654', 'Rua Balneario, 68', '21457-9054', 'rafaelly@gmail.com'),
(66, 'Jorge valdeare', '1967-11-09', '4321-5678', 'Rua Rosalia, 89', '21468-097', 'jorge@gmail.com'),
(67, 'Gustavo Henrique', '2008-02-15', '7654-8906', 'Rua dos Santos, 27', '37028-978', 'gustavo@gmail.com'),
(68, 'Eva Araujo', '1988-10-25', '1456-9876', 'Rua dois,77', '21766-775', 'eva@gmail.com'),
(69, 'Alice Dias', '2000-07-02', '5552-1334', 'Rua a, 81', '87654-109', 'alice@gmail.com'),
(70, 'João Silva', '1990-05-12', '9998-9090', 'Rua Das Menções, 34', '12345-520', 'joao@gmail.com'),
(71, 'Ana Clara', '2005-10-05', '8765-2134', 'Rua Dos sorvetes, 29', '13455-720', 'anaclara@gmail.com'),
(72, 'Isis Miranda', '2023-07-15', '6782-1359', 'Rua Francisco,17', '18117-381', 'isis@gmail.com'),
(73, 'Rafael lima', '0000-00-00', '5362-9876', 'Rua Dos parques, 90', '98765-902', 'Rafael@gmail.com'),
(74, 'Vitor Manuel', '2009-08-30', '1599-0874', 'Rua Jose de carvalho, 68', '33282-0762', 'vitor@gmail.com'),
(75, 'Rfaelly Araujo', '2012-08-11', '3228-7654', 'Rua Balneario, 68', '21457-9054', 'rafaelly@gmail.com'),
(76, 'Jorge valdeare', '1967-11-09', '4321-5678', 'Rua Rosalia, 89', '21468-097', 'jorge@gmail.com'),
(77, 'Gustavo Henrique', '2008-02-15', '7654-8906', 'Rua dos Santos, 27', '37028-978', 'gustavo@gmail.com'),
(78, 'Eva Araujo', '1988-10-25', '1456-9876', 'Rua dois,77', '21766-775', 'eva@gmail.com'),
(79, 'Alice Dias', '2000-07-02', '5552-1334', 'Rua a, 81', '87654-109', 'alice@gmail.com'),
(80, 'João Silva', '1990-05-12', '9998-9090', 'Rua Das Menções, 34', '12345-520', 'joao@gmail.com'),
(81, 'Ana Clara', '2005-10-05', '8765-2134', 'Rua Dos sorvetes, 29', '13455-720', 'anaclara@gmail.com'),
(82, 'Isis Miranda', '2023-07-15', '6782-1359', 'Rua Francisco,17', '18117-381', 'isis@gmail.com'),
(83, 'Rafael lima', '0000-00-00', '5362-9876', 'Rua Dos parques, 90', '98765-902', 'Rafael@gmail.com'),
(84, 'Vitor Manuel', '2009-08-30', '1599-0874', 'Rua Jose de carvalho, 68', '33282-0762', 'vitor@gmail.com'),
(85, 'Rfaelly Araujo', '2012-08-11', '3228-7654', 'Rua Balneario, 68', '21457-9054', 'rafaelly@gmail.com'),
(86, 'Jorge valdeare', '1967-11-09', '4321-5678', 'Rua Rosalia, 89', '21468-097', 'jorge@gmail.com'),
(87, 'Gustavo Henrique', '2008-02-15', '7654-8906', 'Rua dos Santos, 27', '37028-978', 'gustavo@gmail.com'),
(88, 'Eva Araujo', '1988-10-25', '1456-9876', 'Rua dois,77', '21766-775', 'eva@gmail.com'),
(89, 'Alice Dias', '2000-07-02', '5552-1334', 'Rua a, 81', '87654-109', 'alice@gmail.com'),
(90, 'João Silva', '1990-05-12', '9998-9090', 'Rua Das Menções, 34', '12345-520', 'joao@gmail.com'),
(91, 'Ana Clara', '2005-10-05', '8765-2134', 'Rua Dos sorvetes, 29', '13455-720', 'anaclara@gmail.com'),
(92, 'Isis Miranda', '2023-07-15', '6782-1359', 'Rua Francisco,17', '18117-381', 'isis@gmail.com'),
(93, 'Rafael lima', '0000-00-00', '5362-9876', 'Rua Dos parques, 90', '98765-902', 'Rafael@gmail.com'),
(94, 'Vitor Manuel', '2009-08-30', '1599-0874', 'Rua Jose de carvalho, 68', '33282-0762', 'vitor@gmail.com'),
(95, 'Rfaelly Araujo', '2012-08-11', '3228-7654', 'Rua Balneario, 68', '21457-9054', 'rafaelly@gmail.com'),
(96, 'Jorge valdeare', '1967-11-09', '4321-5678', 'Rua Rosalia, 89', '21468-097', 'jorge@gmail.com'),
(97, 'Gustavo Henrique', '2008-02-15', '7654-8906', 'Rua dos Santos, 27', '37028-978', 'gustavo@gmail.com'),
(98, 'Eva Araujo', '1988-10-25', '1456-9876', 'Rua dois,77', '21766-775', 'eva@gmail.com'),
(99, 'Alice Dias', '2000-07-02', '5552-1334', 'Rua a, 81', '87654-109', 'alice@gmail.com'),
(100, 'João Silva', '1990-05-12', '9998-9090', 'Rua Das Menções, 34', '12345-520', 'joao@gmail.com'),
(101, 'Ana Clara', '2005-10-05', '8765-2134', 'Rua Dos sorvetes, 29', '13455-720', 'anaclara@gmail.com'),
(102, 'Isis Miranda', '2023-07-15', '6782-1359', 'Rua Francisco,17', '18117-381', 'isis@gmail.com'),
(103, 'Rafael lima', '0000-00-00', '5362-9876', 'Rua Dos parques, 90', '98765-902', 'Rafael@gmail.com'),
(104, 'Vitor Manuel', '2009-08-30', '1599-0874', 'Rua Jose de carvalho, 68', '33282-0762', 'vitor@gmail.com'),
(105, 'Rfaelly Araujo', '2012-08-11', '3228-7654', 'Rua Balneario, 68', '21457-9054', 'rafaelly@gmail.com'),
(106, 'Jorge valdeare', '1967-11-09', '4321-5678', 'Rua Rosalia, 89', '21468-097', 'jorge@gmail.com'),
(107, 'Gustavo Henrique', '2008-02-15', '7654-8906', 'Rua dos Santos, 27', '37028-978', 'gustavo@gmail.com'),
(108, 'Eva Araujo', '1988-10-25', '1456-9876', 'Rua dois,77', '21766-775', 'eva@gmail.com'),
(109, 'Alice Dias', '2000-07-02', '5552-1334', 'Rua a, 81', '87654-109', 'alice@gmail.com'),
(110, 'João Silva', '1990-05-12', '9998-9090', 'Rua Das Menções, 34', '12345-520', 'joao@gmail.com'),
(111, 'Ana Clara', '2005-10-05', '8765-2134', 'Rua Dos sorvetes, 29', '13455-720', 'anaclara@gmail.com'),
(112, 'Isis Miranda', '2023-07-15', '6782-1359', 'Rua Francisco,17', '18117-381', 'isis@gmail.com'),
(113, 'Rafael lima', '0000-00-00', '5362-9876', 'Rua Dos parques, 90', '98765-902', 'Rafael@gmail.com'),
(114, 'Vitor Manuel', '2009-08-30', '1599-0874', 'Rua Jose de carvalho, 68', '33282-0762', 'vitor@gmail.com'),
(115, 'Rfaelly Araujo', '2012-08-11', '3228-7654', 'Rua Balneario, 68', '21457-9054', 'rafaelly@gmail.com'),
(116, 'Jorge valdeare', '1967-11-09', '4321-5678', 'Rua Rosalia, 89', '21468-097', 'jorge@gmail.com'),
(117, 'Gustavo Henrique', '2008-02-15', '7654-8906', 'Rua dos Santos, 27', '37028-978', 'gustavo@gmail.com'),
(118, 'Eva Araujo', '1988-10-25', '1456-9876', 'Rua dois,77', '21766-775', 'eva@gmail.com'),
(119, 'Alice Dias', '2000-07-02', '5552-1334', 'Rua a, 81', '87654-109', 'alice@gmail.com'),
(120, 'João Silva', '1990-05-12', '9998-9090', 'Rua Das Menções, 34', '12345-520', 'joao@gmail.com'),
(121, 'João Silva', '1990-05-12', '9998-9090', 'Rua Das Menções, 34', '12345-520', 'joao@gmail.com'),
(122, 'Ana Clara', '2005-10-05', '8765-2134', 'Rua Dos sorvetes, 29', '13455-720', 'anaclara@gmail.com'),
(123, 'Isis Miranda', '2023-07-15', '6782-1359', 'Rua Francisco,17', '18117-381', 'isis@gmail.com'),
(124, 'Rafael lima', '0000-00-00', '5362-9876', 'Rua Dos parques, 90', '98765-902', 'Rafael@gmail.com'),
(125, 'Vitor Manuel', '2009-08-30', '1599-0874', 'Rua Jose de carvalho, 68', '33282-0762', 'vitor@gmail.com'),
(126, 'Rafaelly Araujo', '2012-08-11', '3228-7654', 'Rua Balneario, 68', '21457-9054', 'rafaelly@gmail.com'),
(127, 'Jorge valdeare', '1967-11-09', '4321-5678', 'Rua Rosalia, 89', '21468-097', 'jorge@gmail.com'),
(128, 'Gustavo Henrique', '2008-02-15', '7654-8906', 'Rua dos Santos, 27', '37028-978', 'gustavo@gmail.com'),
(129, 'Eva Araujo', '1988-10-25', '1456-9876', 'Rua dois,77', '21766-775', 'eva@gmail.com'),
(130, 'Alice Dias', '2000-07-02', '5552-1334', 'Rua a, 81', '87654-109', 'alice@gmail.com'),
(131, 'João Silva', '1990-05-12', '9998-9090', 'Rua Das Menções, 34', '12345-520', 'joao@gmail.com'),
(132, 'Ana Clara', '2005-10-05', '8765-2134', 'Rua Dos sorvetes, 29', '13455-720', 'anaclara@gmail.com'),
(133, 'Isis Miranda', '2023-07-15', '6782-1359', 'Rua Francisco,17', '18117-381', 'isis@gmail.com'),
(134, 'Rafael lima', '0000-00-00', '5362-9876', 'Rua Dos parques, 90', '98765-902', 'Rafael@gmail.com'),
(135, 'Vitor Manuel', '2009-08-30', '1599-0874', 'Rua Jose de carvalho, 68', '33282-0762', 'vitor@gmail.com'),
(136, 'Rafaelly Araujo', '2012-08-11', '3228-7654', 'Rua Balneario, 68', '21457-9054', 'rafaelly@gmail.com'),
(137, 'Jorge valdeare', '1967-11-09', '4321-5678', 'Rua Rosalia, 89', '21468-097', 'jorge@gmail.com'),
(138, 'Gustavo Henrique', '2008-02-15', '7654-8906', 'Rua dos Santos, 27', '37028-978', 'gustavo@gmail.com'),
(139, 'Eva Araujo', '1988-10-25', '1456-9876', 'Rua dois,77', '21766-775', 'eva@gmail.com'),
(140, 'Alice Dias', '2000-07-02', '5552-1334', 'Rua a, 81', '87654-109', 'alice@gmail.com');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `consulta`
--
ALTER TABLE `consulta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_paciente` (`id_paciente`),
  ADD KEY `id_medico` (`id_medico`);

--
-- Índices de tabela `medico`
--
ALTER TABLE `medico`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `paciente`
--
ALTER TABLE `paciente`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `consulta`
--
ALTER TABLE `consulta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de tabela `medico`
--
ALTER TABLE `medico`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `paciente`
--
ALTER TABLE `paciente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `consulta`
--
ALTER TABLE `consulta`
  ADD CONSTRAINT `consulta_ibfk_1` FOREIGN KEY (`id_paciente`) REFERENCES `paciente` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `consulta_ibfk_2` FOREIGN KEY (`id_medico`) REFERENCES `medico` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
