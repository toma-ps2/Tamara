-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Мар 20 2023 г., 15:46
-- Версия сервера: 10.4.27-MariaDB
-- Версия PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `shop2023`
--

-- --------------------------------------------------------

--
-- Структура таблицы `photos`
--

CREATE TABLE `photos` (
  `id_photos` int(11) NOT NULL,
  `id_products` int(11) NOT NULL,
  `url` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `photos`
--

INSERT INTO `photos` (`id_photos`, `id_products`, `url`) VALUES
(1, 1, 'https://c.dns-shop.ru/thumb/st4/fit/500/500/db94ab656eb26e595a1c314a1a450bf6/46fc7ff60b4e94cb9ebc38ea24b24f1335affc54381a439e96643c156cd7f444.jpg.webp'),
(2, 1, 'https://c.dns-shop.ru/thumb/st1/fit/500/500/1a234f33b337e21f25a5aad8fa809109/cde12f3d809c7cd906f6311685ca325fd32e162cc01bdac263e221055b828e99.jpg.webp'),
(3, 2, 'https://c.dns-shop.ru/thumb/st4/fit/500/500/e1316c93a6312953b4317bbe7fb851ae/af530bb69b36106789bc45ee0dfc328a048493805d97cb4582167e9f56552516.jpg.webp'),
(4, 2, 'https://c.dns-shop.ru/thumb/st1/fit/500/500/8e2d52c3d251a4618006535dd2320ce1/04544a949a302fff135f4e674e6729e75fcba817cafc3fc2e4a201af4e73a163.jpg.webp'),
(5, 2, 'https://c.dns-shop.ru/thumb/st4/fit/wm/0/0/02e651e661da641720dd6a1ddc343682/1b65cecbf8f92b746c3b24b6d8e4b02dda6e0da0851c4ab4ba1842605904ed5a.jpg.webp'),
(6, 3, 'https://c.dns-shop.ru/thumb/st4/fit/500/500/6deb4672dcbabc94fa39da5d5b111bd1/c6386d4629964d0916f75f3612f837678ec1d9ee6a6581e26773a073af121062.jpg.webp'),
(7, 4, 'https://c.dns-shop.ru/thumb/st1/fit/500/500/399ec2c62a0966e128bb347f0d18a9dd/f1646d8c92e97eb7d93890df16eff67571554623858bf5177d46709f6965b0a0.jpg.webp'),
(8, 4, 'https://c.dns-shop.ru/thumb/st1/fit/wm/0/0/d81f18aa5f8005cb34a5ed4a3725ed40/c7d8043077be5c67b3a13a44190b53a6996ab6bdc71bf1f79ac30fe718df9599.jpg.webp'),
(9, 4, 'https://c.dns-shop.ru/thumb/st1/fit/500/500/b0f8a1265b25712c86f230fa0f1dca0f/1489a98b68691f8a721cba47d5f84ca37c06ac4a33830f45bc5558c69c8b638b.jpg.webp'),
(10, 5, 'https://c.dns-shop.ru/thumb/st1/fit/500/500/922ae413469070131c330556b7a2ebf5/9c94d9a7c232086309f941327d25914bb8247c5627e354c643abb8881bc48ffc.jpg.webp'),
(11, 5, 'https://c.dns-shop.ru/thumb/st4/fit/500/500/7e1f75da1ac82f638455e127bbe85210/fa313b08b66fe439f996e0f2f6fd3b0ff73faf962fa6d61b19afd4b197376e34.jpg.webp'),
(12, 6, 'https://c.dns-shop.ru/thumb/st1/fit/500/500/9a5e93333d7b528b027ea54b285b7d79/f722cff49f8e1108769cfeb6374d57467f23675201b18844d092a87f396b629b.jpg.webp'),
(13, 6, 'https://c.dns-shop.ru/thumb/st1/fit/500/500/338c47fccb41e3d4a9f62f2fcdb04178/b8c07c66e5bcdd1fd56a2e2c08a56a13722af6b5f11026f77027bdc3f48471d4.jpg.webp'),
(14, 6, 'https://c.dns-shop.ru/thumb/st1/fit/500/500/ba32de08afd73b19b27298f461a64b11/68aeea92d5a0f19e9fa7d6a2f15f3166215315b423f87704f4a4567ca4d61be8.jpg.webp'),
(15, 7, 'https://c.dns-shop.ru/thumb/st1/fit/500/500/4688585a90b6683a976bd33c079e7ec8/8e0baacb11571153d51a03d5587c00a4a06bfc20006a24dc43e2cbfd61c31a65.jpg.webp'),
(16, 7, 'https://c.dns-shop.ru/thumb/st4/fit/500/500/055621482792e7362005856c51d4de6f/8319cca43dd5b6e73c38ce9f5fc1aabe0c623965a24f76fe61d94725e4c94589.jpg.webp'),
(17, 8, 'https://c.dns-shop.ru/thumb/st4/fit/500/500/7e579c08426807a0d81a49d0af82d7da/5a76b613723971a8a4f80a750cdadb877d7d142a98cb6ead06732291f9b9c346.jpg.webp'),
(18, 9, 'https://c.dns-shop.ru/thumb/st1/fit/500/500/f95a58b75051fc7da4d4e5d07ba4e480/d3783edd0b613f9e5736cd0b79b494be95320af36ab347964594b1d7f25525bf.jpg.webp'),
(19, 10, 'https://c.dns-shop.ru/thumb/st1/fit/500/500/8367b22f78c657582acd7c41aca63238/f41c60e001eed0e9fc6320ed6ae22cfeec613628e32b237b42cd387c631881ce.jpg.webp'),
(20, 10, 'https://c.dns-shop.ru/thumb/st4/fit/500/500/c3793dfd5456ef360f92774579c82fc6/034a7c28a8cde3984cec4d9eb881c853cf7d9481a4ed2fbb2463e1ef78acf2a2.jpg.webp'),
(21, 10, 'https://c.dns-shop.ru/thumb/st1/fit/500/500/ebf32626f93676264f2554773ce2760b/7bcde6482bed6cbef5189b2501b42523666c8b6eb546864cfb7f4996b9db27ad.jpg.webp'),
(22, 11, 'https://c.dns-shop.ru/thumb/st1/fit/500/500/90c595256d9f55f9cf1196beca5c1686/2cbfb7a9d4c7cdff33f0988e33b31a02b597851d1196c915354f2d42b1929b78.jpg.webp'),
(23, 11, 'https://c.dns-shop.ru/thumb/st1/fit/500/500/0e3f7420df53c91346c63f235f3d17e9/e3ac9fb7b631c567a1cbedf6cc72f71105dee1bcd680840bb8b9718019569d9f.jpg.webp'),
(24, 11, 'https://c.dns-shop.ru/thumb/st4/fit/500/500/800bd9776eac9c724a15e93a83082839/927483d3135576475c517203fa7648d719424f7b357ec969a1188044748859e2.jpg.webp'),
(25, 12, 'https://c.dns-shop.ru/thumb/st4/fit/500/500/349650920f87d01b03966b5fc5e190d6/86a6e0becf63aa92316ee72278e58b21feec527ce1f62fd5b377a0574efb18ab.jpg.webp'),
(26, 12, 'https://c.dns-shop.ru/thumb/st4/fit/500/500/25baa56ccaa7c332e4bd406a88c95939/fb7fb90fdd231dd840c839319cee4bd6ad7c1327d4f5b82cd066c8e71085e5ac.jpg.webp'),
(27, 13, 'https://c.dns-shop.ru/thumb/st1/fit/500/500/6eef5ff28f22ac0250258082b9c2a6dc/8f083a94882b424f183f9c1c0ae21ff0f7e3ca8142bc6ff89eaee24c2b6fecdd.jpg.webp'),
(28, 13, 'https://c.dns-shop.ru/thumb/st1/fit/500/500/f7cb5d770faa11c41b1768c3b62cde71/7caf3e4298b42c955b55189d20b226429e1a55e49818e46f55fcd19c465deb8e.jpg.webp'),
(29, 14, 'https://c.dns-shop.ru/thumb/st1/fit/500/500/8ed05606a95b56578c5cf47b6ee5cd97/d9c003721ce3f784cb5661259fa31e661c7d51f5732584c2afe93172070f19df.jpg.webp'),
(30, 15, 'https://c.dns-shop.ru/thumb/st4/fit/500/500/08a405df3bc403130895a6bf8cabbbe0/7db2372aa5b06e4e1a206e7391ca57d4d274b080704e713340f0e6f206ce575c.jpg.webp'),
(31, 15, 'https://c.dns-shop.ru/thumb/st1/fit/500/500/84e1597fc4c8c56d43a9c6040ef2b2cb/ce291be2ef23c23f1f39d7a77216a0ddaa321b1d5f5e91cac5f431886a03cb7b.jpg.webp'),
(32, 15, 'https://c.dns-shop.ru/thumb/st4/fit/500/500/0479cf750645eba71ac0d3e277ae3611/0a6a1259559753a18aa9b790276f866088b282ca755322b8c8af9c0a15ba1e7b.jpg.webp');

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE `products` (
  `id_products` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` varchar(250) NOT NULL,
  `article` int(16) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`id_products`, `name`, `description`, `article`, `quantity`, `price`) VALUES
(1, 'Фен Goodhelper HD-F082 ', 'Фен Goodhelper HD-F082 представляет собой невероятно компактное устройство со складной ручкой, которое не потребует много места в дорожной сумке. При его непосредственном участии вы не только высушите шевелюру, но и придадите ей желаемую форму.', 8195338, 100, 250),
(2, 'Фен DEXP BA-200', 'Фен DEXP BA-200, представленный в стильном корпусе черно-коричневого цвета, - прибор, потребность в котором испытывает каждая девушка. Данная модель отличается компактными размерами, благодаря которым она сможет стать вашим неизменным спутником в люб', 1203121, 120, 299),
(3, 'Фен Leben 489-049', 'Фен для волос – незаменимая вещь для тех, кто хочет всегда иметь отличную прическу и ценит свое время.', 9937505, 135, 299),
(4, 'Фен Blackton Bt HD1001C', 'Фен Blackton Bt HD1001C станет надежным помощником для сушки и укладки волос. Он оборудован 3 режимами нагрева и 2 скоростными режимами, что позволяет настраивать интенсивность воздушного потока и интенсивность нагрева', 8196699, 90, 399),
(5, 'Фен DEXP BA-100', 'Присмотритесь к фену DEXP BA-100 с 2 скоростными и температурными режимами. Компактные размеры, небольшой вес и складная ручка сделают данный прибор неизменным спутником во время любой командировки или длительной поездки', 4759775, 75, 399),
(6, 'Фен DEXP BA-200', 'Фен DEXP BA-200 в стильном корпусе, выполненном в необычном сочетании бежевых и черных элементов, станет отличным выбором, если вы ищете компактную модель. ', 816494, 67, 400),
(7, 'Фен DEXP HD-1000', 'Полноразмерный фен DEXP HD-1000, имеющий утонченную черно-фиолетовую расцветку корпуса, поможет вам в укладке волос. ', 1273810, 89, 400),
(8, 'Фен IRIT IR-3141', 'Розовый фен Irit IR-3141 отличается непревзойденной компактностью и позволяет даже в поездке создать укладку или высушить волосы.', 1133960, 147, 450),
(9, 'Фен MercuryHaus Travel MC-6710', 'Фен электрический MercuryHaus Travel MC-6710 (60) имеет мощность 1600 Вт, напряжение: 220-240 В. Один скоростной режим, два температурных режима, складную ручку, защиту от перегрева. ', 5352357, 35, 470),
(10, 'Фен DEXP BA-200', 'Фен DEXP BA-200 выполнен в розовом компактном корпусе и является дорожным вариантом, поскольку обладает складной конструкцией. ', 1689239, 345, 499),
(11, 'Фен Delta DL-0906', 'Фен из высококачественного термостойкого пластика с двумя режимами мощности для выбора оптимальной температуры воздушного потока.', 5354118, 56, 499),
(12, 'Фен First FA-5666-5', 'Фен FIRST FA-5666-5 – стильный и удобный прибор мощностью 1200 Вт, позволяющий высушить волосы за считанные минуты. ', 1107692, 69, 500),
(13, 'Фен HOME ELEMENT HE-HD318', 'Фен из высококачественного термостойкого пластика с двумя режимами мощности для выбора оптимального воздушного потока и складной ручкой для большего удобства при хранении.', 8160550, 79, 550),
(14, 'Фен HOME ELEMENT HE-HD318', 'Фен из высококачественного термостойкого пластика с двумя режимами мощности для выбора оптимального воздушного потока и складной ручкой для большего удобства при хранении', 8160551, 55, 560),
(15, 'Фен IRIT IR-3138', 'Фен Irit IR-3138 – компактное приспособление, предназначенное для сушки волос. Устройство выполнено в желтом корпусе с серой ручкой и является походным вариантом: компактность прибора позволяет брать его в поездки.', 8100220, 467, 600);

-- --------------------------------------------------------

--
-- Структура таблицы `review`
--

CREATE TABLE `review` (
  `id` int(11) NOT NULL,
  `id_products` int(16) NOT NULL,
  `id_photos` int(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `review`
--

INSERT INTO `review` (`id`, `id_products`, `id_photos`) VALUES
(4, 1, 1),
(5, 1, 2),
(6, 2, 3),
(7, 2, 4),
(8, 2, 5),
(9, 3, 6),
(10, 4, 7),
(11, 4, 8),
(12, 4, 9),
(13, 5, 10),
(14, 5, 11),
(15, 6, 12),
(16, 6, 13),
(17, 6, 14),
(18, 7, 15),
(19, 7, 16),
(20, 8, 17),
(21, 9, 18),
(22, 10, 19),
(23, 10, 20),
(24, 10, 21),
(25, 11, 22),
(26, 11, 23),
(27, 11, 24),
(28, 12, 25),
(29, 12, 26),
(30, 13, 27),
(31, 13, 28),
(32, 14, 29),
(33, 15, 30),
(34, 15, 31),
(35, 15, 32);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id_photos`),
  ADD UNIQUE KEY `url` (`url`),
  ADD KEY `id_products` (`id_products`);

--
-- Индексы таблицы `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id_products`);

--
-- Индексы таблицы `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_products` (`id_products`),
  ADD KEY `id_photos` (`id_photos`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `photos`
--
ALTER TABLE `photos`
  MODIFY `id_photos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT для таблицы `products`
--
ALTER TABLE `products`
  MODIFY `id_products` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `review`
--
ALTER TABLE `review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `photos`
--
ALTER TABLE `photos`
  ADD CONSTRAINT `photos_ibfk_1` FOREIGN KEY (`id_products`) REFERENCES `products` (`id_products`);

--
-- Ограничения внешнего ключа таблицы `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `review_ibfk_1` FOREIGN KEY (`id_products`) REFERENCES `products` (`id_products`),
  ADD CONSTRAINT `review_ibfk_2` FOREIGN KEY (`id_photos`) REFERENCES `photos` (`id_photos`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
