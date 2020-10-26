-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 26-Out-2020 às 02:09
-- Versão do servidor: 10.4.14-MariaDB
-- versão do PHP: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `fseletro`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedidos`
--

CREATE TABLE `pedidos` (
  `id_cliente` int(10) NOT NULL,
  `nome_cliente` text NOT NULL,
  `endereço` varchar(110) NOT NULL,
  `Nº / Complemento` int(11) NOT NULL,
  `bairro` varchar(50) NOT NULL,
  `cidade` varchar(50) NOT NULL,
  `telefone_cliente` bigint(11) NOT NULL,
  `nome_produto` varchar(60) NOT NULL,
  `valor_unitario` decimal(8,2) NOT NULL,
  `quantidade` int(10) NOT NULL,
  `valor_total` decimal(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `pedidos`
--

INSERT INTO `pedidos` (`id_cliente`, `nome_cliente`, `endereço`, `Nº / Complemento`, `bairro`, `cidade`, `telefone_cliente`, `nome_produto`, `valor_unitario`, `quantidade`, `valor_total`) VALUES
(1, 'Marilene Alves dos Santos', 'Rua javari', 48, 'Jd paineiras', 'Diadema', 954448585, 'microondas eletrolux', '499.00', 3, '1497.00'),
(2, 'Edmar vitor dos santos', 'Rua Macauba', 587, 'campanario', 'Diadema', 985554448, 'geladeira boch', '3219.00', 1, '3219.00'),
(3, 'Aghata Souza Santos', 'Rua Esperança', 587, 'Livieiro', 'São Paulo', 35894578, 'Televisor l Samsung ', '3999.00', 2, '7998.00'),
(4, 'Jady Souza', 'Rua Odontólogo', 897, 'Jd patrícia', 'Uberlandia', 35698541, 'Liquidificador Malloy', '123.41', 10, '1234.10'),
(5, 'Thawanny Vitoria Alves', 'Rua Esperança', 64, 'Bonsucesso', 'Guarulhos', 69845252, 'Fogão consul', '1139.00', 2, '2278.00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

CREATE TABLE `produtos` (
  `id_produto` int(11) NOT NULL,
  `nome_produto` varchar(70) NOT NULL,
  `categoria_produto` varchar(70) NOT NULL,
  `descricao_produto` varchar(200) NOT NULL,
  `preco_produto` decimal(8,2) NOT NULL,
  `promocao_produto` decimal(8,2) NOT NULL,
  `imagem_produto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`id_produto`, `nome_produto`, `categoria_produto`, `descricao_produto`, `preco_produto`, `promocao_produto`, `imagem_produto`) VALUES
