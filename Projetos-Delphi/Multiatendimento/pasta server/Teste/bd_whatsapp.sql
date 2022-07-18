-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 01-Mar-2022 às 21:54
-- Versão do servidor: 10.4.19-MariaDB
-- versão do PHP: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `bd_whatsapp`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_arquivo`
--

CREATE TABLE `tb_arquivo` (
  `id` int(11) NOT NULL,
  `id_empresa` int(11) DEFAULT NULL,
  `id_atendimento` int(11) DEFAULT NULL,
  `origem` varchar(60) DEFAULT NULL,
  `destino` varchar(60) DEFAULT NULL,
  `arquivo` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_assunto`
--

CREATE TABLE `tb_assunto` (
  `id` int(11) NOT NULL,
  `id_empresa` int(11) DEFAULT NULL,
  `assunto` varchar(250) DEFAULT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_assunto`
--

INSERT INTO `tb_assunto` (`id`, `id_empresa`, `assunto`, `status`) VALUES
(1, 1, 'Dúvidas', 1),
(2, 1, 'Elogios', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_atendente`
--

CREATE TABLE `tb_atendente` (
  `id` int(11) NOT NULL,
  `id_empresa` int(11) DEFAULT NULL,
  `id_setor` int(11) DEFAULT NULL,
  `nome` varchar(200) DEFAULT NULL,
  `whatsapp` varchar(60) DEFAULT NULL,
  `senha` varchar(200) DEFAULT NULL,
  `foto` varchar(100) DEFAULT 'avatar.png',
  `status` int(11) DEFAULT NULL COMMENT '0:offline\r\n1:online\r\n2:ocupado\r\n3:pausa\r\n4:intervalo'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_atendente`
--

INSERT INTO `tb_atendente` (`id`, `id_empresa`, `id_setor`, `nome`, `whatsapp`, `senha`, `foto`, `status`) VALUES
(1, 1, 1, 'osmano', 'osmano', '123', 'osmano.jpg', 1),
(2, 1, 1, 'Daniel', NULL, NULL, 'daniel.jpg', 0),
(3, 1, 1, 'Manoel', NULL, NULL, 'avatar3.png', 2),
(4, 1, 1, 'Julio', NULL, NULL, 'julio.jpg', 2),
(5, 1, 1, 'Carlos', NULL, NULL, 'carlos.jpg', 2),
(6, 1, 1, 'Wender', NULL, NULL, 'avatar.png', 3),
(7, 1, 1, 'Fernando', NULL, NULL, 'fernando.jpg', 1),
(8, 1, 1, 'Mário', NULL, NULL, 'avatar4.png', 1),
(9, 1, 1, 'Caio', NULL, NULL, 'caio.jpg', 3),
(10, 1, 1, 'Cezar', NULL, NULL, 'avatar3.png', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_atendimento`
--

CREATE TABLE `tb_atendimento` (
  `id` int(11) NOT NULL,
  `id_empresa` int(11) DEFAULT NULL,
  `id_atendente` int(11) DEFAULT NULL,
  `id_cliente` int(11) DEFAULT NULL,
  `id_agenda` tinyint(1) DEFAULT 0 COMMENT 'o atendimento gera uma agenda',
  `chamado` datetime DEFAULT current_timestamp(),
  `iniciado` datetime DEFAULT NULL,
  `finalizado` datetime DEFAULT NULL,
  `assunto` int(11) DEFAULT NULL,
  `historico` text DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0 COMMENT '0:chamando\r\n1:atendendo\r\n2:pausado\r\n3:agendado\r\n4:finalizado'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_atendimento`
--

INSERT INTO `tb_atendimento` (`id`, `id_empresa`, `id_atendente`, `id_cliente`, `id_agenda`, `chamado`, `iniciado`, `finalizado`, `assunto`, `historico`, `status`) VALUES
(1, 1, 1, 2, 0, '2022-01-28 14:41:25', '2022-01-25 09:44:55', NULL, 1, NULL, 1),
(2, 1, 1, 2, 0, '2022-01-28 14:41:25', '2022-01-24 00:00:00', NULL, 2, NULL, 2),
(3, 1, 1, 2, 1, '2022-01-28 14:41:25', '2022-01-26 00:00:00', '2022-01-26 09:23:10', 2, NULL, 3),
(4, 1, 1, 2, 0, '2022-02-03 10:49:24', '2022-02-08 15:41:55', NULL, 3, 'sem', 4),
(5, 1, 1, 2, 0, '2022-02-03 10:50:30', '2022-02-01 15:41:59', NULL, 3, 'sem', 2),
(6, 1, 1, 2, 0, '2022-02-03 10:52:14', '2022-02-04 15:42:02', NULL, 0, NULL, 0),
(7, 1, 1, 2, 0, '2022-02-03 10:52:55', '2022-02-14 16:03:04', NULL, 2, 'sem', 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_celular`
--

CREATE TABLE `tb_celular` (
  `id` int(11) NOT NULL,
  `id_empresa` int(11) DEFAULT NULL,
  `numero` varchar(60) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_celular`
--

INSERT INTO `tb_celular` (`id`, `id_empresa`, `numero`, `status`) VALUES
(1, 1, '63992893682', 1),
(2, 1, '63992465660', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_chat`
--

CREATE TABLE `tb_chat` (
  `id` int(11) NOT NULL,
  `id_empresa` int(11) DEFAULT NULL,
  `id_atendimento` int(11) DEFAULT NULL,
  `de` int(11) DEFAULT NULL,
  `para` int(11) DEFAULT NULL,
  `tipo` varchar(10) DEFAULT NULL,
  `msg` text DEFAULT NULL,
  `data_hora` datetime DEFAULT current_timestamp(),
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_chat`
--

INSERT INTO `tb_chat` (`id`, `id_empresa`, `id_atendimento`, `de`, `para`, `tipo`, `msg`, `data_hora`, `status`) VALUES
(6, 1, 1, 2, 1, 'TEXTO', 'Essa é a mensagem 01', '2022-02-14 17:51:41', 0),
(7, 1, 1, 2, 1, 'TEXTO', 'Essa e a mensagem 02', '2022-02-14 17:51:53', 0),
(8, 1, 1, 1, 2, 'TEXTO', 'Essa e a mensagem 03', '2022-02-14 17:52:08', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_chat_interno`
--

CREATE TABLE `tb_chat_interno` (
  `id` int(11) NOT NULL,
  `id_empresa` int(11) DEFAULT NULL,
  `de` int(11) DEFAULT NULL,
  `para` int(11) DEFAULT NULL,
  `msg` text DEFAULT NULL,
  `data_hora` datetime DEFAULT current_timestamp(),
  `entregue` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_chat_interno`
--

INSERT INTO `tb_chat_interno` (`id`, `id_empresa`, `de`, `para`, `msg`, `data_hora`, `entregue`) VALUES
(1, 1, 1, 2, 'mensagem teste', '2022-01-31 14:28:12', 1),
(2, 1, 2, 1, 'mensagem recebida', '2022-01-31 14:28:35', 1),
(3, 1, 1, 2, 'enviando a 2 mensagem', '2022-01-31 15:16:22', 1),
(4, 1, 2, 1, 'ok recebida', '2022-01-31 15:39:08', 1),
(5, 1, 3, 1, 'Olá', '2022-01-31 16:44:07', 1),
(6, 1, 3, 1, 'Olá', '2022-01-31 16:45:42', 1),
(7, 1, 9, 1, 'está ai????', '2022-01-31 16:45:43', 1),
(8, 1, 5, 1, 'Bom dia', '2022-01-31 16:45:43', 1),
(9, 1, 8, 1, 'Boa tarde', '2022-01-31 16:45:43', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_cliente`
--

CREATE TABLE `tb_cliente` (
  `id` int(11) NOT NULL,
  `id_empresa` int(11) DEFAULT NULL,
  `celular` varchar(60) DEFAULT NULL,
  `nome` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_cliente`
--

INSERT INTO `tb_cliente` (`id`, `id_empresa`, `celular`, `nome`) VALUES
(1, 1, '63992465660', 'joao'),
(2, 1, '63992203510', 'pedro'),
(3, 1, '63981120787', 'maria'),
(4, 1, NULL, 'junior'),
(5, 1, NULL, 'bahia'),
(6, 1, NULL, 'antonio');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_empresa`
--

CREATE TABLE `tb_empresa` (
  `id` int(11) NOT NULL,
  `cnpj` varchar(60) DEFAULT NULL,
  `razao` varchar(200) DEFAULT NULL,
  `fantasia` varchar(100) DEFAULT NULL,
  `senha` varchar(200) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_empresa`
--

INSERT INTO `tb_empresa` (`id`, `cnpj`, `razao`, `fantasia`, `senha`, `status`) VALUES
(1, '49834878168', 'o. torres de brito', 'ViaTech Sistemas', '4297f44b13955235245b2497399d7a93', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_setor`
--

CREATE TABLE `tb_setor` (
  `id` int(11) NOT NULL,
  `id_empresa` int(11) DEFAULT NULL,
  `setor` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_setor`
--

INSERT INTO `tb_setor` (`id`, `id_empresa`, `setor`) VALUES
(1, 1, 'Suporte'),
(2, 1, 'Financeiro');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_token`
--

CREATE TABLE `tb_token` (
  `id` int(11) NOT NULL,
  `id_empresa` int(11) DEFAULT NULL,
  `id_atendente` int(11) DEFAULT NULL,
  `data` datetime DEFAULT current_timestamp(),
  `tempo_expira` int(11) DEFAULT 30,
  `expirado` tinyint(1) DEFAULT 0,
  `token` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_token`
--

INSERT INTO `tb_token` (`id`, `id_empresa`, `id_atendente`, `data`, `tempo_expira`, `expirado`, `token`) VALUES
(1, 1, 1, '2022-01-26 16:48:31', 30, 0, '202cb962ac59075b964b07152d234b70');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `tb_assunto`
--
ALTER TABLE `tb_assunto`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tb_atendente`
--
ALTER TABLE `tb_atendente`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tb_atendimento`
--
ALTER TABLE `tb_atendimento`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tb_celular`
--
ALTER TABLE `tb_celular`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tb_chat`
--
ALTER TABLE `tb_chat`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tb_chat_interno`
--
ALTER TABLE `tb_chat_interno`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tb_cliente`
--
ALTER TABLE `tb_cliente`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tb_empresa`
--
ALTER TABLE `tb_empresa`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tb_setor`
--
ALTER TABLE `tb_setor`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tb_token`
--
ALTER TABLE `tb_token`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tb_assunto`
--
ALTER TABLE `tb_assunto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `tb_atendente`
--
ALTER TABLE `tb_atendente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `tb_atendimento`
--
ALTER TABLE `tb_atendimento`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `tb_celular`
--
ALTER TABLE `tb_celular`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `tb_chat`
--
ALTER TABLE `tb_chat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `tb_chat_interno`
--
ALTER TABLE `tb_chat_interno`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `tb_cliente`
--
ALTER TABLE `tb_cliente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `tb_empresa`
--
ALTER TABLE `tb_empresa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `tb_setor`
--
ALTER TABLE `tb_setor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `tb_token`
--
ALTER TABLE `tb_token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
