-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 20, 2023 at 05:44 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `food-order`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id` int(10) UNSIGNED NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `full_name`, `username`, `password`) VALUES
(10, 'Kamal Kumara', 'kamalkamal', 'd41d8cd98f00b204e9800998ecf8427e'),
(11, 'Sadaru Eshan', 'sandaru', '899d111a9ac71ae1c9f25f8374428e58'),
(12, 'Smith arhan', 'smith', 'e10adc3949ba59abbe56e057f20f883e'),
(13, 'Indika Perera', 'Indika', '900150983cd24fb0d6963f7d28e17f72'),
(14, 'Deshani Pubudu', 'Deshani', '202cb962ac59075b964b07152d234b70');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `featured` varchar(10) NOT NULL,
  `active` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `title`, `image_name`, `featured`, `active`) VALUES
(9, 'BURGER', 'Food_Category_944.jpg', 'Yes', 'Yes'),
(10, 'PIZZA', 'Food_Category_293.jpg', 'Yes', 'Yes'),
(11, 'PASTA', 'Food_Category_689.jpg', 'Yes', 'Yes'),
(12, 'CAKE', 'Food_Category_285.jpg', 'Yes', 'Yes'),
(13, 'COOKIES', 'Food_Category_59.jpg', 'Yes', 'Yes'),
(14, 'BEVERAGES', 'Food_Category_861.jpg', 'Yes', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_food`
--

