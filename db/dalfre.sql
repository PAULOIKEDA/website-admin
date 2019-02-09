-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: 08-Fev-2019 às 23:45
-- Versão do servidor: 5.7.21-1
-- PHP Version: 7.2.4-1+b1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dalfre`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `admin_robots`
--

CREATE TABLE `admin_robots` (
  `id` int(11) NOT NULL,
  `nome` varchar(220) NOT NULL,
  `tipo` varchar(120) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `admin_robots`
--

INSERT INTO `admin_robots` (`id`, `nome`, `tipo`, `created`, `modified`) VALUES
(1, 'Indexar a página e seguir os links', 'index,follow', '2019-01-20 00:00:00', NULL),
(2, 'Não indexar a página mas seguir os links', 'noindex,follow', '2019-01-20 00:00:00', NULL),
(3, 'Indexar a página mas não seguir os links', 'index,nofollow', '2019-01-20 00:00:00', NULL),
(4, 'Não indexar a página e nem seguir os links', 'noindex,nofollow', '2019-01-20 00:00:00', NULL),
(5, 'Não exibir a versão em cache da página', 'noarchive', '2019-01-20 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `admin_sites`
--

CREATE TABLE `admin_sites` (
  `id` int(11) NOT NULL,
  `nome` varchar(20) NOT NULL,
  `cor_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `admin_sites`
--

