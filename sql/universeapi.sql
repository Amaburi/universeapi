-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 30, 2023 at 07:05 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `universeapi`
--

-- --------------------------------------------------------

--
-- Table structure for table `universedata`
--

CREATE TABLE `universedata` (
  `id` int(11) NOT NULL,
  `description` varchar(1234) DEFAULT NULL,
  `Planet` varchar(255) DEFAULT NULL,
  `imagename` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `universedata`
--

INSERT INTO `universedata` (`id`, `description`, `Planet`, `imagename`, `createdAt`, `updatedAt`) VALUES
(1, 'Earth is the third planet from the Sun and home to all known life. While large volumes of water can be found throughout the Solar System, only Earth sustains liquid surface water. Approximately 70.8% of Earth\'s surface is made up of the ocean, dwarfing Earth\'s polar ice, lakes, and rivers. The remaining 29.2% of Earth\'s surface is land, consisting of continents and islands. ', 'Earth', 'earth.png', '2023-02-25 14:17:05', '2023-02-25 14:17:05'),
(2, 'The sun is a star, a hot ball of glowing gasses at the heart of our solar system. Without the sun\'s intense energy and heat, there would be no life on Earth. Average diameter: 864,000 miles, about 109 times the size of the Earth. Rotation period at equator: About 27 days. Rotation period at poles: About 36 days. Surface temperature: 10,000 degrees Fahrenheit. Composition: Hydrogen, helium. ', 'Sun', 'sun.png', '2023-02-25 14:18:45', '2023-02-25 14:18:45'),
(3, 'Venus is the second planet from the Sun. Venus is the brightest object in the sky after the Sun and the Moon, and sometimes looks like a bright star in the morning or evening sky. The atmosphere of Venus is very hot and thick. You would not survive a visit to the surface of the planet you couldn\'t breathe the air. ', 'Venus', 'venus.png', '2023-02-25 14:29:31', '2023-02-25 14:29:31'),
(4, 'Mercury is the smallest planet in our solar system. Mercury is the planet that orbits the closest to the Sun. Mercury is the fastest planet. Mercury is a rocky planet, also known as a terrestrial planet. It is unlikely that life as we know it could survive on Mercury due to solar radiation, and extreme temperatures. Mercury has the shortest distance to travel around the Sun, it has the shortest year of all the planets in our solar system – 88 days.', 'Mercury', 'mercury.png', '2023-02-25 14:30:10', '2023-02-25 14:30:10'),
(5, 'Mars is the fourth planet from the Sun and the next planet beyond Earth. Sun. Mars turns on its axis more slowly than Earth does. So, a day on Mars is 24.6 hours.Mars is known as the Red Planet because the iron oxide chemicals in its soil looks like rust. Mars has two small moons. Their names are Phobos and Deimos. ', 'Mars', 'mars.png', '2023-02-25 14:30:37', '2023-02-25 14:30:37'),
(6, 'Jupiter is the fifth planet from our Sun and is, by far, the largest planet in the solar system. Jupiter\'s stripes and swirls are actually cold, windy clouds of ammonia and water, floating in an atmosphere of hydrogen and helium. . One day on Jupiter takes only about 10 hours. Jupiter\'s appearance is a tapestry of colorful cloud bands and spots. ', 'Jupiter', 'jupiter.png', '2023-02-25 14:31:30', '2023-02-25 14:31:30'),
(7, 'Saturn is the sixth planet from the Sun and the second-largest in the Solar System, after Jupiter. It is a gas giant with an average radius of about nine and a half times that of Earth.[23][24] It has only one-eighth the average density of Earth, but is over 95 times more massiveSaturn\'s interior is most likely composed of a rocky core, surrounded by a deep layer of metallic hydrogen, an intermediate layer of liquid hydrogen and liquid helium, and finally, a gaseous outer layer. Saturn has a pale yellow hue due to ammonia crystals in its upper atmosphere.', 'Saturn', 'saturn.png', '2023-02-25 14:33:47', '2023-02-25 14:33:47'),
(8, 'Uranus is the seventh planet from the Sun. It was the first planet found with the aid of a telescope, Uranus was discovered in 1781 by astronomer William Herschel. Uranus is an ice giant. Most of its mass is a hot, dense fluid of \'icy\' materials – water, methane and ammonia – above a small rocky core. Like Venus, Uranus rotates east to west. But Uranus is unique in that it rotates on its side.', 'Uranus', 'uranus.png', '2023-02-25 14:36:41', '2023-02-25 14:36:41'),
(9, 'Neptune\'s atmosphere is made up mostly of molecular hydrogen, atomic helium and methane. Neptune takes about 16 hours to rotate once, and about 165 Earth years to orbit the sun. Neptune is an ice giant. Because of dwarf planet Pluto’s elliptical orbit, Pluto is sometimes closer to the Sun (and us) than Neptune is.', 'Neptune', 'Neptune.png', '2023-02-25 14:38:04', '2023-02-25 14:40:24');

-- --------------------------------------------------------

--
-- Table structure for table `universes`
--

CREATE TABLE `universes` (
  `id` int(11) NOT NULL,
  `quiz` varchar(255) DEFAULT NULL,
  `a` varchar(255) DEFAULT NULL,
  `b` varchar(255) DEFAULT NULL,
  `c` varchar(255) DEFAULT NULL,
  `d` varchar(255) DEFAULT NULL,
  `key` varchar(255) DEFAULT NULL,
  `categoryId` int(11) DEFAULT NULL,
  `levelId` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `universes`
--

INSERT INTO `universes` (`id`, `quiz`, `a`, `b`, `c`, `d`, `key`, `categoryId`, `levelId`, `createdAt`, `updatedAt`) VALUES
(1, 'Approximately how long does it take for light from the sun to reach the Earth?', '8', '5', '3', 'instantly', 'a', 2, 1, '2023-03-14 15:00:00', '2023-03-14 15:00:00'),
(2, 'which one is the largest planet in our solar system.?', 'Venus', 'Mercury', 'Jupiter', 'Mars', 'c', 2, 1, '2023-03-23 14:17:01', '2023-03-23 14:17:01'),
(3, 'which one is the samllest planet in our solar system.?', 'Venus', 'Mercury', 'Jupiter', 'Mars', 'b', 2, 1, '2023-03-23 14:18:02', '2023-03-23 14:18:02'),
(4, 'The planet sometimes looks like a bright star in the morning or evening sky. What planet is that?', 'Venus', 'Uranus', 'Jupiter', 'Earth', 'a', 2, 2, '2023-03-23 14:18:59', '2023-03-23 14:18:59'),
(5, 'The Red Planet is?', 'Venus', 'Uranus', 'Mars', 'Earth', 'c', 2, 2, '2023-03-23 14:19:34', '2023-03-23 14:19:34'),
(6, 'How many planets are there in the Solar System?', '5', '8', '4', '7', 'b', 2, 1, '2023-03-27 14:30:14', '2023-03-27 14:30:14'),
(7, 'What’s the nearest planet to the sun?', 'Mercury', 'Jupiter', 'Earth', 'Uranus', 'a', 2, 1, '2023-03-27 14:39:17', '2023-03-27 14:39:17'),
(8, 'What’s the second nearest planet to the sun?', 'Mercury', 'Jupiter', 'Earth', 'Venus', 'a', 2, 1, '2023-03-27 14:54:52', '2023-03-27 14:54:52'),
(9, 'What’s the coldest planet in our solar system?', 'Uranus', 'Jupiter', 'Mars', 'Venus', 'a', 2, 1, '2023-03-27 15:15:13', '2023-03-27 15:15:13'),
(10, 'Which planet has the largest ring system?', 'Uranus', 'Neptune', 'Mars', 'Saturn', 'd', 2, 1, '2023-03-27 15:16:48', '2023-03-27 15:16:48'),
(11, 'What’s the fifth planet from the sun?', 'Uranus', 'Neptune', 'Jupiter', 'Saturn', 'c', 2, 1, '2023-03-27 15:18:26', '2023-03-27 15:18:26'),
(12, 'What’s the sixth planet from the sun?', 'Saturn', 'Neptune', 'Jupiter', 'Mars', 'a', 2, 1, '2023-03-27 15:19:13', '2023-03-27 15:19:13'),
(13, 'How big is the Earth?', '40,000 km', '35,000 km', '100,000 km', '50,000 km', 'a', 2, 2, '2023-03-27 17:03:29', '2023-03-27 17:03:29'),
(14, 'How many moons does the Earth have?', '3', '9', '2', '1', 'd', 2, 2, '2023-03-27 17:04:21', '2023-03-27 17:04:21'),
(15, 'Does Jupiter have ring?', 'no', 'yes', 'probably', 'don\'t know', 'b', 2, 2, '2023-03-27 17:06:33', '2023-03-27 17:06:33'),
(16, 'How many rings does Jupiter have?', '3', '9', '4', '1', 'c', 2, 2, '2023-03-27 17:07:41', '2023-03-27 17:07:41'),
(17, 'Which one is the largest moon of Saturn?', 'Moon', 'Titan', 'Phobos', 'Deimos', 'b', 2, 2, '2023-03-27 17:10:19', '2023-03-27 17:10:19'),
(18, 'When was Saturn discovered?', '1610', '1945', '1350', '1840', 'a', 2, 2, '2023-03-27 17:11:42', '2023-03-27 17:11:42'),
(19, 'How many moons does Mars have?', '3', '7', '2', '1', 'c', 2, 2, '2023-03-27 17:12:32', '2023-03-27 17:12:32'),
(20, 'How long is a day on mars?', '628 days', '687 days', '365 days', '156 days', 'b', 2, 2, '2023-03-27 17:14:11', '2023-03-27 17:14:11'),
(21, 'What planet in the solar system has the most volcanic activity?', 'Mars', 'Earth', 'Venus', 'Mercury', 'c', 2, 3, '2023-03-28 12:58:27', '2023-03-28 12:58:27'),
(22, 'Which planet has the most moons?', 'Saturn', 'Neptune', 'Mercury', 'Jupiter', 'd', 2, 3, '2023-03-28 13:00:07', '2023-03-28 13:00:07'),
(23, 'What vitamin comes from sun?', 'Vitamin D', 'Vitamin A', 'Vitamin C', 'Vitamin B', 'a', 2, 3, '2023-03-28 13:02:09', '2023-03-28 13:02:09'),
(24, 'What is the temperature of the sun\'s core?', '150 Million Degree', '15 Million Degree', '50 Million Degree', '90 Million Degree', 'b', 2, 3, '2023-03-28 13:17:43', '2023-03-28 13:17:43'),
(25, 'How long does it take for Neptune to rotate once on its axis', '17 Hours', '12 Hours', '24 Hours', '16 Hours', 'd', 2, 3, '2023-03-28 13:20:29', '2023-03-28 13:20:29'),
(26, 'What are Saturn\'s ring made off', 'Lava', 'ice and rock', 'Meteor', 'Illusion', 'b', 2, 3, '2023-03-28 13:24:35', '2023-03-28 13:24:35'),
(27, 'Who discovered Saturn?', 'Sakata Gintoki', 'Plato', 'Galileo Galilei', 'Alexander the great', 'c', 2, 3, '2023-03-28 13:26:27', '2023-03-28 13:26:27'),
(28, 'Can Human survive on Venus?', 'Yes, we can inhabit any planet we want', 'No, because venus has extreme temperature and pressure conditions', 'No, it\'s impossible', 'Yes, maybe in the future', 'b', 2, 3, '2023-03-28 13:34:23', '2023-03-28 13:34:23'),
(29, 'How old is our Solar System?', '4.5 billion', '5.4 billion', '3.0 billon', '2.5 billion', 'a', 2, 3, '2023-03-28 13:37:30', '2023-03-28 13:37:30'),
(30, 'How many moons are there in out solar system?', '250', '90', '200', '150', 'c', 2, 3, '2023-03-28 13:38:09', '2023-03-28 13:38:09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `universedata`
--
ALTER TABLE `universedata`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `universes`
--
ALTER TABLE `universes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `universedata`
--
ALTER TABLE `universedata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `universes`
--
ALTER TABLE `universes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
