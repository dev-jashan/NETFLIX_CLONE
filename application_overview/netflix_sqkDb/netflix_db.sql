-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 11, 2022 at 04:08 PM
-- Server version: 8.0.20
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `netflix_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `all_netflix`
--

CREATE TABLE `all_netflix` (
  `ID` int NOT NULL,
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `overview` varchar(4000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `poster` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `backdrop_path` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `show_date` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `genre_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `show_type` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `specials` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `trailers` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `all_netflix`
--

INSERT INTO `all_netflix` (`ID`, `name`, `overview`, `poster`, `backdrop_path`, `show_date`, `genre_id`, `show_type`, `specials`, `trailers`) VALUES
(1, 'The Witcher', 'Geralt of Rivia, a mutated monster-hunter for hire, journeys toward his destiny in a turbulent world where people often prove more wicked than beasts.', '/7vjaCdMw15FEbXyLQTVa04URsPm.jpg', '/udwyPqbwWlpqvMgfbRemOahzc7z.jpg', '2019-12-20', '10765', 'tv', 'originals', 'ndl1W4ltcmg'),
(2, 'Stranger Things', 'When a young boy vanishes, a small town uncovers a mystery involving secret experiments, terrifying supernatural forces, and one strange little girl.', '/x2LSRK2Cm7MZhjluni1msVJ3wDF.jpg', '/rcA17r3hfHtRrk3Xs3hXrgGeSGT.jpg', '2016-07-15', '10765', 'tv', 'originals', 'b9EkMc79ZSU'),
(3, 'Arcane', 'Amid the stark discord of twin cities Piltover and Zaun, two sisters fight on rival sides of a war between magic technologies and clashing convictions.', '/fqldf2t8ztc9aiwn3k6mlX3tvRT.jpg', '/rkB4LyZHo1NHXFEDHl9vSD9r1lI.jpg', '2021-11-06', '10765', 'tv', 'originals', 'fXmAurh012s'),
(4, 'Elves', 'The Christmas vacation of a teenage girl and her family turns into a nightmare when they discover the ancient threat that haunts the island where they are.', '/6upMMT2Uz4bhJabBCWhYKESIbF4.jpg', '/pNCZbQ5jvCbgoBfeoSx0l5dJhIM.jpg', '2021-11-28', '10765', 'tv', 'originals', 'b8LqYHBgRgw'),
(5, 'Record of Ragnarok', 'Before eradicating humankind from the world, the gods give them one last chance to prove themselves worthy of survival. Let the Ragnarok battles begin.', '/kTs2WNZOukpWdNhoRlH94pSJ3xf.jpg', '/iq5L971DFW1SwLJdvl7OpPI1QeZ.jpg', '2021-06-17', '10765', 'tv', 'originals', '_9HxsIYORyE'),
(6, 'Hellbound', 'Unearthly beings deliver bloody condemnations, sending individuals to hell and giving rise to a religious group founded on the idea of divine justice.', '/5NYdSAnDVIXePrSG2dznHdiibMk.jpg', '/bfXTYu3oLtEUL0jAxgx7Jy56yHl.jpg', '2021-11-19', '10765', 'tv', 'originals', 'UWfgm20-LTM'),
(7, 'Squid Game', 'Hundreds of cash-strapped players accept a strange invitation to compete in children\'s games—with high stakes. But, a tempting prize awaits the victor.', '/dDlEmu3EZ0Pgg93K2SVNLCjCSvE.jpg', '/qw3J9cNeLioOLoR68WX7z79aCdK.jpg', '2021-09-17', '10759', 'tv', 'originals', 'oqxAJKy0ii4'),
(8, 'Baki Hanma', 'To gain the skills he needs to surpass his powerful father, Baki enters Arizona State Prison to take on the notorious inmate known as Mr. Unchained.', '/k3HCQALcUyxebVZcfy57BIDYXUz.jpg', '/3Aj7j0xHXwGntChU1VaL9seBGIe.jpg', '2021-09-30', '10759', 'tv', 'originals', 'xniBk7zAKMY'),
(9, 'Record of Ragnarok', 'Before eradicating humankind from the world, the gods give them one last chance to prove themselves worthy of survival. Let the Ragnarok battles begin.', '/kTs2WNZOukpWdNhoRlH94pSJ3xf.jpg', '/iq5L971DFW1SwLJdvl7OpPI1QeZ.jpg', '2021-06-17', '10759', 'tv', 'originals', '_9HxsIYORyE'),
(10, 'The Witcher', 'Geralt of Rivia, a mutated monster-hunter for hire, journeys toward his destiny in a turbulent world where people often prove more wicked than beasts.', '/7vjaCdMw15FEbXyLQTVa04URsPm.jpg', '/udwyPqbwWlpqvMgfbRemOahzc7z.jpg', '2019-12-20', '10759', 'tv', 'originals', 'ndl1W4ltcmg'),
(11, 'Arcane', 'Amid the stark discord of twin cities Piltover and Zaun, two sisters fight on rival sides of a war between magic technologies and clashing convictions.', '/fqldf2t8ztc9aiwn3k6mlX3tvRT.jpg', '/rkB4LyZHo1NHXFEDHl9vSD9r1lI.jpg', '2021-11-06', '10759', 'tv', 'originals', 'fXmAurh012s'),
(12, 'My Name', 'Following her father\'s murder, a revenge-driven woman puts her trust in a powerful crime boss — and enters the police force under his direction.', '/h9p1zxKzti35Aqe6xpwkP9NlG7p.jpg', '/yjsXtps0rw36UB8TomSjI4y4zvR.jpg', '2021-10-15', '10759', 'tv', 'originals', 'ZOl7iOrD31Q'),
(13, 'Hellbound', 'Unearthly beings deliver bloody condemnations, sending individuals to hell and giving rise to a religious group founded on the idea of divine justice.', '/5NYdSAnDVIXePrSG2dznHdiibMk.jpg', '/bfXTYu3oLtEUL0jAxgx7Jy56yHl.jpg', '2021-11-19', '18', 'tv', 'originals', 'UWfgm20-LTM'),
(14, 'Elves', 'The Christmas vacation of a teenage girl and her family turns into a nightmare when they discover the ancient threat that haunts the island where they are.', '/6upMMT2Uz4bhJabBCWhYKESIbF4.jpg', '/pNCZbQ5jvCbgoBfeoSx0l5dJhIM.jpg', '2021-11-28', '18', 'tv', 'originals', 'b8LqYHBgRgw'),
(15, 'True Story', 'A world-famous comedian desperately searches for a way out after a night in Philadelphia with his brother threatens to sabotage more than his success.', '/7zMbzJijHQv5oOtkb8rdYarn9X6.jpg', '/yGpmZYJ8fb543B3tIKjzcRHgJsX.jpg', '2021-11-24', '18', 'tv', 'originals', 'QP1PAEaszVM'),
(16, 'Narcos: Mexico', 'See the rise of the Guadalajara Cartel as an American DEA agent learns the danger of targeting narcos in 1980s Mexico.', '/uYcZMiIIUv8NPebpqKbUGhf2M3y.jpg', '/cxg6CzZl7D0oJrn2425WmgtJnva.jpg', '2018-11-16', '18', 'tv', 'originals', 'BoDrQ8JktVg'),
(17, 'Sex/Life', 'A woman\'s daring sexual past collides with her married-with-kids present when the bad-boy ex she can\'t stop fantasizing about crashes back into her life.', '/2ST6l4WP7ZfqAetuttBqx8F3AAH.jpg', '/9nBVkNBe4x9HKDAzxjxlIqecxCW.jpg', '2021-06-25', '18', 'tv', 'originals', 'x580mowu5Gs'),
(18, 'The Witcher', 'Geralt of Rivia, a mutated monster-hunter for hire, journeys toward his destiny in a turbulent world where people often prove more wicked than beasts.', '/7vjaCdMw15FEbXyLQTVa04URsPm.jpg', '/udwyPqbwWlpqvMgfbRemOahzc7z.jpg', '2019-12-20', '18', 'tv', 'originals', 'ndl1W4ltcmg'),
(19, 'Sex Education', 'Inexperienced Otis channels his sex therapist mom when he teams up with rebellious Maeve to set up an underground sex therapy clinic at school.', '/8j12tohv1NBZNmpU93f47sAKBbw.jpg', '/bxU79lpl8ZQAVJ72155kqWkuqMu.jpg', '2019-01-11', '18', 'tv', 'originals', 'zmgYlYw7Uwk'),
(20, 'My Name', 'Following her father\'s murder, a revenge-driven woman puts her trust in a powerful crime boss — and enters the police force under his direction.', '/h9p1zxKzti35Aqe6xpwkP9NlG7p.jpg', '/yjsXtps0rw36UB8TomSjI4y4zvR.jpg', '2021-10-15', '18', 'tv', 'originals', 'ZOl7iOrD31Q'),
(21, 'Squid Game', 'Hundreds of cash-strapped players accept a strange invitation to compete in children\'s games—with high stakes. But, a tempting prize awaits the victor.', '/dDlEmu3EZ0Pgg93K2SVNLCjCSvE.jpg', '/qw3J9cNeLioOLoR68WX7z79aCdK.jpg', '2021-09-17', '18', 'tv', 'originals', 'oqxAJKy0ii4'),
(22, 'Elite', 'When three working class kids enroll in the most exclusive school in Spain, the clash between the wealthy and the poor students leads to tragedy.', '/3NTAbAiao4JLzFQw6YxP1YZppM8.jpg', '/hNj7EzEQyttoPBpYlLTkATnIiab.jpg', '2018-10-05', '18', 'tv', 'originals', 'QNwhAdrdwp0'),
(23, 'Stranger Things', 'When a young boy vanishes, a small town uncovers a mystery involving secret experiments, terrifying supernatural forces, and one strange little girl.', '/x2LSRK2Cm7MZhjluni1msVJ3wDF.jpg', '/rcA17r3hfHtRrk3Xs3hXrgGeSGT.jpg', '2016-07-15', '18', 'tv', 'originals', 'b9EkMc79ZSU'),
(24, 'You', 'A dangerously charming, intensely obsessive young man goes to extreme measures to insert himself into the lives of those he is transfixed by.', '/yxIdKGEjagaLs5kMjw92kAHmopH.jpg', '/e92qfYRVYUL602ztyEoujUtXlS1.jpg', '2018-09-09', '18', 'tv', 'originals', 'srx7fSBwvF4'),
(25, 'Arcane', 'Amid the stark discord of twin cities Piltover and Zaun, two sisters fight on rival sides of a war between magic technologies and clashing convictions.', '/fqldf2t8ztc9aiwn3k6mlX3tvRT.jpg', '/rkB4LyZHo1NHXFEDHl9vSD9r1lI.jpg', '2021-11-06', '18', 'tv', 'originals', 'fXmAurh012s'),
(26, 'Arcane', 'Amid the stark discord of twin cities Piltover and Zaun, two sisters fight on rival sides of a war between magic technologies and clashing convictions.', '/fqldf2t8ztc9aiwn3k6mlX3tvRT.jpg', '/rkB4LyZHo1NHXFEDHl9vSD9r1lI.jpg', '2021-11-06', '16', 'tv', 'originals', 'fXmAurh012s'),
(27, 'Baki Hanma', 'To gain the skills he needs to surpass his powerful father, Baki enters Arizona State Prison to take on the notorious inmate known as Mr. Unchained.', '/k3HCQALcUyxebVZcfy57BIDYXUz.jpg', '/3Aj7j0xHXwGntChU1VaL9seBGIe.jpg', '2021-09-30', '16', 'tv', 'originals', 'xniBk7zAKMY'),
(28, 'Record of Ragnarok', 'Before eradicating humankind from the world, the gods give them one last chance to prove themselves worthy of survival. Let the Ragnarok battles begin.', '/kTs2WNZOukpWdNhoRlH94pSJ3xf.jpg', '/iq5L971DFW1SwLJdvl7OpPI1QeZ.jpg', '2021-06-17', '16', 'tv', 'originals', '_9HxsIYORyE'),
(29, 'Arcane', 'Amid the stark discord of twin cities Piltover and Zaun, two sisters fight on rival sides of a war between magic technologies and clashing convictions.', '/fqldf2t8ztc9aiwn3k6mlX3tvRT.jpg', '/rkB4LyZHo1NHXFEDHl9vSD9r1lI.jpg', '2021-11-06', '16', 'tv', 'originals', 'fXmAurh012s'),
(30, 'Baki Hanma', 'To gain the skills he needs to surpass his powerful father, Baki enters Arizona State Prison to take on the notorious inmate known as Mr. Unchained.', '/k3HCQALcUyxebVZcfy57BIDYXUz.jpg', '/3Aj7j0xHXwGntChU1VaL9seBGIe.jpg', '2021-09-30', '16', 'tv', 'originals', 'xniBk7zAKMY'),
(31, 'Record of Ragnarok', 'Before eradicating humankind from the world, the gods give them one last chance to prove themselves worthy of survival. Let the Ragnarok battles begin.', '/kTs2WNZOukpWdNhoRlH94pSJ3xf.jpg', '/iq5L971DFW1SwLJdvl7OpPI1QeZ.jpg', '2021-06-17', '16', 'tv', 'originals', '_9HxsIYORyE'),
(32, 'You', 'A dangerously charming, intensely obsessive young man goes to extreme measures to insert himself into the lives of those he is transfixed by.', '/yxIdKGEjagaLs5kMjw92kAHmopH.jpg', '/e92qfYRVYUL602ztyEoujUtXlS1.jpg', '2018-09-09', '9648', 'tv', 'originals', 'srx7fSBwvF4'),
(33, 'Squid Game', 'Hundreds of cash-strapped players accept a strange invitation to compete in children\'s games—with high stakes. But, a tempting prize awaits the victor.', '/dDlEmu3EZ0Pgg93K2SVNLCjCSvE.jpg', '/qw3J9cNeLioOLoR68WX7z79aCdK.jpg', '2021-09-17', '9648', 'tv', 'originals', 'oqxAJKy0ii4'),
(34, 'Elves', 'The Christmas vacation of a teenage girl and her family turns into a nightmare when they discover the ancient threat that haunts the island where they are.', '/6upMMT2Uz4bhJabBCWhYKESIbF4.jpg', '/pNCZbQ5jvCbgoBfeoSx0l5dJhIM.jpg', '2021-11-28', '9648', 'tv', 'originals', 'b8LqYHBgRgw'),
(35, 'Elite', 'When three working class kids enroll in the most exclusive school in Spain, the clash between the wealthy and the poor students leads to tragedy.', '/3NTAbAiao4JLzFQw6YxP1YZppM8.jpg', '/hNj7EzEQyttoPBpYlLTkATnIiab.jpg', '2018-10-05', '9648', 'tv', 'originals', 'QNwhAdrdwp0'),
(36, 'Stranger Things', 'When a young boy vanishes, a small town uncovers a mystery involving secret experiments, terrifying supernatural forces, and one strange little girl.', '/x2LSRK2Cm7MZhjluni1msVJ3wDF.jpg', '/rcA17r3hfHtRrk3Xs3hXrgGeSGT.jpg', '2016-07-15', '9648', 'tv', 'originals', 'b9EkMc79ZSU'),
(37, 'Hellbound', 'Unearthly beings deliver bloody condemnations, sending individuals to hell and giving rise to a religious group founded on the idea of divine justice.', '/5NYdSAnDVIXePrSG2dznHdiibMk.jpg', '/bfXTYu3oLtEUL0jAxgx7Jy56yHl.jpg', '2021-11-19', '9648', 'tv', 'originals', 'UWfgm20-LTM'),
(38, 'My Name', 'Following her father\'s murder, a revenge-driven woman puts her trust in a powerful crime boss — and enters the police force under his direction.', '/h9p1zxKzti35Aqe6xpwkP9NlG7p.jpg', '/yjsXtps0rw36UB8TomSjI4y4zvR.jpg', '2021-10-15', '9648', 'tv', 'originals', 'ZOl7iOrD31Q'),
(39, 'Elite', 'When three working class kids enroll in the most exclusive school in Spain, the clash between the wealthy and the poor students leads to tragedy.', '/3NTAbAiao4JLzFQw6YxP1YZppM8.jpg', '/hNj7EzEQyttoPBpYlLTkATnIiab.jpg', '2018-10-05', '80', 'tv', 'originals', 'QNwhAdrdwp0'),
(40, 'The Snitch Cartel: Origins', 'In Cali during the \'60s and \'70s, two brothers juggle family, romance and the joint pursuit of a burning ambition: to rule Colombia\'s drug industry.', '/A17Rt6BLHno0puR1QXbsSKhBfA4.jpg', '/aGULNElJVpSru19WP2pUjopPX1U.jpg', '2021-07-28', '80', 'tv', 'originals', 'WcPEICcYEdc'),
(41, 'My Name', 'Following her father\'s murder, a revenge-driven woman puts her trust in a powerful crime boss — and enters the police force under his direction.', '/h9p1zxKzti35Aqe6xpwkP9NlG7p.jpg', '/yjsXtps0rw36UB8TomSjI4y4zvR.jpg', '2021-10-15', '80', 'tv', 'originals', 'ZOl7iOrD31Q'),
(42, 'Hellbound', 'Unearthly beings deliver bloody condemnations, sending individuals to hell and giving rise to a religious group founded on the idea of divine justice.', '/5NYdSAnDVIXePrSG2dznHdiibMk.jpg', '/bfXTYu3oLtEUL0jAxgx7Jy56yHl.jpg', '2021-11-19', '80', 'tv', 'originals', 'UWfgm20-LTM'),
(43, 'True Story', 'A world-famous comedian desperately searches for a way out after a night in Philadelphia with his brother threatens to sabotage more than his success.', '/7zMbzJijHQv5oOtkb8rdYarn9X6.jpg', '/yGpmZYJ8fb543B3tIKjzcRHgJsX.jpg', '2021-11-24', '80', 'tv', 'originals', 'QP1PAEaszVM'),
(44, 'Narcos: Mexico', 'See the rise of the Guadalajara Cartel as an American DEA agent learns the danger of targeting narcos in 1980s Mexico.', '/uYcZMiIIUv8NPebpqKbUGhf2M3y.jpg', '/cxg6CzZl7D0oJrn2425WmgtJnva.jpg', '2018-11-16', '80', 'tv', 'originals', 'BoDrQ8JktVg'),
(45, 'You', 'A dangerously charming, intensely obsessive young man goes to extreme measures to insert himself into the lives of those he is transfixed by.', '/yxIdKGEjagaLs5kMjw92kAHmopH.jpg', '/e92qfYRVYUL602ztyEoujUtXlS1.jpg', '2018-09-09', '80', 'tv', 'originals', 'srx7fSBwvF4'),
(46, 'Sex Education', 'Inexperienced Otis channels his sex therapist mom when he teams up with rebellious Maeve to set up an underground sex therapy clinic at school.', '/8j12tohv1NBZNmpU93f47sAKBbw.jpg', '/bxU79lpl8ZQAVJ72155kqWkuqMu.jpg', '2019-01-11', '35', 'tv', 'originals', 'zmgYlYw7Uwk'),
(47, 'The Snitch Cartel: Origins', 'In Cali during the \'60s and \'70s, two brothers juggle family, romance and the joint pursuit of a burning ambition: to rule Colombia\'s drug industry.', '/A17Rt6BLHno0puR1QXbsSKhBfA4.jpg', '/aGULNElJVpSru19WP2pUjopPX1U.jpg', '2021-07-28', '10766', 'tv', 'originals', 'WcPEICcYEdc'),
(48, 'The Last Duel', 'King Charles VI declares that Knight Jean de Carrouges settle his dispute with his squire, Jacques Le Gris, by challenging him to a duel.', '/zjrJE0fpzPvX8saJXj8VNfcjBoU.jpg', '/mFbS5TwN95BcSEfiztdchLgTQ0v.jpg', '2021-10-13', '28', 'movie', 'action', 'mgygUwPJvYk'),
(49, 'Eternals', 'The Eternals are a team of ancient aliens who have been living on Earth in secret for thousands of years. When an unexpected tragedy forces them out of the shadows, they are forced to reunite against mankind’s most ancient enemy, the Deviants.', '/uaEIEIw9Y7DsvbWWMbG9ySjNF73.jpg', '/lyvszvJJqqI8aqBJ70XzdCNoK0y.jpg', '2021-11-03', '28', 'movie', 'action', 'pWfjJ6bOy7w'),
(50, 'Venom: Let There Be Carnage', 'After finding a host body in investigative reporter Eddie Brock, the alien symbiote must face a new enemy, Carnage, the alter ego of serial killer Cletus Kasady.', '/rjkmN1dniUHVYAtwuV3Tji7FsDO.jpg', '/eENEf62tMXbhyVvdcXlnQz2wcuT.jpg', '2021-09-30', '28', 'movie', 'action', 'FmWuCgJmxo'),
(51, 'The Matrix Resurrections', 'Plagued by strange memories, Neo\'s life takes an unexpected turn when he finds himself back inside the Matrix.', '/xLNtaLaHudIzOqdEZ7R3lcDLrQQ.jpg', '/3NiiRAKt2L5bUuAvSOkv6Yn7u6T.jpg', '2021-12-16', '28', 'movie', 'action', '9ix7TUGVYIo'),
(52, 'Eternals', 'The Eternals are a team of ancient aliens who have been living on Earth in secret for thousands of years. When an unexpected tragedy forces them out of the shadows, they are forced to reunite against mankind’s most ancient enemy, the Deviants.', '/uaEIEIw9Y7DsvbWWMbG9ySjNF73.jpg', '/lyvszvJJqqI8aqBJ70XzdCNoK0y.jpg', '2021-11-03', '12', 'movie', 'action', 'pWfjJ6bOy7w'),
(53, 'Venom: Let There Be Carnage', 'After finding a host body in investigative reporter Eddie Brock, the alien symbiote must face a new enemy, Carnage, the alter ego of serial killer Cletus Kasady.', '/rjkmN1dniUHVYAtwuV3Tji7FsDO.jpg', '/eENEf62tMXbhyVvdcXlnQz2wcuT.jpg', '2021-09-30', '878', 'movie', 'action', 'FmWuCgJmxo'),
(54, 'The Matrix Resurrections', 'Plagued by strange memories, Neo\'s life takes an unexpected turn when he finds himself back inside the Matrix.', '/xLNtaLaHudIzOqdEZ7R3lcDLrQQ.jpg', '/3NiiRAKt2L5bUuAvSOkv6Yn7u6T.jpg', '2021-12-16', '878', 'movie', 'action', '9ix7TUGVYIo'),
(55, 'Encounter', 'A decorated Marine goes on a rescue mission to save his two young sons from an unhuman threat. As their journey takes them in increasingly dangerous directions, the boys will need to leave their childhoods behind.', '/tUkY0WxffPZ9PoyC62PIyyUMGnt.jpg', '/zlj0zHo67xXoj7hvwGtaKRkSdBV.jpg', '2021-12-03', '878', 'movie', 'action', 'SB44bZVe-c4'),
(56, 'Ron\'s Gone Wrong', 'In a world where walking, talking, digitally connected bots have become children\'s best friends, an 11-year-old finds that his robot buddy doesn\'t quite work the same as the others do.', '/gA9QxSravC2EVEkEKgyEmDrfL0e.jpg', '/gBEyQ56m92x0sbz3QXwjfsvLPBz.jpg', '2021-10-15', '878', 'movie', 'action', '8I8nMtzN05s'),
(57, 'Swan Song', 'In the near future, Cameron Turner is diagnosed with a terminal illness. Presented with an experimental solution to shield his wife and son from grief, he grapples with altering their fate.', '/6eZFP2oVOwt9n46XI7RL3rZvgi4.jpg', '/ibdmSDwCpDYNdIkGeu7prsMVzYZ.jpg', '2021-12-17', '878', 'movie', 'action', 'LxftqrrlSqc'),
(58, 'The Last Duel', 'King Charles VI declares that Knight Jean de Carrouges settle his dispute with his squire, Jacques Le Gris, by challenging him to a duel.', '/zjrJE0fpzPvX8saJXj8VNfcjBoU.jpg', '/mFbS5TwN95BcSEfiztdchLgTQ0v.jpg', '2021-10-13', '36', 'movie', 'action', 'mgygUwPJvYk'),
(59, 'The Unforgivable', 'A woman is released from prison after serving a sentence for a violent crime and re-enters a society that refuses to forgive her past.', '/gPQM1zqqsm6Lw1tHF41BwbmOkya.jpg', '/kbOB9DGl8qwhDRcXOmXfmcmadeD.jpg', '2021-11-24', '53', 'movie', 'action', 'JNUjx7LZoiU'),
(60, 'Encounter', 'A decorated Marine goes on a rescue mission to save his two young sons from an unhuman threat. As their journey takes them in increasingly dangerous directions, the boys will need to leave their childhoods behind.', '/tUkY0WxffPZ9PoyC62PIyyUMGnt.jpg', '/zlj0zHo67xXoj7hvwGtaKRkSdBV.jpg', '2021-12-03', '53', 'movie', 'action', 'SB44bZVe-c4'),
(61, 'The Matrix Resurrections', 'Plagued by strange memories, Neo\'s life takes an unexpected turn when he finds himself back inside the Matrix.', '/xLNtaLaHudIzOqdEZ7R3lcDLrQQ.jpg', '/3NiiRAKt2L5bUuAvSOkv6Yn7u6T.jpg', '2021-12-16', '53', 'movie', 'action', '9ix7TUGVYIo'),
(62, 'Ron\'s Gone Wrong', 'In a world where walking, talking, digitally connected bots have become children\'s best friends, an 11-year-old finds that his robot buddy doesn\'t quite work the same as the others do.', '/gA9QxSravC2EVEkEKgyEmDrfL0e.jpg', '/gBEyQ56m92x0sbz3QXwjfsvLPBz.jpg', '2021-10-15', '10751', 'movie', 'action', '8I8nMtzN05s'),
(63, 'Money Heist', 'To carry out the biggest heist in history, a mysterious man called The Professor recruits a band of eight robbers who have a single characteristic: none of them has anything to lose. Five months of seclusion - memorizing every step, every detail, every probability - culminate in eleven days locked up in the National Coinage and Stamp Factory of Spain, surrounded by police forces and with dozens of hostages in their power, to find out whether their suicide wager will lead to everything or nothing.', '/reEMJA1uzscCbkpeRJeTT2bjqUp.jpg', '/gFZriCkpJYsApPZEF3jhxL4yLzG.jpg', '2017-05-02', '80', 'tv', 'action', '_InqQJRqGW4'),
(64, 'The Witcher', 'Geralt of Rivia, a mutated monster-hunter for hire, journeys toward his destiny in a turbulent world where people often prove more wicked than beasts.', '/7vjaCdMw15FEbXyLQTVa04URsPm.jpg', '/kxtvP3LFPKqgcfKXjWfWYcaTSjF.jpg', '2019-12-20', '10765', 'tv', 'action', 'ndl1W4ltcmg'),
(65, 'The Wheel of Time', 'Follow Moiraine, a member of the shadowy and influential all-female organization called the “Aes Sedai” as she embarks on a dangerous, world-spanning journey with five young men and women. Moiraine believes one of them might be the reincarnation of an incredibly powerful individual, whom prophecies say will either save humanity or destroy it.', '/mpgDeLhl8HbhI03XLB7iKO6M6JE.jpg', '/1P3QtW1IkivqDrKbbwuR0zCYIf8.jpg', '2021-11-18', '10765', 'tv', 'action', '11ZozKfRqvA'),
(66, 'The Witcher', 'Geralt of Rivia, a mutated monster-hunter for hire, journeys toward his destiny in a turbulent world where people often prove more wicked than beasts.', '/7vjaCdMw15FEbXyLQTVa04URsPm.jpg', '/kxtvP3LFPKqgcfKXjWfWYcaTSjF.jpg', '2019-12-20', '18', 'tv', 'action', 'ndl1W4ltcmg'),
(67, 'Hawkeye', 'Former Avenger Clint Barton has a seemingly simple mission: get back to his family for Christmas. Possible? Maybe with the help of Kate Bishop, a 22-year-old archer with dreams of becoming a superhero. The two are forced to work together when a presence from Barton’s past threatens to derail far more than the festive spirit.', '/pqzjCxPVc9TkVgGRWeAoMmyqkZV.jpg', '/1R68vl3d5s86JsS2NPjl8UoMqIS.jpg', '2021-11-24', '18', 'tv', 'action', '5VYb3B1ETlk'),
(68, 'The Wheel of Time', 'Follow Moiraine, a member of the shadowy and influential all-female organization called the “Aes Sedai” as she embarks on a dangerous, world-spanning journey with five young men and women. Moiraine believes one of them might be the reincarnation of an incredibly powerful individual, whom prophecies say will either save humanity or destroy it.', '/mpgDeLhl8HbhI03XLB7iKO6M6JE.jpg', '/1P3QtW1IkivqDrKbbwuR0zCYIf8.jpg', '2021-11-18', '18', 'tv', 'action', '11ZozKfRqvA'),
(69, 'Hawkeye', 'Former Avenger Clint Barton has a seemingly simple mission: get back to his family for Christmas. Possible? Maybe with the help of Kate Bishop, a 22-year-old archer with dreams of becoming a superhero. The two are forced to work together when a presence from Barton’s past threatens to derail far more than the festive spirit.', '/pqzjCxPVc9TkVgGRWeAoMmyqkZV.jpg', '/1R68vl3d5s86JsS2NPjl8UoMqIS.jpg', '2021-11-24', '10759', 'tv', 'action', '5VYb3B1ETlk'),
(70, 'The Witcher', 'Geralt of Rivia, a mutated monster-hunter for hire, journeys toward his destiny in a turbulent world where people often prove more wicked than beasts.', '/7vjaCdMw15FEbXyLQTVa04URsPm.jpg', '/kxtvP3LFPKqgcfKXjWfWYcaTSjF.jpg', '2019-12-20', '10759', 'tv', 'action', 'ndl1W4ltcmg'),
(71, 'The Wheel of Time', 'Follow Moiraine, a member of the shadowy and influential all-female organization called the “Aes Sedai” as she embarks on a dangerous, world-spanning journey with five young men and women. Moiraine believes one of them might be the reincarnation of an incredibly powerful individual, whom prophecies say will either save humanity or destroy it.', '/mpgDeLhl8HbhI03XLB7iKO6M6JE.jpg', '/1P3QtW1IkivqDrKbbwuR0zCYIf8.jpg', '2021-11-18', '10759', 'tv', 'action', '11ZozKfRqvA'),
(72, 'Squid Game', 'Hundreds of cash-strapped players accept a strange invitation to compete in children\'s games—with high stakes. But, a tempting prize awaits the victor.', '/dDlEmu3EZ0Pgg93K2SVNLCjCSvE.jpg', '/qw3J9cNeLioOLoR68WX7z79aCdK.jpg', '2021-09-17', '10759', 'tv', 'action', 'oqxAJKy0ii4'),
(73, 'Demon Slayer: Kimetsu no Yaiba', 'It is the Taisho Period in Japan. Tanjiro, a kindhearted boy who sells charcoal for a living, finds his family slaughtered by a demon. To make matters worse, his younger sister Nezuko, the sole survivor, has been transformed into a demon herself. Though devastated by this grim reality, Tanjiro resolves to become a “demon slayer” so that he can turn his sister back into a human, and kill the demon that massacred his family.', '/wrCVHdkBlBWdJUZPvnJWcBRuhSY.jpg', '/nTvM4mhqNlHIvUkI1gVnW6XP7GG.jpg', '2019-04-06', '16', 'tv', 'action', 't6MXHczeEqc'),
(74, 'Demon Slayer: Kimetsu no Yaiba', 'It is the Taisho Period in Japan. Tanjiro, a kindhearted boy who sells charcoal for a living, finds his family slaughtered by a demon. To make matters worse, his younger sister Nezuko, the sole survivor, has been transformed into a demon herself. Though devastated by this grim reality, Tanjiro resolves to become a “demon slayer” so that he can turn his sister back into a human, and kill the demon that massacred his family.', '/wrCVHdkBlBWdJUZPvnJWcBRuhSY.jpg', '/nTvM4mhqNlHIvUkI1gVnW6XP7GG.jpg', '2019-04-06', '10759', 'tv', 'action', 't6MXHczeEqc'),
(75, 'Demon Slayer: Kimetsu no Yaiba', 'It is the Taisho Period in Japan. Tanjiro, a kindhearted boy who sells charcoal for a living, finds his family slaughtered by a demon. To make matters worse, his younger sister Nezuko, the sole survivor, has been transformed into a demon herself. Though devastated by this grim reality, Tanjiro resolves to become a “demon slayer” so that he can turn his sister back into a human, and kill the demon that massacred his family.', '/wrCVHdkBlBWdJUZPvnJWcBRuhSY.jpg', '/nTvM4mhqNlHIvUkI1gVnW6XP7GG.jpg', '2019-04-06', '10765', 'tv', 'action', 't6MXHczeEqc'),
(76, 'Spider-Man: No Way Home', 'Peter Parker is unmasked and no longer able to separate his normal life from the high-stakes of being a super-hero. When he asks for help from Doctor Strange the stakes become even more dangerous, forcing him to discover what it truly means to be Spider-Man.', '/1g0dhYtq4irTY1GPXvft6k4YLjm.jpg', '/VlHt27nCqOuTnuX6bku8QZapzO.jpg', '2021-12-15', '28', 'movie', 'action', 'JfVOs4VSpmA'),
(77, 'Spider-Man: No Way Home', 'Peter Parker is unmasked and no longer able to separate his normal life from the high-stakes of being a super-hero. When he asks for help from Doctor Strange the stakes become even more dangerous, forcing him to discover what it truly means to be Spider-Man.', '/VlHt27nCqOuTnuX6bku8QZapzO.jpg', '/1g0dhYtq4irTY1GPXvft6k4YLjm.jpg', '2021-12-15', '12', 'movie', 'action', 'JfVOs4VSpmA'),
(78, 'Spider-Man: No Way Home', ' Peter Parker is unmasked and no longer able to separate his normal life from the high-stakes of being a super-hero. When he asks for help from Doctor Strange the stakes become even more dangerous, forcing him to discover what it truly means to be Spider-Man.', '/VlHt27nCqOuTnuX6bku8QZapzO.jpg', '/1g0dhYtq4irTY1GPXvft6k4YLjm.jpg', '2021-12-15', '878', 'movie', 'action', 'JfVOs4VSpmA'),
(79, 'Free Guy', 'A bank teller called Guy realizes he is a background character in an open world video game called Free City that will soon go offline.', '/xmbU4JTUm8rsdtn7Y3Fcm30GpeT.jpg', '/8Y43POKjjKDGI9MH89NW0NAzzp8.jpg', '2021-08-11', '35', 'movie', 'comedy', 'X2m-08cOAbc'),
(80, 'Italian Spiderman', 'This is an Australian-made parody of Italian action–adventure films of the 60s and 70s. and foreign movies that misappropriated popular American superheroes such as the Japanese TV series “Spider-Man”. (It should be noted that the Japanese Spider-Man was officially sanctioned by Marvel and is considered canon in the Marvel universe) This is an Italian take on the comic book superhero Spider-Man.', '/fqdCE8nF2biM3WnYaZg8OudEtJi.jpg', '/uZRQgumqHdVqnaflAsJqu8NzjEA.jpg', '2007-11-08', '35', 'movie', 'comedy', 'UhHhXukovMU'),
(81, 'Red Notice', 'An Interpol-issued Red Notice is a global alert to hunt and capture the world\'s most wanted. But when a daring heist brings together the FBI\'s top profiler and two rival criminals, there\'s no telling what will happen.', '/wdE6ewaKZHr62bLqCn7A2DiGShm.jpg', '/7ajHGIAYNMiIzejy1LJWdPrcAx8.jpg', '2021-11-04', '35', 'movie', 'comedy', 'Pj0wz7zu3Ms'),
(82, 'Clifford the Big Red Dog', 'As Emily struggles to fit in at home and at school, she discovers a small red puppy who is destined to become her best friend. When Clifford magically undergoes one heck of a growth spurt, becomes a gigantic dog and attracts the attention of a genetics company, Emily and her Uncle Casey have to fight the forces of greed as they go on the run across New York City. Along the way, Clifford affects the lives of everyone around him and teaches Emily and her uncle the true meaning of acceptance and unconditional love.', '/ygPTrycbMSFDc5zUpy4K5ZZtQSC.jpg', '/1Wlwnhn5sXUIwlxpJgWszT622PS.jpg', '2021-11-10', '35', 'movie', 'comedy', '4zH5iYM4wJo'),
(83, 'Encanto', 'The tale of an extraordinary family, the Madrigals, who live hidden in the mountains of Colombia, in a magical house, in a vibrant town, in a wondrous, charmed place called an Encanto. The magic of the Encanto has blessed every child in the family with a unique gift from super strength to the power to heal—every child except one, Mirabel. But when she discovers that the magic surrounding the Encanto is in danger, Mirabel decides that she, the only ordinary Madrigal, might just be her exceptional family\'s last hope.', '/4j0PNHkMr5ax3IA8tjtxcmPU3QT.jpg', '/5RuR7GhOI5fElADXZb0X2sr9w5n.jpg', '2021-11-24', '35', 'movie', 'comedy', 'CaimKeDcudo'),
(84, 'Diary of a Wimpy Kid', 'Greg Heffley is a scrawny but ambitious kid with an active imagination and big plans to be rich and famous – he just has to survive middle school first.', '/obg6lWuNaZkoSlwrVG4VVk4SmT.jpg', '/5RMqFZdefnDwY7rdD1oJcTkWPdF.jpg', '2021-12-03', '35', 'movie', 'comedy', 'VKhCPUa-glo'),
(85, 'The Simpsons in Plusaversary', 'The Simpsons host a Disney+ Day party and everyone is on the list… except Homer. With friends from across the service and music fit for a Disney Princess, Plusaversary is Springfield\'s event of the year.', '/9xaAT3V3I9xxqnNiEjCivNFfdlh.jpg', '/1zgob2Z8xVE3RZUgOKnHKcVPzOE.jpg', '2021-11-12', '35', 'movie', 'comedy', 'dGqg-6CDLiY'),
(86, 'Christmas ...Again?!', 'Rowena \"Ro\" is a high-spirited 11-year-old hoping to add more spunk to her Christmas celebrations when her parents’ divorce is going anything but smoothly.', '/rnY7WYvxHxRWCiUY7LCKldfijMQ.jpg', '/mFDUO48v1Cik3MToFgBsF2Milvv.jpg', '2021-12-03', '35', 'movie', 'comedy', '7Rau09PkrUI'),
(87, 'The Boss Baby: Family Business', 'The Templeton brothers — Tim and his Boss Baby little bro Ted — have become adults and drifted away from each other. But a new boss baby with a cutting-edge approach and a can-do attitude is about to bring them together again … and inspire a new family business.', '/kv2Qk9MKFFQo4WQPaYta599HkJP.jpg', '/akwg1s7hV5ljeSYFfkw7hTHjVqk.jpg', '2021-07-01', '35', 'movie', 'comedy', 'QPzy8Ckza08'),
(88, 'Sing 2', 'Buster and his new cast now have their sights set on debuting a new show at the Crystal Tower Theater in glamorous Redshore City. But with no connections, he and his singers must sneak into the Crystal Entertainment offices, run by the ruthless wolf mogul Jimmy Crystal, where the gang pitches the ridiculous idea of casting the lion rock legend Clay Calloway in their show. Buster must embark on a quest to find the now-isolated Clay and persuade him to return to the stage.', '/aWeKITRFbbwY8txG5uCj4rMCfSP.jpg', '/srFi3oLy8tBcpq07xusnAE5XhwE.jpg', '2021-12-01', '35', 'movie', 'comedy', 'EPZu5MA2uqI'),
(89, 'Ciao Alberto', 'With his best friend Luca away at school, Alberto is enjoying his new life in Portorosso working alongside Massimo – the imposing, tattooed, one-armed fisherman of few words – who\'s quite possibly the coolest human in the entire world as far as Alberto is concerned. He wants more than anything to impress his mentor, but it\'s easier said than done.', '/1SyTnaY0wte69oKdqxQLvxPT3hs.jpg', '/qXctHIfK4LAgHH7qZiJJVCPclaY.jpg', '2021-11-12', '35', 'movie', 'comedy', 'KJZS7oXX5SE'),
(90, 'Home Sweet Home Alone', 'After being left at home by himself for the holidays, 10-year-old Max Mercer must work to defend his home from a married couple who tries to steal back a valuable heirloom.', '/fP3VvqUjEBjawxZHL4sYCq2ZdJD.jpg', '/a8tH0jl37366bLVyPB08dncgqqd.jpg', '2021-11-12', '35', 'movie', 'comedy', '2BkVf2voCr0'),
(91, 'Luca', 'Luca and his best friend Alberto experience an unforgettable summer on the Italian Riviera. But all the fun is threatened by a deeply-held secret: they are sea monsters from another world just below the water’s surface.', '/jTswp6KyDYKtvC52GbHagrZbGvD.jpg', '/620hnMVLu6RSZW6a5rwO8gqpt0t.jpg', '2021-06-17', '35', 'movie', 'comedy', 'mYfJxlgR2jw'),
(92, 'The Last Warrior: Root of Evil', 'Peace and tranquility have set in Belogorie. The evil was defeated and Ivan is now enjoying his well-deserved fame. He is surrounded by his family, friends and small wonders from the modern world that help him lead a comfortable life. Luckily, he has his Magic Sword to cut a gap between the worlds to get some supplies quite regularly. But when an ancient evil rises and the existence of the magic world is put to danger, Ivan has to team up with his old friends and his new rivals. They will set out on a long journey beyond the known world to find a way to defeat the enemies and to return peace to Belogorie.', '/5VJSIAhSn4qUsg5nOj4MhQhF5wQ.jpg', '/dIibeeq4QMay5bTJ2vjr72IFFRo.jpg', '2021-01-01', '35', 'movie', 'comedy', 'tF0eb_Z04-A'),
(93, 'Jungle Cruise', 'Dr. Lily Houghton enlists the aid of wisecracking skipper Frank Wolff to take her down the Amazon in his dilapidated boat. Together, they search for an ancient tree that holds the power to heal – a discovery that will change the future of medicine.', '/9dKCd55IuTT5QRs989m9Qlb7d2B.jpg', '/7WJjFviFBffEJvkAms4uWwbcVUk.jpg', '2021-07-28', '35', 'movie', 'comedy', 'f_HvoipFcA8'),
(94, 'The Last Warrior: Root of Evil', 'Peace and tranquility have set in Belogorie. The evil was defeated and Ivan is now enjoying his well-deserved fame. He is surrounded by his family, friends and small wonders from the modern world that help him lead a comfortable life. Luckily, he has his Magic Sword to cut a gap between the worlds to get some supplies quite regularly. But when an ancient evil rises and the existence of the magic world is put to danger, Ivan has to team up with his old friends and his new rivals. They will set out on a long journey beyond the known world to find a way to defeat the enemies and to return peace to Belogorie.', '/5VJSIAhSn4qUsg5nOj4MhQhF5wQ.jpg', '/dIibeeq4QMay5bTJ2vjr72IFFRo.jpg', '2021-01-01', '35', 'movie', 'comedy', 'tF0eb_Z04-A'),
(95, 'Jungle Cruise', 'Dr. Lily Houghton enlists the aid of wisecracking skipper Frank Wolff to take her down the Amazon in his dilapidated boat. Together, they search for an ancient tree that holds the power to heal – a discovery that will change the future of medicine.', '/9dKCd55IuTT5QRs989m9Qlb7d2B.jpg', '/7WJjFviFBffEJvkAms4uWwbcVUk.jpg', '2021-07-28', '35', 'movie', 'comedy', 'f_HvoipFcA8'),
(96, 'Ron\'s Gone Wrong', 'In a world where walking, talking, digitally connected bots have become children\'s best friends, an 11-year-old finds that his robot buddy doesn\'t quite work the same as the others do.', '/gA9QxSravC2EVEkEKgyEmDrfL0e.jpg', '/gBEyQ56m92x0sbz3QXwjfsvLPBz.jpg', '2021-10-15', '35', 'movie', 'comedy', '8I8nMtzN05s'),
(97, 'David and the Elves', 'Christmas is drawing near, but it’s not a happy time for David. After moving to a big city, his parents have been bogged down with work and forgotten the meaning of Christmas. David decides to change that. Together with Albert the Elf, who escaped from the land of Santa to figure out what Christmas is all about, David sets off to Tatra Mountains, where his grandparents live, on a journey full of adventures.', '/gdQml1N2kysb1wKAGqTu3ZuQADW.jpg', '/13MNZaAKNoSZpOs5HULVNQwZYjB.jpg', '2021-12-06', '35', 'movie', 'comedy', 'mQqGOdHFsrY'),
(98, 'Christmas ...Again?!', 'Rowena \"Ro\" is a high-spirited 11-year-old hoping to add more spunk to her Christmas celebrations when her parents’ divorce is going anything but smoothly.', '/rnY7WYvxHxRWCiUY7LCKldfijMQ.jpg', '/mFDUO48v1Cik3MToFgBsF2Milvv.jpg', '2021-12-03', '10751', 'movie', 'comedy', '7Rau09PkrUI'),
(99, 'David and the Elves', 'Christmas is drawing near, but it’s not a happy time for David. After moving to a big city, his parents have been bogged down with work and forgotten the meaning of Christmas. David decides to change that. Together with Albert the Elf, who escaped from the land of Santa to figure out what Christmas is all about, David sets off to Tatra Mountains, where his grandparents live, on a journey full of adventures.', '/gdQml1N2kysb1wKAGqTu3ZuQADW.jpg', '/13MNZaAKNoSZpOs5HULVNQwZYjB.jpg', '2021-12-06', '10751', 'movie', 'comedy', 'mQqGOdHFsrY'),
(100, 'Home Sweet Home Alone', 'After being left at home by himself for the holidays, 10-year-old Max Mercer must work to defend his home from a married couple who tries to steal back a valuable heirloom.', '/fP3VvqUjEBjawxZHL4sYCq2ZdJD.jpg', '/a8tH0jl37366bLVyPB08dncgqqd.jpg', '2021-11-12', '10751', 'movie', 'comedy', '2BkVf2voCr0'),
(101, 'Clifford the Big Red Dog', 'As Emily struggles to fit in at home and at school, she discovers a small red puppy who is destined to become her best friend. When Clifford magically undergoes one heck of a growth spurt, becomes a gigantic dog and attracts the attention of a genetics company, Emily and her Uncle Casey have to fight the forces of greed as they go on the run across New York City. Along the way, Clifford affects the lives of everyone around him and teaches Emily and her uncle the true meaning of acceptance and unconditional love.', '/ygPTrycbMSFDc5zUpy4K5ZZtQSC.jpg', '/1Wlwnhn5sXUIwlxpJgWszT622PS.jpg', '2021-11-10', '10751', 'movie', 'comedy', '4zH5iYM4wJo'),
(102, 'Encanto', 'The tale of an extraordinary family, the Madrigals, who live hidden in the mountains of Colombia, in a magical house, in a vibrant town, in a wondrous, charmed place called an Encanto. The magic of the Encanto has blessed every child in the family with a unique gift from super strength to the power to heal—every child except one, Mirabel. But when she discovers that the magic surrounding the Encanto is in danger, Mirabel decides that she, the only ordinary Madrigal, might just be her exceptional family\'s last hope.', '/4j0PNHkMr5ax3IA8tjtxcmPU3QT.jpg', '/5RuR7GhOI5fElADXZb0X2sr9w5n.jpg', '2021-11-24', '10751', 'movie', 'comedy', 'CaimKeDcudo'),
(103, 'Ron\'s Gone Wrong', 'In a world where walking, talking, digitally connected bots have become children\'s best friends, an 11-year-old finds that his robot buddy doesn\'t quite work the same as the others do.', '/gA9QxSravC2EVEkEKgyEmDrfL0e.jpg', '/gBEyQ56m92x0sbz3QXwjfsvLPBz.jpg', '2021-10-15', '10751', 'movie', 'comedy', '8I8nMtzN05s'),
(104, 'Diary of a Wimpy Kid', 'Greg Heffley is a scrawny but ambitious kid with an active imagination and big plans to be rich and famous – he just has to survive middle school first.', '/obg6lWuNaZkoSlwrVG4VVk4SmT.jpg', '/5RMqFZdefnDwY7rdD1oJcTkWPdF.jpg', '2021-12-03', '10751', 'movie', 'comedy', 'VKhCPUa-glo'),
(105, 'Sing 2', 'Buster and his new cast now have their sights set on debuting a new show at the Crystal Tower Theater in glamorous Redshore City. But with no connections, he and his singers must sneak into the Crystal Entertainment offices, run by the ruthless wolf mogul Jimmy Crystal, where the gang pitches the ridiculous idea of casting the lion rock legend Clay Calloway in their show. Buster must embark on a quest to find the now-isolated Clay and persuade him to return to the stage.', '/aWeKITRFbbwY8txG5uCj4rMCfSP.jpg', '/srFi3oLy8tBcpq07xusnAE5XhwE.jpg', '2021-12-01', '10751', 'movie', 'comedy', 'EPZu5MA2uqI'),
(106, 'Ciao Alberto', 'With his best friend Luca away at school, Alberto is enjoying his new life in Portorosso working alongside Massimo – the imposing, tattooed, one-armed fisherman of few words – who\'s quite possibly the coolest human in the entire world as far as Alberto is concerned. He wants more than anything to impress his mentor, but it\'s easier said than done.', '/1SyTnaY0wte69oKdqxQLvxPT3hs.jpg', '/qXctHIfK4LAgHH7qZiJJVCPclaY.jpg', '2021-11-12', '10751', 'movie', 'comedy', 'KJZS7oXX5SE'),
(107, 'Luca', 'Luca and his best friend Alberto experience an unforgettable summer on the Italian Riviera. But all the fun is threatened by a deeply-held secret: they are sea monsters from another world just below the water’s surface.', '/jTswp6KyDYKtvC52GbHagrZbGvD.jpg', '/620hnMVLu6RSZW6a5rwO8gqpt0t.jpg', '2021-06-17', '10751', 'movie', 'comedy', 'mYfJxlgR2jw'),
(108, 'The Boss Baby: Family Business', 'The Templeton brothers — Tim and his Boss Baby little bro Ted — have become adults and drifted away from each other. But a new boss baby with a cutting-edge approach and a can-do attitude is about to bring them together again … and inspire a new family business.', '/kv2Qk9MKFFQo4WQPaYta599HkJP.jpg', '/akwg1s7hV5ljeSYFfkw7hTHjVqk.jpg', '2021-07-01', '10751', 'movie', 'comedy', 'QPzy8Ckza08'),
(109, 'Clifford the Big Red Dog', 'As Emily struggles to fit in at home and at school, she discovers a small red puppy who is destined to become her best friend. When Clifford magically undergoes one heck of a growth spurt, becomes a gigantic dog and attracts the attention of a genetics company, Emily and her Uncle Casey have to fight the forces of greed as they go on the run across New York City. Along the way, Clifford affects the lives of everyone around him and teaches Emily and her uncle the true meaning of acceptance and unconditional love.', '/ygPTrycbMSFDc5zUpy4K5ZZtQSC.jpg', '/1Wlwnhn5sXUIwlxpJgWszT622PS.jpg', '2021-11-10', '16', 'movie', 'comedy', '4zH5iYM4wJo'),
(110, 'Encanto', 'The tale of an extraordinary family, the Madrigals, who live hidden in the mountains of Colombia, in a magical house, in a vibrant town, in a wondrous, charmed place called an Encanto. The magic of the Encanto has blessed every child in the family with a unique gift from super strength to the power to heal—every child except one, Mirabel. But when she discovers that the magic surrounding the Encanto is in danger, Mirabel decides that she, the only ordinary Madrigal, might just be her exceptional family\'s last hope.', '/4j0PNHkMr5ax3IA8tjtxcmPU3QT.jpg', '/5RuR7GhOI5fElADXZb0X2sr9w5n.jpg', '2021-11-24', '16', 'movie', 'comedy', 'CaimKeDcudo'),
(111, 'Ron\'s Gone Wrong', 'In a world where walking, talking, digitally connected bots have become children\'s best friends, an 11-year-old finds that his robot buddy doesn\'t quite work the same as the others do.', '/gA9QxSravC2EVEkEKgyEmDrfL0e.jpg', '/gBEyQ56m92x0sbz3QXwjfsvLPBz.jpg', '2021-10-15', '16', 'movie', 'comedy', '8I8nMtzN05s'),
(112, 'Diary of a Wimpy Kid', 'Greg Heffley is a scrawny but ambitious kid with an active imagination and big plans to be rich and famous – he just has to survive middle school first.', '/obg6lWuNaZkoSlwrVG4VVk4SmT.jpg', '/5RMqFZdefnDwY7rdD1oJcTkWPdF.jpg', '2021-12-03', '16', 'movie', 'comedy', 'VKhCPUa-glo'),
(113, 'The Simpsons in Plusaversary', 'The Simpsons host a Disney+ Day party and everyone is on the list… except Homer. With friends from across the service and music fit for a Disney Princess, Plusaversary is Springfield\'s event of the year.', '/9xaAT3V3I9xxqnNiEjCivNFfdlh.jpg', '/1zgob2Z8xVE3RZUgOKnHKcVPzOE.jpg', '2021-11-12', '16', 'movie', 'comedy', 'dGqg-6CDLiY'),
(114, 'The Boss Baby: Family Business', 'The Templeton brothers — Tim and his Boss Baby little bro Ted — have become adults and drifted away from each other. But a new boss baby with a cutting-edge approach and a can-do attitude is about to bring them together again … and inspire a new family business.', '/kv2Qk9MKFFQo4WQPaYta599HkJP.jpg', '/akwg1s7hV5ljeSYFfkw7hTHjVqk.jpg', '2021-07-01', '16', 'movie', 'comedy', 'QPzy8Ckza08'),
(115, 'Sing 2', 'Buster and his new cast now have their sights set on debuting a new show at the Crystal Tower Theater in glamorous Redshore City. But with no connections, he and his singers must sneak into the Crystal Entertainment offices, run by the ruthless wolf mogul Jimmy Crystal, where the gang pitches the ridiculous idea of casting the lion rock legend Clay Calloway in their show. Buster must embark on a quest to find the now-isolated Clay and persuade him to return to the stage.', '/aWeKITRFbbwY8txG5uCj4rMCfSP.jpg', '/srFi3oLy8tBcpq07xusnAE5XhwE.jpg', '2021-12-01', '16', 'movie', 'comedy', 'EPZu5MA2uqI'),
(116, 'Ciao Alberto', 'With his best friend Luca away at school, Alberto is enjoying his new life in Portorosso working alongside Massimo – the imposing, tattooed, one-armed fisherman of few words – who\'s quite possibly the coolest human in the entire world as far as Alberto is concerned. He wants more than anything to impress his mentor, but it\'s easier said than done.', '/1SyTnaY0wte69oKdqxQLvxPT3hs.jpg', '/qXctHIfK4LAgHH7qZiJJVCPclaY.jpg', '2021-11-12', '16', 'movie', 'comedy', 'KJZS7oXX5SE'),
(117, 'Luca', 'Luca and his best friend Alberto experience an unforgettable summer on the Italian Riviera. But all the fun is threatened by a deeply-held secret: they are sea monsters from another world just below the water’s surface.', '/jTswp6KyDYKtvC52GbHagrZbGvD.jpg', '/620hnMVLu6RSZW6a5rwO8gqpt0t.jpg', '2021-06-17', '16', 'movie', 'comedy', 'mYfJxlgR2jw'),
(118, 'Free Guy', 'A bank teller called Guy realizes he is a background character in an open world video game called Free City that will soon go offline.', '/xmbU4JTUm8rsdtn7Y3Fcm30GpeT.jpg', '/8Y43POKjjKDGI9MH89NW0NAzzp8.jpg', '2021-08-11', '12', 'movie', 'comedy', 'X2m-08cOAbc'),
(119, 'The Boss Baby: Family Business', 'The Templeton brothers — Tim and his Boss Baby little bro Ted — have become adults and drifted away from each other. But a new boss baby with a cutting-edge approach and a can-do attitude is about to bring them together again … and inspire a new family business.', '/kv2Qk9MKFFQo4WQPaYta599HkJP.jpg', '/akwg1s7hV5ljeSYFfkw7hTHjVqk.jpg', '2021-07-01', '12', 'movie', 'comedy', 'QPzy8Ckza08'),
(120, 'Halloween Kills', 'Minutes after Laurie Strode, her daughter Karen and granddaughter Allyson left masked monster Michael Myers caged and burning in Laurie\'s basement, Laurie is rushed to the hospital with life-threatening injuries, believing she finally killed her lifelong tormentor. But when Michael manages to free himself from Laurie\'s trap, his ritual bloodbath resumes. As Laurie fights her pain and prepares to defend herself against him, she inspires all of Haddonfield to rise up against their unstoppable monster. The Strode women join a group of other survivors of Michael\'s first rampage who decide to take matters into their own hands, forming a vigilante mob that sets out to hunt Michael down, once and for all.', '/qmJGd5IfURq8iPQ9KF3les47vFS.jpg', '/tDYwYktjFmpj92S2Qn4T3BcRgL.jpg', '2021-10-14', '27', 'movie', 'horror', 'hL6R3HmQfPc'),
(121, 'Antlers', 'A small-town Oregon teacher and her brother, the local sheriff, discover a young student is harbouring a dangerous secret that could have frightening consequences.', '/cMch3tiexw3FdOEeZxMWVel61Xg.jpg', '/9fzNf2QcsHVvdx5g5QUOgAWpADw.jpg', '2021-10-28', '27', 'movie', 'horror', 'ng5eyOfL8qM'),
(122, 'Dragon Fury', 'A group of soldiers are taken to the mountains of Wales to investigate a strange looking monster.', '/6WcJ4cV2Y3gnTYp5zHu968TYmTJ.jpg', '/5PQhNs4M3RxIqaNAdBI6mXlXyYh.jpg', '2021-06-15', '27', 'movie', 'horror', 'kp_iCBrjeKA'),
(123, 'Queen of Spades', 'According to legend, an ominous entity known as the Queen of Spades can be summoned by performing an ancient ritual. Four teenagers summon the Queen of Spades, but they could never imagine the horrors that await them.', '/lOW4X8yTuqHwE4OE2qwlSQHrcQx.jpg', '/5UANdP8xXHyVOGknfJlzQ7muLj3.jpg', '2021-06-11', '27', 'movie', 'horror', 'c3qKvgoLI8s'),
(124, 'Ripper Untold', 'A detective and a medical examiner join forces to solve a series of horrific murders in Victorian London - but one of them harbors a deadly secret.', '/dpELyqPFcAhpyaCRFnoUEpQrqZU.jpg', '/bNnNlUjf16ahEw0uv39NUeQ35YR.jpg', '2021-06-28', '27', 'movie', 'horror', '7HRP_qWm4rI'),
(125, 'The Unholy', 'Alice, a young hearing-impaired girl who, after a supposed visitation from the Virgin Mary, is inexplicably able to hear, speak and heal the sick. As word spreads and people from near and far flock to witness her miracles, a disgraced journalist hoping to revive his career visits the small New England town to investigate. When terrifying events begin to happen all around, he starts to question if these phenomena are the works of the Virgin Mary or something much more sinister.', '/cFOWiYDQ8Nttmt0K6PU38L48wWK.jpg', '/jw6ASGRT2gi8EjCImpGtbiJ9NQ9.jpg', '2021-03-31', '27', 'movie', 'horror', 'NmQiJPLYzPI'),
(126, 'Last Night in Soho', 'A young girl, passionate about fashion design, is mysteriously able to enter the 1960s where she encounters her idol, a dazzling wannabe singer. But 1960s London is not what it seems, and time seems to be falling apart with shady consequences.', '/ahbwIJl7T0D34m3sPKlBaCqs2xH.jpg', '/7OcRErUXXdAVAHg6y5cjn56ivtu.jpg', '2021-10-21', '27', 'movie', 'horror', 'AcVnFrxjPjI'),
(127, 'The Deep House', 'While diving in a remote French lake, a couple of YouTubers who specialize in underwater exploration videos discover a house submerged in the deep waters. What was initially a unique finding soon turns into a nightmare when they discover that the house was the scene of atrocious crimes. Trapped, with their oxygen reserves falling dangerously, they realize the worst is yet to come: they are not alone in the house.', '/5xhAPxRr64oQPEFnUOrttuI4ZEU.jpg', '/yL9RRZbDVbptqLwiZcK304ck4PL.jpg', '2021-06-30', '27', 'movie', 'horror', 'hgqjv1endGY'),
(128, 'Black Water: Abyss', 'An adventure-loving couple convince their friends to explore a remote, uncharted cave system in the forests of Northern Australia. With a tropical storm approaching, they abseil into the mouth of the cave, but when the caves start to flood, tensions rise as oxygen levels fall and the friends find themselves trapped. Unknown to them, the storm has also brought in a pack of dangerous and hungry crocodiles.', '/95S6PinQIvVe4uJAd82a2iGZ0rA.jpg', '/fRrpOILyXuWaWLmqF7kXeMVwITQ.jpg', '2020-07-09', '27', 'movie', 'horror', 'JKNv2YfrM7Y');
INSERT INTO `all_netflix` (`ID`, `name`, `overview`, `poster`, `backdrop_path`, `show_date`, `genre_id`, `show_type`, `specials`, `trailers`) VALUES
(129, 'Motherly', 'Kate and her daughter Beth live alone in an isolated farmhouse in the woods, but when Kate slowly begins to suspect that something sinister is happening, her motherly instincts are put to the test.', '/wmh1likQEetSLIUs5MAvfWjEayY.jpg', '/ugZbX5lKx4L9ONEu0WTNbR96J0t.jpg', '2021-09-01', '27', 'movie', 'horror', 'T2jj9d7cgyY'),
(130, 'Old', 'A group of families on a tropical holiday discover that the secluded beach where they are staying is somehow causing them to age rapidly – reducing their entire lives into a single day.', '/vclShucpUmPhdAOmKgf3B3Z4POD.jpg', '/iTgM25ftE7YtFgZwUZupVp8A61S.jpg', '2021-07-21', '27', 'movie', 'horror', 'A4U2pMRV9_k'),
(131, 'Antlers', 'A small-town Oregon teacher and her brother, the local sheriff, discover a young student is harbouring a dangerous secret that could have frightening consequences.', '/cMch3tiexw3FdOEeZxMWVel61Xg.jpg', '/9fzNf2QcsHVvdx5g5QUOgAWpADw.jpg', '2021-10-28', '9648', 'movie', 'horror', 'ng5eyOfL8qM'),
(132, 'Last Night in Soho', 'A young girl, passionate about fashion design, is mysteriously able to enter the 1960s where she encounters her idol, a dazzling wannabe singer. But 1960s London is not what it seems, and time seems to be falling apart with shady consequences.', '/ahbwIJl7T0D34m3sPKlBaCqs2xH.jpg', '/7OcRErUXXdAVAHg6y5cjn56ivtu.jpg', '2021-10-21', '9648', 'movie', 'horror', 'AcVnFrxjPjI'),
(133, 'Dragon Fury', 'A group of soldiers are taken to the mountains of Wales to investigate a strange looking monster.', '/6WcJ4cV2Y3gnTYp5zHu968TYmTJ.jpg', '/5PQhNs4M3RxIqaNAdBI6mXlXyYh.jpg', '2021-06-15', '9648', 'movie', 'horror', 'kp_iCBrjeKA'),
(134, 'Old', 'A group of families on a tropical holiday discover that the secluded beach where they are staying is somehow causing them to age rapidly – reducing their entire lives into a single day.', '/vclShucpUmPhdAOmKgf3B3Z4POD.jpg', '/iTgM25ftE7YtFgZwUZupVp8A61S.jpg', '2021-07-21', '9648', 'movie', 'horror', 'A4U2pMRV9_k'),
(135, 'Black Water: Abyss', 'An adventure-loving couple convince their friends to explore a remote, uncharted cave system in the forests of Northern Australia. With a tropical storm approaching, they abseil into the mouth of the cave, but when the caves start to flood, tensions rise as oxygen levels fall and the friends find themselves trapped. Unknown to them, the storm has also brought in a pack of dangerous and hungry crocodiles.', '/95S6PinQIvVe4uJAd82a2iGZ0rA.jpg', '/fRrpOILyXuWaWLmqF7kXeMVwITQ.jpg', '2020-07-09', '9648', 'movie', 'horror', 'JKNv2YfrM7Y'),
(136, 'Motherly', 'Kate and her daughter Beth live alone in an isolated farmhouse in the woods, but when Kate slowly begins to suspect that something sinister is happening, her motherly instincts are put to the test.', '/wmh1likQEetSLIUs5MAvfWjEayY.jpg', '/ugZbX5lKx4L9ONEu0WTNbR96J0t.jpg', '2021-09-01', '53', 'movie', 'horror', 'T2jj9d7cgyY'),
(137, 'Old', 'A group of families on a tropical holiday discover that the secluded beach where they are staying is somehow causing them to age rapidly – reducing their entire lives into a single day.', '/vclShucpUmPhdAOmKgf3B3Z4POD.jpg', '/iTgM25ftE7YtFgZwUZupVp8A61S.jpg', '2021-07-21', '53', 'movie', 'horror', 'A4U2pMRV9_k'),
(138, 'Halloween Kills', 'Minutes after Laurie Strode, her daughter Karen and granddaughter Allyson left masked monster Michael Myers caged and burning in Laurie\'s basement, Laurie is rushed to the hospital with life-threatening injuries, believing she finally killed her lifelong tormentor. But when Michael manages to free himself from Laurie\'s trap, his ritual bloodbath resumes. As Laurie fights her pain and prepares to defend herself against him, she inspires all of Haddonfield to rise up against their unstoppable monster. The Strode women join a group of other survivors of Michael\'s first rampage who decide to take matters into their own hands, forming a vigilante mob that sets out to hunt Michael down, once and for all.', '/qmJGd5IfURq8iPQ9KF3les47vFS.jpg', '/tDYwYktjFmpj92S2Qn4T3BcRgL.jpg', '2021-10-14', '53', 'movie', 'horror', 'hL6R3HmQfPc'),
(139, 'Black Water: Abyss', 'An adventure-loving couple convince their friends to explore a remote, uncharted cave system in the forests of Northern Australia. With a tropical storm approaching, they abseil into the mouth of the cave, but when the caves start to flood, tensions rise as oxygen levels fall and the friends find themselves trapped. Unknown to them, the storm has also brought in a pack of dangerous and hungry crocodiles.', '/95S6PinQIvVe4uJAd82a2iGZ0rA.jpg', '/fRrpOILyXuWaWLmqF7kXeMVwITQ.jpg', '2020-07-09', '53', 'movie', 'horror', 'JKNv2YfrM7Y'),
(140, 'Last Night in Soho', 'A young girl, passionate about fashion design, is mysteriously able to enter the 1960s where she encounters her idol, a dazzling wannabe singer. But 1960s London is not what it seems, and time seems to be falling apart with shady consequences.', '/ahbwIJl7T0D34m3sPKlBaCqs2xH.jpg', '/7OcRErUXXdAVAHg6y5cjn56ivtu.jpg', '2021-10-21', '53', 'movie', 'horror', 'AcVnFrxjPjI'),
(141, 'Tarumama', 'Sara and Óscar, a couple going through a marital crisis, decide to spend a week in a remote country cabin with their two children, Alicia and Tomás. The family tries to have a quiet time, but something strange happens there. There is a woman who prowls through the forest and cries uncontrollably looking for a baby she has just lost. This deeply affects the family who will have to stay together to survive this nightmare.', '/iwlmZKndp7fIfHbxVzQtk9zby3A.jpg', '/vkojfC1xykW9XBCyDDCMYeHqLEf.jpg', '2021-07-29', '27', 'movie', 'horror', 'y9CZcWEI3zg'),
(142, 'El amarre', 'A woman has a crush with a coworker and makes a ritual to make him fall in love with her, but things got a little out of hand when she messes with forces no one can control.', '/xfRk3lcBmIicDobV0i5YXktqRgq.jpg', '/q6Uu24BS0SXI2KPpkjkydc9nMsO.jpg', '2021-10-21', '27', 'movie', 'horror', 'eKHPOFT3JWI'),
(143, 'Tarumama', 'Sara and Óscar, a couple going through a marital crisis, decide to spend a week in a remote country cabin with their two children, Alicia and Tomás. The family tries to have a quiet time, but something strange happens there. There is a woman who prowls through the forest and cries uncontrollably looking for a baby she has just lost. This deeply affects the family who will have to stay together to survive this nightmare.', '/iwlmZKndp7fIfHbxVzQtk9zby3A.jpg', '/vkojfC1xykW9XBCyDDCMYeHqLEf.jpg', '2021-07-29', '18', 'movie', 'horror', 'y9CZcWEI3zg'),
(144, 'Meander', 'After getting a car ride from an unknown man, Lisa wakes up in a tube. On her arm is strapped a bracelet with a countdown. She quickly understands that every 8 minutes, fire burns an occupied section. She has no choice but to crawl into safe sections to survive. To know why she’s there and how to get out, Lisa will have to face the memories of her dead daughter…', '/2OTIAx8AmwGCaXmq5ohQCyPUjdC.jpg', '/jQdjGWPXXCAxVJc0EXtBiyG3K4g.jpg', '2021-05-26', '27', 'movie', 'horror', 'u1Q5jWpRCL4'),
(145, 'Meander', 'After getting a car ride from an unknown man, Lisa wakes up in a tube. On her arm is strapped a bracelet with a countdown. She quickly understands that every 8 minutes, fire burns an occupied section. She has no choice but to crawl into safe sections to survive. To know why she’s there and how to get out, Lisa will have to face the memories of her dead daughter…', '/2OTIAx8AmwGCaXmq5ohQCyPUjdC.jpg', '/jQdjGWPXXCAxVJc0EXtBiyG3K4g.jpg', '2021-05-26', '878', 'movie', 'horror', 'u1Q5jWpRCL4'),
(146, 'Meander', 'After getting a car ride from an unknown man, Lisa wakes up in a tube. On her arm is strapped a bracelet with a countdown. She quickly understands that every 8 minutes, fire burns an occupied section. She has no choice but to crawl into safe sections to survive. To know why she’s there and how to get out, Lisa will have to face the memories of her dead daughter…', '/2OTIAx8AmwGCaXmq5ohQCyPUjdC.jpg', '/jQdjGWPXXCAxVJc0EXtBiyG3K4g.jpg', '2021-05-26', '18', 'movie', 'horror', 'u1Q5jWpRCL4'),
(147, 'Meander', 'After getting a car ride from an unknown man, Lisa wakes up in a tube. On her arm is strapped a bracelet with a countdown. She quickly understands that every 8 minutes, fire burns an occupied section. She has no choice but to crawl into safe sections to survive. To know why she’s there and how to get out, Lisa will have to face the memories of her dead daughter…', '/2OTIAx8AmwGCaXmq5ohQCyPUjdC.jpg', '/jQdjGWPXXCAxVJc0EXtBiyG3K4g.jpg', '2021-05-26', '53', 'movie', 'horror', 'u1Q5jWpRCL4'),
(148, 'After We Fell', 'Just as Tessa\'s life begins to become unglued, nothing is what she thought it would be. Not her friends nor her family. The only person that she should be able to rely on is Hardin, who is furious when he discovers the massive secret that she\'s been keeping. Before Tessa makes the biggest decision of her life, everything changes because of revelations about her family.', '/dU4HfnTEJDf9KvxGS9hgO7BVeju.jpg', '/lV3UFPPxDIPelh46G9oySXN9Mcz.jpg', '2021-09-01', '10749', 'movie', 'romance', 'J-x5WLWoZpY'),
(149, 'Single All the Way', 'Desperate to avoid his family’s judgment about his perpetual single status, Peter convinces his best friend Nick to join him for the holidays and pretend that they’re now in a relationship. But when Peter’s mother sets him up on a blind date with her handsome trainer James, the plan goes awry.', '/bfZPNzAwUQZ6FZQi1d136KLr3wl.jpg', '/6A5ugY49ukHmMLaMRwkjaKouzCn.jpg', '2021-12-02', '10749', 'movie', 'romance', 'kCQxxqdowOg'),
(150, 'After We Collided', 'Tessa finds herself struggling with her complicated relationship with Hardin; she faces a dilemma that could change their lives forever.', '/kiX7UYfOpYrMFSAGbI6j1pFkLzQ.jpg', '/6hgItrYQEG33y0I7yP2SRl2ei4w.jpg', '2020-09-02', '10749', 'movie', 'romance', '2SvwX3ux_-8'),
(151, 'After', 'Tessa Young is a dedicated student, dutiful daughter and loyal girlfriend to her high school sweetheart. Entering her first semester of college, Tessa\'s guarded world opens up when she meets Hardin Scott, a mysterious and brooding rebel who makes her question all she thought she knew about herself -- and what she wants out of life.', '/u3B2YKUjWABcxXZ6Nm9h10hLUbh.jpg', '/997ToEZvF2Obp9zNZbY5ELVnmrW.jpg', '2019-04-11', '10749', 'movie', 'romance', '95BKJA2QhCc'),
(152, 'Why Women Cheat', 'The male lead is the king of a small island nation. He was previously badly hurt by the female lead. The female lead has a canine tooth that makes her look extremely captivating when she smiles. When the female lead vanished, the male lead became extremely fond of sleeping because he did not want to miss her. As fate would have it, the male lead married the female lead in the end. He decided to properly torment that adorable yet horrible woman for a while', '/xHJhH0pGTFLsECDry3G170M8fsG.jpg', '/ouLgfVE1ZrLEA41ZJ8Qbl5paUZX.jpg', '2021-07-06', '10749', 'movie', 'romance', 'rEgMsEjjNgA'),
(153, 'Annette', 'The story of Henry, a stand-up comedian with a fierce sense of humour and Ann, a singer of international renown. In the spotlight, they are the perfect couple, healthy, happy, and glamourous. The birth of their first child, Annette, a mysterious girl with an exceptional destiny, will change their lives.', '/4FTnypxpGltJdIARrfFsP31pGTp.jpg', '/cDVWsqsnGwIUqOSzAuDS0PIhNdW.jpg', '2021-07-06', '10749', 'movie', 'romance', 'l_EaNpL16SU'),
(154, 'The Proposal', 'When she learns she\'s in danger of losing her visa status and being deported, overbearing book editor Margaret Tate forces her put-upon assistant, Andrew Paxton, to marry her.', '/3llEDAKXexgVpSqiK17BS4wtJhC.jpg', '/wq17r2QvfXM7rwgN5oRghnGzFwp.jpg', '2009-06-01', '10749', 'movie', 'romance', 'Z2lYA7L7PZY'),
(155, 'The French Dispatch', 'The quirky staff of an American magazine based in 1970s France puts out its last issue, with stories featuring an artist sentenced to life imprisonment, student riots, and a kidnapping resolved by a chef.', '/6JXR3KJH5roiBCjWFt09xfgxHZc.jpg', '/u4Vm8n0suBYimsUoarqMw5vxNU8.jpg', '2021-10-21', '10749', 'movie', 'romance', 'TcPk2p0Zaw4'),
(156, 'Sex and the City', 'A New York writer on sex and love is finally getting married to her Mr. Big. But her three best girlfriends must console her after one of them inadvertently leads Mr. Big to jilt her.', '/77tIJpDUV5maRnmAUnxT1bzz1Zp.jpg', '/osHKguxvXPIUJJzsO3DEORZZ8QD.jpg', '2008-05-12', '10749', 'movie', 'romance', 'g9Mx2OLnoGI'),
(157, 'The Twilight Saga: Eclipse', 'Bella once again finds herself surrounded by danger as Seattle is ravaged by a string of mysterious killings and a malicious vampire continues her quest for revenge. In the midst of it all, she is forced to choose between her love for Edward and her friendship with Jacob, knowing that her decision has the potential to ignite the ageless struggle between vampire and werewolf. With her graduation quickly approaching, Bella is confronted with the most important decision of her life.', '/3mFM80dPzSqoXXuC2UMvLIRWX32.jpg', '/yiWfT2Bl1Nul3Xie39Ahs3FqSjA.jpg', '2010-06-23', '10749', 'movie', 'romance', 'kX2DKZcDM-o'),
(158, 'The French Dispatch', 'The quirky staff of an American magazine based in 1970s France puts out its last issue, with stories featuring an artist sentenced to life imprisonment, student riots, and a kidnapping resolved by a chef.', '/6JXR3KJH5roiBCjWFt09xfgxHZc.jpg', '/u4Vm8n0suBYimsUoarqMw5vxNU8.jpg', '2021-10-21', '18', 'movie', 'romance', 'TcPk2p0Zaw4'),
(159, 'Annette', 'The story of Henry, a stand-up comedian with a fierce sense of humour and Ann, a singer of international renown. In the spotlight, they are the perfect couple, healthy, happy, and glamourous. The birth of their first child, Annette, a mysterious girl with an exceptional destiny, will change their lives.', '/4FTnypxpGltJdIARrfFsP31pGTp.jpg', '/cDVWsqsnGwIUqOSzAuDS0PIhNdW.jpg', '2021-07-06', '18', 'movie', 'romance', 'l_EaNpL16SU'),
(160, 'After We Fell', 'Just as Tessa\'s life begins to become unglued, nothing is what she thought it would be. Not her friends nor her family. The only person that she should be able to rely on is Hardin, who is furious when he discovers the massive secret that she\'s been keeping. Before Tessa makes the biggest decision of her life, everything changes because of revelations about her family.', '/dU4HfnTEJDf9KvxGS9hgO7BVeju.jpg', '/lV3UFPPxDIPelh46G9oySXN9Mcz.jpg', '2021-09-01', '18', 'movie', 'romance', 'J-x5WLWoZpY'),
(161, 'After We Collided', 'Tessa finds herself struggling with her complicated relationship with Hardin; she faces a dilemma that could change their lives forever.', '/kiX7UYfOpYrMFSAGbI6j1pFkLzQ.jpg', '/6hgItrYQEG33y0I7yP2SRl2ei4w.jpg', '2020-09-02', '18', 'movie', 'romance', '2SvwX3ux_-8'),
(162, 'After', 'Tessa Young is a dedicated student, dutiful daughter and loyal girlfriend to her high school sweetheart. Entering her first semester of college, Tessa\'s guarded world opens up when she meets Hardin Scott, a mysterious and brooding rebel who makes her question all she thought she knew about herself -- and what she wants out of life.', '/u3B2YKUjWABcxXZ6Nm9h10hLUbh.jpg', '/997ToEZvF2Obp9zNZbY5ELVnmrW.jpg', '2019-04-11', '18', 'movie', 'romance', '95BKJA2QhCc'),
(163, 'Sex and the City', 'A New York writer on sex and love is finally getting married to her Mr. Big. But her three best girlfriends must console her after one of them inadvertently leads Mr. Big to jilt her.', '/77tIJpDUV5maRnmAUnxT1bzz1Zp.jpg', '/osHKguxvXPIUJJzsO3DEORZZ8QD.jpg', '2008-05-12', '18', 'movie', 'romance', 'g9Mx2OLnoGI'),
(164, 'Single All the Way', 'Desperate to avoid his family’s judgment about his perpetual single status, Peter convinces his best friend Nick to join him for the holidays and pretend that they’re now in a relationship. But when Peter’s mother sets him up on a blind date with her handsome trainer James, the plan goes awry.', '/bfZPNzAwUQZ6FZQi1d136KLr3wl.jpg', '/6A5ugY49ukHmMLaMRwkjaKouzCn.jpg', '2021-12-02', '18', 'movie', 'romance', 'kCQxxqdowOg'),
(165, 'The Twilight Saga: Eclipse', 'Bella once again finds herself surrounded by danger as Seattle is ravaged by a string of mysterious killings and a malicious vampire continues her quest for revenge. In the midst of it all, she is forced to choose between her love for Edward and her friendship with Jacob, knowing that her decision has the potential to ignite the ageless struggle between vampire and werewolf. With her graduation quickly approaching, Bella is confronted with the most important decision of her life.', '/3mFM80dPzSqoXXuC2UMvLIRWX32.jpg', '/yiWfT2Bl1Nul3Xie39Ahs3FqSjA.jpg', '2010-06-23', '18', 'movie', 'romance', 'kX2DKZcDM-o'),
(166, 'The Proposal', 'When she learns she\'s in danger of losing her visa status and being deported, overbearing book editor Margaret Tate forces her put-upon assistant, Andrew Paxton, to marry her.', '/3llEDAKXexgVpSqiK17BS4wtJhC.jpg', '/wq17r2QvfXM7rwgN5oRghnGzFwp.jpg', '2009-06-01', '18', 'movie', 'romance', 'Z2lYA7L7PZY'),
(167, 'The Proposal', 'When she learns she\'s in danger of losing her visa status and being deported, overbearing book editor Margaret Tate forces her put-upon assistant, Andrew Paxton, to marry her.', '/3llEDAKXexgVpSqiK17BS4wtJhC.jpg', '/wq17r2QvfXM7rwgN5oRghnGzFwp.jpg', '2009-06-01', '35', 'movie', 'romance', 'Z2lYA7L7PZY'),
(168, 'Sex and the City', 'A New York writer on sex and love is finally getting married to her Mr. Big. But her three best girlfriends must console her after one of them inadvertently leads Mr. Big to jilt her.', '/77tIJpDUV5maRnmAUnxT1bzz1Zp.jpg', '/osHKguxvXPIUJJzsO3DEORZZ8QD.jpg', '2008-05-12', '35', 'movie', 'romance', 'g9Mx2OLnoGI'),
(169, 'Single All the Way', 'Desperate to avoid his family’s judgment about his perpetual single status, Peter convinces his best friend Nick to join him for the holidays and pretend that they’re now in a relationship. But when Peter’s mother sets him up on a blind date with her handsome trainer James, the plan goes awry.', '/bfZPNzAwUQZ6FZQi1d136KLr3wl.jpg', '/6A5ugY49ukHmMLaMRwkjaKouzCn.jpg', '2021-12-02', '35', 'movie', 'romance', 'kCQxxqdowOg'),
(170, 'The French Dispatch', 'The quirky staff of an American magazine based in 1970s France puts out its last issue, with stories featuring an artist sentenced to life imprisonment, student riots, and a kidnapping resolved by a chef.', '/6JXR3KJH5roiBCjWFt09xfgxHZc.jpg', '/u4Vm8n0suBYimsUoarqMw5vxNU8.jpg', '2021-10-21', '35', 'movie', 'romance', 'TcPk2p0Zaw4'),
(171, 'Dark Spell', 'Terror strikes when a heartbroken woman uses black magic to get her husband back.', '/2AbGdSGlU6CpiV3lswHUgE5CdAA.jpg', '/o2OSpKzXuB1edCDyVC2MXAxXwyJ.jpg', '2021-02-11', '10749', 'movie', 'romance', 'kR0RVnMbnOM'),
(172, 'Millonario sin amor', 'A successful TV executive changes his identity and moves to a poor neighborhood in search of real human connection. There, he falls for an aspiring actress trying to start her career at the channel he runs.', '/3kmhcUSDIQYNrUvpUcusnJQzxBs.jpg', '/wIOWQt6fXAKSgSqkyLZhI35bVIp.jpg', '2021-09-01', '10749', 'movie', 'romance', 'Ha5R98G7MTU'),
(173, 'More the Merrier', 'Multiple stories about the oscillating world of couple relationships and how difficult it can be to separate sex from love.', '/uShw8wJ7K4ySrPtUWjGe8wwJ5fj.jpg', '/4v64DRdMtx8fQGUZ7hE1R2iChCr.jpg', '2021-07-30', '10749', 'movie', 'romance', '6jxMS4WibFE'),
(174, 'Anonymously Yours', 'After an accidental text message turns into a digital friendship, Vale and Alex start crushing on each other without realizing they\'ve met in real life.', '/kQu9rNkiB0nSSRGQX0B6u9sxwfw.jpg', '/AjfboLPgxFmUBHJzXBl2S5KS53L.jpg', '2021-12-10', '10749', 'movie', 'romance', 'smAIFPnBvRg'),
(175, 'Your Name.', 'High schoolers Mitsuha and Taki are complete strangers living separate lives. But one night, they suddenly switch places. Mitsuha wakes up in Taki’s body, and he in hers. This bizarre occurrence continues to happen randomly, and the two must adjust their lives around each other.', '/q719jXXEzOoYaps6babgKnONONX.jpg', '/mMtUybQ6hL24FXo0F3Z4j2KG7kZ.jpg', '2016-08-26', '10749', 'movie', 'romance', 'xU47nhruN-Q'),
(176, 'The Last: Naruto the Movie', 'Two years after the events of the Fourth Great Ninja War, the moon that Hagoromo Otsutsuki created long ago to seal away the Gedo Statue begins to descend towards the world, threatening to become a meteor that would destroy everything on impact. Amidst this crisis, a direct descendant of Kaguya Otsutsuki named Toneri Otsutsuki attempts to kidnap Hinata Hyuga but ends up abducting her younger sister Hanabi. Naruto and his allies now mount a rescue mission before finding themselves embroiled in a final battle to decide the fate of everything.', '/bAQ8O5Uw6FedtlCbJTutenzPVKd.jpg', '/kzIiKLccwuzD3qD5OHFyPIkiqEw.jpg', '2014-12-06', '10749', 'movie', 'romance', 'tA3yE4_t6SY'),
(177, 'Yes, No, or Maybe Half?', 'Kunieda Kei is a popular, young TV announcer whose public and private personas are so different, they might be called extreme. On the outside, he is the picture of perfection, affectionately nicknamed \"The Prince,\" while on the inside he is constantly cursing at all of the incompetence around him. Of course, no one knows this secret of his.  One day, Kei meets animation artist Tsuzuki Ushio for a work assignment. While Kei is in \"inside mode,\" he later runs into Tsuzuki, who doesn\'t recognize him in his worn-out sweats and a facemask, but as compensation for injuring Tsuzuki\'s arm, Kei gets roped into helping out with his work.', '/sH8xCXLEbihNNVDbewddzkYnNPF.jpg', '/yjmqROw9fa9GahuUxvBFnoVYYMG.jpg', '2020-12-11', '10749', 'movie', 'romance', 'UCfD8yFto4I'),
(178, 'Assassins', 'True crime meets global spy thriller in this gripping account of the assassination of Kim Jong-nam, the half brother of the North Korean leader. The film follows the trial of the two female assassins, probing the question: were the women trained killers or innocent pawns of North Korea?', '/guEH393qNWWh2wBJoGP7oqmjTK5.jpg', '/vxS1fkt6xQWtYNyFkm6D6OhV0sR.jpg', '2021-08-12', '99', 'movie', 'documentaries', 'LNkmnVd9wHM'),
(179, 'After Porn Ends 2', 'After Porn Ends 2 picks up where its predecessor left off and not only turns back the clock to meet the oldest living stars in adult film\'s history, but goes in depth with some of Its most current retirees and juxtaposes their experiences in a life after porn. Delving deeper into society\'s ongoing stigmas of race, misogyny, and the reality of decreasing opportunities for these former VHS box cover stars. For some, their careers in adult entertainment is accepted proudly and without regret. In fact, it seems to have proven to be the pathway to their current happiness and inner peace. For others, however, a career in porn has proven to be a conduit to certain despair as they struggle to find a way to bury their past and emerge with a new career or calling.', '/rfItXrtDGILwsCdmgVxX79phFuI.jpg', '/uO6ZUez70Twan92pqoV60T9kiGH.jpg', '2017-03-28', '99', 'movie', 'documentaries', 'T9fLBBxjAgM'),
(180, 'Making the Witcher', 'Journey into the extraordinary world of \"The Witcher\" — from casting the roles to Jaskier\'s catchy song — in this behind-the-scenes look at the series. Go behind the monsters, the ballads and every bit of magic that went into bringing The Witcher\'s Continent to life.', '/zYnwBAUPQn5WmurROH1ravCC6Wp.jpg', '/AfS7QTuDNIySoqcGyg9YFel3X3P.jpg', '2020-08-26', '99', 'movie', 'documentaries', '4-joBE3I3WY'),
(181, 'Ghostheads', 'A documentary that explores the extreme side of the Ghostbusters fandom. Join us as we travel the world meeting extreme Ghostbusters fans. Every Ghosthead is unique. Every Franchise is its own. Every pop culture fandom should learn how to give back to the community.', '/7HqyHRvkKvf7X6FkBJOcqaSvred.jpg', '/IdUO2MCcy93cGXw1B6PpkZL6nu.jpg', '2016-04-23', '99', 'movie', 'documentaries', 'kPMiHm7YTBI'),
(182, 'Lead Me Home', 'Poignant stories of homelessness on the West Coast of the US frame this cinematic portrait of a surging humanitarian crisis.', '/6sJNurxhjPMAwTj3bBGRPcNJ7j7.jpg', '/tJyvDf1lj4uKySKlyMjyoaoOwyB.jpg', '2021-09-03', '99', 'movie', 'documentaries', 'moekzAxXe0o'),
(183, 'Thinking XXX', 'For a book project, photographer Timothy Greenfield-Sanders took photographs of 30 stars of adult movies, each pair of photographs in the same pose, clothed and nude. This film records the photo shoots and includes interviews with the performers and commentary from eight writers (and John Waters). The actors and writers discuss economics, nudity and exhibitionism, careers, and private lives.', '/kqB0fF7VlODmw1exH4iDZHGUiVI.jpg', '/1Gf5YdhlJ1G7Tf7WkSRrs6ssZ3G.jpg', '2004-10-27', '99', 'movie', 'documentaries', 'fvA24sqHRpM'),
(184, 'Porno Unplugged', 'Journalist Fabian Burstein looks behind the curtains of the porn industry. Starting in Budapest he heads westwards to explore a new world on its victory march rooted deeply in Austria. On this journey he meets the heroes and leading actors of this story: Austrians Mick Blue, Renee Pornero and Thomas Janisch. Porno Unplugged follows its native porn stars to where their lives happen. From east to west...', '/uoQmK7FRXNIQa7sikGg1xM0QaN9.jpg', '/dZ1sOBUIrgX4iIEKjo6GiQpUMiL.jpg', '2009-03-17', '99', 'movie', 'documentaries', 'KrsLrfn6p4o'),
(185, 'Friends: The Reunion', 'The cast of Friends reunites for a once-in-a-lifetime celebration of the hit series, an unforgettable evening filled with iconic memories, uncontrollable laughter, happy tears, and special guests.', '/bT3c4TSOP8vBmMoXZRDPTII6eDa.jpg', '/y1BomwRA41Cr8s69G9vVQRjwllp.jpg', '2021-05-27', '99', 'movie', 'documentaries', 'LTpmw0Ac6Zs'),
(186, 'Money Heist: The Phenomenon', 'A documentary on why \'Money Heist\' sparked a wave of enthusiasm around the world for a lovable group of thieves and their professor.', '/AboUXTrDWEi0PuZUqaft0iwBTm7.jpg', '/yEBBtk1eyZltGgJt8Z2zi3KIvvX.jpg', '2020-04-03', '99', 'movie', 'documentaries', 'q5gSLf1b9ag'),
(187, 'Diego, The Last Goodbye', 'The last year in the life of Diego Maradona told by friends, family and former companions reveals his deep humanity. In the midst of the Covid 19 pandemic, a Maradonian funeral sends him away amid tears, songs and tear gas.', '/hUmpWqixNRe9EfsmbzccJQV0gt.jpg', '/4Z89BwPQHoCXKSAnOFwulaqyYXG.jpg', '2021-11-25', '99', 'movie', 'documentaries', 'iUqc0GBC7T8');

