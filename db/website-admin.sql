-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: 20-Maio-2019 às 02:33
-- Versão do servidor: 5.7.24
-- versão do PHP: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `website-admin`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `admin_robots`
--

DROP TABLE IF EXISTS `admin_robots`;
CREATE TABLE IF NOT EXISTS `admin_robots` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(220) NOT NULL,
  `tipo` varchar(120) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

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

DROP TABLE IF EXISTS `admin_sites`;
CREATE TABLE IF NOT EXISTS `admin_sites` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(20) NOT NULL,
  `cor_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

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

DROP TABLE IF EXISTS `admin_usuarios`;
CREATE TABLE IF NOT EXISTS `admin_usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(220) NOT NULL,
  `apelido` varchar(50) NOT NULL,
  `email` varchar(120) NOT NULL,
  `senha` varchar(120) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `admin_usuarios`
--

INSERT INTO `admin_usuarios` (`id`, `nome`, `apelido`, `email`, `senha`, `created`, `modified`) VALUES
(1, 'Danrlei Dal Fré', 'Danrlei', 'danrleidalfre@gmail.com', '63a9f0ea7bb98050796b649e85481845', '2019-01-20 00:00:00', NULL),
(2, 'Cliente Cliente', 'Cliente', 'cliente@cliente.com', '4983a0ab83ed86e0e7213c8783940193', '2019-01-20 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `adm_cors`
--

DROP TABLE IF EXISTS `adm_cors`;
CREATE TABLE IF NOT EXISTS `adm_cors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(40) NOT NULL,
  `cor` varchar(40) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `adm_cors`
--

INSERT INTO `adm_cors` (`id`, `nome`, `cor`, `created`, `modified`) VALUES
(1, 'Azul', 'primary', '2019-05-18 00:00:00', NULL),
(2, 'Cinza', 'secondary', '2019-05-18 00:00:00', NULL),
(3, 'Verde', 'success', '2019-05-18 00:00:00', NULL),
(4, 'Vermelho', 'danger', '2019-05-18 00:00:00', NULL),
(5, 'Laranjado', 'warning', '2019-05-18 00:00:00', NULL),
(6, 'Azul Claro', 'info', '2019-05-18 00:00:00', NULL),
(7, 'Branco', 'light', '2019-05-18 00:00:00', NULL),
(8, 'Preto', 'dark', '2019-05-18 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `adm_grupo`
--

DROP TABLE IF EXISTS `adm_grupo`;
CREATE TABLE IF NOT EXISTS `adm_grupo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(220) NOT NULL,
  `ordem` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `adm_grupo`
--

INSERT INTO `adm_grupo` (`id`, `nome`, `ordem`, `created`, `modified`) VALUES
(1, 'Listar', 1, '2019-05-18 04:17:10', NULL),
(2, 'Cadastrar', 2, '2019-05-18 03:09:19', NULL),
(3, 'Editar', 3, '2019-05-18 05:14:21', NULL),
(4, 'Apagar', 4, '2019-05-18 08:18:32', NULL),
(5, 'Visualizar', 5, '2019-05-18 09:41:17', NULL),
(6, 'Outros', 6, '2019-05-18 04:18:24', NULL),
(7, 'Acesso', 7, '2019-05-18 06:20:11', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `adm_menu`
--

DROP TABLE IF EXISTS `adm_menu`;
CREATE TABLE IF NOT EXISTS `adm_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(220) NOT NULL,
  `icone` varchar(40) NOT NULL,
  `ordem` int(11) NOT NULL,
  `situacao_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `adm_menu`
--

INSERT INTO `adm_menu` (`id`, `nome`, `icone`, `ordem`, `situacao_id`, `created`, `modified`) VALUES
(1, 'Dashboard', 'fas fa-tachometer-alt', 1, 1, '2019-05-18 00:00:00', NULL),
(2, 'Usuario', 'fas fa-user', 2, 1, '2019-05-18 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `adm_niveis_acesso`
--

DROP TABLE IF EXISTS `adm_niveis_acesso`;
CREATE TABLE IF NOT EXISTS `adm_niveis_acesso` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `ordem` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `adm_niveis_acesso`
--

INSERT INTO `adm_niveis_acesso` (`id`, `nome`, `ordem`, `created`, `modified`) VALUES
(1, 'Super Administrador', 1, '2019-05-18 11:39:23', NULL),
(2, 'Administrador', 2, '2019-05-18 13:15:25', NULL),
(3, 'Colaborador', 3, '2019-05-18 05:24:09', NULL),
(4, 'Financeiro', 4, '2019-05-18 14:16:25', NULL),
(5, 'Cliente', 5, '2019-05-18 13:14:26', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `adm_niveis_acesso_paginas`
--

DROP TABLE IF EXISTS `adm_niveis_acesso_paginas`;
CREATE TABLE IF NOT EXISTS `adm_niveis_acesso_paginas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `permissao` int(11) NOT NULL,
  `ordem` int(11) NOT NULL,
  `dropdown` int(11) NOT NULL,
  `liberado_menu` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `nivel_acesso_id` int(11) NOT NULL,
  `pagina_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `adm_niveis_acesso_paginas`
--

INSERT INTO `adm_niveis_acesso_paginas` (`id`, `permissao`, `ordem`, `dropdown`, `liberado_menu`, `menu_id`, `nivel_acesso_id`, `pagina_id`, `created`, `modified`) VALUES
(1, 1, 1, 2, 1, 1, 1, 1, '2019-05-18 00:00:00', NULL),
(2, 1, 2, 1, 1, 2, 1, 2, '2019-05-18 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `adm_paginas`
--

DROP TABLE IF EXISTS `adm_paginas`;
CREATE TABLE IF NOT EXISTS `adm_paginas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `controller` varchar(220) NOT NULL,
  `metodo` varchar(220) NOT NULL,
  `nome_pagina` varchar(220) NOT NULL,
  `obs` text NOT NULL,
  `lib_pub` int(11) NOT NULL DEFAULT '2',
  `icone` varchar(40) DEFAULT NULL,
  `adm_grupo_id` int(11) NOT NULL,
  `adm_situacao_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `adm_paginas`
--

INSERT INTO `adm_paginas` (`id`, `controller`, `metodo`, `nome_pagina`, `obs`, `lib_pub`, `icone`, `adm_grupo_id`, `adm_situacao_id`, `created`, `modified`) VALUES
(1, 'Home', 'index', 'Dashboard', 'Pagina Inicial', 2, 'fas fa-tachometer-alt', 1, 1, '2019-05-17 07:31:14', NULL),
(2, 'Usuarios', 'listar', 'Usuarios', 'Pagina de listar os usuarios', 2, 'fas fa-users', 1, 1, '2019-05-18 06:48:00', NULL),
(3, 'Login', 'entrar', 'Login', 'Página de Loni', 1, '', 7, 1, '2019-05-18 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `adm_situacao`
--

DROP TABLE IF EXISTS `adm_situacao`;
CREATE TABLE IF NOT EXISTS `adm_situacao` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(220) NOT NULL,
  `cor` varchar(100) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `adm_situacao`
--

INSERT INTO `adm_situacao` (`id`, `nome`, `cor`, `created`, `modified`) VALUES
(1, 'Ativo', 'success', '2019-05-18 04:20:27', NULL),
(2, 'Inativo', 'danger', '2019-05-18 11:35:08', NULL),
(3, 'Analise', 'primary', '2019-05-18 09:18:26', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `adm_situacao_menu`
--

DROP TABLE IF EXISTS `adm_situacao_menu`;
CREATE TABLE IF NOT EXISTS `adm_situacao_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(40) NOT NULL,
  `cor_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `adm_situacao_menu`
--

INSERT INTO `adm_situacao_menu` (`id`, `nome`, `cor_id`, `created`, `modified`) VALUES
(1, 'Ativo', 3, '2019-05-18 00:00:00', NULL),
(2, 'Inativo', 4, '2019-05-18 00:00:00', NULL),
(3, 'Analise', 1, '2019-05-18 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `adm_situacao_usuarios`
--

DROP TABLE IF EXISTS `adm_situacao_usuarios`;
CREATE TABLE IF NOT EXISTS `adm_situacao_usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(220) NOT NULL,
  `cor_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `adm_situacao_usuarios`
--

INSERT INTO `adm_situacao_usuarios` (`id`, `nome`, `cor_id`, `created`, `modified`) VALUES
(1, 'Ativo', 3, '2019-05-18 06:21:00', NULL),
(2, 'Inativo', 5, '2019-05-18 00:00:00', NULL),
(3, 'Aguardando Confirmacao', 1, '2019-05-18 00:00:00', NULL),
(4, 'Spam', 4, '2019-05-18 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `adm_usuarios`
--

DROP TABLE IF EXISTS `adm_usuarios`;
CREATE TABLE IF NOT EXISTS `adm_usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(220) NOT NULL,
  `apelido` varchar(220) DEFAULT NULL,
  `email` varchar(220) NOT NULL,
  `usuario` varchar(220) NOT NULL,
  `senha` varchar(220) NOT NULL,
  `recuperar_senha` varchar(220) DEFAULT NULL,
  `chave_descadastro` varchar(220) DEFAULT NULL,
  `conf_email` int(11) NOT NULL DEFAULT '2',
  `imagem` varchar(220) DEFAULT NULL,
  `niveis_acesso_id` int(11) NOT NULL,
  `situacao_usuario_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `adm_usuarios`
--

INSERT INTO `adm_usuarios` (`id`, `nome`, `apelido`, `email`, `usuario`, `senha`, `recuperar_senha`, `chave_descadastro`, `conf_email`, `imagem`, `niveis_acesso_id`, `situacao_usuario_id`, `created`, `modified`) VALUES
(1, 'Danrlei Dal Fre', 'Danrlei', 'danrlei@dalfre.com', 'danrlei', '$2y$10$dkHmlPv5WaFUZj9XhF9L.OHxm9F8oTCDveJ2PXrk3rvL3sH.P8Wd2', NULL, NULL, 2, NULL, 1, 1, '2019-05-18 10:11:38', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `blog`
--

DROP TABLE IF EXISTS `blog`;
CREATE TABLE IF NOT EXISTS `blog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

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

DROP TABLE IF EXISTS `carousels`;
CREATE TABLE IF NOT EXISTS `carousels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

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

DROP TABLE IF EXISTS `categorias_blog`;
CREATE TABLE IF NOT EXISTS `categorias_blog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(120) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

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

DROP TABLE IF EXISTS `contatos`;
CREATE TABLE IF NOT EXISTS `contatos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(220) NOT NULL,
  `email` varchar(220) NOT NULL,
  `endereco` text NOT NULL,
  `cidade` varchar(120) NOT NULL,
  `estado` varchar(20) NOT NULL,
  `cep` varchar(20) NOT NULL,
  `mensagem` text NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cores`
--

DROP TABLE IF EXISTS `cores`;
CREATE TABLE IF NOT EXISTS `cores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(40) NOT NULL,
  `cor` varchar(40) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

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

DROP TABLE IF EXISTS `estado_paginas`;
CREATE TABLE IF NOT EXISTS `estado_paginas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(40) NOT NULL,
  `cores_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

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

DROP TABLE IF EXISTS `paginas`;
CREATE TABLE IF NOT EXISTS `paginas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `modified` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `paginas`
--

INSERT INTO `paginas` (`id`, `controller`, `nome_pagina`, `endereco`, `titulo`, `obs`, `keywords`, `description`, `author`, `imagem`, `ativa`, `ordem`, `tipo_pagina_id`, `robot_id`, `estado_pagina_id`, `created`, `modified`) VALUES
(1, 'Home', 'home', 'home', 'dalfre - home', NULL, 'desenvolvimento web, sites', 'desenvolvimento de website com painel administrativo', 'Danrlei Dal Fré', 'home.jpg', 1, 1, 1, 1, 1, '2019-01-28 00:00:00', NULL),
(2, 'Sobre', 'sobre', 'sobre', 'dalfre - sobre', NULL, 'sobre a dalfre soluções', 'conheça mais sobre nós', 'Danrlei Dal Fré', 'sobre.jpg', 1, 2, 1, 1, 1, '2019-01-28 00:00:00', NULL),
(3, 'Solucoes', 'soluções', 'solucoes', 'dalfre - soluções', NULL, 'php, mysql, css3, html5', 'soluções da dalfre', 'Danrlei Dal Fré', 'solucoes.jpg', 1, 3, 1, 1, 1, '2019-01-28 00:00:00', NULL),
(4, 'Blog', 'blog', 'blog', 'dalfre - blog', NULL, 'desenvolvimento web, noticias, tecnologia', 'variados assuntos sobre tecnologia', 'Danrlei Dal Fré', 'blog.jpg', 1, 4, 1, 1, 1, '2019-01-28 00:00:00', NULL),
(5, 'Contato', 'contato', 'contato', 'dalfre - contato', NULL, 'contato dalfre, email, orçamento', 'entre em contato conosco para um orçamento', 'Danrlei Dal Fré', 'contato.jpg', 1, 5, 1, 1, 1, '2019-01-28 00:00:00', NULL),
(6, 'Noticia', 'noticia', 'noticia', 'noticia', NULL, 'noticia', 'noticia', 'danrlei', NULL, 2, 6, 1, 1, 1, '2019-02-09 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `robots`
--

DROP TABLE IF EXISTS `robots`;
CREATE TABLE IF NOT EXISTS `robots` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(220) NOT NULL,
  `tipo` varchar(40) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

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

DROP TABLE IF EXISTS `seo`;
CREATE TABLE IF NOT EXISTS `seo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `og_site_name` varchar(40) NOT NULL,
  `og_locale` varchar(40) NOT NULL,
  `fb_admins` varchar(120) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `seo`
--

INSERT INTO `seo` (`id`, `og_site_name`, `og_locale`, `fb_admins`, `created`, `modified`) VALUES
(1, 'dalfre', 'pt_br', '100002667044178', '2019-02-07 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `sobre`
--

DROP TABLE IF EXISTS `sobre`;
CREATE TABLE IF NOT EXISTS `sobre` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `sobre`
--

INSERT INTO `sobre` (`id`, `titulo`, `descricao`, `icone_1`, `nome_1`, `descricao_1`, `icone_2`, `nome_2`, `descricao_2`, `icone_3`, `nome_3`, `descricao_3`, `created`, `modified`) VALUES
(1, 'sobre', 'This is a wider card with supporting text below as a natural lead-in to additional content. This card has even longer content than the first to show that equal height action.', 'check-circle fa-10x', 'missão', 'This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.', 'handshake fa-10x', 'valores', 'This card has supporting text below as a natural lead-in to additional content.', 'eye fa-10x', 'visão', 'This is a wider card with supporting text below as a natural lead-in to additional content. This card has even longer content than the first to show that equal height action.', '2019-01-20 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `solucoes`
--

DROP TABLE IF EXISTS `solucoes`;
CREATE TABLE IF NOT EXISTS `solucoes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `solucoes`
--

INSERT INTO `solucoes` (`id`, `titulo`, `icone_1`, `nome_1`, `descricao_1`, `icone_2`, `nome_2`, `descricao_2`, `icone_3`, `nome_3`, `descricao_3`, `created`, `modified`) VALUES
(1, 'soluções', 'file-code', 'solução 1', 'This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.', 'edit', 'solução 2', 'This card has supporting text below as a natural lead-in to additional content.', 'window-restore', 'solução 3', 'This is a wider card with supporting text below as a natural lead-in to additional content. This card has even longer content than the first to show that equal height action.', '2019-01-16 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipos_blog`
--

DROP TABLE IF EXISTS `tipos_blog`;
CREATE TABLE IF NOT EXISTS `tipos_blog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(220) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

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

DROP TABLE IF EXISTS `tipo_paginas`;
CREATE TABLE IF NOT EXISTS `tipo_paginas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tipo` varchar(120) NOT NULL,
  `nome` varchar(220) NOT NULL,
  `obs` text NOT NULL,
  `ordem` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tipo_paginas`
--

INSERT INTO `tipo_paginas` (`id`, `tipo`, `nome`, `obs`, `ordem`, `created`, `modified`) VALUES
(1, 'site', 'Site Principal', 'Core do site principal', 1, '2019-01-28 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `videos`
--

DROP TABLE IF EXISTS `videos`;
CREATE TABLE IF NOT EXISTS `videos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(120) NOT NULL,
  `video` varchar(220) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `videos`
--

INSERT INTO `videos` (`id`, `titulo`, `video`, `created`, `modified`) VALUES
(1, 'vídeos', '<iframe class=\"embed-responsive-item\" src=\"https://www.youtube.com/embed/dc5el8hbdFw\" allowfullscreen></iframe>', '2019-01-18 00:00:00', NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
