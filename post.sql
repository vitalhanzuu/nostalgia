-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 12/11/2024 às 22:05
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `nostalgia`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `post`
--

CREATE TABLE `post` (
  `titulo` varchar(225) NOT NULL,
  `path_imagem` varchar(225) NOT NULL,
  `descricao` varchar(999) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `post`
--

INSERT INTO `post` (`titulo`, `path_imagem`, `descricao`, `id`) VALUES
('Sendokai Champions', 'https://i.ytimg.com/vi/qD_wzEBKFoU/hq720.jpg?sqp=-oaymwEhCK4FEIIDSFryq4qpAxMIARUAAAAAGAElAADIQj0AgKJD&rs=AOn4CLCZzb3ubL3KfmbexJp4e50Pz3SaOg', 'Zak, Cloe, Kiet e Fenzy são quatro crianças da Terra impopulares, sem qualquer talento para o esporte. Um dia, eles são transportados para outra dimensão com pulseiras. Reúnem-se professor Tänpo, que explica que a regra do Zorn está conquistando todas as dimensões do Multiverso.', 6),
('Scooby-doo ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTkgkgQdF3p8fmGc1Gq9MVWGr__OXkBLyMNBw&s', 'Velma, Daphne, Fred e Salsicha são um grupo de amigos que resolvem crimes e mistérios com a ajuda de Scooby-Doo, um cão tão grande quanto atrapalhado. Cada episódio foca em um mistério incomum, que sempre envolve o grupo tendo que impedir alguém de executar um plano para provocar o caos no mundo.', 8),
('Os Flinstones', 'https://kanto.legiaodosherois.com.br/w1200-q95-k1/wp-content/uploads/2023/06/legiao_frpNCve6B79h.jpg.webp', 'Acompanhamos o dia a dia de uma família de classe média que vive na Idade da Pedra. Com a ajuda de utensílios feitos a partir de pedra lascada, personagens clássicos como Fred, Wilma, Barney, Betty, Pedrita, Bambam e até um fofíssimo dinossauro de estimação vivem aventuras extraordinárias.', 10),
('A Pantera Cor de Rosa', 'https://kanto.legiaodosherois.com.br/w1200-q95-k1/wp-content/uploads/2023/06/legiao_UdTJPv3yLVbX.jpg.webp', 'A Pantera Cor-de-Rosa acompanha as aventuras de uma pantera que acaba se envolvendo em mistérios que sempre a colocam em situações cômicas e divertidas.', 11),
('Os Smurfs', 'https://kanto.legiaodosherois.com.br/w1200-q95-k1/wp-content/uploads/2023/06/legiao_7iZb1ltecEPI.jpg.webp', 'Ao longo de nove temporadas, o seriado Os Smurfs conta a história de pequenos seres azuis que vivem em uma aldeia escondida na floresta e são aterrorizados por Gargamel, um feiticeiro malvado que precisa deles para finalizar uma fórmula mágica.', 12),
('Caverna do Dragão', 'https://kanto.legiaodosherois.com.br/w1200-q95-k1/wp-content/uploads/2023/04/legiao_oenfXAtOBvFi.jpg.webp', 'Na trama, acompanhamos um grupo de seis amigos que são transportados para um reino distante, onde conhecem o Mestre dos Magos – o único capaz de ajudá-los na jornada de volta para casa enquanto enfrentam criaturas perigosas.', 13),
('He-Man', 'https://kanto.legiaodosherois.com.br/w1200-q95-k1/wp-content/uploads/2023/06/legiao_VQvu1In3E8Zg.jpg.webp', 'A série animada He-Man e os Defensores do Universo conta a história de He-Man, o homem mais poderoso do universo que, para salvar o planeta Eternia, precisa lutar contra as forças do mal e vilões perigosos.', 14),
('Batman', 'https://kanto.legiaodosherois.com.br/w1200-q95-k1/wp-content/uploads/2023/06/legiao_NyTEKUrdGq7L.jpg.webp', 'Com o apoio da versão animada de figuras populares do universo do Batman, como Coringa e Jim Gordon, o programa animado acompanha o cotidiano de Bruce Wayne, o milionário dono das empresas Wayne que, à noite, combate o crime de Gotham City como o vigilante Batman.', 15),
('Laboratório de Dexter', 'https://kanto.legiaodosherois.com.br/w1200-q95-k1/wp-content/uploads/2023/06/legiao_YRGzJdosHl_h.jpg.webp', 'O Laboratório de Dexter conta a história de Dexter, um menino genial que tem um laboratório secreto atrás do armário de seu quarto. Sempre em conflito com a irmã, que tenta a todo custo atrapalhar suas criações, Dexter ainda precisa lidar com Mandark, seu maior arqui-inimigo.', 16);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
