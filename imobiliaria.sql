-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 01-Jun-2023 às 11:15
-- Versão do servidor: 8.0.31
-- versão do PHP: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `imobiliaria`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `apartamento`
--

DROP TABLE IF EXISTS `apartamento`;
CREATE TABLE IF NOT EXISTS `apartamento` (
  `idapartamento` int NOT NULL AUTO_INCREMENT,
  `quartos` varchar(2) DEFAULT NULL,
  `salas` varchar(2) DEFAULT NULL,
  `banheiros` varchar(2) DEFAULT NULL,
  `tipoApartamento` varchar(50) DEFAULT NULL,
  `estado` varchar(15) DEFAULT NULL,
  `imovelChave` int DEFAULT NULL,
  `chaveCidade` int DEFAULT NULL,
  `preco` varchar(45) DEFAULT NULL,
  `imagem` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idapartamento`),
  KEY `estadoChave` (`estado`),
  KEY `imovelChave` (`imovelChave`),
  KEY `chaveCidade` (`chaveCidade`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cidade`
--

DROP TABLE IF EXISTS `cidade`;
CREATE TABLE IF NOT EXISTS `cidade` (
  `idcidade` int NOT NULL AUTO_INCREMENT,
  `nomeCidade` varchar(45) DEFAULT NULL,
  `populacao` varchar(25) DEFAULT NULL,
  `provincia` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`idcidade`),
  UNIQUE KEY `nomeCidade_UNIQUE` (`nomeCidade`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estrutura da tabela `comentario`
--

DROP TABLE IF EXISTS `comentario`;
CREATE TABLE IF NOT EXISTS `comentario` (
  `idcomentario` int NOT NULL AUTO_INCREMENT,
  `nomeUsuario` varchar(45) DEFAULT NULL,
  `ocupacao` varchar(45) DEFAULT NULL,
  `comentario` longtext,
  PRIMARY KEY (`idcomentario`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estrutura da tabela `fornecedores`
--

DROP TABLE IF EXISTS `fornecedores`;
CREATE TABLE IF NOT EXISTS `fornecedores` (
  `codigo` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) DEFAULT NULL,
  `apelido` varchar(45) DEFAULT NULL,
  `genero` varchar(45) DEFAULT NULL,
  `endereco` varchar(45) DEFAULT NULL,
  `dataNascimento` date DEFAULT NULL,
  `nacionalidade` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `telefone` varchar(15) DEFAULT NULL,
  `imagem` varchar(333) DEFAULT NULL,
  `senha` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estrutura da tabela `imovel`
--

DROP TABLE IF EXISTS `imovel`;
CREATE TABLE IF NOT EXISTS `imovel` (
  `idimovel` int NOT NULL AUTO_INCREMENT,
  `nomeImovel` varchar(45) DEFAULT NULL,
  `nomeAbreviado` varchar(45) DEFAULT NULL,
  `endereco` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `fornecedorChave` int DEFAULT NULL,
  `cidadeChave` int DEFAULT NULL,
  PRIMARY KEY (`idimovel`),
  KEY `fornecedorChave` (`fornecedorChave`),
  KEY `cidadeChave` (`cidadeChave`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
