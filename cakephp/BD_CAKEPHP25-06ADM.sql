-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tempo de Geração: Jun 25, 2012 as 03:57 
-- Versão do Servidor: 5.5.8
-- Versão do PHP: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Banco de Dados: `cake_blog_tutorial`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `body` text,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Extraindo dados da tabela `posts`
--

INSERT INTO `posts` (`id`, `title`, `body`, `created`, `modified`, `user_id`) VALUES
(1, 'The title', 'This is the post body.', '2012-06-22 16:36:37', NULL, NULL),
(2, 'A title once again', 'And the post body follows.', '2012-06-22 16:36:37', NULL, NULL),
(3, 'Title strikes back', 'This is really exciting! Not.', '2012-06-22 16:36:37', NULL, NULL),
(4, 'Thiago', 'Meu Primeiro projeto usando CakePHP', '2012-06-22 22:25:07', '2012-06-22 22:25:07', NULL),
(5, 'TESTE', 'sfdsdsdsdsdsds', '2012-06-25 15:25:08', '2012-06-25 15:25:08', 2),
(6, 'Noticia', 'VocÃª deve ter notado o uso de um objeto chamado $this->Html. Esta Ã© uma instÃ¢ncia da classe HtmlHelper do CakePHP. O CakePHP vem com um conjunto de helpers que tornam uma moleza fazer coisas como criar links, gerar formulÃ¡rios, Javascript e elementos dinÃ¢micos com Ajax. VocÃª pode aprender mais sobre como usÃ¡-los na seÃ§Ã£o /views/helpers, mas o importante a ser notado aqui Ã© que o mÃ©todo link() irÃ¡ gerar um link em HTML com o tÃ­tulo (o primeiro parÃ¢metro) e URL (o segundo parÃ¢metro) dados.', '2012-06-25 15:33:25', '2012-06-25 15:33:25', 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `role` varchar(20) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `role`, `created`, `modified`) VALUES
(1, 'adm', '3e33d278a19164775dfe72d14abb4dd8bb95762d', 'admin', '2012-06-25 14:52:43', '2012-06-25 14:52:43'),
(2, 'adm2', '59498d0e84f56b0e3947cf8d0e39be0dd9e5802f', 'author', '2012-06-25 15:24:28', '2012-06-25 15:24:28');
