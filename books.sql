-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 29, 2015 at 12:15 AM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `guidance_test`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE IF NOT EXISTS `books` (
`ID` int(10) NOT NULL,
  `ISBN` int(10) NOT NULL,
  `Title` varchar(255) CHARACTER SET latin1 NOT NULL,
  `Description` text CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci AUTO_INCREMENT=6 ;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`ID`, `ISBN`, `Title`, `Description`) VALUES
(1, 877191506, 'Every Dog Has His Day', 'It''s roundup time on the ranch, but Hank was left behind! Benny ? a hot shot, high-priced cowdog ? is running the show while Hank is tied to a fence post....'),
(2, 312859171, 'Mississippi Blues', 'The journey of Verity across the wonderfully altered landscape of mid-America begun in "Queen City Jazz"--a "New York Times" Notable Book for 1995--continues on down the river in "Mississippi Blues". "A dizzying novel that takes full advantage of the creative potential of nanotech".--"The New York Times Book Review".'),
(3, 553213113, 'Moby Dick', 'No American masterpiece casts quite as awesome a shadow as Melville''s monumental Moby Dick.  Mad Captain Ahab''s quest for the White Whale is a timeless epic--a stirring tragedy of vengeance and obsession, a searing parable about humanity lost in a universe of moral ambiguity.  It is the greatest sea story ever told.  Far ahead of its own time, Moby Dick was largely misunderstood and unappreciated by Melville''s contemporaries.  Today, however, it is indisputably a classic.  As D.H. Lawrence wrote, Moby Dick "commands a stillness in the soul, an awe . . . [It is] one of the strangest and most wonderful books in the world."'),
(4, 81099612, 'Mug Shot', 'Since Alphonse Bertillon developed the “anthropometric photograph” in 1882, the mug shot has been an essential police procedure around the world. Now available in paperback, Mug Shots presents more than 250 booking photos spanning the history of this practice—the faces of mafia bosses and cold-blooded killers, as well as enemies of the state and prominent political activists.\r\n \r\nOn display in this international selection are notorious faces such as Al Capone, Fidel Castro, O. J. Simpson, and Robert Stroud, the “Birdman of Alcatraz,” as well as Rosa Parks, Martin Luther King Jr., and Jane Fonda. Accompanying these gripping images is an illuminating commentary that puts both the criminals and their crimes in historical context, reconstructing some of the most dramatic events of the 20th century.'),
(5, 824513533, 'Show Me the Way', 'Nouwen invites readers to join him on a 40-day Lenten path as fellow pilgrims, from the solemn beginning of Ash Wednesday to the joyous climax of Easter. This inspirational "search for the way" speaks directly to the heart during this time of reflection and prayer.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
 ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
