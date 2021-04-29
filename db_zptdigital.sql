-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 29/04/2021 às 12:27
-- Versão do servidor: 10.4.17-MariaDB
-- Versão do PHP: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `db_zptdigital`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `description` text NOT NULL,
  `image` text DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `amount` int(11) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` enum('0','1') DEFAULT '1',
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Despejando dados para a tabela `products`
--

INSERT INTO `products` (`id`, `description`, `image`, `price`, `amount`, `created_at`, `updated_at`, `status`, `name`) VALUES
(1, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever', 'storage/images/products/2021/04/747f1cd0a130ffbd6cf8b1953a2a599c.jpg', '150.00', 5, '2021-04-27 22:21:25', '2021-04-29 09:52:58', '1', 'Relogio de Pulso Dumont'),
(4, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever', 'storage/images/products/2021/04/115578691c25cca82432b25bca27e735.jpg', '3500.00', 6, '2021-04-28 07:36:31', '2021-04-29 09:52:40', '1', 'Notebook I5'),
(9, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever', 'storage/images/products/2021/04/efd0a9a9b007f341eca5fc72cd1f1d05.jpg', '3000.00', 4, '2021-04-28 08:55:18', '2021-04-29 09:52:16', '1', 'Processador AMD RYZEN 9 5900X '),
(10, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever', 'storage/images/products/2021/04/7ee133393f75b52433f2110abd9fc660.jpg', '80.00', 3, '2021-04-28 08:55:43', '2021-04-29 09:52:03', '1', 'Gabinete Black'),
(11, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever', 'storage/images/products/2021/04/ff7f79d35f937a600f7293fcf463d455.jpg', '80.00', 4, '2021-04-28 08:55:59', '2021-04-29 09:57:47', '1', 'Fonte XPTO'),
(13, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever', 'storage/images/products/2021/04/6d8c5ab9014ceb53054f0134d6cd31a4.jpg', '120.00', 4, '2021-04-28 13:16:15', '2021-04-29 09:53:14', '1', 'Fonte CV650'),
(14, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'storage/images/products/2021/04/bd9881b7277f0524aaa7bbdf42bb7177.jpg', '7000.12', 7, '2021-04-28 13:24:15', '2021-04-29 09:50:52', '1', 'Notebook Vaio'),
(15, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever', 'storage/images/products/2021/04/739ae28332d473d66eb0eb9156b472c2.jpg', '5500.00', 8, '2021-04-28 15:16:50', '2021-04-29 09:50:23', '1', 'Computador Dell'),
(16, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever', 'storage/images/products/2021/04/0f74edb6f19c27e918f0447d66d6de08.jpg', '600.00', 4, '2021-04-28 17:44:47', '2021-04-29 10:02:59', '1', 'Phenom X2'),
(17, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever', 'storage/images/products/2021/04/12cbd5884eca4763611ef05910acb881.jpg', '500.00', 0, '2021-04-28 18:41:39', '2021-04-29 10:02:50', '1', 'Fonte Atx'),
(18, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever', 'storage/images/products/2021/04/0d0995b98cd8ac69faea757bccd4afc0.jpg', '20.00', 5, '2021-04-28 20:42:17', '2021-04-29 09:49:58', '1', 'Fonte Nova');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
