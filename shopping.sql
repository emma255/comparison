-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 06, 2020 at 01:53 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.3.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopping`
--

-- --------------------------------------------------------

--
-- Table structure for table `bodabodas`
--

CREATE TABLE `bodabodas` (
  `id` int(11) NOT NULL,
  `firstName` varchar(15) NOT NULL,
  `middleName` varchar(15) NOT NULL,
  `lastName` varchar(15) NOT NULL,
  `phoneNumber` int(10) NOT NULL,
  `licence` int(16) NOT NULL,
  `refereePhoneNumber` int(10) NOT NULL,
  `refereePhysicalAddress` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bodabodas`
--

INSERT INTO `bodabodas` (`id`, `firstName`, `middleName`, `lastName`, `phoneNumber`, `licence`, `refereePhoneNumber`, `refereePhysicalAddress`) VALUES
(1, 'server', 'coder', 'linux', 759105762, 245654788, 759105762, '0759105762'),
(3, 'linux', 'programmer', 'server', 759105762, 2147483647, 713704235, '45466'),
(4, 'truytu', 'tyuyt', 'ytutyu', 678678, 67876, 768678, '678');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `description` varchar(300) NOT NULL,
  `deleteStatus` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `deleteStatus`) VALUES
(1, 'ANT-PERSPIRANT & PERFUME', 'suppermarket,market and other related', '');

-- --------------------------------------------------------

--
-- Table structure for table `collectors`
--