INSERT INTO `admin_sites` (`id`, `nome`, `cor_id`, `created`, `modified`) VALUES
(1, 'Ativo', 3, '2019-01-20 00:00:00', NULL),
(2, 'Inativo', 4, '2019-01-20 00:00:00', NULL),
(3, 'Análise', 1, '2019-01-20 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `admin_usuarios`
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
-- Extraindo dados da tabela `admin_usuarios`
--

INSERT INTO `admin_usuarios` (`id`, `nome`, `apelido`, `email`, `senha`, `created`, `modified`) VALUES
(1, 'Danrlei Dal Fré', 'Danrlei', 'danrleidalfre@gmail.com', '63a9f0ea7bb98050796b649e85481845', '2019-01-20 00:00:00', NULL),
(2, 'Cliente Cliente', 'Cliente', 'cliente@cliente.com', '4983a0ab83ed86e0e7213c8783940193', '2019-01-20 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `blog`
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
  `imagem_autor` varchar(220) NOT NULL,
  `descricao_autor` text NOT NULL,
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
-- Extraindo dados da tabela `blog`
--

INSERT INTO `blog` (`id`, `titulo`, `descricao`, `conteudo`, `imagem`, `slug`, `keywords`, `description`, `autor`, `imagem_autor`, `descricao_autor`, `resumo_publico`, `acessos`, `robot_id`, `admin_usuario_id`, `admin_site_id`, `tipo_blog_id`, `categoria_blog_id`, `created`, `modified`) VALUES
(1, 'Card title 1', 'This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.', 'This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.\r\n\r\nThis is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.\r\n\r\nThis is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.\r\n\r\nThis is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.', 'news-1.jpeg', 'news-1', 'blog. news 1.', 'Descrição primeira notícia seo', 'Danrlei Dal Fré 1', 'autor.png', 'This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer. 1', 'This is a wider card with supporting text below as a natural...', 15, 1, 1, 1, 1, 1, '2019-01-21 00:00:00', NULL),
(2, 'Card title 2', 'This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.', 'This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.\r\n\r\nThis is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.\r\n\r\nThis is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.\r\n\r\nThis is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.', 'news-2.jpeg', 'news-2', 'blog. news 2.', 'Descrição segunda notícia seo', 'Danrlei Dal Fré 2', 'autor.png', 'This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer. 2', 'This is a wider card with supporting text below as a natural...', 52, 1, 1, 1, 1, 1, '2019-01-22 00:00:00', NULL),
(3, 'Card title 3', 'This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.', 'This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.\r\n\r\nThis is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.\r\n\r\nThis is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.\r\n\r\nThis is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.', 'news-3.jpeg', 'news-3', 'blog. news 3.', 'Descrição terceira notícia seo', 'Danrlei Dal Fré 3', 'autor.png', 'This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer. 3', 'This is a wider card with supporting text below as a natural...', 27, 1, 1, 1, 1, 1, '2019-01-23 00:00:00', NULL),
(4, 'Card title 4', 'This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.', 'This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.\r\n\r\nThis is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.\r\n\r\nThis is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.\r\n\r\nThis is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.', 'news-4.jpeg', 'news-4', 'blog. news 4.', 'Descrição quarta notícia seo', 'Danrlei Dal Fré 4', 'autor.png', 'This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer. 4', 'This is a wider card with supporting text below as a natural...', 10, 1, 1, 1, 1, 1, '2019-01-24 00:00:00', NULL),
(5, 'Card title 5', 'This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.', 'This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.\r\n\r\nThis is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.\r\n\r\nThis is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.\r\n\r\nThis is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.', 'news-5.jpeg', 'news-5', 'blog. news 5.', 'Descrição quinta notícia seo', 'Danrlei Dal Fré 5', 'autor.png', 'This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.5', 'This is a wider card with supporting text below as a natural...', 32, 1, 1, 1, 1, 1, '2019-01-25 00:00:00', NULL),
(6, 'Card title 6', 'This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.', 'This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.\r\n\r\nThis is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.\r\n\r\nThis is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.\r\n\r\nThis is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.', 'news-6.jpeg', 'news-6', 'blog. news 6.', 'Descrição sexta notícia seo', 'Danrlei Dal Fré 6', 'autor.png', 'This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.6', 'This is a wider card with supporting text below as a natural...', 20, 1, 1, 1, 1, 1, '2019-01-26 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `carousels`
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
-- Extraindo dados da tabela `carousels`
--

INSERT INTO `carousels` (`id`, `nome`, `imagem`, `titulo`, `descricao`, `posicao_text`, `titulo_botao`, `link`, `ordem`, `cor_id`, `estado_id`, `created`, `modified`) VALUES
(1, 'Primeiro slide', 'carousel-1.png', 'Mundo da Programação', 'Linguagens de programação', 'text-left', 'mais detalhes', 'https://github.com/danrleidalfre', 1, 7, 1, '2018-12-18 00:30:00', NULL),
(2, 'Segundo slide', 'carousel-2.png', 'Design Gráfico', 'Ferramentas mais usadas por designers', 'text-right', 'saiba mais', 'https://github.com/danrleidalfre', 2, 7, 1, '2018-12-18 00:35:00', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `categorias_blog`
--

CREATE TABLE `categorias_blog` (
  `id` int(11) NOT NULL,
  `nome` varchar(120) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `categorias_blog`
--

INSERT INTO `categorias_blog` (`id`, `nome`, `created`, `modified`) VALUES
(1, 'Desenvolvimento Web', '2019-01-20 00:00:00', NULL),
(2, 'Desing Gráfico', '2019-01-20 00:00:00', NULL),
(3, 'Linux', '2019-01-20 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `contatos`
--

CREATE TABLE `contatos` (
  `id` int(11) NOT NULL,
  `nome` varchar(220) NOT NULL,
  `email` varchar(220) NOT NULL,
  `endereco` text NOT NULL,
  `cidade` varchar(120) NOT NULL,
  `estado` varchar(20) NOT NULL,
  `cep` varchar(20) NOT NULL,
  `mensagem` text NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cores`
--

CREATE TABLE `cores` (
  `id` int(11) NOT NULL,
  `nome` varchar(40) NOT NULL,
  `cor` varchar(40) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `cores`
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
-- Estrutura da tabela `estado_paginas`
--

CREATE TABLE `estado_paginas` (
  `id` int(11) NOT NULL,
  `nome` varchar(40) NOT NULL,
  `cores_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `estado_paginas`
--

INSERT INTO `estado_paginas` (`id`, `nome`, `cores_id`, `created`, `modified`) VALUES
(1, 'Ativo', 3, '2019-01-28 00:00:00', NULL),
(2, 'Inativo', 5, '2019-01-28 00:00:00', NULL),
(3, 'Analise', 1, '2019-01-28 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `paginas`
--

CREATE TABLE `paginas` (
  `id` int(11) NOT NULL,
  `controller` varchar(220) NOT NULL,
  `nome_pagina` varchar(220) NOT NULL,
  `endereco` varchar(120) NOT NULL,
  `titulo` varchar(220) NOT NULL,
  `obs` text,
  `keywords` varchar(220) NOT NULL,
  `description` varchar(220) NOT NULL,
  `author` varchar(50) NOT NULL,
  `imagem` varchar(120) DEFAULT NULL,
  `ativa` int(11) NOT NULL DEFAULT '2',
  `ordem` int(11) NOT NULL,
  `tipo_pagina_id` int(11) NOT NULL,
  `robot_id` int(11) NOT NULL,
  `estado_pagina_id` int(11) NOT NULL DEFAULT '2',
  `created` datetime NOT NULL,
  `modified` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `paginas`
--

INSERT INTO `paginas` (`id`, `controller`, `nome_pagina`, `endereco`, `titulo`, `obs`, `keywords`, `description`, `author`, `imagem`, `ativa`, `ordem`, `tipo_pagina_id`, `robot_id`, `estado_pagina_id`, `created`, `modified`) VALUES
(1, 'Home', 'home', 'home', 'dalfre - home', NULL, 'desenvolvimento web, sites', 'desenvolvimento de website com painel administrativo', 'Danrlei Dal Fré', 'home.jpg', 1, 1, 1, 1, 1, '2019-01-28 00:00:00', NULL),
(2, 'Sobre', 'sobre', 'sobre', 'dalfre - sobre', NULL, 'sobre a dalfre soluções', 'conheça mais sobre nós', 'Danrlei Dal Fré', 'sobre.jpg', 1, 2, 1, 1, 1, '2019-01-28 00:00:00', NULL),
(3, 'Solucoes', 'soluções', 'solucoes', 'dalfre - soluções', NULL, 'php, mysql, css3, html5', 'soluções da dalfre', 'Danrlei Dal Fré', 'solucoes.jpg', 1, 3, 1, 1, 1, '2019-01-28 00:00:00', NULL),
(4, 'Blog', 'blog', 'blog', 'dalfre - blog', NULL, 'desenvolvimento web, noticias, tecnologia', 'variados assuntos sobre tecnologia', 'Danrlei Dal Fré', 'blog.jpg', 1, 4, 1, 1, 1, '2019-01-28 00:00:00', NULL),
(5, 'Contato', 'contato', 'contato', 'dalfre - contato', NULL, 'contato dalfre, email, orçamento', 'entre em contato conosco para um orçamento', 'Danrlei Dal Fré', 'contato.jpg', 1, 5, 1, 1, 1, '2019-01-28 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `robots`
--

CREATE TABLE `robots` (
  `id` int(11) NOT NULL,
  `nome` varchar(220) NOT NULL,
  `tipo` varchar(40) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `robots`
--

INSERT INTO `robots` (`id`, `nome`, `tipo`, `created`, `modified`) VALUES
(1, 'Indexar a página e seguir os links', 'index,follow', '2019-01-28 00:00:00', NULL),
(2, 'Não indexar a página mas seguir os links', 'noindex,follow', '2019-01-28 00:00:00', NULL),
(3, 'Indexar a página mas não seguir os links', 'index,nofollow', '2019-01-28 00:00:00', NULL),
(4, 'Não indexar a página e nem seguir os links', 'noindex,nofollow', '2019-01-28 00:00:00', NULL),
(5, 'Não exibir a versão em cache da página', 'noarchive', '2019-01-28 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `seo`
--

CREATE TABLE `seo` (
  `id` int(11) NOT NULL,
  `og_site_name` varchar(40) NOT NULL,
  `og_locale` varchar(40) NOT NULL,
  `fb_admins` varchar(120) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `seo`
--

INSERT INTO `seo` (`id`, `og_site_name`, `og_locale`, `fb_admins`, `created`, `modified`) VALUES
(1, 'dalfre', 'pt_br', '100002667044178', '2019-02-07 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `sobre`
--

CREATE TABLE `sobre` (
  `id` int(11) NOT NULL,
  `titulo` varchar(220) NOT NULL,
  `descricao` text NOT NULL,
  `icone_1` varchar(40) NOT NULL,
  `nome_1` varchar(120) NOT NULL,
  `descricao_1` text NOT NULL,
  `icone_2` varchar(40) NOT NULL,
  `nome_2` varchar(120) NOT NULL,
  `descricao_2` text NOT NULL,
  `icone_3` varchar(40) NOT NULL,
  `nome_3` varchar(120) NOT NULL,
  `descricao_3` text NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `sobre`
--

INSERT INTO `sobre` (`id`, `titulo`, `descricao`, `icone_1`, `nome_1`, `descricao_1`, `icone_2`, `nome_2`, `descricao_2`, `icone_3`, `nome_3`, `descricao_3`, `created`, `modified`) VALUES
(1, 'sobre', 'This is a wider card with supporting text below as a natural lead-in to additional content. This card has even longer content than the first to show that equal height action.', 'check-circle fa-10x', 'missão', 'This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.', 'handshake fa-10x', 'valores', 'This card has supporting text below as a natural lead-in to additional content.', 'eye fa-10x', 'visão', 'This is a wider card with supporting text below as a natural lead-in to additional content. This card has even longer content than the first to show that equal height action.', '2019-01-20 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `solucoes`
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
-- Extraindo dados da tabela `solucoes`
--

INSERT INTO `solucoes` (`id`, `titulo`, `icone_1`, `nome_1`, `descricao_1`, `icone_2`, `nome_2`, `descricao_2`, `icone_3`, `nome_3`, `descricao_3`, `created`, `modified`) VALUES
(1, 'soluções', 'file-code', 'solução 1', 'This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.', 'edit', 'solução 2', 'This card has supporting text below as a natural lead-in to additional content.', 'window-restore', 'solução 3', 'This is a wider card with supporting text below as a natural lead-in to additional content. This card has even longer content than the first to show that equal height action.', '2019-01-16 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipos_blog`
--

CREATE TABLE `tipos_blog` (
  `id` int(11) NOT NULL,
  `nome` varchar(220) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tipos_blog`
--

INSERT INTO `tipos_blog` (`id`, `nome`, `created`, `modified`) VALUES
(1, 'Público', '2019-01-20 00:00:00', NULL),
(2, 'Privado', '2019-01-20 00:00:00', NULL),
(3, 'Privado com resumo público', '2019-01-20 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipo_paginas`
--

CREATE TABLE `tipo_paginas` (
  `id` int(11) NOT NULL,
  `tipo` varchar(120) NOT NULL,
  `nome` varchar(220) NOT NULL,
  `obs` text NOT NULL,
  `ordem` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tipo_paginas`
--

INSERT INTO `tipo_paginas` (`id`, `tipo`, `nome`, `obs`, `ordem`, `created`, `modified`) VALUES
(1, 'site', 'Site Principal', 'Core do site principal', 1, '2019-01-28 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `videos`
--

CREATE TABLE `videos` (
  `id` int(11) NOT NULL,
  `titulo` varchar(120) NOT NULL,
  `video` varchar(220) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `videos`
--

INSERT INTO `videos` (`id`, `titulo`, `video`, `created`, `modified`) VALUES
(1, 'vídeos', '<iframe class=\"embed-responsive-item\" src=\"https://www.youtube.com/embed/dc5el8hbdFw\" allowfullscreen></iframe>', '2019-01-18 00:00:00', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_robots`
--
ALTER TABLE `admin_robots`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_sites`
--
ALTER TABLE `admin_sites`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_usuarios`
--
ALTER TABLE `admin_usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carousels`
--
ALTER TABLE `carousels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categorias_blog`
--
ALTER TABLE `categorias_blog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contatos`
--
ALTER TABLE `contatos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cores`
--
ALTER TABLE `cores`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `estado_paginas`
--
ALTER TABLE `estado_paginas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `paginas`
--
ALTER TABLE `paginas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `robots`
--
ALTER TABLE `robots`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seo`
--
ALTER TABLE `seo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sobre`
--
ALTER TABLE `sobre`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `solucoes`
--
ALTER TABLE `solucoes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tipos_blog`
--
ALTER TABLE `tipos_blog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tipo_paginas`
--
ALTER TABLE `tipo_paginas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_robots`
--
ALTER TABLE `admin_robots`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `admin_sites`
--
ALTER TABLE `admin_sites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `admin_usuarios`
--
ALTER TABLE `admin_usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `carousels`
--
ALTER TABLE `carousels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `categorias_blog`
--
ALTER TABLE `categorias_blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `contatos`
--
ALTER TABLE `contatos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cores`
--
ALTER TABLE `cores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `estado_paginas`
--
ALTER TABLE `estado_paginas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `paginas`
--
ALTER TABLE `paginas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `robots`
--
ALTER TABLE `robots`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `seo`
--
ALTER TABLE `seo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `sobre`
--
ALTER TABLE `sobre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `solucoes`
--
ALTER TABLE `solucoes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tipos_blog`
--
ALTER TABLE `tipos_blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tipo_paginas`
--
ALTER TABLE `tipo_paginas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
