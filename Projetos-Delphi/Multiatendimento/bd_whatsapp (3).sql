-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 09-Mar-2022 às 19:21
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
(13, 1, NULL, 5, 0, '2022-03-02 13:48:28', NULL, NULL, NULL, NULL, 0),
(14, 1, NULL, 11, 0, '2022-03-04 09:10:57', NULL, NULL, NULL, NULL, 0),
(15, 0, NULL, 12, 0, '2022-03-04 12:16:10', NULL, NULL, NULL, NULL, 0),
(16, 0, NULL, 8, 0, '2022-03-04 12:23:55', NULL, NULL, NULL, NULL, 0),
(17, 1, NULL, 14, 0, '2022-03-04 13:52:15', NULL, NULL, NULL, NULL, 0),
(18, 0, NULL, 15, 0, '2022-03-09 10:33:25', NULL, NULL, NULL, NULL, 0),
(19, 0, NULL, 17, 0, '2022-03-09 11:47:47', NULL, NULL, NULL, NULL, 0),
(20, 1, NULL, 18, 0, '2022-03-09 12:00:35', NULL, NULL, NULL, NULL, 0),
(21, 1, NULL, 19, 0, '2022-03-09 12:01:52', NULL, NULL, NULL, NULL, 0),
(22, 1, NULL, 16, 0, '2022-03-09 12:12:00', NULL, NULL, NULL, NULL, 0),
(23, 1, NULL, 20, 0, '2022-03-09 13:03:11', NULL, NULL, NULL, NULL, 0),
(24, 1, NULL, 21, 0, '2022-03-09 13:41:38', NULL, NULL, NULL, NULL, 0),
(25, 1, NULL, 22, 0, '2022-03-09 13:41:38', NULL, NULL, NULL, NULL, 0),
(26, 1, NULL, 23, 0, '2022-03-09 13:41:38', NULL, NULL, NULL, NULL, 0),
(27, 1, NULL, 24, 0, '2022-03-09 13:41:38', NULL, NULL, NULL, NULL, 0),
(28, 1, NULL, 25, 0, '2022-03-09 13:41:38', NULL, NULL, NULL, NULL, 0),
(29, 1, NULL, 26, 0, '2022-03-09 13:52:30', NULL, NULL, NULL, NULL, 0),
(30, 1, NULL, 27, 0, '2022-03-09 14:03:28', NULL, NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_celular`
--

CREATE TABLE `tb_celular` (
  `id` int(11) NOT NULL,
  `id_empresa` int(11) DEFAULT NULL,
  `celular` varchar(60) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `token` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_celular`
--

INSERT INTO `tb_celular` (`id`, `id_empresa`, `celular`, `status`, `token`) VALUES
(1, 1, '6392893682', 1, NULL);

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
(1, 1, 0, 1, 14, 'chat', 'Beber umas', '2022-03-04 13:52:15', 1),
(2, 1, 0, 14, 1, 'chat', 'Sim, a tardinha', '2022-03-04 13:58:33', 1),
(3, 1, 0, 14, 1, 'chat', 'Aqui perto tem um bar que abriu agora', '2022-03-04 13:58:49', 1),
(4, 1, 0, 14, 1, 'chat', 'Muito movimento no fim de tarde', '2022-03-04 13:59:03', 1),
(6, 1, 0, 15, 1, 'chat', 'Deeer mi livi de acessar os \"zoim puxado\"', '2022-03-08 14:24:47', 1),
(7, 1, 0, 1, 14, 'chat', 'Bom dia, como estã?', '2022-03-09 08:09:47', 1),
(8, 1, 0, 1, 14, 'chat', 'já no batidão', '2022-03-09 08:12:29', 1),
(9, 1, 0, 14, 1, 'chat', 'Já pegado no serviço', '2022-03-09 08:12:56', 1),
(11, 1, 0, 14, 1, 'chat', 'E por aí como tá', '2022-03-09 09:30:30', 1),
(14, 1, 0, 1, 14, 'msg', 'quando tiver um tempo dá um alo pra te mostrar como está o andamento', '2022-03-09 10:49:26', 1),
(15, 1, 0, 1, 14, 'msg', 'acho que depois de pronto dá pra revender serviços', '2022-03-09 10:49:42', 1),
(16, 1, 0, 1, 14, 'chat', 'teremos um serviço de atendimento e envio de arquivos tudo pronto', '2022-03-09 11:17:14', 1),
(17, 1, 0, 1, 14, 'msg', 'Não vai precisar muito armazenamento, pois cada cliente so irá acessar para buscar seu token e gravar no banco as mensagens, os arquivos serão recebidos no servidor e apagados logo que entregue no destino.\r\n ', '2022-03-09 11:31:03', 1),
(19, 1, 0, 18, 1, 'chat', '????????', '2022-03-09 12:00:36', 1),
(20, 1, 0, 1, 19, 'chat', 'Bora comer', '2022-03-09 12:01:52', 1),
(21, 1, 0, 1, 19, 'chat', '?', '2022-03-09 12:04:12', 1),
(24, 1, 0, 16, 1, 'chat', 'Ver aqui', '2022-03-09 12:12:50', 1),
(26, 1, 0, 14, 1, 'chat', 'Tu conhece algum amigo seu que possa emitir uma Nota Fiscal de serviços de informática?', '2022-03-09 12:18:19', 1),
(27, 1, 0, 1, 14, 'chat', 'O doca consegue', '2022-03-09 12:27:39', 1),
(28, 1, 0, 1, 14, 'chat', 'Ele ja fez pra mim', '2022-03-09 12:27:55', 1),
(29, 1, 0, 14, 1, 'chat', 'Já sei como a gente vai alugar um servidor top', '2022-03-09 12:29:06', 1),
(30, 1, 0, 14, 1, 'chat', 'Logo te retorno', '2022-03-09 12:29:15', 1),
(31, 1, 0, 1, 14, 'chat', 'Ok', '2022-03-09 12:29:21', 1),
(33, 1, 0, 20, 1, 'chat', 'Olá como vai?', '2022-03-09 13:03:12', 1),
(34, 1, 0, 1, 20, 'chat', 'Boa tarde', '2022-03-09 13:04:05', 1),
(36, 1, 0, 20, 1, 'chat', 'Obrigada pela atenção, me chamo Márcia T. Souza  e faço parte da Automatizze tech.\nE gostaria de te apresentar o Techbot™, que é um Robô de trader automatizado.\n\nCom ele é possível automatizar seus ganhos dentro do Mercado de Criptoativos e gerar uma renda que pode ultrapassar U$25.00 (vinte e cinco dólares) diariamente.\n\nE só hoje você ganha um saldo em cashback de U$10,00 (dez dólares)\n\n(Operações realizadas também pela exchange Binance)\n\nPosso te falar um pouco mais? ☺️', '2022-03-09 13:15:33', 1),
(37, 1, 0, 1, 20, 'chat', 'há necessidade de investimento inicial?', '2022-03-09 13:16:20', 1),
(38, 1, 0, 20, 1, 'chat', 'Gostaria de conhecer sem compromisso?????', '2022-03-09 13:25:48', 1),
(39, 1, 0, 1, 20, 'chat', 'Sim', '2022-03-09 13:34:49', 1),
(40, 1, 0, 20, 1, 'chat', 'Maravilha , Meu bem  ! ????????', '2022-03-09 13:36:40', 1),
(41, 1, 0, 20, 1, 'chat', 'A Automatizze Tech fornece um sistema de algorítimos inovador (Robô de operações) que executa operações de alta frequência, mais de 20 operações por minuto e te garante uma média de ACERTOS acima dos 78% nas negociações de Criptomoedas.\nAs operações são realizadas através de contratos CFD(contrato por diferença de preço) via API direto na Binance ou dentro de uma plataforma exclusiva de nossa corretora. O Techbot™ faz suas negociações aproveitando-se da volatilidade do mercado e alavanca seus rendimentos com lucros variáveis, as negociações desse robô são pré configuradas por você junto ao seu analista semanalmente, o robô trabalha 24/7.\nO Techbot possui também um sistema exclusivo anti perdas para proteção ativa do seu capital.', '2022-03-09 13:36:42', 1),
(43, 1, 0, 20, 1, 'video', '/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEABsbGxscGx4hIR4qLSgtKj04MzM4PV1CR0JHQl2NWGdYWGdYjX2Xe3N7l33gsJycsOD/2c7Z//////////////8BGxsbGxwbHiEhHiotKC0qPTgzMzg9XUJHQkdCXY1YZ1hYZ1iNfZd7c3uXfeCwnJyw4P/Zztn////////////////CABEIADEASAMBIgACEQEDEQH/xAAnAAEBAAAAAAAAAAAAAAAAAAAABgEBAAAAAAAAAAAAAAAAAAAAAP/aAAwDAQACEAMQAAAAmQAAAAAAAAAAAAAAAAAAAf/EABQQAQAAAAAAAAAAAAAAAAAAAFD/2gAIAQEAAT8Af//EABQRAQAAAAAAAAAAAAAAAAAAAED/2gAIAQIBAT8AJ//EABQRAQAAAAAAAAAAAAAAAAAAAED/2gAIAQMBAT8AJ//Z', '2022-03-09 13:36:50', 1),
(45, 1, 0, 20, 1, 'chat', 'Após realização do pré cadastro pelo link enviado ,  Você terá atendimento diretamente com consultor que irá te apresentar a plataforma sem compromisso . ????????', '2022-03-09 13:36:50', 1),
(49, 1, 0, 16, 1, 'video', '/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEABsbGxscGx4hIR4qLSgtKj04MzM4PV1CR0JHQl2NWGdYWGdYjX2Xe3N7l33gsJycsOD/2c7Z//////////////8BGxsbGxwbHiEhHiotKC0qPTgzMzg9XUJHQkdCXY1YZ1hYZ1iNfZd7c3uXfeCwnJyw4P/Zztn////////////////CABEIAEgAKAMBIgACEQEDEQH/xAAvAAACAwEBAAAAAAAAAAAAAAAABAIDBQEGAQEBAQEAAAAAAAAAAAAAAAACAQAD/9oADAMBAAIQAxAAAADcy9LJyzbWZzrllg+XpMttYNEthVUTLy1ZLsx8Wao2iUB6QvS0GLK6JZNkSDF0Q2k6EqICH//EACQQAAICAgIBBAMBAAAAAAAAAAECAAMRIRJBEwQiMVEFMkKB/9oACAEBAAE/AMz8jvhFVs/EJPLB1MEPiYnrGPmQRHA6zGFbLlhuWAciR8TlPUFXuBHQlbrvI7j29CWe1VEsLKsNYYho9GG0NQU4YZEC+S7Eus8rgYxFrJP2IR+x6EYZMStFEVsvk9wELGZG0dS1GVYi3HLdCeTyciNGVX8gA8yDGsXQErPtKfco4ky5KUxxOQZwX+WMVMbwYmiJWcHB7mA1asP9iEIdiYJXfxGtKWEdT//EABkRAAMBAQEAAAAAAAAAAAAAAAABERAgMf/aAAgBAgEBPwAovNvFjHMe/wD/xAAcEQEBAAEFAQAAAAAAAAAAAAABAAIQESExYRP/2gAIAQMBAT8AjHie4xuQkW8iEgHbe+fpodTp/9k=', '2022-03-09 13:37:13', 1),
(50, 1, 0, 16, 1, 'video', '/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEABsbGxscGx4hIR4qLSgtKj04MzM4PV1CR0JHQl2NWGdYWGdYjX2Xe3N7l33gsJycsOD/2c7Z//////////////8BGxsbGxwbHiEhHiotKC0qPTgzMzg9XUJHQkdCXY1YZ1hYZ1iNfZd7c3uXfeCwnJyw4P/Zztn////////////////CABEIAEgAKAMBIgACEQEDEQH/xAAuAAADAQEBAAAAAAAAAAAAAAAAAwQCBQEBAQEBAQAAAAAAAAAAAAAAAAECAAP/2gAMAwEAAhADEAAAAKOF2uOK+i+ltpEaZpqPNqLF5KYeiPW6Dpxunh682k2MaD15x3GcyGB1DQwpoT00AV//xAAhEAACAgIDAAIDAAAAAAAAAAABAgARAyEEEjETIkFRYf/aAAgBAQABPwCchicjfwzEjEdquYmAClVIMV0XH+jHcILjL3LGpwkASiIoR8lADU5D5MXYMoIM5b0oERvq0xMVQETD0vsRRnIUZSt+TkYnyNoTFhrTTBgK2DsTI9v8aefkwqYUBlKWo0DAQmp8X2LeTE1uR6Im5zEIAYeiYCzuvZ4y/WYgqmxNgkxlVrBHomPjFMtx9ip3IyET2XRlgixLsR1PcmYWtY7oo2YMhK6EQa3Cgq5//8QAGhEAAwEAAwAAAAAAAAAAAAAAAAEREAISMf/aAAgBAgEBPwDiXETGqdZvu0Z//8QAGBEBAQEBAQAAAAAAAAAAAAAAAQARAhD/2gAIAQMBAT8As90yLjrJSW3JfCeQLkMv/9k=', '2022-03-09 13:37:16', 1),
(51, 1, 0, 16, 1, 'chat', 'Entra aí... assume um Marea desse ????????????', '2022-03-09 13:37:16', 1),
(52, 1, 0, 1, 16, 'chat', 'Kkkkkk neeeiiiimmmm', '2022-03-09 13:37:47', 1),
(53, 1, 0, 16, 1, 'chat', 'Já tinha visto?', '2022-03-09 13:39:03', 1),
(55, 1, 0, 16, 1, 'chat', '????????????', '2022-03-09 13:39:06', 1),
(56, 1, 0, 1, 16, 'chat', 'Kkkkk nao mas nao tenho interesse tambem nao kkkk', '2022-03-09 13:40:39', 1),
(57, 1, 0, 1, 21, 'video', '/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEABsbGxscGx4hIR4qLSgtKj04MzM4PV1CR0JHQl2NWGdYWGdYjX2Xe3N7l33gsJycsOD/2c7Z//////////////8BGxsbGxwbHiEhHiotKC0qPTgzMzg9XUJHQkdCXY1YZ1hYZ1iNfZd7c3uXfeCwnJyw4P/Zztn////////////////CABEIAEgAKAMBIgACEQEDEQH/xAAuAAADAQEBAAAAAAAAAAAAAAAAAwQCBQEBAQEBAQAAAAAAAAAAAAAAAAECAAP/2gAMAwEAAhADEAAAAKOF2uOK+i+ltpEaZpqPNqLF5KYeiPW6Dpxunh682k2MaD15x3GcyGB1DQwpoT00AV//xAAhEAACAgIDAAIDAAAAAAAAAAABAgARAyEEEjETIkFRYf/aAAgBAQABPwCchicjfwzEjEdquYmAClVIMV0XH+jHcILjL3LGpwkASiIoR8lADU5D5MXYMoIM5b0oERvq0xMVQETD0vsRRnIUZSt+TkYnyNoTFhrTTBgK2DsTI9v8aefkwqYUBlKWo0DAQmp8X2LeTE1uR6Im5zEIAYeiYCzuvZ4y/WYgqmxNgkxlVrBHomPjFMtx9ip3IyET2XRlgixLsR1PcmYWtY7oo2YMhK6EQa3Cgq5//8QAGhEAAwEAAwAAAAAAAAAAAAAAAAEREAISMf/aAAgBAgEBPwDiXETGqdZvu0Z//8QAGBEBAQEBAQAAAAAAAAAAAAAAAQARAhD/2gAIAQMBAT8As90yLjrJSW3JfCeQLkMv/9k=', '2022-03-09 13:41:38', 1),
(58, 1, 0, 1, 21, 'video', '/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEABsbGxscGx4hIR4qLSgtKj04MzM4PV1CR0JHQl2NWGdYWGdYjX2Xe3N7l33gsJycsOD/2c7Z//////////////8BGxsbGxwbHiEhHiotKC0qPTgzMzg9XUJHQkdCXY1YZ1hYZ1iNfZd7c3uXfeCwnJyw4P/Zztn////////////////CABEIAEgAKAMBIgACEQEDEQH/xAAvAAACAwEBAAAAAAAAAAAAAAAABAIDBQEGAQEBAQEAAAAAAAAAAAAAAAACAQAD/9oADAMBAAIQAxAAAADcy9LJyzbWZzrllg+XpMttYNEthVUTLy1ZLsx8Wao2iUB6QvS0GLK6JZNkSDF0Q2k6EqICH//EACQQAAICAgIBBAMBAAAAAAAAAAECAAMRIRJBEwQiMVEFMkKB/9oACAEBAAE/AMz8jvhFVs/EJPLB1MEPiYnrGPmQRHA6zGFbLlhuWAciR8TlPUFXuBHQlbrvI7j29CWe1VEsLKsNYYho9GG0NQU4YZEC+S7Eus8rgYxFrJP2IR+x6EYZMStFEVsvk9wELGZG0dS1GVYi3HLdCeTyciNGVX8gA8yDGsXQErPtKfco4ky5KUxxOQZwX+WMVMbwYmiJWcHB7mA1asP9iEIdiYJXfxGtKWEdT//EABkRAAMBAQEAAAAAAAAAAAAAAAABERAgMf/aAAgBAgEBPwAovNvFjHMe/wD/xAAcEQEBAAEFAQAAAAAAAAAAAAABAAIQESExYRP/2gAIAQMBAT8AjHie4xuQkW8iEgHbe+fpodTp/9k=', '2022-03-09 13:41:38', 1),
(59, 1, 0, 1, 22, 'video', '/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEABsbGxscGx4hIR4qLSgtKj04MzM4PV1CR0JHQl2NWGdYWGdYjX2Xe3N7l33gsJycsOD/2c7Z//////////////8BGxsbGxwbHiEhHiotKC0qPTgzMzg9XUJHQkdCXY1YZ1hYZ1iNfZd7c3uXfeCwnJyw4P/Zztn////////////////CABEIAEgAKAMBIgACEQEDEQH/xAAuAAADAQEBAAAAAAAAAAAAAAAAAwQCBQEBAQEBAQAAAAAAAAAAAAAAAAECAAP/2gAMAwEAAhADEAAAAKOF2uOK+i+ltpEaZpqPNqLF5KYeiPW6Dpxunh682k2MaD15x3GcyGB1DQwpoT00AV//xAAhEAACAgIDAAIDAAAAAAAAAAABAgARAyEEEjETIkFRYf/aAAgBAQABPwCchicjfwzEjEdquYmAClVIMV0XH+jHcILjL3LGpwkASiIoR8lADU5D5MXYMoIM5b0oERvq0xMVQETD0vsRRnIUZSt+TkYnyNoTFhrTTBgK2DsTI9v8aefkwqYUBlKWo0DAQmp8X2LeTE1uR6Im5zEIAYeiYCzuvZ4y/WYgqmxNgkxlVrBHomPjFMtx9ip3IyET2XRlgixLsR1PcmYWtY7oo2YMhK6EQa3Cgq5//8QAGhEAAwEAAwAAAAAAAAAAAAAAAAEREAISMf/aAAgBAgEBPwDiXETGqdZvu0Z//8QAGBEBAQEBAQAAAAAAAAAAAAAAAQARAhD/2gAIAQMBAT8As90yLjrJSW3JfCeQLkMv/9k=', '2022-03-09 13:41:38', 1),
(60, 1, 0, 1, 22, 'video', '/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEABsbGxscGx4hIR4qLSgtKj04MzM4PV1CR0JHQl2NWGdYWGdYjX2Xe3N7l33gsJycsOD/2c7Z//////////////8BGxsbGxwbHiEhHiotKC0qPTgzMzg9XUJHQkdCXY1YZ1hYZ1iNfZd7c3uXfeCwnJyw4P/Zztn////////////////CABEIAEgAKAMBIgACEQEDEQH/xAAvAAACAwEBAAAAAAAAAAAAAAAABAIDBQEGAQEBAQEAAAAAAAAAAAAAAAACAQAD/9oADAMBAAIQAxAAAADcy9LJyzbWZzrllg+XpMttYNEthVUTLy1ZLsx8Wao2iUB6QvS0GLK6JZNkSDF0Q2k6EqICH//EACQQAAICAgIBBAMBAAAAAAAAAAECAAMRIRJBEwQiMVEFMkKB/9oACAEBAAE/AMz8jvhFVs/EJPLB1MEPiYnrGPmQRHA6zGFbLlhuWAciR8TlPUFXuBHQlbrvI7j29CWe1VEsLKsNYYho9GG0NQU4YZEC+S7Eus8rgYxFrJP2IR+x6EYZMStFEVsvk9wELGZG0dS1GVYi3HLdCeTyciNGVX8gA8yDGsXQErPtKfco4ky5KUxxOQZwX+WMVMbwYmiJWcHB7mA1asP9iEIdiYJXfxGtKWEdT//EABkRAAMBAQEAAAAAAAAAAAAAAAABERAgMf/aAAgBAgEBPwAovNvFjHMe/wD/xAAcEQEBAAEFAQAAAAAAAAAAAAABAAIQESExYRP/2gAIAQMBAT8AjHie4xuQkW8iEgHbe+fpodTp/9k=', '2022-03-09 13:41:38', 1),
(61, 1, 0, 1, 23, 'video', '/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEABsbGxscGx4hIR4qLSgtKj04MzM4PV1CR0JHQl2NWGdYWGdYjX2Xe3N7l33gsJycsOD/2c7Z//////////////8BGxsbGxwbHiEhHiotKC0qPTgzMzg9XUJHQkdCXY1YZ1hYZ1iNfZd7c3uXfeCwnJyw4P/Zztn////////////////CABEIAEgAKAMBIgACEQEDEQH/xAAuAAADAQEBAAAAAAAAAAAAAAAAAwQCBQEBAQEBAQAAAAAAAAAAAAAAAAECAAP/2gAMAwEAAhADEAAAAKOF2uOK+i+ltpEaZpqPNqLF5KYeiPW6Dpxunh682k2MaD15x3GcyGB1DQwpoT00AV//xAAhEAACAgIDAAIDAAAAAAAAAAABAgARAyEEEjETIkFRYf/aAAgBAQABPwCchicjfwzEjEdquYmAClVIMV0XH+jHcILjL3LGpwkASiIoR8lADU5D5MXYMoIM5b0oERvq0xMVQETD0vsRRnIUZSt+TkYnyNoTFhrTTBgK2DsTI9v8aefkwqYUBlKWo0DAQmp8X2LeTE1uR6Im5zEIAYeiYCzuvZ4y/WYgqmxNgkxlVrBHomPjFMtx9ip3IyET2XRlgixLsR1PcmYWtY7oo2YMhK6EQa3Cgq5//8QAGhEAAwEAAwAAAAAAAAAAAAAAAAEREAISMf/aAAgBAgEBPwDiXETGqdZvu0Z//8QAGBEBAQEBAQAAAAAAAAAAAAAAAQARAhD/2gAIAQMBAT8As90yLjrJSW3JfCeQLkMv/9k=', '2022-03-09 13:41:38', 1),
(62, 1, 0, 1, 23, 'video', '/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEABsbGxscGx4hIR4qLSgtKj04MzM4PV1CR0JHQl2NWGdYWGdYjX2Xe3N7l33gsJycsOD/2c7Z//////////////8BGxsbGxwbHiEhHiotKC0qPTgzMzg9XUJHQkdCXY1YZ1hYZ1iNfZd7c3uXfeCwnJyw4P/Zztn////////////////CABEIAEgAKAMBIgACEQEDEQH/xAAvAAACAwEBAAAAAAAAAAAAAAAABAIDBQEGAQEBAQEAAAAAAAAAAAAAAAACAQAD/9oADAMBAAIQAxAAAADcy9LJyzbWZzrllg+XpMttYNEthVUTLy1ZLsx8Wao2iUB6QvS0GLK6JZNkSDF0Q2k6EqICH//EACQQAAICAgIBBAMBAAAAAAAAAAECAAMRIRJBEwQiMVEFMkKB/9oACAEBAAE/AMz8jvhFVs/EJPLB1MEPiYnrGPmQRHA6zGFbLlhuWAciR8TlPUFXuBHQlbrvI7j29CWe1VEsLKsNYYho9GG0NQU4YZEC+S7Eus8rgYxFrJP2IR+x6EYZMStFEVsvk9wELGZG0dS1GVYi3HLdCeTyciNGVX8gA8yDGsXQErPtKfco4ky5KUxxOQZwX+WMVMbwYmiJWcHB7mA1asP9iEIdiYJXfxGtKWEdT//EABkRAAMBAQEAAAAAAAAAAAAAAAABERAgMf/aAAgBAgEBPwAovNvFjHMe/wD/xAAcEQEBAAEFAQAAAAAAAAAAAAABAAIQESExYRP/2gAIAQMBAT8AjHie4xuQkW8iEgHbe+fpodTp/9k=', '2022-03-09 13:41:38', 1),
(63, 1, 0, 1, 24, 'video', '/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEABsbGxscGx4hIR4qLSgtKj04MzM4PV1CR0JHQl2NWGdYWGdYjX2Xe3N7l33gsJycsOD/2c7Z//////////////8BGxsbGxwbHiEhHiotKC0qPTgzMzg9XUJHQkdCXY1YZ1hYZ1iNfZd7c3uXfeCwnJyw4P/Zztn////////////////CABEIAEgAKAMBIgACEQEDEQH/xAAuAAADAQEBAAAAAAAAAAAAAAAAAwQCBQEBAQEBAQAAAAAAAAAAAAAAAAECAAP/2gAMAwEAAhADEAAAAKOF2uOK+i+ltpEaZpqPNqLF5KYeiPW6Dpxunh682k2MaD15x3GcyGB1DQwpoT00AV//xAAhEAACAgIDAAIDAAAAAAAAAAABAgARAyEEEjETIkFRYf/aAAgBAQABPwCchicjfwzEjEdquYmAClVIMV0XH+jHcILjL3LGpwkASiIoR8lADU5D5MXYMoIM5b0oERvq0xMVQETD0vsRRnIUZSt+TkYnyNoTFhrTTBgK2DsTI9v8aefkwqYUBlKWo0DAQmp8X2LeTE1uR6Im5zEIAYeiYCzuvZ4y/WYgqmxNgkxlVrBHomPjFMtx9ip3IyET2XRlgixLsR1PcmYWtY7oo2YMhK6EQa3Cgq5//8QAGhEAAwEAAwAAAAAAAAAAAAAAAAEREAISMf/aAAgBAgEBPwDiXETGqdZvu0Z//8QAGBEBAQEBAQAAAAAAAAAAAAAAAQARAhD/2gAIAQMBAT8As90yLjrJSW3JfCeQLkMv/9k=', '2022-03-09 13:41:38', 1),
(64, 1, 0, 1, 24, 'video', '/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEABsbGxscGx4hIR4qLSgtKj04MzM4PV1CR0JHQl2NWGdYWGdYjX2Xe3N7l33gsJycsOD/2c7Z//////////////8BGxsbGxwbHiEhHiotKC0qPTgzMzg9XUJHQkdCXY1YZ1hYZ1iNfZd7c3uXfeCwnJyw4P/Zztn////////////////CABEIAEgAKAMBIgACEQEDEQH/xAAvAAACAwEBAAAAAAAAAAAAAAAABAIDBQEGAQEBAQEAAAAAAAAAAAAAAAACAQAD/9oADAMBAAIQAxAAAADcy9LJyzbWZzrllg+XpMttYNEthVUTLy1ZLsx8Wao2iUB6QvS0GLK6JZNkSDF0Q2k6EqICH//EACQQAAICAgIBBAMBAAAAAAAAAAECAAMRIRJBEwQiMVEFMkKB/9oACAEBAAE/AMz8jvhFVs/EJPLB1MEPiYnrGPmQRHA6zGFbLlhuWAciR8TlPUFXuBHQlbrvI7j29CWe1VEsLKsNYYho9GG0NQU4YZEC+S7Eus8rgYxFrJP2IR+x6EYZMStFEVsvk9wELGZG0dS1GVYi3HLdCeTyciNGVX8gA8yDGsXQErPtKfco4ky5KUxxOQZwX+WMVMbwYmiJWcHB7mA1asP9iEIdiYJXfxGtKWEdT//EABkRAAMBAQEAAAAAAAAAAAAAAAABERAgMf/aAAgBAgEBPwAovNvFjHMe/wD/xAAcEQEBAAEFAQAAAAAAAAAAAAABAAIQESExYRP/2gAIAQMBAT8AjHie4xuQkW8iEgHbe+fpodTp/9k=', '2022-03-09 13:41:38', 1),
(65, 1, 0, 1, 25, 'video', '/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEABsbGxscGx4hIR4qLSgtKj04MzM4PV1CR0JHQl2NWGdYWGdYjX2Xe3N7l33gsJycsOD/2c7Z//////////////8BGxsbGxwbHiEhHiotKC0qPTgzMzg9XUJHQkdCXY1YZ1hYZ1iNfZd7c3uXfeCwnJyw4P/Zztn////////////////CABEIAEgAKAMBIgACEQEDEQH/xAAuAAADAQEBAAAAAAAAAAAAAAAAAwQCBQEBAQEBAQAAAAAAAAAAAAAAAAECAAP/2gAMAwEAAhADEAAAAKOF2uOK+i+ltpEaZpqPNqLF5KYeiPW6Dpxunh682k2MaD15x3GcyGB1DQwpoT00AV//xAAhEAACAgIDAAIDAAAAAAAAAAABAgARAyEEEjETIkFRYf/aAAgBAQABPwCchicjfwzEjEdquYmAClVIMV0XH+jHcILjL3LGpwkASiIoR8lADU5D5MXYMoIM5b0oERvq0xMVQETD0vsRRnIUZSt+TkYnyNoTFhrTTBgK2DsTI9v8aefkwqYUBlKWo0DAQmp8X2LeTE1uR6Im5zEIAYeiYCzuvZ4y/WYgqmxNgkxlVrBHomPjFMtx9ip3IyET2XRlgixLsR1PcmYWtY7oo2YMhK6EQa3Cgq5//8QAGhEAAwEAAwAAAAAAAAAAAAAAAAEREAISMf/aAAgBAgEBPwDiXETGqdZvu0Z//8QAGBEBAQEBAQAAAAAAAAAAAAAAAQARAhD/2gAIAQMBAT8As90yLjrJSW3JfCeQLkMv/9k=', '2022-03-09 13:41:38', 1),
(66, 1, 0, 1, 25, 'video', '/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEABsbGxscGx4hIR4qLSgtKj04MzM4PV1CR0JHQl2NWGdYWGdYjX2Xe3N7l33gsJycsOD/2c7Z//////////////8BGxsbGxwbHiEhHiotKC0qPTgzMzg9XUJHQkdCXY1YZ1hYZ1iNfZd7c3uXfeCwnJyw4P/Zztn////////////////CABEIAEgAKAMBIgACEQEDEQH/xAAvAAACAwEBAAAAAAAAAAAAAAAABAIDBQEGAQEBAQEAAAAAAAAAAAAAAAACAQAD/9oADAMBAAIQAxAAAADcy9LJyzbWZzrllg+XpMttYNEthVUTLy1ZLsx8Wao2iUB6QvS0GLK6JZNkSDF0Q2k6EqICH//EACQQAAICAgIBBAMBAAAAAAAAAAECAAMRIRJBEwQiMVEFMkKB/9oACAEBAAE/AMz8jvhFVs/EJPLB1MEPiYnrGPmQRHA6zGFbLlhuWAciR8TlPUFXuBHQlbrvI7j29CWe1VEsLKsNYYho9GG0NQU4YZEC+S7Eus8rgYxFrJP2IR+x6EYZMStFEVsvk9wELGZG0dS1GVYi3HLdCeTyciNGVX8gA8yDGsXQErPtKfco4ky5KUxxOQZwX+WMVMbwYmiJWcHB7mA1asP9iEIdiYJXfxGtKWEdT//EABkRAAMBAQEAAAAAAAAAAAAAAAABERAgMf/aAAgBAgEBPwAovNvFjHMe/wD/xAAcEQEBAAEFAQAAAAAAAAAAAAABAAIQESExYRP/2gAIAQMBAT8AjHie4xuQkW8iEgHbe+fpodTp/9k=', '2022-03-09 13:41:38', 1),
(67, 1, 0, 1, 21, 'chat', 'Entra aí... assume um Marea desse ????????????', '2022-03-09 13:41:39', 1),
(68, 1, 0, 1, 22, 'chat', 'Entra aí... assume um Marea desse ????????????', '2022-03-09 13:41:39', 1),
(69, 1, 0, 1, 23, 'chat', 'Entra aí... assume um Marea desse ????????????', '2022-03-09 13:41:39', 1),
(70, 1, 0, 1, 24, 'chat', 'Entra aí... assume um Marea desse ????????????', '2022-03-09 13:41:39', 1),
(71, 1, 0, 1, 25, 'chat', 'Entra aí... assume um Marea desse ????????????', '2022-03-09 13:41:39', 1),
(73, 1, 0, 24, 1, 'chat', '????????????', '2022-03-09 13:49:09', 1),
(74, 1, 0, 1, 26, 'video', '/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEABsbGxscGx4hIR4qLSgtKj04MzM4PV1CR0JHQl2NWGdYWGdYjX2Xe3N7l33gsJycsOD/2c7Z//////////////8BGxsbGxwbHiEhHiotKC0qPTgzMzg9XUJHQkdCXY1YZ1hYZ1iNfZd7c3uXfeCwnJyw4P/Zztn////////////////CABEIAEgAKAMBIgACEQEDEQH/xAAuAAADAQEBAAAAAAAAAAAAAAAAAwQCBQEBAQEBAQAAAAAAAAAAAAAAAAECAAP/2gAMAwEAAhADEAAAAKOF2uOK+i+ltpEaZpqPNqLF5KYeiPW6Dpxunh682k2MaD15x3GcyGB1DQwpoT00AV//xAAhEAACAgIDAAIDAAAAAAAAAAABAgARAyEEEjETIkFRYf/aAAgBAQABPwCchicjfwzEjEdquYmAClVIMV0XH+jHcILjL3LGpwkASiIoR8lADU5D5MXYMoIM5b0oERvq0xMVQETD0vsRRnIUZSt+TkYnyNoTFhrTTBgK2DsTI9v8aefkwqYUBlKWo0DAQmp8X2LeTE1uR6Im5zEIAYeiYCzuvZ4y/WYgqmxNgkxlVrBHomPjFMtx9ip3IyET2XRlgixLsR1PcmYWtY7oo2YMhK6EQa3Cgq5//8QAGhEAAwEAAwAAAAAAAAAAAAAAAAEREAISMf/aAAgBAgEBPwDiXETGqdZvu0Z//8QAGBEBAQEBAQAAAAAAAAAAAAAAAQARAhD/2gAIAQMBAT8As90yLjrJSW3JfCeQLkMv/9k=', '2022-03-09 13:52:30', 1),
(75, 1, 0, 1, 26, 'video', '/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEABsbGxscGx4hIR4qLSgtKj04MzM4PV1CR0JHQl2NWGdYWGdYjX2Xe3N7l33gsJycsOD/2c7Z//////////////8BGxsbGxwbHiEhHiotKC0qPTgzMzg9XUJHQkdCXY1YZ1hYZ1iNfZd7c3uXfeCwnJyw4P/Zztn////////////////CABEIAEgAKAMBIgACEQEDEQH/xAAvAAACAwEBAAAAAAAAAAAAAAAABAIDBQEGAQEBAQEAAAAAAAAAAAAAAAACAQAD/9oADAMBAAIQAxAAAADcy9LJyzbWZzrllg+XpMttYNEthVUTLy1ZLsx8Wao2iUB6QvS0GLK6JZNkSDF0Q2k6EqICH//EACQQAAICAgIBBAMBAAAAAAAAAAECAAMRIRJBEwQiMVEFMkKB/9oACAEBAAE/AMz8jvhFVs/EJPLB1MEPiYnrGPmQRHA6zGFbLlhuWAciR8TlPUFXuBHQlbrvI7j29CWe1VEsLKsNYYho9GG0NQU4YZEC+S7Eus8rgYxFrJP2IR+x6EYZMStFEVsvk9wELGZG0dS1GVYi3HLdCeTyciNGVX8gA8yDGsXQErPtKfco4ky5KUxxOQZwX+WMVMbwYmiJWcHB7mA1asP9iEIdiYJXfxGtKWEdT//EABkRAAMBAQEAAAAAAAAAAAAAAAABERAgMf/aAAgBAgEBPwAovNvFjHMe/wD/xAAcEQEBAAEFAQAAAAAAAAAAAAABAAIQESExYRP/2gAIAQMBAT8AjHie4xuQkW8iEgHbe+fpodTp/9k=', '2022-03-09 13:52:30', 1),
(76, 1, 0, 1, 26, 'chat', 'Entra aí... assume um Marea desse ????????????', '2022-03-09 13:52:31', 1),
(77, 1, 0, 27, 1, 'chat', 'Boa Tarde erro no sistema.', '2022-03-09 14:03:28', 1),
(78, 1, 0, 27, 1, 'image', '/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEABsbGxscGx4hIR4qLSgtKj04MzM4PV1CR0JHQl2NWGdYWGdYjX2Xe3N7l33gsJycsOD/2c7Z//////////////8BGxsbGxwbHiEhHiotKC0qPTgzMzg9XUJHQkdCXY1YZ1hYZ1iNfZd7c3uXfeCwnJyw4P/Zztn////////////////CABEIACEAPAMBIgACEQEDEQH/xAAuAAADAQEBAAAAAAAAAAAAAAAAAgMEAQUBAQEBAQAAAAAAAAAAAAAAAAECAAP/2gAMAwEAAhADEAAAANtMj5uubMb0ueUyehKDOKy0pnholco3ESyUItbBsnA6QihjnQmv/8QAIxAAAgECBgMBAQAAAAAAAAAAAAERAgMTFEFRUmEEEjEhEP/aAAgBAQABPwC3amlMwezLdsyvbMs+TMqtZKvGj4zAqFW9GO5XuVXq+RVfu82Zm7zYvIu82K9c5MxK92W5aHLRXMHUI9l+TQjEU/lCgxJ0RLLbUCajQrq9tCBogVmswqy18f8AGP4hjJe5L3P/xAAZEQADAQEBAAAAAAAAAAAAAAAAAREQAmH/2gAIAQIBAT8AIvSZBcoiGIWM/8QAFxEAAwEAAAAAAAAAAAAAAAAAAAEREP/aAAgBAwEBPwApdbKXHv8A/9k=', '2022-03-09 14:06:26', 1),
(79, 1, 0, 27, 1, 'chat', 'https://osmano.com.br/betbicho/escritorio/   *neste endereço não da opção de login para admin.*', '2022-03-09 14:06:52', 1),
(80, 1, 0, 1, 27, 'chat', 'sobre o erro olho a noite pois estou na rua, e com respeito ao serviço não tá de todo perdido porque estamos com os fontes, mas houve o serviço e o tempo. Não assinamos nenhum contrato com eles por isso não temos muito como pressionar mas caso queira fazer fique a vontade', '2022-03-09 14:07:53', 1);

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
(14, 1, '6391127568', 'Osmanito'),
(16, 1, '6392222696', 'Doca'),
(18, 1, '6392813001', '6392813001'),
(19, 1, '6392213821', '6392213821'),
(20, 1, '6196523356', '6196523356'),
(21, 1, '6384096450', '6384096450'),
(22, 1, '6391032619', '6391032619'),
(23, 1, '6391238702', '6391238702'),
(24, 1, '6392254168', '6392254168'),
(25, 1, '6392528831', '6392528831'),
(26, 1, '6384233080', '6384233080'),
(27, 1, '7388489821', '7388489821');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de tabela `tb_celular`
--
ALTER TABLE `tb_celular`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `tb_chat`
--
ALTER TABLE `tb_chat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT de tabela `tb_chat_interno`
--
ALTER TABLE `tb_chat_interno`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `tb_cliente`
--
ALTER TABLE `tb_cliente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

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