CREATE TABLE `collectors` (
  `id` int(11) NOT NULL,
  `firstName` varchar(15) NOT NULL,
  `middleName` varchar(15) NOT NULL,
  `lastName` varchar(15) NOT NULL,
  `phoneNumber` int(10) NOT NULL,
  `nationalId` varchar(16) NOT NULL,
  `refereePhysicalAddress` varchar(60) NOT NULL,
  `refereePhoneNumber` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `collectors`
--

INSERT INTO `collectors` (`id`, `firstName`, `middleName`, `lastName`, `phoneNumber`, `nationalId`, `refereePhysicalAddress`, `refereePhoneNumber`) VALUES
(1, 'programmer', 'linux', 'based', 759105762, '34564656', 'ARUSHA', '0759105762'),
(5, 'hkhkhk', 'lkhlkh', 'lhlk', 845646, '8745649', '6576', '876'),
(6, 'jakob', 'jaluia', 'john', 759105762, '884654734', '324', '0713704235');

-- --------------------------------------------------------

--
-- Table structure for table `companyprofiles`
--

CREATE TABLE `companyprofiles` (
  `id` int(11) NOT NULL,
  `latitude` varchar(20) NOT NULL,
  `longitude` varchar(20) NOT NULL,
  `email` varchar(60) NOT NULL,
  `phoneNumber` varchar(10) NOT NULL,
  `companyName` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `customerdeliverylocations`
--

CREATE TABLE `customerdeliverylocations` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `description` varchar(100) NOT NULL,
  `latitude` varchar(20) NOT NULL,
  `longitude` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customerdeliverylocations`
--

INSERT INTO `customerdeliverylocations` (`id`, `customer_id`, `name`, `description`, `latitude`, `longitude`) VALUES
(1, 1, 'linux based', 'near nssf', '36t7', '576TE'),
(2, 1, 'programmer', 'near nssf', '36t7', '576TE');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `firstName` varchar(15) NOT NULL,
  `lastName` varchar(15) NOT NULL,
  `phoneNumber` int(10) NOT NULL,
  `password` varchar(300) NOT NULL,
  `email` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `firstName`, `lastName`, `phoneNumber`, `password`, `email`) VALUES
(1, 'programmer', 'linux', 759105762, 'arusha', '0'),
(2, 'Muhsin', 'Mbaga', 758068303, '$2y$10$1Fcfay6RdILPD7vLOELNJ.IxkN.nNSoXRc2Cw/nr0uQu3Gxl0cxW6', 'muhsinmbaga@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `categoryId` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` varchar(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `categoryId`, `name`, `price`, `image`, `description`) VALUES
(1, 1, 'AXE AFRICA DEODORANT 150ML', '4167', 'AXE.jpg', ''),
(2, 1, 'AXE TWIAT DEODORANT SPRAY 150ML', '1042', 'AXE TWIAT DEODORANT SPRAY 150ML.jpg', ''),
(3, 1, 'AXE MUSK DEODORANT 150ML', '4900', 'AXE MUSK DEODORANT 150ML.jpg', ''),
(4, 1, 'FA CO ENERGY ZONE 200ML', '3750', 'FA CO ENERGY ZONE 200ML.jpg', ''),
(5, 1, 'SANITA SANITIZER 60ML', '4667', ' 	SANITA SANITIZER 60ML.jpg', ''),
(6, 1, 'RASASI SPRAY EMOTION MEN', '4000', ' 	RASASI SPRAY EMOTION MEN.jpg', ''),
(7, 1, 'HIT GREEN TEA 750ML', '6000', 'HIT GREEN TEA 750ML.jpg', ''),
(8, 1, 'HIT POME & YELLOW 750ML', '5833', 'HIT POME & YELLOW 750ML.jpg', ''),
(9, 1, 'FA RO CARIBBEAN LEMON 50ML', '2083', 'FA RO CARIBBEAN LEMON 50ML.jpg', ''),
(10, 1, 'BLUE FOR MEN SPREY 200ML', '5000', 'BLUE FOR MEN SPREY 200ML.jpg', ''),
(11, 1, 'ROYALE MEN 200ML', '5000', 'ROYALE MEN 200ML.jpg', ''),
(12, 1, 'RELATION MEN 200ML', '5000', 'RELATION MEN 200ML.jpg', ''),
(13, 1, 'CHASTITY ME 200ML', '5000', 'CHASTITY ME 200ML.jpg', ''),
(14, 1, 'FEELINGS WOMEN 200ML', '4000', 'FEELINGS WOMEN 200ML.jpg', ''),
(15, 1, 'ESTIARA JOSHE BLUE 200ML', '4000', 'ESTIARA JOSHE BLUE 200ML.jpg', ''),
(16, 1, 'ESTIARA LE BLACK 200ML', '4500', 'ESTIARA LE BLACK 200ML.jpg', ''),
(17, 1, 'ESTIARA DARK NIGHT 200ML', '4500', 'ESTIARA DARK NIGHT 200ML.jpg', ''),
(18, 1, 'ESTIARA ADORE 200ML', '4000', 'ESTIARA ADORE 200ML.jpg', ''),
(19, 1, 'LOUIS ILLUSION 200ML', '4167', 'LOUIS ILLUSION 200ML.jpg', ''),
(20, 1, 'LOUIS AMEEN 200ML', '4167', 'LOUIS AMEEN 200ML.jpg', ''),
(21, 1, 'FA SG NUTRISKIN 250ML', '3750', 'FA SG NUTRISKIN 250ML.jpg', ''),
(22, 1, 'FA BS PINK PASSION 150ML', '3500', 'FA BS PINK PASSION 150ML.jpg', ''),
(23, 1, 'FA BS GLAM MOMENT 150ML', '3500', 'FA BS GLAM MOMENT 150ML.jpg', ''),
(24, 1, 'FA BS NATURAL N FRESH 150ML', '3500', 'FA BS NATURAL N FRESH 150ML.png', ''),
(25, 1, 'FA ROLLON 50ML', '2083', 'FA ROLLON 50ML.jpg', ''),
(26, 1, 'FA BS SPORT ENERG FRESH 150ML', '3,500', 'FA BS SPORT ENERG FRESH 150ML.jpg', ''),
(27, 1, 'FA BS PERFECT WAVE 150ML', '3,500', 'FA BS PERFECT WAVE 150ML.jpg', ''),
(28, 1, 'FA BS SPORT DOUBLE POWER 150ML', '3,500', 'FA BS SPORT DOUBLE POWER 150ML.jpeg', ''),
(29, 1, 'FA BS EXOTIC  GARDEN 150ML', '3,750', 'FA BS EXOTIC  GARDEN 150ML.jpg', ''),
(30, 1, 'TWINKLE BS  RASASI 200ML', '3,833', 'TWINKLE BS  RASASI 200ML.jpeg', ''),
(31, 1, 'GILLETTE COOL WAVE OR POWER RUSH 85G', '7,000', 'GILLETTE COOL WAVE OR POWER RUSH 85G.jpg', ''),
(32, 1, 'SNOW SPRAY', '3,500', 'SNOW SPRAY.jpg', ''),
(33, 1, 'VANITY PERFUM 100ML', '18,000', 'VANITY PERFUM 100ML.jpg', ''),
(34, 1, 'BLUE FOR MEN PERFUM 100ML', '20,000', 'BLUE FOR MEN PERFUM 100ML.jpg', ''),
(35, 1, 'BLASKBERRY PERFUMES 20ML', '2,000', 'BLASKBERRY PERFUMES 20ML.jpeg', ''),
(36, 1, 'NIVEA RO MIN DRY COMF 25ML', '583', 'NIVEA RO MIN DRY COMF 25ML.png', ''),
(37, 1, 'NIVEA RO MIN  FRESH ACT 25ML', '583', 'NIVEA RO MIN  FRESH ACT 25ML.png', ''),
(38, 1, 'AXE TWISR BS 150ML', '4,900', 'AXE TWISR BS 150ML.jpg', ''),
(39, 1, 'AXE EXITE BS 150ML', '4,900', 'AXE EXITE BS 150ML.jpeg', ''),
(40, 1, 'NIVEA BS STRESS PROTECT BLACK 150ML', '3,750', 'NIVEA BS STRESS PROTECT BLACK 150ML.png', ''),
(41, 1, 'NIVEA RO DRY COMFORT 50ML', '3,500', 'NIVEA RO DRY COMFORT 50ML.png', ''),
(42, 1, 'AXE APOLLO DEODODRANT BODYSPRAY 150ML', '4,167', 'AXE APOLLO DEODODRANT BODYSPRAY 150ML.jpg', ''),
(43, 1, 'AXE DARK TEMTATION DEODORANT SPRAY 150ML', '3,501', 'AXE DARK TEMTATION DEODORANT SPRAY 150ML.jpg', ''),
(44, 1, 'REXONA COTTON 50ML', '3,583', 'REXONA COTTON 50ML.jpg', ''),
(45, 1, 'CATHERINE BODY SPRAY 200ML', '4,000', 'CATHERINE BODY SPRAY 200ML.jpg', ''),
(46, 1, 'HOPE AND INSTINCTS SPRAY 200ML', '5,000', 'HOPE AND INSTINCTS SPRAY 200ML.jpg', ''),
(47, 1, 'EPIC ADVENTURE PERFUME 100ML', '28,000', 'EPIC ADVENTURE PERFUME 100ML.jpeg', ''),
(48, 1, 'EMOTION POUR HOMME PERFUM 100ML', '23,000', 'EMOTION POUR HOMME PERFUM 100ML.jpg', ''),
(49, 1, 'ROYALE BLUE PERFUME 75ML', '18,000', 'ROYALE BLUE PERFUME 75ML.jpg', ''),
(50, 1, 'SHALIS PERFUME 60ML', '19,000', 'SHALIS PERFUME 60ML.png', ''),
(51, 1, 'BELLAGIO HOMME DEO SPRAY 175ML', '6,250', 'BELLAGIO HOMME DEO SPRAY 175ML.jpg', ''),
(52, 1, 'AIR TIME AIRFRESHENER OCEAN 300ML', '1,667', 'AIR TIME AIRFRESHENER OCEAN 300ML.jpg', ''),
(53, 1, 'AIR TIME AIR FRESHENER FLORAL BOQUET 300ML', '1,667', 'AIR TIME AIR FRESHENER FLORAL BOQUET 300ML.jpg', ''),
(54, 1, 'AIR TIME FRESHENER MOUNTAIN BREEZE 300ML', '1,667', ' 	AIR TIME FRESHENER MOUNTAIN BREEZE 300ML.jpg', ''),
(55, 1, 'NIVEA ENERGY FRESH ANTI PERSPIRANT 150ML', '3,750', 'NIVEA ENERGY FRESH ANTI PERSPIRANT 150ML.jpg', ''),
(56, 1, 'NIVEA SP FRESH POWER 150ML', '3,750', 'NIVEA SP FRESH POWER 150ML.jpg', ''),
(57, 1, 'NIVEA SP COOL KICK 150ML', '3,750', 'NIVEA SP COOL KICK 150ML.jpg', ''),
(58, 1, 'GALAXY S III 200ML', '4,500', 'GALAXY S III 200ML.jpg', ''),
(59, 1, 'BRUT IDENTITY SPRAY 200ML', '4,500', 'BRUT IDENTITY SPRAY 200ML.jpg', ''),
(60, 1, 'BRUT INSTINCT SPRAY 200ML', '4,500', 'BRUT INSTINCT SPRAY 200ML.jpg', ''),
(61, 1, 'BRUT ORIGINAL SPRAY 200ML', '4,500', 'BRUT ORIGINAL SPRAY 200ML.jpg', ''),
(62, 1, 'REXONA INVISIBLE DEO STICK 40ML', '4,000', ' 	REXONA INVISIBLE DEO STICK 40ML.jpg', ''),
(63, 1, 'REXONA XTRACOOL 50ML', '4,000', 'REXONA XTRACOOL 50ML.jpg', ''),
(64, 1, 'REXONA DRY STICK 50ML', '6,000', 'REXONA DRY STICK 50ML.jpg', ''),
(65, 1, 'SPEED STICK MUSK 92G', '8,000', 'SPEED STICK MUSK 92G.jpg', ''),
(66, 1, 'SPEED STICK REGULAR 92G', '0', 'SPEED STICK REGULAR 92G.jpg', ''),
(67, 1, 'BRUT FOR MEN PERFYUM 100ML', '12,000', 'BRUT FOR MEN PERFYUM 100ML.jpg', ''),
(68, 1, 'OLD SPICES PURE SPORT & FRESH 63G', '7,000', ' 	OLD SPICES PURE SPORT & FRESH 63G.jpg', ''),
(69, 1, 'CHRIS ADAMS PARFUM 100ML', '14,000', 'CHRIS ADAMS PARFUM 100ML.png', ''),
(70, 1, 'SHALIS WOMAN & MAN 100ML', '25,000', 'SHALIS WOMAN & MAN 100ML.jpg', ''),
(71, 1, 'AMBITION PERFUME 70ML', '40,000', 'AMBITION PERFUME 70ML.jpg', ''),
(72, 1, 'ORIFLAME ACTIVELLE DEO 50ML', '5,400', 'ORIFLAME ACTIVELLE DEO 50ML.jpg', ''),
(73, 1, 'ORIFLAME GIORDANI MAN PERFUME 75ML', '60,800', 'ORIFLAME GIORDANI MAN PERFUME 75ML.jpeg', ''),
(74, 1, 'ORIFLAME S8 PERFUME 50ML', '47,700', 'ORIFLAME S8 PERFUME 50ML.jpg', ''),
(75, 1, 'ORIFLAME GIORDANI MAN NOTTE 75ML', '60,800', 'ORIFLAME GIORDANI MAN NOTTE 75ML.jpg', ''),
(76, 1, 'ORIFLAME SIGNATURE PERFUME 75ML', '56,900', 'ORIFLAME SIGNATURE PERFUME 75ML.jpg', ''),
(77, 1, 'ORIFLAME RIVAL PERFUME 75ML', '36,200', 'ORIFLAME RIVAL PERFUME 75ML.jpg', ''),
(78, 1, 'ORIFLAME DARK WOOD PERFUME 75ML', '36,200', 'ORIFLAME DARK WOOD PERFUME 75ML.jpg', ''),
(79, 1, 'NIVEA DRY COMFORT STICK 40ML', '5,833', 'NIVEA DRY COMFORT STICK 40ML.jpg', ''),
(80, 1, 'ALEDA SPRAYS', '4,000', 'ALEDA SPRAYS.png', ''),
(81, 1, 'LOUIS CARDIN IMPRESSION & CREDIBLE 200ML', '4,167', 'LOUIS CARDIN IMPRESSION & CREDIBLE 200ML.jpg', ''),
(82, 1, 'LOUIS CARDIN EMPOWER & CREDIBLE NOIR 200ML', '4,167', 'LOUIS CARDIN EMPOWER & CREDIBLE NOIR 200ML.jpg', '');

-- --------------------------------------------------------

--
-- Table structure for table `operators`
--

CREATE TABLE `operators` (
  `id` int(11) NOT NULL,
  `firstName` varchar(15) NOT NULL,
  `middleName` varchar(15) NOT NULL,
  `lastName` varchar(15) NOT NULL,
  `nationalId` varchar(16) NOT NULL,
  `physicalAddress` varchar(60) NOT NULL,
  `refereePhysicalAddress` varchar(60) NOT NULL,
  `refereePhoneNumber` int(10) NOT NULL,
  `email` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `operators`
--

INSERT INTO `operators` (`id`, `firstName`, `middleName`, `lastName`, `nationalId`, `physicalAddress`, `refereePhysicalAddress`, `refereePhoneNumber`, `email`) VALUES
(8, 'programmer', 'linux', 'server', '8546546845', 'arusha', 'ARUSHA', 759105762, 'programmer@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `orderReference` varchar(60) NOT NULL,
  `dateTime` datetime NOT NULL,
  `status` varchar(15) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `customerdeliverylocation_id` int(11) NOT NULL,
  `bodaboda_id` int(11) NOT NULL,
  `collector_id` int(11) NOT NULL,
  `pickup_latitude` varchar(15) DEFAULT NULL,
  `pickup_longitude` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `orderReference`, `dateTime`, `status`, `customer_id`, `customerdeliverylocation_id`, `bodaboda_id`, `collector_id`, `pickup_latitude`, `pickup_longitude`) VALUES
(2, '84569', '0000-00-00 00:00:00', 'stage 5', 1, 1, 1, 1, NULL, NULL),
(3, '3553', '2020-04-03 04:14:08', 'stage 5', 1, 2, 2, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `price` double(10,2) DEFAULT 0.00,
  `quantity` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `item_id`, `order_id`, `price`, `quantity`, `status`) VALUES
(1, 80, 3, 0.00, 4, 0),
(2, 3, 2, 0.00, 2, 0),
(17, 22, 2, 0.00, 4, 0),
(18, 17, 3, 0.00, 4, 0),
(19, 28, 3, 0.00, 4, 0),
(20, 11, 2, 0.00, 4, 0),
(21, 4, 2, 0.00, 4, 0),
(22, 32, 2, 0.00, 4, 0),
(23, 31, 2, 0.00, 4, 0),
(24, 67, 2, 0.00, 4, 0),
(25, 12, 2, 0.00, 4, 0),
(26, 5, 3, 0.00, 4, 0),
(27, 42, 3, 0.00, 4, 0),
(28, 23, 3, 0.00, 4, 0),
(29, 56, 3, 0.00, 4, 0),
(30, 3, 3, 0.00, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(11) NOT NULL,
  `transactionRefference` varchar(60) NOT NULL,
  `amount` varchar(11) NOT NULL,
  `dateTime` datetime NOT NULL,
  `customers_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `transactionRefference`, `amount`, `dateTime`, `customers_id`) VALUES
(1, '54356', '4000', '2020-04-01 03:29:18', 1);

-- --------------------------------------------------------

--
-- Table structure for table `shops`
--

CREATE TABLE `shops` (
  `id` int(11) NOT NULL,
  `name` int(60) NOT NULL,
  `description` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `stores`
--

CREATE TABLE `stores` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `deleteStatus` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` int(60) NOT NULL,
  `userId` int(11) NOT NULL,
  `password` varchar(300) NOT NULL,
  `email` varchar(60) NOT NULL,
  `role` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `userId`, `password`, `email`, `role`) VALUES
(1, 759105762, 1, '$2y$10$uM8.jqLSLXABMeInrRB0.ORKoBqBILlv0ulzQ5J6JtPppO76GFFh2', 'tanzaniapamoja4ac@gmail.com', 'operator');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bodabodas`
--
ALTER TABLE `bodabodas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `collectors`
--
ALTER TABLE `collectors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `companyprofiles`
--
ALTER TABLE `companyprofiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customerdeliverylocations`
--
ALTER TABLE `customerdeliverylocations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `operators`
--
ALTER TABLE `operators`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`,`customer_id`),
  ADD KEY `fk_orders_customers1_idx` (`customer_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_id` (`item_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`,`customers_id`),
  ADD KEY `fk_payments_customers1_idx` (`customers_id`);

--
-- Indexes for table `shops`
--
ALTER TABLE `shops`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stores`
--
ALTER TABLE `stores`
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
-- AUTO_INCREMENT for table `bodabodas`
--
ALTER TABLE `bodabodas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `collectors`
--
ALTER TABLE `collectors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `companyprofiles`
--
ALTER TABLE `companyprofiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customerdeliverylocations`
--
ALTER TABLE `customerdeliverylocations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `operators`
--
ALTER TABLE `operators`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shops`
--
ALTER TABLE `shops`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stores`
--
ALTER TABLE `stores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`),
  ADD CONSTRAINT `order_items_ibfk_2` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `fk_payments_customers1` FOREIGN KEY (`customers_id`) REFERENCES `customers` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