(1, 'Geladeira Brastemp', 'geladeiras', ' Frost Free Side Inverse 540 litros', '6389.00', '5019.00', 'imagens/novageladeira01.jpg'),
(2, 'Geladeira Bosh ', 'geladeiras', 'Side Inverse 420 litros', '4269.00', '3219.00', 'imagens/geladeira4.jpg'),
(3, 'Geladeira Brastemp ', 'geladeiras', 'Frost Free Side Inverse 440 litros', '4560.00', '3999.00', 'imagens/geladeira3.jpg'),
(4, 'Geladeira Eletrolux ', 'geladeiras', 'Frost Free Side Inverse 520 litros', '4899.00', '4099.00', 'imagens/novageladeira02.jpg'),
(5, '\r\nCooktoop Brastemp ', 'cooktoop', '5 bocas cor braco', '889.00', '699.00', 'imagens/cooktop1.jpg'),
(6, 'Cooktoop Bosch ', 'cooktoop', '5 bocas cor preto', '1089.00', '819.00', 'imagens/cooktop2.jpg'),
(7, 'Cooktoop Consul 5 bocass', 'Cooktoop', ' 5 bocas cor marrom', '789.00', '639.00', 'imagens/cooktop3.jpg'),
(8, 'Cooktoop Philco ', 'Cooktoop ', '5 bocas cor azul', '689.00', '599.00', 'imagens/cooktop4.jpg'),
(9, 'Lavadouras Brastemp ', 'Lavadouras', 'Brastemp 12 kg', '1689.00', '1499.00', 'imagens/lavaroupa1.jpg'),
(10, 'Lavadouras Eletrolux', 'Lavadouras', 'Eletrolux 10 kgs', '1439.00', '1199.00', 'imagens/lavaroupa2.jpg'),
(11, 'Lavadouras Consul', 'Lavadouras', 'Consul 10 kg', '1389.00', '1119.00', 'imagens/lavaroupa3.jpg'),
(12, 'Lavadouras Colomaq', 'Lavadouras', 'Colomaq 12 kg', '1331.00', '1099.00', 'imagens/lavaroupa4.jpg'),
(13, 'televisor Samsung ', 'televisores', 'Smart TV Cristal 65\"', '4389.00', '3999.00', 'imagens/tv1.jpg'),
(14, 'televisor LG ', 'televisores', 'sansung Smart 58\"', '3899.00', '3399.00', 'imagens/tv2.jpg'),
(15, 'televisor Phlips ', 'televisores', 'Smart k4 lec 50', '2699.00', '2099.00', 'imagens/tv3.jpg'),
(16, 'televisor Philco', 'televisores', 'Smart TV HD led 32\"', '1389.00', '1199.00', 'imagens/tv4.jpg'),
(17, 'liquidificadores Philco 2 litros', 'liquidificadores', '2 litros cor prata', '199.00', '119.00', 'imagens/liquitificador1.jpg'),
(18, 'Liquidificador Mundial', 'Liquidificador', 'Turbo com filtro 2,7 litros\r\ncor vermelho', '154.00', '129.00', 'imagens/liquitificador2.jpg'),
(19, 'Liquidificador Malloy ', 'Liquidificador', '2 litro \r\ncor dourado', '123.41', '100.00', 'imagens/liquitificador3.jpg'),
(20, 'Liquidificado Arno \r\n', 'Liquidificado', 'Maxs com filtro 1,7 litro\r\n', '220.00', '189.00', 'imagens/liquitificador4.jpg'),
(21, 'Liquidificado Arno \r\n', 'Liquidificado', 'Maxs com filtro 1,7 litro\r\n', '220.00', '189.00', 'imagens/liquitificador4.jpg'),
(22, 'Fogões Consul ', 'Fogões', '5 bocas acendimento automáticos\r\n\r\n', '1589.00', '1139.00', 'imagens/fog%C3%A3o1.jpg'),
(23, 'Fogões Atlas ', 'Fogões', 'Agile 5 bocas acendimento automáticos\r\n', '1114.00', '1009.00', 'imagens/fog%C3%A3o2.jpg'),
(24, 'Fogões Fenix 5 bocas acendimento automáticos mesa de vidro\r\n', 'Fogões ', '5 bocas acendimento automáticos mesa de vidro\r\n', '1589.00', '1299.00', 'imagens/fog%C3%A3o3.jpg'),
(25, 'Fogões Itatiaia ', 'Fogões', ' 5 bocas acendimento automáticos\r\ncor branca', '1089.00', '979.00', 'imagens/fog%C3%A3o4.jpg'),
(26, 'Microondas Eletrolux \r\n', 'Micro Ondas', '20 litros\r\ninox\r\ndigital', '599.00', '499.00', 'imagens/micro1.jpg'),
(27, 'Microondas Lg \r\n\r\n\r\n', 'Microondas', 'Solo 30 litro', '629.00', '589.00', 'imagens/micro2.jpg'),
(28, 'Microondas Consul', 'Microondas', ' 32 litros\r\ninox\r\n', '699.00', '589.00', 'imagens/micro3.jpg'),
(29, 'Microondas Philco ', 'Microondas', 'Philco 21 litros\r\nR$ 449,00\r\nSuper Oferta!!\r\nR$ 399,00', '499.00', '399.00', 'imagens/micro4.jpg');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Índices para tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id_produto`),
  ADD UNIQUE KEY `id_produto` (`id_produto`,`nome_produto`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `id_cliente` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id_produto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