CREATE TABLE `tbl_food` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(150) NOT NULL,
  `description` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `featured` varchar(10) NOT NULL,
  `active` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_food`
--

INSERT INTO `tbl_food` (`id`, `title`, `description`, `price`, `image_name`, `category_id`, `featured`, `active`) VALUES
(3, 'Hamburger', 'Create with a squashed beef meatball between the slices of bread.', '1000.00', 'Food-Name-7744.jpeg', 9, 'Yes', 'Yes'),
(4, 'Cheese Burger', 'Cheese,Geen stuff and pickled stuff,Ground beef,Tomato chutney,Burger source', '1800.00', 'Food-Name-8248.jpg', 9, 'yes', 'yes'),
(5, 'Veggie Bueger', 'Frozen peas and sweetcorn mix, sweet potatoes,blacl beans and red onion', '500.00', 'Food-Name-5724.jpg', 9, 'yes', 'yes'),
(6, 'Chicken Burger', 'Fresh pineapple, BBQ chicken, two eggs and cheese, red chili souce and vegetables', '1500.00', 'Food-Name-8431.jpeg', 9, 'Yes', 'Yes'),
(7, 'BBQ Chicken Pizza', 'Barbecue source , chicken breasts,mozzeralla cheeses, red onion', '1200.00', 'Food-Name-4997.jpg', 10, 'Yes', 'Yes'),
(8, 'Tandoori Chicken Pizza', 'Tandoori chicken,red and green belpeper, mango chutney and mozerella cheese', '1100.00', 'Food-Name-279.jpeg', 10, 'yes', 'yes'),
(9, 'Sri Lankan Spicy Veg', 'Red paprika, onions, bell peppers and a variety of Sri Lankan spices ', '1000.00', 'Food-Name-5737.jpeg', 10, 'Yes', 'Yes'),
(10, 'Sausage Pizza', ' chicken sausage chunks and  onion, bell peppers, mushrooms and olives', '1200.00', 'Food-Name-86.jpeg', 10, 'Yes', 'Yes'),
(11, 'Red Source Pasta', 'chicke, red source, cheese and the chopped garlic and onion', '1000.00', 'Food-Name-6821.jpeg', 11, 'yes', 'yes'),
(12, 'White Source Pasta', 'cheese, eggs, and vegetables and the olive oil, chopped vegetables', '1050.00', 'Food-Name-3516.jpeg', 11, 'yes', 'yes'),
(13, 'Garlic Chili Oil Noodles', 'Noodles include tomato souce,vegetables,chicken and more garlic', '900.00', 'Food-Name-7012.jpeg', 11, 'yes', 'yes'),
(14, 'Spaghetti', 'cheese,soursage ,chicken,egg and mushrooms + garlic,vegetables,onion and red and white source', '1500.00', 'Food-Name-6641.jpeg', 11, 'yes', 'yes'),
(15, 'Gateau Cake', '1kg - minimum 1500 rupees.You can customize this cake for your special events.Please your order at least 3 days  in advance.Price varies according to order.', '3000.00', 'Food-Name-421.jpeg', 12, 'Yes', 'Yes'),
(16, 'Bento cake', 'Bento cake size is about two-by-four inch and weights about 300-350grams.Bento cake or lunchbox cakes are perfect for individual serving.', '1250.00', 'Food-Name-3188.jpeg', 12, 'Yes', 'Yes'),
(17, 'Cup Cake', 'Chocolate and Vanila flavors.order more than 100 cupcakes.that time one is 40 rupees.', '50.00', 'Food-Name-919.jpg', 12, 'Yes', 'Yes'),
(18, 'Cake Jars', 'Chocolate, Vanila and Strawberry Flavours.', '250.00', 'Food-Name-5520.jpeg', 12, 'yes', 'yes'),
(19, 'Chocolate Chips Cookies', 'a sweet baked treat that is recognized by its butter flavor and the inclusion of chocolate chips. Some variations can include nuts, oatmeal or raisins as well.', '100.00', 'Food-Name-9016.jpeg', 13, 'yes', 'yes'),
(20, 'Coconut Cookies', 'It usually contains flour, sugar, egg, and some type of oil, fat, or butter. It may include other ingredients such as raisins, oats, chocolate chips, nuts, etc.', '100.00', 'Food-Name-1613.jpeg', 13, 'Yes', 'Yes'),
(21, 'Whoopi pies', 'These sandwich-style cookies are made with two soft, pillowy cookies and a marshmallow filling', '350.00', 'Food-Name-3146.jpeg', 13, 'yes', 'yes'),
(22, 'ShortBread Cookies', 'They differ from butter cookies in that they have lower quantities of flour and sugar.', '150.00', 'Food-Name-9352.jpg', 13, 'yes', 'yes'),
(23, 'Faluda Milkshake', '', '800.00', 'Food-Name-5523.jpeg', 14, 'yes', 'yes'),
(24, 'Chocolate Milkshake', '', '800.00', 'Food-Name-9580.jpeg', 14, 'yes', 'yes'),
(25, 'Vanila Milkshake', '', '500.00', 'Food-Name-9339.jpeg', 14, 'yes', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(10) UNSIGNED NOT NULL,
  `food` varchar(150) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `qty` varchar(50) NOT NULL,
  `total` int(11) NOT NULL,
  `order_date` datetime NOT NULL,
  `status` varchar(50) NOT NULL,
  `customer_name` varchar(150) NOT NULL,
  `customer_contact` varchar(20) NOT NULL,
  `customer_email` varchar(150) NOT NULL,
  `customer_address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `food`, `price`, `qty`, `total`, `order_date`, `status`, `customer_name`, `customer_contact`, `customer_email`, `customer_address`) VALUES
(1, 'Hamburger', '1000.00', '1', 1000, '2023-10-01 09:28:17', 'Cancelled', 'Samn kumara', '0787458985', 'de@deshani.com', 'agaliya,baddegama'),
(2, 'Cup Cake', '50.00', '15', 750, '2023-10-02 11:49:32', 'Delivered', 'Nelum Perera', '0787458987', 'nelum@kumari.com', 'No 62,Baddegama south,Baddegama.'),
(3, 'Tandoori Chicken Pizza', '1100.00', '1', 1100, '2023-10-02 11:53:33', 'Delivered', 'Sameera Weerawarna', '0787458785', 'samee@phan.com', '152/1,Wakwella,Galle'),
(4, 'Bento cake', '1250.00', '3', 3750, '2023-10-08 05:34:57', 'Ordered', 'Asha silva', '0754848521', 'hi@ffjkfkle.com', 'No.458,Deniyaya,Matara');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_food`
--
ALTER TABLE `tbl_food`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_food`
--
ALTER TABLE `tbl_food`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
