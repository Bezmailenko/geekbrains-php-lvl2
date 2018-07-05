-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июл 05 2018 г., 16:45
-- Версия сервера: 5.7.20
-- Версия PHP: 7.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `brand`
--

-- --------------------------------------------------------

--
-- Структура таблицы `basket`
--

CREATE TABLE `basket` (
  `id` int(11) NOT NULL,
  `session` text NOT NULL,
  `id_good` int(11) NOT NULL,
  `col` int(11) NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `basket`
--

INSERT INTO `basket` (`id`, `session`, `id_good`, `col`, `amount`) VALUES
(61, 'khj0lejnc4dnfgtakhkmbf4e9nlp0ikv', 6, 2, 0),
(83, 'g71ad6e85ld1ehop02blfbntjk8850eo', 18, 1, 0),
(84, 'g71ad6e85ld1ehop02blfbntjk8850eo', 16, 4, 0),
(93, '1a878u0bkqa9baq1vhvecrdcrq6aghro', 13, 1, 73);

-- --------------------------------------------------------

--
-- Структура таблицы `goods`
--

CREATE TABLE `goods` (
  `idx` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `price` decimal(11,2) DEFAULT NULL,
  `category` text,
  `status` int(11) DEFAULT NULL,
  `image` varchar(250) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `view` int(4) NOT NULL,
  `description` varchar(2048) NOT NULL,
  `short_description` text NOT NULL,
  `ID_UUID` varchar(250) NOT NULL DEFAULT 'SELECT UUID()'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `goods`
--

INSERT INTO `goods` (`idx`, `name`, `price`, `category`, `status`, `image`, `date`, `view`, `description`, `short_description`, `ID_UUID`) VALUES
(1, 'cotton shirt', '52.00', '1', 1, 'Layer_2.jpg', '2018-06-11 17:00:00', 93, 'Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.', 'Краткое описание', '95be1414-c337-11e7-84ca-00ffc5973b63'),
(2, 'windbreaker', '112.00', '1', 1, 'Layer_4.jpg', '2018-06-11 17:00:00', 30, 'Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.', 'краткое описaние', '95be16b0-c337-11e7-84ca-00ffc5973b64'),
(3, 'people t-shirt', '73.00', '1', 2, 'Layer_50.jpg', '2017-07-04 18:57:45', 13, 'Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. When an unknown printer took a galley of type.', '95be17f4-c337-11e7-84ca-00ffc5973b65'),
(4, 'jacket', '84.00', '1', 2, 'Layer_7.jpg', '2017-10-10 18:57:45', 244, 'Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. When an unknown printer took a galley of type.', '95be192f-c337-11e7-84ca-00ffc5973b66'),
(5, 'short trousers', '69.00', '1', 4, 'Layer_8.jpg', '2017-11-02 18:57:45', 261, 'Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. When an unknown printer took a galley of type.', '95be1a5e-c337-11e7-84ca-00ffc5973b67'),
(6, 'sweatshirt', '91.00', '1', 2, 'Layer_9.jpg', '2017-11-01 18:57:45', 39, 'Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. When an unknown printer took a galley of type.', '95be1b8d-c337-11e7-84ca-00ffc5973b68'),
(7, 'men\'s blazer', '103.00', '1', 2, 'Layer_43.jpg', '2017-11-02 18:57:45', 19, 'Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. When an unknown printer took a galley of type.', '95be1cbc-c337-11e7-84ca-00ffc5973b69'),
(8, 'men\'s blazer', '78.00', '1', 1, 'Layer_10.jpg', '2017-11-02 18:57:45', 13, 'Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. When an unknown printer took a galley of type.', '95be1deb-c337-11e7-84ca-00ffc5973b61'),
(9, 'people t-shirt', '65.00', '1', 1, 'Layer_11.jpg', '2017-11-02 18:57:45', 13, 'Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. When an unknown printer took a galley of type.', '95be1deb-c337-11e7-84ca-00ffc5973b61'),
(10, 'men\'s blazer', '138.00', '1', 1, 'Layer_12.jpg', '2017-11-02 18:57:45', 13, 'Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. When an unknown printer took a galley of type.', '95be1deb-c337-11e7-84ca-00ffc5973b61'),
(11, 'windbreaker', '165.00', '1', 1, 'Layer_13.jpg', '2017-11-02 18:57:45', 13, 'Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. When an unknown printer took a galley of type.', '95be1deb-c337-11e7-84ca-00ffc5973b61'),
(12, 'men\'s blazer', '132.00', '1', 1, 'Layer_14.jpg', '2017-11-02 18:57:45', 13, 'Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate collaborative architectures before cutting-edge services. Completely visualize parallel core competencies rather than exceptional portals.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. When an unknown printer took a galley of type.', '95be1deb-c337-11e7-84ca-00ffc5973b61'),
(13, 'red blouse', '73.00', '2', 1, 'Layer_3.jpg', '2017-11-02 18:57:45', 13, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.             <br><br>             There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.             <br>             - 6.1 oz. 100% preshrunk heavyweight cotton<br>             - Shoulder-to-shoulder taping<br>             - Double-needle sleeves and bottom hem             <br><br>             It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. When an unknown printer took a galley of type.', '95be1deb-c337-11e7-84ca-00ffc5973b61'),
(14, 'sundress', '81.00', '2', 1, 'Layer_5.jpg', '2017-11-02 18:57:45', 13, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.             <br><br>             There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.             <br>             - 6.1 oz. 100% preshrunk heavyweight cotton<br>             - Shoulder-to-shoulder taping<br>             - Double-needle sleeves and bottom hem             <br><br>             It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. When an unknown printer took a galley of type.', '95be1deb-c337-11e7-84ca-00ffc5973b61'),
(15, 'waistcoat', '64.00', '2', 1, 'Layer_6.jpg', '2017-11-02 18:57:45', 13, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.             <br><br>             There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.             <br>             - 6.1 oz. 100% preshrunk heavyweight cotton<br>             - Shoulder-to-shoulder taping<br>             - Double-needle sleeves and bottom hem             <br><br>             It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. When an unknown printer took a galley of type.', '95be1deb-c337-11e7-84ca-00ffc5973b61'),
(16, 'black suit', '73.00', '2', 1, 'Layer_44.jpg', '2017-11-02 18:57:45', 13, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.             <br><br>             There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.             <br>             - 6.1 oz. 100% preshrunk heavyweight cotton<br>             - Shoulder-to-shoulder taping<br>             - Double-needle sleeves and bottom hem             <br><br>             It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. When an unknown printer took a galley of type.', '95be1deb-c337-11e7-84ca-00ffc5973b61'),
(17, 'petticoat', '81.00', '2', 1, 'Layer_45.jpg', '2017-11-02 18:57:45', 13, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.             <br><br>             There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.             <br>             - 6.1 oz. 100% preshrunk heavyweight cotton<br>             - Shoulder-to-shoulder taping<br>             - Double-needle sleeves and bottom hem             <br><br>             It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. When an unknown printer took a galley of type.', '95be1deb-c337-11e7-84ca-00ffc5973b61'),
(18, 'waistcoat', '64.00', '2', 1, 'Layer_46.jpg', '2017-11-02 18:57:45', 13, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.             <br><br>             There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.             <br>             - 6.1 oz. 100% preshrunk heavyweight cotton<br>             - Shoulder-to-shoulder taping<br>             - Double-needle sleeves and bottom hem             <br><br>             It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. When an unknown printer took a galley of type.', '95be1deb-c337-11e7-84ca-00ffc5973b61'),
(19, 'women\'s sweatshirt', '64.00', '2', 1, 'Layer_47.jpg', '2017-11-02 18:57:45', 13, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.             <br><br>             There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.             <br>             - 6.1 oz. 100% preshrunk heavyweight cotton<br>             - Shoulder-to-shoulder taping<br>             - Double-needle sleeves and bottom hem             <br><br>             It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. When an unknown printer took a galley of type.', '95be1deb-c337-11e7-84ca-00ffc5973b61');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `basket`
--
ALTER TABLE `basket`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `goods`
--
ALTER TABLE `goods`
  ADD PRIMARY KEY (`idx`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `basket`
--
ALTER TABLE `basket`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT для таблицы `goods`
--
ALTER TABLE `goods`
  MODIFY `idx` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
