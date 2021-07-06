-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июл 06 2021 г., 16:28
-- Версия сервера: 8.0.19
-- Версия PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `guest_book`
--

-- --------------------------------------------------------

--
-- Структура таблицы `messages`
--

CREATE TABLE `messages` (
  `id` int NOT NULL,
  `Name` varchar(535) NOT NULL,
  `E-mail` varchar(535) NOT NULL,
  `Site` varchar(535) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Text` text NOT NULL,
  `IP` varchar(535) NOT NULL,
  `USER_AGENT` varchar(535) NOT NULL,
  `Time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `messages`
--

INSERT INTO `messages` (`id`, `Name`, `E-mail`, `Site`, `Text`, `IP`, `USER_AGENT`, `Time`) VALUES
(1, 'Test subject1', 'subject1@test.com', '', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Sapiente, aliquid perferendis. Sed minus reprehenderit debitis delectus quibusdam qui sunt! Illum voluptatum est facilis ut quis aspernatur voluptatem nemo ipsa quos?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.106 YaBrowser/21.6.0.616 Yowser/2.5 Safari/537.36', '2021-07-05 21:40:11'),
(2, 'Test subject2', 'subject2@test.com', '', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. ', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.106 YaBrowser/21.6.0.616 Yowser/2.5 Safari/537.36', '2021-07-05 21:40:11'),
(8, 'Test subject3', 'subject3@test.com', '', 'Test subject3', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.106 YaBrowser/21.6.0.616 Yowser/2.5 Safari/537.36', '2021-07-05 22:30:47'),
(9, 'Test subject4', 'subject4@test.com', 'https://yandex.ru/', 'https://yandex.ru/', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.106 YaBrowser/21.6.0.616 Yowser/2.5 Safari/537.36', '2021-07-05 22:31:22'),
(10, 'Test subject5', 'subject5@test.com', 'https://yandex.ru/', 'https://yandex.ru/', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.106 YaBrowser/21.6.0.616 Yowser/2.5 Safari/537.36', '2021-07-05 22:32:14'),
(11, 'Test subject subject', 'subject4@test.com', '', 'Test subject subject', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.106 YaBrowser/21.6.0.616 Yowser/2.5 Safari/537.36', '2021-07-05 23:25:22'),
(12, 'Test subject1', 'subject1@test.com', '', 'subject1@test.com', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.106 YaBrowser/21.6.0.616 Yowser/2.5 Safari/537.36', '2021-07-05 23:32:33'),
(13, 'Test subject1', 'subject1@test.com', '', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Sapiente, aliquid perferendis. Sed minus reprehenderit debitis delectus quibusdam qui sunt! Illum voluptatum est facilis ut quis aspernatur voluptatem nemo ipsa quos?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.106 YaBrowser/21.6.0.616 Yowser/2.5 Safari/537.36', '2021-07-05 21:40:11'),
(14, 'Test subject2', 'subject2@test.com', '', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. ', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.106 YaBrowser/21.6.0.616 Yowser/2.5 Safari/537.36', '2021-07-05 21:40:11'),
(15, 'Test subject3', 'subject3@test.com', '', 'Test subject3', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.106 YaBrowser/21.6.0.616 Yowser/2.5 Safari/537.36', '2021-07-05 22:30:47'),
(16, 'Test subject4', 'subject4@test.com', 'https://yandex.ru/', 'https://yandex.ru/', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.106 YaBrowser/21.6.0.616 Yowser/2.5 Safari/537.36', '2021-07-05 22:31:22'),
(17, 'Test subject5', 'subject5@test.com', 'https://yandex.ru/', 'https://yandex.ru/', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.106 YaBrowser/21.6.0.616 Yowser/2.5 Safari/537.36', '2021-07-05 22:32:14'),
(18, 'Test subject subject', 'subject4@test.com', '', 'Test subject subject', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.106 YaBrowser/21.6.0.616 Yowser/2.5 Safari/537.36', '2021-07-05 23:25:22'),
(19, 'Test subject1', 'subject1@test.com', '', 'subject1@test.com', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.106 YaBrowser/21.6.0.616 Yowser/2.5 Safari/537.36', '2021-07-05 23:32:33'),
(20, 'Test subject1', 'subject1@test.com', '', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Sapiente, aliquid perferendis. Sed minus reprehenderit debitis delectus quibusdam qui sunt! Illum voluptatum est facilis ut quis aspernatur voluptatem nemo ipsa quos?', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.106 YaBrowser/21.6.0.616 Yowser/2.5 Safari/537.36', '2021-07-05 21:40:11'),
(21, 'Test subject2', 'subject2@test.com', '', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. ', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.106 YaBrowser/21.6.0.616 Yowser/2.5 Safari/537.36', '2021-07-05 21:40:11'),
(22, 'Test subject3', 'subject3@test.com', '', 'Test subject3', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.106 YaBrowser/21.6.0.616 Yowser/2.5 Safari/537.36', '2021-07-05 22:30:47'),
(23, 'Test subject4', 'subject4@test.com', 'https://yandex.ru/', 'https://yandex.ru/', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.106 YaBrowser/21.6.0.616 Yowser/2.5 Safari/537.36', '2021-07-05 22:31:22'),
(24, 'Test subject5', 'subject5@test.com', 'https://yandex.ru/', 'https://yandex.ru/', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.106 YaBrowser/21.6.0.616 Yowser/2.5 Safari/537.36', '2021-07-05 22:32:14'),
(25, 'Test subject subject', 'subject4@test.com', '', 'Test subject subject', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.106 YaBrowser/21.6.0.616 Yowser/2.5 Safari/537.36', '2021-07-05 23:25:22'),
(26, 'Test subject1', 'subject1@test.com', '', 'subject1@test.com', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.106 YaBrowser/21.6.0.616 Yowser/2.5 Safari/537.36', '2021-07-05 23:32:33'),
(27, 'Test subject subject', 'subject4@test.com', '', 'Test subject subject', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.106 YaBrowser/21.6.0.616 Yowser/2.5 Safari/537.36', '2021-07-05 23:25:22'),
(28, 'Test subject subject', 'subject4@test.com', '', 'Test subject subject', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.106 YaBrowser/21.6.0.616 Yowser/2.5 Safari/537.36', '2021-07-05 23:25:22'),
(29, 'Test subject subject', 'subject4@test.com', '', 'Test subject subject', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.106 YaBrowser/21.6.0.616 Yowser/2.5 Safari/537.36', '2021-07-05 23:25:22'),
(30, 'Test subject subject', 'subject4@test.com', '', 'Test subject subject', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.106 YaBrowser/21.6.0.616 Yowser/2.5 Safari/537.36', '2021-07-05 23:25:22'),
(31, 'Test subject subject', 'subject4@test.com', '', 'Test subject subject', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.106 YaBrowser/21.6.0.616 Yowser/2.5 Safari/537.36', '2021-07-05 23:25:22'),
(32, 'Test subject subject', 'subject4@test.com', '', 'Test subject subject', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.106 YaBrowser/21.6.0.616 Yowser/2.5 Safari/537.36', '2021-07-05 23:25:22'),
(33, 'Test subject subject', 'subject4@test.com', '', 'Test subject subject', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.106 YaBrowser/21.6.0.616 Yowser/2.5 Safari/537.36', '2021-07-05 23:25:22'),
(34, 'Test subject subject', 'subject4@test.com', '', 'Test subject subject', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.106 YaBrowser/21.6.0.616 Yowser/2.5 Safari/537.36', '2021-07-05 23:25:22'),
(35, 'Test subject subject', 'subject4@test.com', '', 'Test subject subject', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.106 YaBrowser/21.6.0.616 Yowser/2.5 Safari/537.36', '2021-07-05 23:25:22'),
(36, 'Test subject123', 'subject123@test.com', '', '123', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.106 YaBrowser/21.6.0.616 Yowser/2.5 Safari/537.36', '2021-07-06 12:49:30'),
(37, 'Test subject9999', 'subject9999@test.com', '', 'dwa', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.106 YaBrowser/21.6.0.616 Yowser/2.5 Safari/537.36', '2021-07-06 13:14:16'),
(38, 'Test subject123', 'subject123@test.com', '', 'Test subject123', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.106 YaBrowser/21.6.0.616 Yowser/2.5 Safari/537.36', '2021-07-06 13:23:35'),
(39, 'Test subject subject', 'subject4@test.com', '', 'Test subject123', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.106 YaBrowser/21.6.0.616 Yowser/2.5 Safari/537.36', '2021-07-06 13:24:07');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
