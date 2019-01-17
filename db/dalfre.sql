-- phpMyAdmin SQL Dump
-- version 4.6.6deb4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 16/01/2019 às 22:42
-- Versão do servidor: 10.1.37-MariaDB-0+deb9u1
-- Versão do PHP: 7.3.1-1+0~20190113101756.25+stretch~1.gbp15aaa9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `dalfre`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `carousels`
--

CREATE TABLE `carousels` (
  `id` int(11) NOT NULL,
  `nome` varchar(220) NOT NULL,
  `imagem` varchar(220) NOT NULL,
  `titulo` varchar(220) DEFAULT NULL,
  `descricao` varchar(220) DEFAULT NULL,
  `posicao_text` varchar(40) DEFAULT NULL,
  `titulo_botao` varchar(40) DEFAULT NULL,
  `link` varchar(220) DEFAULT NULL,
  `ordem` int(11) NOT NULL,
  `cor_id` int(11) DEFAULT NULL,
  `estado_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `carousels`
--

INSERT INTO `carousels` (`id`, `nome`, `imagem`, `titulo`, `descricao`, `posicao_text`, `titulo_botao`, `link`, `ordem`, `cor_id`, `estado_id`, `created`, `modified`) VALUES
(1, 'Primeiro slide', 'carousel-1.png', 'Mundo da Programação', 'Linguagens de programação', 'text-left', 'mais detalhes', 'https://github.com/danrleidalfre', 1, 7, 1, '2018-12-18 00:30:00', NULL),
(2, 'Segundo slide', 'carousel-2.png', 'Design Gráfico', 'Ferramentas mais usadas por designers', 'text-right', 'saiba mais', 'https://github.com/danrleidalfre', 2, 7, 1, '2018-12-18 00:35:00', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `cores`
--

CREATE TABLE `cores` (
  `id` int(11) NOT NULL,
  `nome` varchar(40) NOT NULL,
  `cor` varchar(40) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `cores`
--

INSERT INTO `cores` (`id`, `nome`, `cor`, `created`, `modified`) VALUES
(1, 'Azul', 'primary', '2019-01-15 00:00:00', NULL),
(2, 'Cinza', 'secondary', '2019-01-15 00:00:00', NULL),
(3, 'Verde', 'success', '2019-01-15 00:00:00', NULL),
(4, 'Vermelho', 'danger', '2019-01-15 00:00:00', NULL),
(5, 'Amarelo', 'warning', '2019-01-15 00:00:00', NULL),
(6, 'Turquesa', 'info', '2019-01-15 00:00:00', NULL),
(7, 'Branco', 'light', '2019-01-15 00:00:00', NULL),
(8, 'Preto', 'dark', '2019-01-15 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `solucoes`
--

CREATE TABLE `solucoes` (
  `id` int(11) NOT NULL,
  `titulo` varchar(250) NOT NULL,
  `icone_1` varchar(40) NOT NULL,
  `nome_1` varchar(120) NOT NULL,
  `descricao_1` varchar(220) NOT NULL,
  `icone_2` varchar(40) NOT NULL,
  `nome_2` varchar(120) NOT NULL,
  `descricao_2` varchar(220) NOT NULL,
  `icone_3` varchar(40) NOT NULL,
  `nome_3` varchar(120) NOT NULL,
  `descricao_3` varchar(220) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `solucoes`
--

INSERT INTO `solucoes` (`id`, `titulo`, `icone_1`, `nome_1`, `descricao_1`, `icone_2`, `nome_2`, `descricao_2`, `icone_3`, `nome_3`, `descricao_3`, `created`, `modified`) VALUES
(1, 'soluÃ§Ãµes', 'file-code', 'soluÃ§Ãµes 1', 'This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.', 'edit', 'soluÃ§Ãµes 2', 'This card has supporting text below as a natural lead-in to additional content.', 'window-restore', 'soluÃ§Ãµes 3', 'This is a wider card with supporting text below as a natural lead-in to additional content. This card has even longer content than the first to show that equal height action.', '2019-01-16 00:00:00', NULL);

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `carousels`
--
ALTER TABLE `carousels`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `cores`
--
ALTER TABLE `cores`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `solucoes`
--
ALTER TABLE `solucoes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `carousels`
--
ALTER TABLE `carousels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de tabela `cores`
--
ALTER TABLE `cores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de tabela `solucoes`
--
ALTER TABLE `solucoes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
