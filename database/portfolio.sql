-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 15, 2018 at 01:29 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `portfolio`
--

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `projectid` int(6) UNSIGNED NOT NULL,
  `projectname` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `projectdescription` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `projectimage` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `projectsource` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `projectlive` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`projectid`, `projectname`, `projectdescription`, `projectimage`, `projectsource`, `projectlive`) VALUES
(1, 'Procedural Map Generator', 'This was my final project for my Organization of Programming Languages class. The application\'s purpose is to procedurally generate a region of a game map with an unobstructed path leading from left to right. The sprites used to compose the map are selectable below. The intensity of liquids and complexity of the path can also be adjusted via slider bars. The procedure for generating the path is similar to a random walk algorithm, but has a chance every iteration to recursively call itself,  depending on the complexity selected, in order to branch in other directions. The water and lava algorithm is also a random walk, but modified to act similar to the Gaussian noise algorithm.', 'images/mapgenerator.png', 'https://github.com/Amelle92/Random-Game-Map-Generator', ''),
(2, 'Z-Buffer', 'This was part of the final project for my Computer Graphics class. The purpose of this project was to implement a z-buffer in order to track the depth of 3D objects. This allows objects to appear to be moving behind and in front of each other, as seen in the left side of the GIF. When no z-buffer is present, objects appear to phase through each other depending on their draw order, which can be seen on the right side. Some object faces are also visible even when not facing the camera, giving the illusion that the object is transparent', 'images/gifs/zbuffer.gif', 'https://github.com/Amelle92/Z-Buffer', 'live/zbuffer'),
(3, 'Photo Gallery', 'This was the final project in my GUI Programming class. It is one of the larger and more polished projects that I have done. The gallery is able to dynamically place photos based on length and where they fit best, resulting in even column lengths while maintaining original image aspect ratios. The owner of the gallery is able to upload their own photos to any of the galleries and add a caption to the picture that can be seen when an image is moused over. The image adding and deleting functionalities are made public for demonstration purposes and could be locked so that only certain users are allowed. The entire site is a single page app. Photos are loaded into the viewing space via Javascript, AJAX, and PHP.', 'images/photogallery.png', 'https://github.com/Amelle92/Final/tree/master/Photo%20Gallery%20Final%20Project', 'live/photogallery'),
(4, 'Car Payment Calculator', 'I wrote this app for my GUI Programming class. The tool can be used to compare car payments for different car loan specifications. It is a useful tool for determining the best deal when buying or leasing a new car', 'images/carpaymentcalculator.png', 'https://github.com/Amelle92/carpaymentcalculator', 'live/carpaymentcalculator'),
(5, 'LFSR/Image Encryption', 'This was a homework assignment for my Computing IV class. I created a linear feedback shift register using a ring buffer. Then, I processed an image\'s pixel data and scrambled it using a seed value as the input for the LFSR. The resulting output is an encrypted image that can only be decrypted if the seed is known by the decrypter. This method of encryption could be used for other file types as well.', 'images/LFSR.png', 'https://github.com/Amelle92/C-SFML/tree/master/PS2b', ''),
(6, 'Nbody Simulator', 'This was one of the various assignments that I did during my Computing IV class. In this assignment we simulated the planetary revolutions of our solar system. We used provided astronomical numbers and read them as input from a text file, so the planet revolutions are pretty accurate. A conversion is done after reading the input to get the screen coordinates. An important algorithm in the assignment was in the step function. This function is what calculates the new position of each planet every frame based on acceleration, mass, and velocity. First, pairwise forces are calculated, then accelerations of x and y using the pairwise forces, and lastly the new velocities of x and y are calculated using acceleration and seconds. Then the new position can be found by multiplying seconds by velocity for both x and y and converting them to coordinates on the screen. I also added music and elapse time.', 'images/Nbody.png', 'https://github.com/Amelle92/NBodySimulator', ''),
(7, 'Recursive Graphics', 'The purpose of this assignment was to practice recursion with graphics and create a Sierpinski triangle using the SFML Drawable class. The key algorithm in this assignment was the recursive algorithm for determining each triangle\'s point coordinates. The algorithm finds the mid point of the last existing triangle\'s sides and uses those points to draw three more triangles. This is repeated recursively until the desired number of iterations was satisfied, which in this case was 10. I then made my own recursive pattern with 10 iterations as well that changes colors every frame by generating random RBG values.', 'images/RecursiveGraphics.png', 'https://github.com/Amelle92/RecursiveGraphics', ''),
(8, 'Scalable Vector Graphics/WebGL', 'This was the first assignment where I used scalable vector graphics in html. In this assignment for Computer Graphics, we created four different perspectives, three of which are in 2D, and the last in 3D. The 3D perspective was created using WebGL. The 2D perspectives can be manipulated in real time using the settings provided to the right, which demonstrates how easy it is to manipulate scalable vector graphics. For the 3D perspective I decided it would be best to learn WebGL to implement it.', 'images/SVG.png', 'https://github.com/Amelle92/SVG', 'live/svg');

-- --------------------------------------------------------

--
-- Table structure for table `projectdetails`
--

CREATE TABLE `projectdetails` (
  `detailsid` int(6) UNSIGNED NOT NULL,
  `projectid` int(6) NOT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projectdetails`
--

INSERT INTO `projectdetails` (`detailsid`, `projectid`, `detail`) VALUES
(1, 1, 'Coded in Racket/Scheme'),
(2, 1, 'Ability to dynamically add new sprites'),
(3, 2, 'Programmed using WebGL, HTML, CSS, and JavaScript'),
(5, 3, 'Programmed using HTML, CSS, JavaScript, JQuery, AJAX, and PHP'),
(6, 3, 'The layout style was inspired by Pinterest'),
(7, 4, 'Programmed using HTML, CSS, and JavaScript'),
(8, 5, 'Programmed in a Linux environment (Ubuntu).'),
(9, 5, 'Programmed in C++ and SFML library'),
(10, 6, 'Programmed in a Linux environment (Ubuntu).'),
(11, 6, 'Programmed in C++ and SFML library'),
(12, 7, 'Programmed in a linux environment (Ubuntu).'),
(13, 7, 'Programmed in C++ and SFML'),
(14, 8, 'Programmed using WebGL, HTML, CSS, SVG, and JavaScript');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`projectid`);

--
-- Indexes for table `projectdetails`
--
ALTER TABLE `projectdetails`
  ADD PRIMARY KEY (`detailsid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `project`
--
ALTER TABLE `project`
  MODIFY `projectid` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `projectdetails`
--
ALTER TABLE `projectdetails`
  MODIFY `detailsid` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
