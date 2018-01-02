-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 27, 2017 at 10:12 AM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `slotify`
--

-- --------------------------------------------------------

--
-- Table structure for table `albums`
--

CREATE TABLE IF NOT EXISTS `albums` (
`id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `artist` int(11) NOT NULL,
  `genre` int(11) NOT NULL,
  `artworkPath` varchar(500) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `albums`
--

INSERT INTO `albums` (`id`, `title`, `artist`, `genre`, `artworkPath`) VALUES
(1, 'Hope for the Holiday', 1, 1, 'assets/images/artwork/hope_for_the_holidays.jpg'),
(2, 'Claire De Lune', 2, 2, 'assets/images/artwork/claire_de_lune.jpg'),
(3, 'Classical Piano Relaxation', 3, 3, 'assets/images/artwork/classical_piano_meditation.jpg'),
(4, 'Happy Holy Days', 4, 4, 'assets/images/artwork/happy_holy_days.jpg'),
(5, 'Emmanuel', 5, 1, 'assets/images/artwork/emmanuel.jpg'),
(6, 'Deeper Still', 6, 5, 'assets/images/artwork/deeper_still.jpg'),
(7, 'Christmas', 1, 6, 'assets/images/artwork/christmas.jpg'),
(8, 'Silent Night', 7, 1, 'assets/images/artwork/silent_night.jpg'),
(9, 'Running Tracks', 8, 7, 'assets/images/artwork/running_track.jpg');

-- --------------------------------------------------------



--
-- Table structure for table `artists`
--

CREATE TABLE IF NOT EXISTS `artists` (
`id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `artists`
--

INSERT INTO `artists` (`id`, `name`) VALUES
(1, 'Mark Smelby'),
(2, 'Nicholas York'),
(3, 'Classical Meditation'),
(4, '11 Acorn Lane'),
(5, 'Fielder Church'),
(6, 'Kimberly & Roberto Reviera'),
(7, 'Kristen Chambers'),
(8, 'Caius Lear');
-- --------------------------------------------------------


--
-- Table structure for table `genres`
--

CREATE TABLE IF NOT EXISTS `genres` (
`id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `genres`
--

INSERT INTO `genres` (`id`, `name`) VALUES
(1, 'Holiday'),
(2, 'Hymn'),
(3, 'Classical'),
(4, 'Pop'),
(5, 'Gospel'),
(6, 'Country'),
(7, 'R&B');

-- --------------------------------------------------------



--
-- Table structure for table `playlists`
--

CREATE TABLE IF NOT EXISTS `playlists` (
`id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `owner` varchar(50) NOT NULL,
  `dateCreated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `playlistSongs`
--

CREATE TABLE IF NOT EXISTS `playlistSongs` (
`id` int(11) NOT NULL,
  `songId` int(11) NOT NULL,
  `playlistId` int(11) NOT NULL,
  `playlistOrder` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `Songs`
--

CREATE TABLE IF NOT EXISTS `Songs` (
`id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `artist` int(11) NOT NULL,
  `album` int(11) NOT NULL,
  `genre` int(11) NOT NULL,
  `duration` varchar(8) NOT NULL,
  `path` varchar(500) NOT NULL,
  `albumOrder` int(11) NOT NULL,
  `plays` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=32 ;

--
-- Dumping data for table `Songs`
--

INSERT INTO `Songs` (`id`, `title`, `artist`, `album`, `genre`, `duration`, `path`, `albumOrder`, `plays`) VALUES
(1, 'Angels We Have Heard on High', 1, 1, 1, '3:08', 'assets/music/angels_we_have_heard_on_high.mp3', 1, 10),
(2, 'Ave Maria', 2, 2, 2, '2:02', 'assets/music/ave_maria.mp3', 1, 10),
(3, 'Cannon in D', 3, 3, 3, '7:44', 'assets/music/canon_in_d.mp3', 1, 10),
(4, 'Deck the Halls', 4, 4, 4, '2:16', 'assets/music/deck_the_halls.mp3', 1, 10),
(5, 'Do You Hear What I Hear', 5, 5, 1, '3:49', 'assets/music/do_you_hear_what_i_hear.mp3', 1, 10),
(6, 'Hark the Herald Angels Sing', 5, 5, 1, '4:40', 'assets/music/hark_the_herald_angels_sing.mp3', 2, 15),
(7, 'How Great is Our God', 6, 6, 5, '5:08', 'assets/music/bensound-funnysong.mp3', 1, 15),
(8, 'It Came Upon a Midnight Clear', 5, 5, 1, '4:13', 'assets/music/it_came_upon_a_midnight_clear.mp3', 3, 15),
(9, 'Mary Did You Know', 1, 7, 6, '3:40', 'assets/music/mary_did_you_know.mp3', 1, 15),
(10, 'Silent Night', 7, 8, 1, '4:12', 'assets/music/silent_night.mp3', 1, 15),
(11, 'Unbreak My Heart', 8, 9, 7, '4:22', 'assets/music/unbreak_my_ heart.mp3', 1, 15);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`id` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(32) NOT NULL,
  `signUpDate` datetime NOT NULL,
  `profilePic` varchar(500) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `firstName`, `lastName`, `email`, `password`, `signUpDate`, `profilePic`) VALUES
(1, 'reece-kenney', 'Reece', 'Kenney', 'Reece@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', '2017-06-28 00:00:00', 'assets/images/profile-pics/head_emerald.png'),
(2, 'donkey-kong', 'Donkey', 'Kong', 'Dk@yahoo.com', '7c6a180b36896a0a8c02787eeafb0e4c', '2017-06-28 00:00:00', 'assets/images/profile-pics/head_emerald.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `albums`
--
ALTER TABLE `albums`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `artists`
--
ALTER TABLE `artists`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `genres`
--
ALTER TABLE `genres`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `playlists`
--
ALTER TABLE `playlists`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `playlistSongs`
--
ALTER TABLE `playlistSongs`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Songs`
--
ALTER TABLE `Songs`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `albums`
--
ALTER TABLE `albums`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `artists`
--
ALTER TABLE `artists`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `genres`
--
ALTER TABLE `genres`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `playlists`
--
ALTER TABLE `playlists`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `playlistSongs`
--
ALTER TABLE `playlistSongs`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Songs`
--
ALTER TABLE `Songs`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `users`
--

--
-- Add foreign constraint on the album table`
--
ALTER TABLE `albums` ADD FOREIGN KEY (`genre`) REFERENCES `genres`(`id`) ON DELETE RESTRICT ON UPDATE RESTRICT; 
ALTER TABLE `albums` ADD FOREIGN KEY (`artist`) REFERENCES `artists`(`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Add foreign constraint on the Songs table`
--
ALTER TABLE `Songs` ADD FOREIGN KEY (`album`) REFERENCES `albums`(`id`) ON DELETE RESTRICT ON UPDATE RESTRICT; 
ALTER TABLE `Songs` ADD FOREIGN KEY (`genre`) REFERENCES `genres`(`id`) ON DELETE RESTRICT ON UPDATE RESTRICT; 
ALTER TABLE `Songs` ADD FOREIGN KEY (`artist`) REFERENCES `artists`(`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;


ALTER TABLE `users`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