-- --------------------------------------------------------

--
-- Table structure for table `netflix_download`
--

CREATE TABLE `netflix_download` (
  `ID` int NOT NULL,
  `download_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `UserID` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `netflix_download`
--

INSERT INTO `netflix_download` (`ID`, `download_id`, `UserID`) VALUES
(34, '6', 2),
(35, '50', 3),
(36, '1', 22),
(37, '1', 22),
(38, '51', 22),
(39, '119', 22);

-- --------------------------------------------------------

--
-- Table structure for table `netflix_liked`
--

CREATE TABLE `netflix_liked` (
  `ID` int NOT NULL,
  `like_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `UserID` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `netflix_liked`
--

INSERT INTO `netflix_liked` (`ID`, `like_id`, `UserID`) VALUES
(1, '1', 3),
(2, '3', 21),
(3, '1', 21);

-- --------------------------------------------------------

--
-- Table structure for table `netflix_list`
--

CREATE TABLE `netflix_list` (
  `ID` int NOT NULL,
  `movie_ID` varchar(20) NOT NULL,
  `UserID` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `netflix_list`
--

INSERT INTO `netflix_list` (`ID`, `movie_ID`, `UserID`) VALUES
(25, '1', 2),
(26, '1', 3),
(27, '179', 22),
(28, '59', 22),
(29, '119', 22),
(30, '46', 22),
(31, '120', 22),
(32, '149', 22),
(33, '55', 22),
(34, '39', 22),
(35, '14', 22),
(36, '178', 22),
(37, '77', 22);

-- --------------------------------------------------------

--
-- Table structure for table `netflix_users`
--

CREATE TABLE `netflix_users` (
  `userID` int NOT NULL,
  `userName` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `userEmail` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `password` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `cardNum` varchar(70) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `cvv` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `expMonth` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `expYear` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `userPlan` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `netflix_users`
--

INSERT INTO `netflix_users` (`userID`, `userName`, `userEmail`, `password`, `cardNum`, `cvv`, `expMonth`, `expYear`, `userPlan`) VALUES
(1, 'jashandeep ', 'madanjashan0@gmail.com', '$2y$10$6/TqEND.UCBuZq0eTmyqnuWPXr4.pztv6Ppv89mFXlcYTNfee.IDm', '4485896063553496', '443', 'Jan', '2022', 'basic'),
(2, 'madan', 'jashandeepsinghmadan@gmail.com', '$2y$10$OoOGLft72tUoaptwTyDqwOJCI0AbwJ/pxNOM8ccOHApnvIl/6a6Sy', '4485896063553496', '3454', 'Jan', '2031', 'premium'),
(3, 'joegmail', 'joe@gmail.com', '$2y$10$frfnJJ2LsR2kZNOW1j9Hzu.rfolh/qbAt1vXoy17L9l0VHGe4/Vpa', '4485896063553496', '111', 'Jan', '2022', 'premium'),
(4, 'johngamil', 'john@gmail.com', '$2y$10$/vPbSnCofs1e2ILIGHdhAeyMuP/Lbo01UtAwv4DWbeOl.Y89ndHOa', '4485896063553496', '232', 'Jan', '2022', 'standard'),
(5, 'mikegamil', 'mike@gmail.com', '$2y$10$8u.KMjzE9WPzXgt1Q8/.4.KB7y7oJ/6OVonxamJdnKuvcZzzAC6by', '4485896063553496', '454', 'July', '2022', 'standard'),
(7, 'vinay', 'vinay@gmail.com', '$2y$10$w0XFeheA8uWK0yNpTgbekesyEANyp9C34FjEhpTdGGotPh1enT35S', '4671364987886199', '343', 'Jan', '2022', 'standard'),
(8, 'vipin ab', 'vipin@gmail.com', '$2y$10$ohyOS4uxwz7PZE7C1OvzSe2KxU2rSL2/3105UhzIw2um8QIAAe0O2', '4024007107067596', '2323', 'Jan', '2022', 'premium'),
(9, 'ab', 'ab@gmail.com', '$2y$10$wYOM1GSh/iNtwAf3uzWy6uBr8Jv3AwrMmTwhmnRv3m5e0jGn2brAS', '4024007107067596', '111', 'Jan', '2022', 'premium'),
(10, 'sandy', 'sandy@gmail.com', '$2y$10$wVug0cwBuAoPWjwMXNO9RuO.u0e6b5WdxevYpq8XMUHMSvupBweD.', '4024007107067596', '121', 'Jan', '2022', 'premium'),
(11, 'test', 'test1@gmail.com', '$2y$10$04ws6ltlG/uBTLdZagYETupwEwIisSbuGTvB8mVRPc9ET6Vy9oDOO', '4024007107067596', '121', 'Jan', '2022', 'premium'),
(12, 'secondtest', 'test2@gmail.com', '$2y$10$xpmbnPonAdQZu5MxnpspCu1EUMJ1ZQDnCZAkS9aXdYzuDr47djo6C', '4024007107067596', '323', 'Jan', '2022', 'premium'),
(13, 'third', 'test3@gmail.com', '$2y$10$f66oeWHq5S7ivvcLsyXSQ.FSnXaW3F2EsdYE9bNCq8pVbzhPih2eq', '4024007107067596', '111', 'Jan', '2022', 'premium'),
(14, 'test', 'test4@gmail.com', '$2y$10$eLqI7eLB8V9NLRCsIG2KGucg3jc67YJLrHGjI6pgLTL9I59bvHcNK', '4024007107067596', '222', 'Jan', '2022', 'premium'),
(15, 'test', 'test5@gmail.com', '$2y$10$z6bTaapejsw.FognWS8sr.57I05tvfQyiIR7I5JIYMA1CrMZB0UiK', '4024007107067596', '111', 'Jan', '2022', 'premium'),
(16, 'test', 'test6@gmail.com', '$2y$10$4zTZsRV8H6RuCN0JMZYUxe1MquiZMzl57HbeMKJa402EVWv68jt4m', '4024007107067596', '222', 'Jan', '2022', 'standard'),
(17, 'test', 'test7@gmail.com', '$2y$10$3sXeQf8xLK5IzdENK2MS6u1pa2ROlpEY.YBhPneYXEzpo3tOKRhAa', '4556711640462935', '111', 'Jan', '2022', 'premium'),
(18, 'test', 'test8@gmail.com', '$2y$10$pLsY7oHw9VrF6pf/E.wV3OApJWD.3WaEBw6rpxu.J3F6B16WG5hxW', '4556711640462935', '111', 'Jan', '2022', 'premium'),
(19, 'test', 'test9@gmail.com', '$2y$10$uTELgHtIdU84XDT8VbIOQu4TorZGjdMxqekBLS5.L765e0xhES.3K', '4556711640462935', '333', 'Jan', '2022', 'premium'),
(20, 'test', 'test10@gmail.com', '$2y$10$4.MPF8CyaHlKzsPPlR9iFejxA8cuEXeoq5XhuuPi1/N0azc19gj/2', '4556711640462935', '111', 'Jan', '2022', 'premium'),
(21, 'test', 'test11@gmail.com', '$2y$10$ByY81Gi.W.4DDIu7frFbmuf.DF9yBnm9vGzJpDU6E1qATeQdI8OLy', '4556711640462935', '222', 'Jan', '2022', 'premium'),
(22, 'test', 'test12@gmail.com', '$2y$10$jprqoJjDVTTxhI2TOwgvk.sgcCZzgzVsWS6JXdBMmFfyKm4i.WU3m', '4556711640462935', '222', 'Jan', '2022', 'premium');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `all_netflix`
--
ALTER TABLE `all_netflix`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `netflix_download`
--
ALTER TABLE `netflix_download`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `netflix_liked`
--
ALTER TABLE `netflix_liked`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `netflix_list`
--
ALTER TABLE `netflix_list`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `netflix_users`
--
ALTER TABLE `netflix_users`
  ADD UNIQUE KEY `UserID` (`userID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `all_netflix`
--
ALTER TABLE `all_netflix`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=188;

--
-- AUTO_INCREMENT for table `netflix_download`
--
ALTER TABLE `netflix_download`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `netflix_liked`
--
ALTER TABLE `netflix_liked`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `netflix_list`
--
ALTER TABLE `netflix_list`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `netflix_users`
--
ALTER TABLE `netflix_users`
  MODIFY `userID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
