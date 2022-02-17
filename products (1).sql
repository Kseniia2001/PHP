-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3242
-- Время создания: Фев 17 2022 г., 14:11
-- Версия сервера: 8.0.24
-- Версия PHP: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `products`
--

-- --------------------------------------------------------

--
-- Структура таблицы `basket`
--

CREATE TABLE `basket` (
  `id` int NOT NULL,
  `goods_id` int NOT NULL,
  `session_id` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `basket`
--

INSERT INTO `basket` (`id`, `goods_id`, `session_id`) VALUES
(57, 1, 'f3unh4cl44vj93nh5h6covacbs3j8hgj'),
(58, 1, 'f3unh4cl44vj93nh5h6covacbs3j8hgj'),
(59, 3, 'f3unh4cl44vj93nh5h6covacbs3j8hgj'),
(60, 3, 'f3unh4cl44vj93nh5h6covacbs3j8hgj'),
(61, 1, '00i4ehseb2874kisbrnmeneqfm26igr6'),
(62, 2, '00i4ehseb2874kisbrnmeneqfm26igr6'),
(63, 3, '00i4ehseb2874kisbrnmeneqfm26igr6'),
(64, 4, '00i4ehseb2874kisbrnmeneqfm26igr6'),
(65, 5, 'f3unh4cl44vj93nh5h6covacbs3j8hgj'),
(66, 3, 'f3unh4cl44vj93nh5h6covacbs3j8hgj');

-- --------------------------------------------------------

--
-- Структура таблицы `comments`
--

CREATE TABLE `comments` (
  `id` int NOT NULL,
  `name` text NOT NULL,
  `comment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `orders`
--

CREATE TABLE `orders` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `session_id_backet` text NOT NULL,
  `email` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `orders`
--

INSERT INTO `orders` (`id`, `name`, `phone`, `session_id_backet`, `email`) VALUES
(1, 'Вася', '895328888', 'f3unh4cl44vj93nh5h6covacbs3j8hgj\r\n', 'vasya@m.k');

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE `products` (
  `id` int NOT NULL,
  `title` text NOT NULL,
  `filename` text NOT NULL,
  `description` text NOT NULL,
  `view` int NOT NULL,
  `price` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`id`, `title`, `filename`, `description`, `view`, `price`) VALUES
(1, 'Черная смородина и кардамон', '01.jpg', ' Сладкое и густое благоухание черной смородины лишь подчеркивается пряным запахом кардамона. Этот зефир яркий и с легкой кислинкой!', 21, 10),
(2, 'Вишня и боб тонка', '02.jpg', ' Миндальный сочный вкус вишни неотразим... с элитными бобами тонка. Это дорогостоящий ингредиент в парфюме Dior, Bulgari и др, в десертах лучших кондитерских Парижа.', 11, 20),
(3, 'Апельсин и черноплодная рябина', '03.jpg', 'Рецепт наиболее популярного вкуса зефира: сочный, пропитанный солнцем апельсин и такая темная полезная арония (черноплодная рябина)... Для ценителей божественных вкусов!', 3, 30),
(4, 'Лайм и тархун', '04.jpg', 'Насыщенный аромат лайма с легкой горчинкой и тонкое послевкусие тархуна... и вкуснейший лимонадный зефир готов!', 1, 40),
(5, 'Малина и белый шоколад', '05.jpg', '  И королева вкуса - ароматная сочная малина в мантии из белого бельгийского шоколада завершает парад вкусов.', 1, 50);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `login` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `login`, `password`) VALUES
(1, 'log', 'pass'),
(3, 'user', '123456789'),
(4, 'person', '789643');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `basket`
--
ALTER TABLE `basket`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `basket`
--
ALTER TABLE `basket`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT для таблицы `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT для таблицы `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `products`
--
ALTER TABLE `products`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
