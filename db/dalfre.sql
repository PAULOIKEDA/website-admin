-- phpMyAdmin SQL Dump
-- version 4.6.6deb4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 20/01/2019 às 20:02
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
-- Estrutura para tabela `admin_robots`
--

CREATE TABLE `admin_robots` (
  `id` int(11) NOT NULL,
  `nome` varchar(220) NOT NULL,
  `tipo` varchar(120) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `admin_robots`
--

INSERT INTO `admin_robots` (`id`, `nome`, `tipo`, `created`, `modified`) VALUES
(1, 'Indexar a página e seguir os links', 'index,follow', '2019-01-20 00:00:00', NULL),
(2, 'Não indexar a página mas seguir os links', 'noindex,follow', '2019-01-20 00:00:00', NULL),
(3, 'Indexar a página mas não seguir os links', 'index,nofollow', '2019-01-20 00:00:00', NULL),
(4, 'Não indexar a página e nem seguir os links', 'noindex,nofollow', '2019-01-20 00:00:00', NULL),
(5, 'Não exibir a versão em cache da página', 'noarchive', '2019-01-20 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `admin_sites`
--

CREATE TABLE `admin_sites` (
  `id` int(11) NOT NULL,
  `nome` varchar(20) NOT NULL,
  `cor_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `admin_sites`
--

INSERT INTO `admin_sites` (`id`, `nome`, `cor_id`, `created`, `modified`) VALUES
(1, 'Ativo', 3, '2019-01-20 00:00:00', NULL),
(2, 'Inativo', 4, '2019-01-20 00:00:00', NULL),
(3, 'Análise', 1, '2019-01-20 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `admin_usuarios`
--

CREATE TABLE `admin_usuarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(220) NOT NULL,
  `apelido` varchar(50) NOT NULL,
  `email` varchar(120) NOT NULL,
  `senha` varchar(120) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `admin_usuarios`
--

INSERT INTO `admin_usuarios` (`id`, `nome`, `apelido`, `email`, `senha`, `created`, `modified`) VALUES
(1, 'Danrlei Dal Fré', 'Danrlei', 'danrleidalfre@gmail.com', '63a9f0ea7bb98050796b649e85481845', '2019-01-20 00:00:00', NULL),
(2, 'Cliente Cliente', 'Cliente', 'cliente@cliente.com', '4983a0ab83ed86e0e7213c8783940193', '2019-01-20 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `blog`
--

CREATE TABLE `blog` (
  `id` int(11) NOT NULL,
  `titulo` varchar(220) NOT NULL,
  `descricao` text NOT NULL,
  `conteudo` text NOT NULL,
  `imagem` varchar(220) NOT NULL,
  `slug` varchar(220) NOT NULL,
  `keywords` varchar(220) NOT NULL,
  `description` varchar(220) NOT NULL,
  `autor` varchar(50) NOT NULL,
  `resumo_publico` text NOT NULL,
  `acessos` int(11) NOT NULL DEFAULT '0',
  `robot_id` int(11) NOT NULL,
  `admin_usuario_id` int(11) NOT NULL,
  `admin_site_id` int(11) NOT NULL,
  `tipo_blog_id` int(11) NOT NULL,
  `categoria_blog_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `blog`
--

INSERT INTO `blog` (`id`, `titulo`, `descricao`, `conteudo`, `imagem`, `slug`, `keywords`, `description`, `autor`, `resumo_publico`, `acessos`, `robot_id`, `admin_usuario_id`, `admin_site_id`, `tipo_blog_id`, `categoria_blog_id`, `created`, `modified`) VALUES
(1, 'Card title 1', 'This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.', 'This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.\r\n\r\nThis is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.\r\n\r\nThis is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.\r\n\r\nThis is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.', 'news-1.jpeg', 'news-1', 'blog. news 1.', 'Descrição primeira notícia seo', 'Danrlei Dal Fré', 'This is a wider card with supporting text below as a natural...', 15, 1, 1, 1, 1, 1, '2019-01-20 00:00:00', NULL),
(2, 'Card title 2', 'This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.', 'This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.\r\n\r\nThis is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.\r\n\r\nThis is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.\r\n\r\nThis is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.', 'news-2.jpeg', 'news-2', 'blog. news 2.', 'Descrição segunda notícia seo', 'Danrlei Dal Fré', 'This is a wider card with supporting text below as a natural...', 52, 1, 1, 1, 1, 1, '2019-01-20 00:00:00', NULL),
(3, 'Card title 3', 'This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.', 'This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.\r\n\r\nThis is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.\r\n\r\nThis is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.\r\n\r\nThis is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.', 'news-3.jpeg', 'news-3', 'blog. news 3.', 'Descrição terceira notícia seo', 'Danrlei Dal Fré', 'This is a wider card with supporting text below as a natural...', 27, 1, 1, 1, 1, 1, '2019-01-20 00:00:00', NULL),
(4, 'Card title 4', 'This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.', 'This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.\r\n\r\nThis is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.\r\n\r\nThis is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.\r\n\r\nThis is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.', 'news-4.jpeg', 'news-4', 'blog. news 4.', 'Descrição quarta notícia seo', 'Danrlei Dal Fré', 'This is a wider card with supporting text below as a natural...', 10, 1, 1, 1, 1, 1, '2019-01-20 00:00:00', NULL),
(5, 'Card title 5', 'This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.', 'This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.\r\n\r\nThis is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.\r\n\r\nThis is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.\r\n\r\nThis is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.', 'news-5.jpeg', 'news-5', 'blog. news 5.', 'Descrição quinta notícia seo', 'Danrlei Dal Fré', 'This is a wider card with supporting text below as a natural...', 32, 1, 1, 1, 1, 1, '2019-01-20 00:00:00', NULL),
(6, 'Card title 6', 'This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.', 'This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.\r\n\r\nThis is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.\r\n\r\nThis is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.\r\n\r\nThis is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.', 'news-6.jpeg', 'news-6', 'blog. news 6.', 'Descrição sexta notícia seo', 'Danrlei Dal Fré', 'This is a wider card with supporting text below as a natural...', 20, 1, 1, 1, 1, 1, '2019-01-20 00:00:00', NULL);

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
-- Estrutura para tabela `categorias_blog`
--

CREATE TABLE `categorias_blog` (
  `id` int(11) NOT NULL,
  `nome` varchar(120) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `categorias_blog`
--

INSERT INTO `categorias_blog` (`id`, `nome`, `created`, `modified`) VALUES
(1, 'Desenvolvimento Web', '2019-01-20 00:00:00', NULL),
(2, 'Desing Gráfico', '2019-01-20 00:00:00', NULL),
(3, 'Linux', '2019-01-20 00:00:00', NULL);

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
(1, 'soluções', 'file-code', 'solução 1', 'This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.', 'edit', 'solução 2', 'This card has supporting text below as a natural lead-in to additional content.', 'window-restore', 'solução 3', 'This is a wider card with supporting text below as a natural lead-in to additional content. This card has even longer content than the first to show that equal height action.', '2019-01-16 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tipos_blog`
--

CREATE TABLE `tipos_blog` (
  `id` int(11) NOT NULL,
  `nome` varchar(220) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `tipos_blog`
--

INSERT INTO `tipos_blog` (`id`, `nome`, `created`, `modified`) VALUES
(1, 'Público', '2019-01-20 00:00:00', NULL),
(2, 'Privado', '2019-01-20 00:00:00', NULL),
(3, 'Privado com resumo público', '2019-01-20 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `videos`
--

CREATE TABLE `videos` (
  `id` int(11) NOT NULL,
  `titulo` varchar(120) NOT NULL,
  `video` varchar(220) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `videos`
--

INSERT INTO `videos` (`id`, `titulo`, `video`, `created`, `modified`) VALUES
(1, 'vídeos', '<iframe class=\"embed-responsive-item\" src=\"https://www.youtube.com/embed/dc5el8hbdFw\" allowfullscreen></iframe>', '2019-01-18 00:00:00', NULL);

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `admin_robots`
--
ALTER TABLE `admin_robots`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `admin_sites`
--
ALTER TABLE `admin_sites`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `admin_usuarios`
--
ALTER TABLE `admin_usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `carousels`
--
ALTER TABLE `carousels`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `categorias_blog`
--
ALTER TABLE `categorias_blog`
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
-- Índices de tabela `tipos_blog`
--
ALTER TABLE `tipos_blog`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `admin_robots`
--
ALTER TABLE `admin_robots`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de tabela `admin_sites`
--
ALTER TABLE `admin_sites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de tabela `admin_usuarios`
--
ALTER TABLE `admin_usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de tabela `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de tabela `carousels`
--
ALTER TABLE `carousels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de tabela `categorias_blog`
--
ALTER TABLE `categorias_blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
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
--
-- AUTO_INCREMENT de tabela `tipos_blog`
--
ALTER TABLE `tipos_blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de tabela `videos`
--
ALTER TABLE `videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
