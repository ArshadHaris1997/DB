-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 20, 2025 at 06:41 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `restaurant_chain_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `name`, `description`) VALUES
(1, 'Pizza', 'Various types of pizzas'),
(2, 'Burgers', 'Delicious grilled burgers'),
(3, 'Salads', 'Fresh and healthy salads'),
(4, 'Pasta', 'Classic Italian pasta dishes'),
(5, 'Appetizers', 'Starters to begin your meal'),
(6, 'Desserts', 'Sweet treats to end your meal'),
(7, 'Drinks', 'Cold beverages'),
(8, 'Coffee', 'Hot coffee drinks'),
(9, 'Entrees', 'Main course dishes'),
(10, 'Sides', 'Accompaniments to your meal'),
(11, 'Seafood', 'Fresh seafood dishes'),
(12, 'Sandwiches', 'Delicious handheld meals'),
(13, 'Wraps', 'Tasty wraps with various fillings'),
(14, 'Soups', 'Warm and comforting soups'),
(15, 'Vegetarian', 'Meat-free meal options'),
(16, 'Vegan', 'Plant-based meal choices'),
(17, 'Grill', 'Char-grilled specialties'),
(18, 'Breakfast', 'Morning meal options'),
(19, 'Brunch', 'Late morning meals'),
(20, 'Kids Menu', 'Meals designed for children'),
(21, 'Specials', 'Limited-time or seasonal offerings'),
(22, 'Platters', 'Shared meal options for groups'),
(23, 'Smoothies', 'Blended fruit and veggie drinks'),
(24, 'Cocktails', 'Mixed alcoholic beverages'),
(25, 'Wines', 'A variety of wines'),
(26, 'Beers', 'Craft and classic beers'),
(27, 'Spirits', 'Hard liquors and mixers'),
(28, 'Gluten-Free', 'Meals free from gluten'),
(29, 'Keto', 'Low-carb, high-fat meal options'),
(30, 'Customizable', 'Build-your-own meal options'),
(31, 'Asian Cuisine', 'Flavors from across Asia'),
(32, 'Mexican Cuisine', 'Authentic Mexican dishes'),
(33, 'Indian Cuisine', 'Spicy and flavorful Indian meals'),
(34, 'Mediterranean', 'Healthy Mediterranean-inspired dishes'),
(35, 'Middle Eastern', 'Traditional Middle Eastern meals'),
(36, 'BBQ', 'Barbecue favorites and smoked meats'),
(37, 'Street Food', 'Popular street-style snacks'),
(38, 'Healthy Bowls', 'Nutritious meal bowls'),
(39, 'Rice Dishes', 'Rice-based specialties'),
(40, 'Noodles', 'Noodle dishes from around the world'),
(41, 'Tacos', 'Soft and crispy taco varieties'),
(42, 'Burritos', 'Stuffed and rolled burritos'),
(43, 'Dim Sum', 'Steamed and fried dumplings'),
(44, 'Sushi', 'Fresh sushi and sashimi'),
(45, 'Charcuterie', 'Meat and cheese platters'),
(46, 'Tapas', 'Small Spanish-inspired plates'),
(47, 'Ice Cream', 'Frozen creamy desserts'),
(48, 'Milkshakes', 'Thick and creamy shakes'),
(49, 'Energy Drinks', 'Boost your energy'),
(50, 'Mocktails', 'Non-alcoholic cocktail alternatives'),
(51, 'Herbal Teas', 'Caffeine-free tea options'),
(52, 'Seasonal Specials', 'Dishes inspired by the season'),
(53, 'Fusion', 'Creative combinations of cuisines'),
(54, 'Comfort Food', 'Hearty and familiar meals'),
(55, 'Chef’s Picks', 'Signature dishes recommended by the chef'),
(56, 'Family Meals', 'Large portions for sharing'),
(57, 'Party Trays', 'Perfect for celebrations'),
(58, 'Low-Calorie', 'Light and healthy meal options'),
(59, 'Paleo', 'Meals based on the paleo diet'),
(60, 'Organic', 'Made with organic ingredients');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone_number` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `name`, `email`, `phone_number`) VALUES
(1, 'John Doe', 'john.doe@example.com', '1234567890'),
(2, 'Jane Smith', 'jane.smith@example.com', '9876543210'),
(3, 'Alice Brown', 'alice.brown@example.com', '5551234567'),
(4, 'Bob Johnson', 'bob.johnson@example.com', '5559876543'),
(5, 'Charlie Davis', 'charlie.davis@example.com', '4445556666'),
(6, 'Diana Evans', 'diana.evans@example.com', '3334445555'),
(7, 'Ethan Foster', 'ethan.foster@example.com', '2223334444'),
(8, 'Fiona Green', 'fiona.green@example.com', '1112223333'),
(9, 'George Harris', 'george.harris@example.com', '9998887777'),
(10, 'Hannah Clark', 'hannah.clark@example.com', '8889990000'),
(11, 'Ian Martin', 'ian.martin@example.com', '7776665555'),
(12, 'Jessica Lewis', 'jessica.lewis@example.com', '6667778888'),
(13, 'Kyle Miller', 'kyle.miller@example.com', '5554443333'),
(14, 'Laura Nelson', 'laura.nelson@example.com', '4443332222'),
(15, 'Michael Owens', 'michael.owens@example.com', '3332221111'),
(16, 'Nina Perez', 'nina.perez@example.com', '2221110000'),
(17, 'Oliver Quinn', 'oliver.quinn@example.com', '1110009999'),
(18, 'Paula Roberts', 'paula.roberts@example.com', '9998886666'),
(19, 'Quincy Scott', 'quincy.scott@example.com', '8887775555'),
(20, 'Rachel Taylor', 'rachel.taylor@example.com', '7776664444'),
(21, 'Samuel Turner', 'samuel.turner@example.com', '6665554444'),
(22, 'Tina Underwood', 'tina.underwood@example.com', '5554443332'),
(23, 'Victor Vega', 'victor.vega@example.com', '4443332221'),
(24, 'Wendy White', 'wendy.white@example.com', '3332221100'),
(25, 'Xander Young', 'xander.young@example.com', '2221110099'),
(26, 'Yasmine Zane', 'yasmine.zane@example.com', '1110008888'),
(27, 'Zachary Adams', 'zachary.adams@example.com', '9997776666'),
(28, 'Amber Bennett', 'amber.bennett@example.com', '8886665555'),
(29, 'Brandon Carter', 'brandon.carter@example.com', '7775554444'),
(30, 'Catherine Diaz', 'catherine.diaz@example.com', '6664443333'),
(31, 'Derek Ellis', 'derek.ellis@example.com', '5553332222'),
(32, 'Emily Foster', 'emily.foster@example.com', '4442221111'),
(33, 'Franklin Grant', 'franklin.grant@example.com', '3331110000'),
(34, 'Grace Hall', 'grace.hall@example.com', '2220009999'),
(35, 'Henry Ingram', 'henry.ingram@example.com', '1119998888'),
(36, 'Isabel Jenkins', 'isabel.jenkins@example.com', '9998887776'),
(37, 'Jack Kelly', 'jack.kelly@example.com', '8887776665'),
(38, 'Karen Lopez', 'karen.lopez@example.com', '7776665554'),
(39, 'Leonard Moore', 'leonard.moore@example.com', '6665554443'),
(40, 'Monica Neal', 'monica.neal@example.com', '5554443331'),
(41, 'Oscar Parker', 'oscar.parker@example.com', '4443332220'),
(42, 'Patricia Quinn', 'patricia.quinn@example.com', '3332221101'),
(43, 'Raymond Ross', 'raymond.ross@example.com', '2221110098'),
(44, 'Sophie Sanders', 'sophie.sanders@example.com', '1110008887'),
(45, 'Thomas Stewart', 'thomas.stewart@example.com', '9997776664'),
(46, 'Uma Thompson', 'uma.thompson@example.com', '8886665553'),
(47, 'Victor Underhill', 'victor.underhill@example.com', '7775554442'),
(48, 'Willa Vaughn', 'willa.vaughn@example.com', '6664443330'),
(49, 'Xavier Walker', 'xavier.walker@example.com', '5553332229'),
(50, 'Yara Young', 'yara.young@example.com', '4442221118'),
(51, 'Zoe Zimmerman', 'zoe.zimmerman@example.com', '3331110007'),
(52, 'Andrew Baker', 'andrew.baker@example.com', '2220009996'),
(53, 'Bella Carter', 'bella.carter@example.com', '1119998885'),
(54, 'Caleb Dawson', 'caleb.dawson@example.com', '9998887774'),
(55, 'Diana Edwards', 'diana.edwards@example.com', '8887776663'),
(56, 'Elliot Freeman', 'elliot.freeman@example.com', '7776665552'),
(57, 'Felicity Graham', 'felicity.graham@example.com', '6665554441'),
(58, 'George Hamilton', 'george.hamilton@example.com', '5554443338'),
(59, 'Holly Irwin', 'holly.irwin@example.com', '4443332227'),
(60, 'Ian Johnson', 'ian.johnson@example.com', '3332221106');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `employee_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `contact_info` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`employee_id`, `name`, `role`, `contact_info`) VALUES
(1, 'Alice Manager', 'Manager', 'alice.manager@example.com'),
(2, 'Bob Cook', 'Cook', 'bob.cook@example.com'),
(3, 'Charlie Waiter', 'Waiter', 'charlie.waiter@example.com'),
(4, 'Diana Host', 'Host', 'diana.host@example.com'),
(5, 'Ethan Cleaner', 'Cleaner', 'ethan.cleaner@example.com'),
(6, 'Fiona Chef', 'Chef', 'fiona.chef@example.com'),
(7, 'George Bartender', 'Bartender', 'george.bartender@example.com'),
(8, 'Hannah Manager', 'Manager', 'hannah.manager@example.com'),
(9, 'Ian Waiter', 'Waiter', 'ian.waiter@example.com'),
(10, 'Jessica Cook', 'Cook', 'jessica.cook@example.com'),
(11, 'Kyle Host', 'Host', 'kyle.host@example.com'),
(12, 'Laura Cleaner', 'Cleaner', 'laura.cleaner@example.com'),
(13, 'Michael Chef', 'Chef', 'michael.chef@example.com'),
(14, 'Nina Bartender', 'Bartender', 'nina.bartender@example.com'),
(15, 'Oliver Manager', 'Manager', 'oliver.manager@example.com'),
(16, 'Paula Waiter', 'Waiter', 'paula.waiter@example.com'),
(17, 'Quincy Cook', 'Cook', 'quincy.cook@example.com'),
(18, 'Rachel Host', 'Host', 'rachel.host@example.com'),
(19, 'Steve Cleaner', 'Cleaner', 'steve.cleaner@example.com'),
(20, 'Tina Chef', 'Chef', 'tina.chef@example.com'),
(21, 'Uma Bartender', 'Bartender', 'uma.bartender@example.com'),
(22, 'Victor Manager', 'Manager', 'victor.manager@example.com'),
(23, 'Wendy Waiter', 'Waiter', 'wendy.waiter@example.com'),
(24, 'Xander Cook', 'Cook', 'xander.cook@example.com'),
(25, 'Yara Host', 'Host', 'yara.host@example.com'),
(26, 'Zane Cleaner', 'Cleaner', 'zane.cleaner@example.com'),
(27, 'Aaron Chef', 'Chef', 'aaron.chef@example.com'),
(28, 'Bella Bartender', 'Bartender', 'bella.bartender@example.com'),
(29, 'Cody Manager', 'Manager', 'cody.manager@example.com'),
(30, 'Diana Waiter', 'Waiter', 'diana.waiter@example.com'),
(31, 'Ethan Cook', 'Cook', 'ethan.cook@example.com'),
(32, 'Fiona Host', 'Host', 'fiona.host@example.com'),
(33, 'George Cleaner', 'Cleaner', 'george.cleaner@example.com'),
(34, 'Hannah Chef', 'Chef', 'hannah.chef@example.com'),
(35, 'Ian Bartender', 'Bartender', 'ian.bartender@example.com'),
(36, 'Jessica Manager', 'Manager', 'jessica.manager@example.com'),
(37, 'Kyle Waiter', 'Waiter', 'kyle.waiter@example.com'),
(38, 'Laura Cook', 'Cook', 'laura.cook@example.com'),
(39, 'Michael Host', 'Host', 'michael.host@example.com'),
(40, 'Nina Cleaner', 'Cleaner', 'nina.cleaner@example.com'),
(41, 'Oliver Chef', 'Chef', 'oliver.chef@example.com'),
(42, 'Paula Bartender', 'Bartender', 'paula.bartender@example.com'),
(43, 'Quincy Manager', 'Manager', 'quincy.manager@example.com'),
(44, 'Rachel Waiter', 'Waiter', 'rachel.waiter@example.com'),
(45, 'Steve Cook', 'Cook', 'steve.cook@example.com'),
(46, 'Tina Host', 'Host', 'tina.host@example.com'),
(47, 'Uma Cleaner', 'Cleaner', 'uma.cleaner@example.com'),
(48, 'Victor Chef', 'Chef', 'victor.chef@example.com'),
(49, 'Wendy Bartender', 'Bartender', 'wendy.bartender@example.com'),
(50, 'Xander Manager', 'Manager', 'xander.manager@example.com'),
(51, 'Yara Waiter', 'Waiter', 'yara.waiter@example.com'),
(52, 'Zane Cook', 'Cook', 'zane.cook@example.com'),
(53, 'Aaron Host', 'Host', 'aaron.host@example.com'),
(54, 'Bella Cleaner', 'Cleaner', 'bella.cleaner@example.com'),
(55, 'Cody Chef', 'Chef', 'cody.chef@example.com'),
(56, 'Diana Bartender', 'Bartender', 'diana.bartender@example.com'),
(57, 'Ethan Manager', 'Manager', 'ethan.manager@example.com'),
(58, 'Fiona Waiter', 'Waiter', 'fiona.waiter@example.com'),
(59, 'George Cook', 'Cook', 'george.cook@example.com'),
(60, 'Hannah Host', 'Host', 'hannah.host@example.com'),
(61, 'Ian Cleaner', 'Cleaner', 'ian.cleaner@example.com'),
(62, 'Jessica Chef', 'Chef', 'jessica.chef@example.com'),
(63, 'Kyle Bartender', 'Bartender', 'kyle.bartender@example.com'),
(64, 'Laura Manager', 'Manager', 'laura.manager@example.com'),
(65, 'Michael Waiter', 'Waiter', 'michael.waiter@example.com'),
(66, 'Nina Cook', 'Cook', 'nina.cook@example.com'),
(67, 'Oliver Host', 'Host', 'oliver.host@example.com'),
(68, 'Paula Cleaner', 'Cleaner', 'paula.cleaner@example.com'),
(69, 'Quincy Chef', 'Chef', 'quincy.chef@example.com'),
(70, 'Rachel Bartender', 'Bartender', 'rachel.bartender@example.com');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `feedback_id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `reservation_id` int(11) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL CHECK (`rating` between 1 and 5),
  `comments` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`feedback_id`, `customer_id`, `reservation_id`, `rating`, `comments`) VALUES
(1, 1, 1, 5, 'Excellent food and service!'),
(2, 2, 2, 4, 'Great pizza, but the wait was long.'),
(3, 3, 3, 5, 'Wonderful experience, will come again.'),
(4, 4, 4, 3, 'The food was good, but the ambiance was lacking.'),
(5, 5, 5, 4, 'Nice meal, but a bit too expensive.'),
(6, 6, 6, 5, 'Loved the salad and the service.'),
(7, 7, 7, 2, 'Food was cold and not fresh.'),
(8, 8, 8, 4, 'Good food, but noisy environment.'),
(9, 9, 9, 5, 'Amazing steak, great atmosphere!'),
(10, 10, 10, 3, 'The coffee was good, but the dessert was disappointing.'),
(11, 11, 11, 4, 'Nice experience, but they forgot my order.'),
(12, 12, 12, 5, 'Everything was perfect, highly recommend!'),
(13, 13, 13, 4, 'Food was great, but the service was slow.'),
(14, 14, 14, 5, 'Best meal I’ve had in a while!'),
(15, 15, 15, 3, 'The portion sizes were small for the price.'),
(16, 16, 16, 4, 'Great atmosphere, but the food was average.'),
(17, 17, 17, 5, 'Fantastic! Will definitely return.'),
(18, 18, 18, 2, 'The meal was not up to the standard.'),
(19, 19, 19, 5, 'Everything was amazing!'),
(20, 20, 20, 4, 'Good meal, but the dessert could have been better.'),
(21, 21, 21, 4, 'Nice ambiance, but the pizza was a bit too salty.'),
(22, 22, 22, 5, 'The service was excellent, and the food was delicious!'),
(23, 23, 23, 3, 'Good food, but the wait time was longer than expected.'),
(24, 24, 24, 4, 'Very pleasant experience, will return for sure.'),
(25, 25, 25, 5, 'The best pasta I’ve had in a long time!'),
(26, 26, 26, 2, 'Food was mediocre and the service was slow.'),
(27, 27, 27, 4, 'Great meal, but the temperature of the food could have been better.'),
(28, 28, 28, 5, 'Loved everything, will definitely recommend to friends.'),
(29, 29, 29, 3, 'The food was decent, but not worth the price.'),
(30, 30, 30, 4, 'Nice place, but could improve the dessert menu.'),
(31, 31, 31, 5, 'Fantastic experience, everything was perfect!'),
(32, 32, 32, 2, 'The food was cold and the service was unorganized.'),
(33, 33, 33, 4, 'Good food, but the portions could be bigger for the price.'),
(34, 34, 34, 5, 'Excellent service and great food, would visit again.'),
(35, 35, 35, 3, 'The food was okay, but the service was slow.'),
(36, 36, 36, 4, 'Nice meal, but the restaurant was too noisy.'),
(37, 37, 37, 5, 'Great experience, everything was perfect!'),
(38, 38, 38, 3, 'The food was good, but the restaurant was too crowded.'),
(39, 39, 39, 5, 'Amazing service and delicious food!'),
(40, 40, 40, 4, 'Good food, but the wait was a bit too long.'),
(41, 41, 41, 2, 'Disappointing meal, the food was cold and bland.'),
(42, 42, 42, 4, 'Nice atmosphere, but the food was a little too salty.'),
(43, 43, 43, 5, 'Perfect meal, the service was top-notch!'),
(44, 44, 44, 3, 'Food was good, but the staff was not very friendly.'),
(45, 45, 45, 4, 'Great food and service, but the portions could be larger.'),
(46, 46, 46, 5, 'Wonderful experience, will definitely come back.'),
(47, 47, 47, 2, 'The food was bland and the service was slow.'),
(48, 48, 48, 4, 'Good food, but the restaurant was a bit too noisy.'),
(49, 49, 49, 5, 'Everything was fantastic, highly recommend!'),
(50, 50, 50, 3, 'The food was okay, but it took too long to be served.');

-- --------------------------------------------------------

--
-- Table structure for table `ingredient_category`
--

CREATE TABLE `ingredient_category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ingredient_category`
--

INSERT INTO `ingredient_category` (`category_id`, `category_name`) VALUES
(1, 'Pizza Ingredients'),
(2, 'Burger Ingredients'),
(3, 'Salad Ingredients'),
(4, 'Pasta Ingredients'),
(5, 'Appetizer Ingredients'),
(6, 'Dessert Ingredients'),
(7, 'Drink Ingredients'),
(8, 'Coffee Ingredients'),
(9, 'Entree Ingredients'),
(10, 'Side Ingredients'),
(11, 'Seafood Ingredients'),
(12, 'Grill Ingredients'),
(13, 'Vegetarian Ingredients'),
(14, 'Spice Ingredients'),
(15, 'Sauce Ingredients'),
(16, 'Cheese Ingredients'),
(17, 'Beverage Ingredients'),
(18, 'Fruit Ingredients'),
(19, 'Bread Ingredients'),
(20, 'Herb Ingredients'),
(21, 'Meat Ingredients'),
(22, 'Poultry Ingredients'),
(23, 'Rice and Grain Ingredients'),
(24, 'Nut Ingredients'),
(25, 'Oil and Fat Ingredients'),
(26, 'Frozen Ingredients'),
(27, 'Canned Ingredients'),
(28, 'Dairy Ingredients'),
(29, 'Baking Ingredients'),
(30, 'Snack Ingredients'),
(31, 'International Ingredients'),
(32, 'Organic Ingredients'),
(33, 'Gluten-Free Ingredients'),
(34, 'Vegan Ingredients'),
(35, 'Kosher Ingredients'),
(36, 'Halal Ingredients'),
(37, 'Low-Carb Ingredients'),
(38, 'Low-Sodium Ingredients'),
(39, 'Low-Sugar Ingredients'),
(40, 'Superfood Ingredients'),
(41, 'Smoothie Ingredients'),
(42, 'Tea Ingredients'),
(43, 'Juice Ingredients'),
(44, 'Wine Ingredients'),
(45, 'Beer Ingredients'),
(46, 'Spice Mix Ingredients'),
(47, 'Pickled Ingredients'),
(48, 'Marinade Ingredients'),
(49, 'Cereal Ingredients'),
(50, 'Ice Cream Ingredients'),
(51, 'Syrup Ingredients'),
(52, 'Chili Ingredients'),
(53, 'Barbecue Ingredients'),
(54, 'Salad Dressing Ingredients'),
(55, 'Hot Sauce Ingredients'),
(56, 'Gravy Ingredients'),
(57, 'Stew Ingredients'),
(58, 'Soup Ingredients'),
(59, 'Pudding Ingredients'),
(60, 'Fruit Preserves Ingredients');

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `ingredient_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `quantity_in_stock` decimal(10,2) NOT NULL,
  `unit_of_measure` varchar(50) NOT NULL,
  `category_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`ingredient_id`, `name`, `quantity_in_stock`, `unit_of_measure`, `category_id`) VALUES
(1, 'Tomato Sauce', 100.00, 'liters', 1),
(2, 'Mozzarella Cheese', 50.00, 'kg', 1),
(3, 'Beef Patty', 200.00, 'pieces', 2),
(4, 'Lettuce', 30.00, 'kg', 3),
(5, 'Spaghetti', 80.00, 'kg', 4),
(6, 'Chicken Wings', 150.00, 'pieces', 5),
(7, 'Chocolate', 40.00, 'kg', 6),
(8, 'Coffee Beans', 25.00, 'kg', 8),
(9, 'Salmon', 20.00, 'kg', 9),
(10, 'Garlic', 10.00, 'kg', 10),
(11, 'Basil', 5.00, 'kg', 3),
(12, 'Pepperoni', 60.00, 'kg', 1),
(13, 'Feta Cheese', 15.00, 'kg', 3),
(14, 'Olives', 10.00, 'kg', 3),
(15, 'Flour', 100.00, 'kg', 4),
(16, 'Eggs', 200.00, 'pieces', 6),
(17, 'Milk', 50.00, 'liters', 8),
(18, 'Butter', 30.00, 'kg', 10),
(19, 'Sugar', 40.00, 'kg', 6),
(20, 'Salt', 20.00, 'kg', 10),
(21, 'Olive Oil', 30.00, 'liters', 7),
(22, 'Cucumber', 50.00, 'kg', 3),
(23, 'Parmesan Cheese', 25.00, 'kg', 1),
(24, 'Tomatoes', 40.00, 'kg', 3),
(25, 'Pineapple', 15.00, 'kg', 9),
(26, 'Avocado', 20.00, 'kg', 3),
(27, 'Chicken Breast', 120.00, 'pieces', 5),
(28, 'Pork Sausage', 100.00, 'pieces', 2),
(29, 'Bell Peppers', 30.00, 'kg', 3),
(30, 'Onions', 50.00, 'kg', 3),
(31, 'Lemon', 20.00, 'kg', 9),
(32, 'Spinach', 25.00, 'kg', 3),
(33, 'Zucchini', 35.00, 'kg', 3),
(34, 'Ground Beef', 150.00, 'kg', 2),
(35, 'Pasta', 60.00, 'kg', 4),
(36, 'Cheddar Cheese', 30.00, 'kg', 1),
(37, 'Tomato Paste', 40.00, 'liters', 1),
(38, 'Tuna', 20.00, 'kg', 9),
(39, 'Rice', 100.00, 'kg', 4),
(40, 'Bacon', 80.00, 'kg', 5),
(41, 'Coriander', 10.00, 'kg', 3),
(42, 'Carrots', 60.00, 'kg', 3),
(43, 'Mushrooms', 40.00, 'kg', 3),
(44, 'Sweet Corn', 25.00, 'kg', 3),
(45, 'Chili Peppers', 15.00, 'kg', 3),
(46, 'Ice Cream', 50.00, 'liters', 7),
(47, 'Coconut Milk', 30.00, 'liters', 6),
(48, 'Cream', 40.00, 'liters', 6),
(49, 'Peas', 60.00, 'kg', 3),
(50, 'Lamb Chops', 50.00, 'pieces', 2),
(51, 'Shrimp', 100.00, 'kg', 9),
(52, 'Pesto', 10.00, 'kg', 1),
(53, 'Ginger', 20.00, 'kg', 10),
(54, 'Sesame Oil', 10.00, 'liters', 7),
(55, 'Tortillas', 100.00, 'pieces', 4),
(56, 'Mayonnaise', 50.00, 'kg', 7),
(57, 'Ketchup', 80.00, 'liters', 7),
(58, 'Mustard', 40.00, 'kg', 7),
(59, 'Worcestershire Sauce', 10.00, 'liters', 7),
(60, 'Vinegar', 60.00, 'liters', 7);

-- --------------------------------------------------------

--
-- Table structure for table `menu_ingredient`
--

CREATE TABLE `menu_ingredient` (
  `menu_item_id` int(11) NOT NULL,
  `ingredient_id` int(11) NOT NULL,
  `quantity_required` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `menu_ingredient`
--

INSERT INTO `menu_ingredient` (`menu_item_id`, `ingredient_id`, `quantity_required`) VALUES
(1, 1, 0.20),
(1, 2, 0.10),
(2, 1, 0.20),
(2, 12, 0.15),
(3, 3, 1.00),
(3, 4, 0.05),
(4, 3, 1.00),
(4, 4, 0.05),
(5, 4, 0.10),
(5, 11, 0.02),
(6, 13, 0.10),
(6, 14, 0.05),
(7, 5, 0.20),
(7, 11, 0.02),
(8, 5, 0.20),
(8, 18, 0.05),
(9, 6, 4.00),
(10, 4, 0.05),
(10, 9, 0.30),
(11, 7, 0.20),
(12, 13, 0.10),
(12, 15, 0.05),
(13, 16, 0.20),
(13, 17, 0.10),
(14, 18, 0.05),
(14, 19, 0.10),
(15, 3, 0.10),
(15, 20, 0.20),
(16, 21, 0.20),
(16, 22, 0.10),
(17, 23, 0.20),
(17, 24, 0.10),
(18, 25, 0.20),
(18, 26, 0.10),
(19, 27, 0.20),
(19, 28, 0.10),
(20, 29, 0.20),
(20, 30, 0.10),
(21, 31, 0.20),
(21, 32, 0.10),
(22, 33, 0.20),
(22, 34, 0.10),
(23, 35, 0.20),
(23, 36, 0.10),
(24, 37, 0.20),
(24, 38, 0.10),
(25, 39, 0.20),
(25, 40, 0.10),
(26, 41, 0.20),
(26, 42, 0.10),
(27, 43, 0.20),
(27, 44, 0.10),
(28, 45, 0.20),
(28, 46, 0.10),
(29, 47, 0.20),
(29, 48, 0.10),
(30, 49, 0.20),
(30, 50, 0.10),
(31, 51, 0.20),
(31, 52, 0.10),
(32, 53, 0.20),
(32, 54, 0.10),
(33, 55, 0.20),
(33, 56, 0.10),
(34, 57, 0.20),
(34, 58, 0.10),
(35, 59, 0.20),
(35, 60, 0.10);

-- --------------------------------------------------------

--
-- Table structure for table `menu_item`
--

CREATE TABLE `menu_item` (
  `item_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `category_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `menu_item`
--

INSERT INTO `menu_item` (`item_id`, `name`, `description`, `price`, `category_id`) VALUES
(1, 'Margherita Pizza', 'Classic cheese pizza', 8.99, 1),
(2, 'Pepperoni Pizza', 'Pepperoni and cheese', 9.99, 1),
(3, 'Veggie Burger', 'Grilled veggie patty', 7.99, 2),
(4, 'Beef Burger', 'Classic beef burger', 8.49, 2),
(5, 'Caesar Salad', 'Fresh romaine with Caesar dressing', 6.99, 3),
(6, 'Greek Salad', 'Feta, olives, and vegetables', 7.49, 3),
(7, 'Spaghetti Bolognese', 'Pasta with meat sauce', 10.99, 4),
(8, 'Fettuccine Alfredo', 'Creamy Alfredo sauce', 11.49, 4),
(9, 'Chicken Wings', 'Spicy buffalo wings', 8.99, 5),
(10, 'Fish Tacos', 'Grilled fish with toppings', 9.49, 5),
(11, 'Chocolate Cake', 'Rich chocolate dessert', 4.99, 6),
(12, 'Cheesecake', 'Classic New York cheesecake', 5.49, 6),
(13, 'Iced Tea', 'Refreshing cold tea', 2.99, 7),
(14, 'Lemonade', 'Freshly squeezed lemons', 3.49, 7),
(15, 'Latte', 'Creamy espresso with milk', 3.99, 8),
(16, 'Cappuccino', 'Espresso with frothy milk', 4.49, 8),
(17, 'Grilled Salmon', 'Fresh salmon filet', 14.99, 9),
(18, 'Ribeye Steak', 'Juicy ribeye steak', 18.99, 9),
(19, 'Garlic Bread', 'Toasted bread with garlic butter', 3.99, 10),
(20, 'Mozzarella Sticks', 'Fried cheese sticks', 5.99, 10),
(21, 'BBQ Chicken Pizza', 'Tangy BBQ sauce and chicken', 10.49, 1),
(22, 'Hawaiian Pizza', 'Ham and pineapple topping', 9.99, 1),
(23, 'Chicken Burger', 'Grilled chicken breast burger', 8.99, 2),
(24, 'Double Cheeseburger', 'Two patties with double cheese', 10.49, 2),
(25, 'Caprese Salad', 'Tomatoes, mozzarella, and basil', 7.99, 3),
(26, 'Asian Chicken Salad', 'Mixed greens with sesame dressing', 8.49, 3),
(27, 'Lasagna', 'Layered pasta with meat and cheese', 12.49, 4),
(28, 'Penne Arrabbiata', 'Spicy tomato sauce pasta', 9.99, 4),
(29, 'Spring Rolls', 'Crispy vegetable rolls', 5.49, 5),
(30, 'Stuffed Mushrooms', 'Mushrooms filled with cheese', 6.99, 5),
(31, 'Tiramisu', 'Italian coffee-flavored dessert', 5.99, 6),
(32, 'Brownie Sundae', 'Warm brownie with ice cream', 6.49, 6),
(33, 'Sparkling Water', 'Refreshing carbonated water', 2.49, 7),
(34, 'Orange Juice', 'Freshly squeezed orange juice', 3.99, 7),
(35, 'Espresso', 'Strong and bold coffee shot', 2.49, 8),
(36, 'Macchiato', 'Espresso with a dollop of foam', 3.49, 8),
(37, 'Chicken Alfredo', 'Grilled chicken with creamy pasta', 13.49, 9),
(38, 'Lamb Chops', 'Grilled lamb chops with herbs', 19.99, 9),
(39, 'Onion Rings', 'Crispy fried onion rings', 4.99, 10),
(40, 'Coleslaw', 'Creamy cabbage salad', 3.49, 10),
(41, 'Sushi Platter', 'Assorted sushi rolls', 16.99, 14),
(42, 'Shrimp Tempura', 'Lightly battered shrimp', 12.99, 14),
(43, 'Chicken Tikka Masala', 'Spiced chicken in creamy sauce', 13.99, 33),
(44, 'Vegetable Biryani', 'Fragrant rice with vegetables', 11.49, 33),
(45, 'Beef Tacos', 'Spiced beef with toppings', 9.99, 41),
(46, 'Vegetarian Tacos', 'Grilled veggies in soft tacos', 8.99, 41),
(47, 'Mango Smoothie', 'Blended mango and yogurt', 5.49, 23),
(48, 'Berry Blast Smoothie', 'Mixed berries with yogurt', 5.99, 23),
(49, 'Margarita', 'Classic tequila cocktail', 7.99, 24),
(50, 'Mojito', 'Mint and lime cocktail', 6.99, 24),
(51, 'Four Cheese Pizza', 'A blend of four cheeses', 11.49, 1),
(52, 'Meat Lovers Pizza', 'Loaded with various meats', 12.49, 1),
(53, 'Black Bean Burger', 'Vegetarian burger with black beans', 7.99, 2),
(54, 'Bacon Cheeseburger', 'Burger with crispy bacon and cheese', 9.99, 2),
(55, 'Garden Salad', 'Mixed greens with a light vinaigrette', 6.49, 3),
(56, 'Cobb Salad', 'Egg, bacon, and avocado on mixed greens', 8.99, 3),
(57, 'Mac and Cheese', 'Creamy baked macaroni', 8.49, 4),
(58, 'Pesto Pasta', 'Pasta tossed in basil pesto sauce', 9.99, 4),
(59, 'Nachos', 'Loaded tortilla chips with toppings', 7.99, 5),
(60, 'Buffalo Cauliflower', 'Spicy battered cauliflower', 6.99, 5),
(61, 'Banana Split', 'Ice cream with bananas and toppings', 5.99, 6),
(62, 'Apple Pie', 'Warm pie with cinnamon apples', 4.99, 6),
(63, 'Hot Chocolate', 'Rich and creamy cocoa drink', 3.49, 7),
(64, 'Matcha Latte', 'Green tea latte with milk', 4.49, 8),
(65, 'Flat White', 'Smooth espresso with steamed milk', 4.49, 8),
(66, 'Teriyaki Chicken', 'Chicken in a sweet soy glaze', 13.99, 9),
(67, 'Stuffed Bell Peppers', 'Bell peppers filled with rice and veggies', 11.99, 9),
(68, 'Sweet Potato Fries', 'Crispy sweet potato fries', 4.99, 10),
(69, 'Hummus Platter', 'Hummus with pita bread and veggies', 6.99, 10),
(70, 'California Roll', 'Crab, avocado, and cucumber sushi', 7.99, 14),
(71, 'Dragon Roll', 'Eel, avocado, and cucumber sushi', 9.99, 14),
(72, 'Butter Chicken', 'Creamy tomato-based chicken curry', 14.99, 33),
(73, 'Paneer Tikka', 'Grilled Indian cheese with spices', 12.99, 33),
(74, 'Churros', 'Fried dough with cinnamon sugar', 4.99, 6),
(75, 'Fried Ice Cream', 'Ice cream with a crispy fried shell', 5.99, 6),
(76, 'Pineapple Juice', 'Freshly squeezed pineapple juice', 3.99, 7),
(77, 'Ginger Ale', 'Refreshing ginger-flavored soda', 2.99, 7),
(78, 'Espresso Martini', 'Coffee-flavored cocktail', 8.99, 24),
(79, 'Piña Colada', 'Coconut and pineapple cocktail', 7.99, 24),
(80, 'Cauliflower Pizza', 'Gluten-free pizza with cauliflower crust', 11.99, 28),
(81, 'Zucchini Noodles', 'Low-carb zucchini pasta', 10.49, 29),
(82, 'Breakfast Burrito', 'Eggs, cheese, and veggies in a wrap', 8.99, 18),
(83, 'Pancakes', 'Fluffy pancakes with syrup', 7.49, 18),
(84, 'Avocado Toast', 'Toast topped with smashed avocado', 6.99, 18),
(85, 'Bagel with Cream Cheese', 'Classic breakfast option', 4.49, 18),
(86, 'Chicken Quesadilla', 'Grilled tortilla with chicken and cheese', 9.49, 5),
(87, 'Lobster Bisque', 'Creamy lobster soup', 12.99, 14),
(88, 'Clam Chowder', 'Rich and creamy clam soup', 10.99, 14),
(89, 'Eggplant Parmesan', 'Baked eggplant with marinara and cheese', 12.49, 9),
(90, 'Falafel Wrap', 'Crispy falafel with tahini sauce', 8.99, 13),
(91, 'Gyro Wrap', 'Seasoned meat with tzatziki in a wrap', 9.49, 13),
(92, 'Chocolate Milkshake', 'Classic milkshake with chocolate syrup', 5.49, 48),
(93, 'Strawberry Milkshake', 'Fresh strawberry milkshake', 5.49, 48),
(94, 'Cheese Platter', 'Assorted cheeses with crackers', 10.99, 45),
(95, 'BBQ Ribs', 'Tender ribs with BBQ sauce', 16.99, 36),
(96, 'Bruschetta', 'Toasted bread with tomato and basil', 5.99, 46),
(97, 'Paella', 'Spanish rice with seafood and saffron', 17.99, 34),
(98, 'Chicken Satay', 'Grilled chicken skewers with peanut sauce', 9.99, 5),
(99, 'Beef Stroganoff', 'Beef in a creamy mushroom sauce', 14.99, 9),
(100, 'Vegetable Stir Fry', 'Mixed veggies in a savory sauce', 11.49, 3);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payment_id` int(11) NOT NULL,
  `transaction_id` int(11) DEFAULT NULL,
  `method` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`payment_id`, `transaction_id`, `method`, `status`) VALUES
(1, 1, 'Credit Card', 'Completed'),
(2, 2, 'Cash', 'Completed'),
(3, 3, 'Debit Card', 'Pending'),
(4, 4, 'Credit Card', 'Completed'),
(5, 5, 'Cash', 'Completed'),
(6, 6, 'Debit Card', 'Failed'),
(7, 7, 'Credit Card', 'Completed'),
(8, 8, 'Cash', 'Completed'),
(9, 9, 'Debit Card', 'Completed'),
(10, 10, 'Credit Card', 'Completed'),
(11, 11, 'Cash', 'Pending'),
(12, 12, 'Debit Card', 'Completed'),
(13, 13, 'Credit Card', 'Completed'),
(14, 14, 'Cash', 'Completed'),
(15, 15, 'Debit Card', 'Completed'),
(16, 16, 'Credit Card', 'Pending'),
(17, 17, 'Cash', 'Completed'),
(18, 18, 'Debit Card', 'Failed'),
(19, 19, 'Credit Card', 'Completed'),
(20, 20, 'Cash', 'Completed'),
(21, 21, 'Debit Card', 'Completed'),
(22, 22, 'Credit Card', 'Pending'),
(23, 23, 'Cash', 'Completed'),
(24, 24, 'Debit Card', 'Completed'),
(25, 25, 'Credit Card', 'Failed'),
(26, 26, 'Cash', 'Completed'),
(27, 27, 'Debit Card', 'Completed'),
(28, 28, 'Credit Card', 'Completed'),
(29, 29, 'Cash', 'Pending'),
(30, 30, 'Debit Card', 'Completed'),
(31, 31, 'Credit Card', 'Completed'),
(32, 32, 'Cash', 'Completed'),
(33, 33, 'Debit Card', 'Completed'),
(34, 34, 'Credit Card', 'Pending'),
(35, 35, 'Cash', 'Completed'),
(36, 36, 'Debit Card', 'Completed'),
(37, 37, 'Credit Card', 'Completed'),
(38, 38, 'Cash', 'Failed'),
(39, 39, 'Debit Card', 'Completed'),
(40, 40, 'Credit Card', 'Completed'),
(41, 41, 'Cash', 'Completed'),
(42, 42, 'Debit Card', 'Completed'),
(43, 43, 'Credit Card', 'Completed'),
(44, 44, 'Cash', 'Pending'),
(45, 45, 'Debit Card', 'Completed'),
(46, 46, 'Credit Card', 'Completed'),
(47, 47, 'Cash', 'Completed'),
(48, 48, 'Debit Card', 'Completed'),
(49, 49, 'Credit Card', 'Pending'),
(50, 50, 'Cash', 'Completed');

-- --------------------------------------------------------

--
-- Table structure for table `promotion`
--

CREATE TABLE `promotion` (
  `promotion_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `discount_percentage` decimal(5,2) DEFAULT NULL CHECK (`discount_percentage` between 0 and 100),
  `start_date` date NOT NULL,
  `end_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `promotion`
--

INSERT INTO `promotion` (`promotion_id`, `name`, `discount_percentage`, `start_date`, `end_date`) VALUES
(1, 'New Year Special', 20.00, '2025-01-01', '2025-01-15'),
(2, 'Winter Sale', 15.00, '2025-01-05', '2025-01-10'),
(3, 'Happy Hour', 25.00, '2025-01-01', '2025-01-31'),
(4, 'Family Deal', 30.00, '2025-01-10', '2025-01-20'),
(5, 'Valentine’s Day Promo', 10.00, '2025-02-01', '2025-02-14'),
(6, 'Weekend Discount', 20.00, '2025-01-01', '2025-01-03'),
(7, 'Lunch Special', 15.00, '2025-01-01', '2025-01-31'),
(8, 'Free Dessert', 100.00, '2025-01-05', '2025-01-10'),
(9, 'Early Bird', 10.00, '2025-01-01', '2025-01-07'),
(10, 'Super Saver', 5.00, '2025-01-01', '2025-01-31'),
(11, 'Winter Warmth', 15.00, '2025-01-15', '2025-01-31'),
(12, 'Buy 1 Get 1 Free', 50.00, '2025-01-10', '2025-01-20'),
(13, 'Student Discount', 20.00, '2025-01-01', '2025-01-31'),
(14, 'Holiday Special', 30.00, '2025-12-01', '2025-12-25'),
(15, 'Spring Break', 10.00, '2025-03-01', '2025-03-15'),
(16, 'Loyalty Reward', 5.00, '2025-01-01', '2025-12-31'),
(17, 'Anniversary Sale', 25.00, '2025-01-01', '2025-01-31'),
(18, 'Festive Offer', 15.00, '2025-12-01', '2025-12-25'),
(19, 'Buy 2 Get 1 Free', 33.00, '2025-01-01', '2025-01-15'),
(20, 'Chef’s Special', 10.00, '2025-01-01', '2025-01-31'),
(21, 'Weekend Bonanza', 20.00, '2025-01-06', '2025-01-08'),
(22, 'Birthday Bash', 25.00, '2025-01-01', '2025-12-31'),
(23, 'Senior Citizen Discount', 15.00, '2025-01-01', '2025-12-31'),
(24, 'Corporate Lunch Offer', 10.00, '2025-01-01', '2025-06-30'),
(25, 'Festival Feast', 30.00, '2025-11-01', '2025-11-15'),
(26, 'Mega Saver', 40.00, '2025-07-01', '2025-07-15'),
(27, 'Early Morning Deal', 15.00, '2025-01-01', '2025-01-31'),
(28, 'Midweek Madness', 20.00, '2025-01-10', '2025-01-12'),
(29, 'Seasonal Treat', 10.00, '2025-04-01', '2025-04-30'),
(30, 'Autumn Sale', 15.00, '2025-09-01', '2025-09-30'),
(31, 'Black Friday Deal', 50.00, '2025-11-25', '2025-11-30'),
(32, 'Cyber Monday Offer', 45.00, '2025-12-01', '2025-12-02'),
(33, 'Dine with Friends', 20.00, '2025-01-01', '2025-01-31'),
(34, 'Weekend Treat', 15.00, '2025-02-01', '2025-02-28'),
(35, 'Back to School Special', 25.00, '2025-08-01', '2025-08-31'),
(36, 'Graduation Celebration', 30.00, '2025-05-01', '2025-05-31'),
(37, 'Holiday Cheers', 20.00, '2025-12-15', '2025-12-31'),
(38, 'Daily Happy Hour', 10.00, '2025-01-01', '2025-12-31'),
(39, 'Exclusive Member Offer', 20.00, '2025-01-01', '2025-12-31'),
(40, 'Weekend Buffet', 25.00, '2025-03-01', '2025-03-31'),
(41, 'Evening Delight', 15.00, '2025-04-01', '2025-04-30'),
(42, 'Winter Buffet Special', 30.00, '2025-01-15', '2025-01-25'),
(43, 'Summer Coolers', 20.00, '2025-06-01', '2025-06-30'),
(44, 'Unlimited Refills', 10.00, '2025-01-01', '2025-12-31'),
(45, 'Flat Discount', 5.00, '2025-01-01', '2025-12-31'),
(46, 'Midnight Madness', 20.00, '2025-01-01', '2025-01-31'),
(47, 'Weekend Special Dinner', 25.00, '2025-02-01', '2025-02-28'),
(48, 'Kids Eat Free', 100.00, '2025-01-01', '2025-01-31'),
(49, 'Half Price Appetizers', 50.00, '2025-01-01', '2025-01-15'),
(50, 'Dessert on the House', 100.00, '2025-01-05', '2025-01-10');

-- --------------------------------------------------------

--
-- Table structure for table `promotion_menu_item`
--

CREATE TABLE `promotion_menu_item` (
  `promotion_id` int(11) NOT NULL,
  `menu_item_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `promotion_menu_item`
--

INSERT INTO `promotion_menu_item` (`promotion_id`, `menu_item_id`) VALUES
(1, 1),
(1, 2),
(2, 3),
(2, 4),
(3, 5),
(3, 6),
(4, 7),
(4, 8),
(5, 9),
(5, 10),
(6, 1),
(6, 3),
(7, 2),
(7, 4),
(8, 5),
(8, 6),
(9, 7),
(9, 8),
(10, 9),
(10, 10),
(11, 1),
(11, 2),
(12, 3),
(12, 4),
(13, 5),
(13, 6),
(14, 7),
(14, 8),
(15, 9),
(15, 10),
(16, 1),
(16, 2),
(17, 3),
(17, 4),
(18, 5),
(18, 6),
(19, 7),
(19, 8),
(20, 9),
(20, 10),
(21, 11),
(21, 12),
(22, 13),
(22, 14),
(23, 15),
(23, 16),
(24, 17),
(24, 18),
(25, 19),
(25, 20),
(26, 21),
(26, 22),
(27, 23),
(27, 24),
(28, 25),
(28, 26),
(29, 27),
(29, 28),
(30, 29),
(30, 30),
(31, 31),
(31, 32),
(32, 33),
(32, 34),
(33, 35),
(33, 36),
(34, 37),
(34, 38),
(35, 39),
(35, 40),
(36, 41),
(36, 42),
(37, 43),
(37, 44),
(38, 45),
(38, 46),
(39, 47),
(39, 48),
(40, 49),
(40, 50),
(41, 51),
(41, 52),
(42, 53),
(42, 54),
(43, 55),
(43, 56),
(44, 57),
(44, 58),
(45, 59),
(45, 60),
(46, 61),
(46, 62),
(47, 63),
(47, 64),
(48, 65),
(48, 66),
(49, 67),
(49, 68),
(50, 69),
(50, 70);

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

CREATE TABLE `reservation` (
  `reservation_id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `reservation_date` datetime NOT NULL,
  `number_of_people` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reservation`
--

INSERT INTO `reservation` (`reservation_id`, `customer_id`, `location_id`, `reservation_date`, `number_of_people`) VALUES
(1, 1, 1, '2025-01-01 18:30:00', 4),
(2, 2, 2, '2025-01-02 19:00:00', 2),
(3, 3, 1, '2025-01-03 20:00:00', 6),
(4, 4, 3, '2025-01-04 18:00:00', 3),
(5, 5, 2, '2025-01-05 19:30:00', 5),
(6, 6, 3, '2025-01-06 18:45:00', 2),
(7, 7, 1, '2025-01-07 20:15:00', 4),
(8, 8, 2, '2025-01-08 19:45:00', 3),
(9, 9, 3, '2025-01-09 18:15:00', 6),
(10, 10, 1, '2025-01-10 19:00:00', 2),
(11, 11, 2, '2025-01-11 18:30:00', 5),
(12, 12, 3, '2025-01-12 20:00:00', 4),
(13, 13, 1, '2025-01-13 19:45:00', 3),
(14, 14, 2, '2025-01-14 18:15:00', 6),
(15, 15, 3, '2025-01-15 19:30:00', 2),
(16, 16, 1, '2025-01-16 18:45:00', 4),
(17, 17, 2, '2025-01-17 20:15:00', 3),
(18, 18, 3, '2025-01-18 19:00:00', 5),
(19, 19, 1, '2025-01-19 18:30:00', 2),
(20, 20, 2, '2025-01-20 20:00:00', 6),
(21, 21, 3, '2025-01-21 19:15:00', 4),
(22, 22, 1, '2025-01-22 18:45:00', 3),
(23, 23, 2, '2025-01-23 20:30:00', 5),
(24, 24, 3, '2025-01-24 19:00:00', 2),
(25, 25, 1, '2025-01-25 18:15:00', 6),
(26, 26, 2, '2025-01-26 20:00:00', 4),
(27, 27, 3, '2025-01-27 19:30:00', 3),
(28, 28, 1, '2025-01-28 18:30:00', 5),
(29, 29, 2, '2025-01-29 20:15:00', 2),
(30, 30, 3, '2025-01-30 19:45:00', 6),
(31, 31, 1, '2025-01-31 18:00:00', 4),
(32, 32, 2, '2025-02-01 19:15:00', 3),
(33, 33, 3, '2025-02-02 20:30:00', 5),
(34, 34, 1, '2025-02-03 18:45:00', 2),
(35, 35, 2, '2025-02-04 19:00:00', 6),
(36, 36, 3, '2025-02-05 18:30:00', 4),
(37, 37, 1, '2025-02-06 20:15:00', 3),
(38, 38, 2, '2025-02-07 19:45:00', 5),
(39, 39, 3, '2025-02-08 18:15:00', 2),
(40, 40, 1, '2025-02-09 20:00:00', 6),
(41, 41, 2, '2025-02-10 19:30:00', 4),
(42, 42, 3, '2025-02-11 18:45:00', 3),
(43, 43, 1, '2025-02-12 19:15:00', 5),
(44, 44, 2, '2025-02-13 20:30:00', 2),
(45, 45, 3, '2025-02-14 18:00:00', 6),
(46, 46, 1, '2025-02-15 19:00:00', 4),
(47, 47, 2, '2025-02-16 18:30:00', 3),
(48, 48, 3, '2025-02-17 20:15:00', 5),
(49, 49, 1, '2025-02-18 19:45:00', 2),
(50, 50, 2, '2025-02-19 18:15:00', 6);

-- --------------------------------------------------------

--
-- Table structure for table `restaurant_location`
--

CREATE TABLE `restaurant_location` (
  `location_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `restaurant_location`
--

INSERT INTO `restaurant_location` (`location_id`, `name`, `address`) VALUES
(1, 'Downtown Diner', '123 Main St, Cityville'),
(2, 'Uptown Eatery', '456 High St, Cityville'),
(3, 'Suburban Grill', '789 Oak Ave, Suburbia'),
(4, 'Central Cafe', '101 Center Blvd, Cityville'),
(5, 'Seaside Bistro', '202 Ocean Dr, Seaside'),
(6, 'Mountain Retreat', '303 Alpine Rd, Mountainview'),
(7, 'Valley View', '404 Valley Rd, Valleyville'),
(8, 'City Plaza', '505 Plaza St, Cityville'),
(9, 'Parkside Pub', '606 Park Ln, Cityville'),
(10, 'Riverside Restaurant', '707 River Rd, Rivertown'),
(11, 'Lakeside Lounge', '808 Lake St, Lakeview'),
(12, 'Garden Terrace', '909 Garden Ave, Greenfield'),
(13, 'Historic Inn', '1010 Heritage Ln, Oldtown'),
(14, 'Harbor House', '1111 Dockside Dr, Harborview'),
(15, 'Airport Cafe', '1212 Terminal Rd, Airway City'),
(16, 'Sunset Grill', '1313 Sunset Blvd, Beachside'),
(17, 'Cultural Corner', '1414 Culture St, Artsville'),
(18, 'Market Square', '1515 Market St, Downtown'),
(19, 'Hilltop Haven', '1616 Summit Rd, Hillview'),
(20, 'Woodland Cafe', '1717 Forest Ln, Woodland'),
(21, 'Metro Eats', '1818 Metro Ave, Metropolis'),
(22, 'Station Stop', '1919 Rail Rd, Station City'),
(23, 'Campus Corner', '2020 College St, University Town'),
(24, 'The Outpost', '2121 Frontier Rd, Outback'),
(25, 'Golden Gate Bistro', '2222 Bridge Ave, Baytown'),
(26, 'Civic Center Cafe', '2323 Civic Rd, Center City'),
(27, 'Skyline Eatery', '2424 Skyline Dr, Highpoint'),
(28, 'Trailside Tavern', '2525 Trail Rd, Trailhead'),
(29, 'Creekside Kitchen', '2626 Creek Rd, Rivervale'),
(30, 'City Heights', '2727 Heights Blvd, City Heights'),
(31, 'Village Grill', '2828 Village Ln, Villagetown'),
(32, 'The Depot', '2929 Train St, Railville'),
(33, 'Mountain Lodge', '3030 Peak Rd, Summit City'),
(34, 'Beachside Bar', '3131 Shoreline Dr, Coastview'),
(35, 'Urban Eats', '3232 Urban Ave, Cosmopolis'),
(36, 'Harbor Cafe', '3333 Marina St, Portside'),
(37, 'Pine Grove Diner', '3434 Pine Rd, Pineville'),
(38, 'Ridgeview Tavern', '3535 Ridge Rd, Ridgeview'),
(39, 'The Dockyard', '3636 Pier Rd, Dockside'),
(40, 'Silver Spoon', '3737 Gourmet Ln, Culinary City'),
(41, 'Coastal Cafe', '3838 Beach Blvd, Shoreville'),
(42, 'Sunrise Bistro', '3939 Dawn Rd, Morningtown'),
(43, 'The Courtyard', '4040 Plaza Dr, Centerfield'),
(44, 'Rustic Retreat', '4141 Timber Ln, Woodside'),
(45, 'The Aviary', '4242 Birdsong St, Featherton'),
(46, 'Crystal Bay Grill', '4343 Oceanview Dr, Crystal Bay'),
(47, 'Starview Diner', '4444 Galaxy Rd, Starlight City'),
(48, 'Riverbend Eatery', '4545 Bend Rd, Riverbend'),
(49, 'The Artisan Table', '4646 Craft Ln, Artisan City'),
(50, 'Meadow Lane Cafe', '4747 Meadow Ln, Green Meadows'),
(51, 'Urban Junction', '4848 Crossroad St, Junction City'),
(52, 'Canyon Cafe', '4949 Canyon Rd, Grand Canyon City'),
(53, 'Dockside Deli', '5050 Pier Ave, Docktown'),
(54, 'Summit Bistro', '5151 Peak Ave, Mountain Ridge'),
(55, 'The Greenhouse', '5252 Botanical Blvd, Garden City'),
(56, 'Pebble Beach Grill', '5353 Shoreline Rd, Pebble Beach'),
(57, 'The Lighthouse', '5454 Beacon Rd, Harbor City'),
(58, 'Vista View Cafe', '5555 Vista Rd, Scenic Point'),
(59, 'Bayfront Bistro', '5656 Waterfront Dr, Bayfront'),
(60, 'The Gathering Place', '5757 Main Plaza, Central City'),
(61, 'Trailblazer Tavern', '5858 Adventure Rd, Trailville'),
(62, 'Sequoia Diner', '5959 Redwood Ln, Sequoia Grove'),
(63, 'The Velvet Table', '6060 Silk St, Velvet City'),
(64, 'The Iron Fork', '6161 Forge Rd, Steelville'),
(65, 'Cedar Creek Cafe', '6262 Brook Rd, Cedar Creek'),
(66, 'The Hearthstone', '6363 Fireplace Ln, Cozytown'),
(67, 'Sunflower Cafe', '6464 Bloom St, Sunfield'),
(68, 'Eclipse Eatery', '6565 Shadow Ln, Eclipse Town'),
(69, 'Golden Fields Grill', '6666 Harvest Rd, Goldfield'),
(70, 'The Spice Market', '6767 Curry Rd, Flavorville'),
(71, 'The Overlook', '6868 Cliffside Dr, Overlook Point'),
(72, 'Harmony Cafe', '6969 Melody St, Harmony City'),
(73, 'Cascade Bistro', '7070 Waterfall Rd, Cascade Valley'),
(74, 'Aurora Lounge', '7171 Northern Lights Rd, Aurora Town'),
(75, 'The Orchard', '7272 Apple Ln, Orchardville'),
(76, 'Lagoon Cafe', '7373 Lagoon Rd, Waterside'),
(77, 'The Gilded Plate', '7474 Gold Rd, Treasure City'),
(78, 'The Rustic Spoon', '7575 Oldtown Rd, Historic Village'),
(79, 'The Copper Pot', '7676 Chef’s Blvd, Culinary Heights'),
(80, 'Timberline Grill', '7777 Forest Rd, Timberline'),
(81, 'Downtown Bistro', '3838 Main Ave, Citycenter'),
(82, 'Riverside Grill', '3939 Riverbend Rd, Rivertown'),
(83, 'Oceanfront Cafe', '4040 Beach Blvd, Seaview'),
(84, 'Café Du Monde', '4141 French St, New Orleans'),
(85, 'Bayside Bistro', '4242 Bay Dr, Baytown'),
(86, 'Sierra Summit', '4343 Mountain Rd, Sierra'),
(87, 'Golden Grove', '4444 Grove St, Goldfield'),
(88, 'Coastal Kitchen', '4545 Ocean Blvd, Coastal City'),
(89, 'Sunrise Cafe', '4646 Sunrise Blvd, Morningtown'),
(90, 'Pine Ridge Grill', '4747 Pine Rd, Pinecrest'),
(91, 'Mountain Peak', '4848 Summit Ave, Mountain City'),
(92, 'Harbor View', '4949 Dock Rd, Harborside'),
(93, 'Canyon Diner', '5050 Canyon Dr, Canyonville'),
(94, 'City Lights', '5151 Light St, Downtown'),
(95, 'Ridge Crest', '5252 Ridge Rd, Ridgeville'),
(96, 'Golden Valley', '5353 Valley Rd, Goldridge'),
(97, 'Seabreeze Bistro', '5454 Seabreeze Dr, Beachtown'),
(98, 'Urban Garden', '5555 Greenway Blvd, City Gardens'),
(99, 'Lakeshore Grill', '5656 Lakeside Dr, Lakeside'),
(100, 'Vista View', '5757 Vista Ave, Hilltop'),
(101, 'Sunset Cove', '5858 Sunset Blvd, Oceanview'),
(102, 'The Greenhouse', '5959 Green St, Greenfield'),
(103, 'The Waterfront', '6060 Water St, Riverside'),
(104, 'Park Avenue', '6161 Park Ln, City Park'),
(105, 'Highland Tavern', '6262 Highland Dr, Hillcrest'),
(106, 'Westside Grill', '6363 West Ave, Westville'),
(107, 'East End Cafe', '6464 East Rd, Easton'),
(108, 'The Retreat', '6565 Retreat Rd, Mountainview'),
(109, 'The Bistro', '6666 Bistro St, City Center'),
(110, 'Ocean Breeze', '6767 Ocean Dr, Beachfront'),
(111, 'The Seaside', '6868 Shore Rd, Seaside'),
(112, 'The Urban Grill', '6969 Urban St, Downtown'),
(113, 'Coastline Diner', '7070 Coastline Ave, Beachview'),
(114, 'The Cornerstone', '7171 Corner Rd, Village Center'),
(115, 'The Lighthouse', '7272 Lighthouse Blvd, Harborview'),
(116, 'The Hilltop', '7373 Summit Rd, Hill Valley'),
(117, 'The Plaza', '7474 Plaza Blvd, City Square'),
(118, 'Mountain View', '7575 Mountain Ave, Peak City'),
(119, 'City Grill', '7676 City St, Metropolis'),
(120, 'The Cove', '7777 Cove Rd, Bayview'),
(121, 'Parkside Grill', '7878 Park Rd, Parkville'),
(122, 'Café on the Bay', '7979 Bayview St, Harbor City'),
(123, 'The Tavern', '8080 Tavern St, Oldtown'),
(124, 'Skyline Bistro', '8181 Skyline Dr, Skytown'),
(125, 'Lakeside Retreat', '8282 Lakeview Dr, Lakeshore'),
(126, 'The Dunes', '8383 Dunes Blvd, Coastal City'),
(127, 'The Grove', '8484 Grove Ave, Grove City'),
(128, 'The Pier', '8585 Pier St, Seaport'),
(129, 'Northside Grill', '8686 North Rd, Northview'),
(130, 'South Beach', '8787 South Blvd, Beach City'),
(131, 'The Oasis', '8888 Oasis Rd, Desert View'),
(132, 'The Vineyard', '8989 Vineyard Dr, Wine Country'),
(133, 'The Fountain', '9090 Fountain Ave, Downtown'),
(134, 'The Harbor', '9191 Harbor Rd, Port City'),
(135, 'The Summit', '9292 Summit St, Hilltop City'),
(136, 'The Pavilion', '9393 Pavilion Dr, Riverside Park'),
(137, 'The Mansion', '9494 Mansion Blvd, Estate City'),
(138, 'The Garden', '9595 Garden St, Garden City'),
(139, 'The Grove Bistro', '9696 Grove Blvd, Grove Park'),
(140, 'The Chateau', '9797 Chateau Rd, Wineville'),
(141, 'The Retreat Grill', '9898 Retreat Blvd, Mountainview'),
(142, 'The Beachfront', '9999 Beach Ave, Ocean City'),
(143, 'The Pines', '10000 Pine Rd, Pinewood'),
(144, 'The Wharf', '10101 Wharf St, Dockside'),
(145, 'The Terrace', '10202 Terrace Dr, Hillview'),
(146, 'The Horizon', '10303 Horizon Blvd, Seaside Heights'),
(147, 'The Plaza Grill', '10404 Plaza St, City Square'),
(148, 'The Pavilion Grill', '10505 Pavilion Rd, Riverside Park'),
(149, 'The Dockside', '10606 Dockside Blvd, Harborside'),
(150, 'The Seaview', '10707 Seaview Ave, Oceanview'),
(151, 'The Waterfront Grill', '10808 Waterfront Rd, Bayfront'),
(152, 'The Harbor Grill', '10909 Harbor Blvd, Seaport'),
(153, 'The Vineyard Grill', '11010 Vineyard Rd, Winehill'),
(154, 'The Bayfront', '11111 Bayfront Blvd, Seaside'),
(155, 'The Beachside', '11212 Beach Rd, Coastal City'),
(156, 'The Summit Grill', '11313 Summit Rd, Peak City'),
(157, 'The Coastal Grill', '11414 Coastal Blvd, Beachview'),
(158, 'The Lakeside Grill', '11515 Lakeside Dr, Lakeside City'),
(159, 'The Oasis Grill', '11616 Oasis Blvd, Desert Town'),
(160, 'The Horizon Grill', '11717 Horizon Rd, Hilltop'),
(161, 'The Pine Grove', '11818 Pine Grove Rd, Woodlands');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `transaction_id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `menu_item_id` int(11) DEFAULT NULL,
  `transaction_date` datetime NOT NULL,
  `quantity_sold` int(11) NOT NULL,
  `total_price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`transaction_id`, `customer_id`, `menu_item_id`, `transaction_date`, `quantity_sold`, `total_price`) VALUES
(1, 1, 1, '2025-01-01 19:00:00', 2, 17.98),
(2, 2, 3, '2025-01-02 19:30:00', 1, 7.99),
(3, 3, 5, '2025-01-03 20:00:00', 3, 20.97),
(4, 4, 7, '2025-01-04 20:15:00', 1, 10.99),
(5, 5, 9, '2025-01-05 18:45:00', 2, 17.98),
(6, 6, 11, '2025-01-06 19:00:00', 1, 4.99),
(7, 7, 13, '2025-01-07 19:30:00', 4, 11.96),
(8, 8, 15, '2025-01-08 20:00:00', 2, 7.98),
(9, 9, 17, '2025-01-09 18:30:00', 1, 14.99),
(10, 10, 19, '2025-01-10 19:45:00', 3, 11.97),
(11, 11, 2, '2025-01-11 19:15:00', 2, 19.98),
(12, 12, 4, '2025-01-12 20:00:00', 1, 8.49),
(13, 13, 6, '2025-01-13 19:30:00', 2, 14.98),
(14, 14, 8, '2025-01-14 18:45:00', 1, 11.49),
(15, 15, 10, '2025-01-15 19:00:00', 2, 18.98),
(16, 16, 12, '2025-01-16 19:15:00', 1, 5.49),
(17, 17, 14, '2025-01-17 20:00:00', 3, 10.47),
(18, 18, 16, '2025-01-18 18:30:00', 1, 4.49),
(19, 19, 18, '2025-01-19 19:00:00', 1, 18.99),
(20, 20, 20, '2025-01-20 19:30:00', 2, 11.98),
(21, 21, 1, '2025-01-21 19:00:00', 3, 26.97),
(22, 22, 3, '2025-01-22 19:30:00', 1, 7.99),
(23, 23, 5, '2025-01-23 20:00:00', 2, 13.98),
(24, 24, 7, '2025-01-24 20:15:00', 1, 10.99),
(25, 25, 9, '2025-01-25 18:45:00', 1, 8.99),
(26, 26, 11, '2025-01-26 19:00:00', 3, 14.97),
(27, 27, 13, '2025-01-27 19:30:00', 2, 7.98),
(28, 28, 15, '2025-01-28 20:00:00', 1, 3.99),
(29, 29, 17, '2025-01-29 18:30:00', 2, 29.98),
(30, 30, 19, '2025-01-30 19:45:00', 1, 3.99),
(31, 31, 2, '2025-01-31 19:15:00', 2, 19.98),
(32, 32, 4, '2025-02-01 20:00:00', 1, 8.49),
(33, 33, 6, '2025-02-02 19:30:00', 3, 22.47),
(34, 34, 8, '2025-02-03 18:45:00', 1, 11.49),
(35, 35, 10, '2025-02-04 19:00:00', 2, 18.98),
(36, 36, 12, '2025-02-05 19:15:00', 2, 10.98),
(37, 37, 14, '2025-02-06 20:00:00', 1, 3.49),
(38, 38, 16, '2025-02-07 18:30:00', 1, 4.49),
(39, 39, 18, '2025-02-08 19:00:00', 2, 37.98),
(40, 40, 20, '2025-02-09 19:30:00', 3, 17.97),
(41, 41, 1, '2025-02-10 19:00:00', 1, 8.99),
(42, 42, 3, '2025-02-11 19:30:00', 2, 15.98),
(43, 43, 5, '2025-02-12 20:00:00', 1, 6.99),
(44, 44, 7, '2025-02-13 20:15:00', 2, 21.98),
(45, 45, 9, '2025-02-14 18:45:00', 3, 26.97),
(46, 46, 11, '2025-02-15 19:00:00', 2, 9.98),
(47, 47, 13, '2025-02-16 19:30:00', 1, 2.99),
(48, 48, 15, '2025-02-17 20:00:00', 2, 7.98),
(49, 49, 17, '2025-02-18 18:30:00', 1, 14.99),
(50, 50, 19, '2025-02-19 19:45:00', 3, 35.97);

-- --------------------------------------------------------

--
-- Table structure for table `shift`
--

CREATE TABLE `shift` (
  `shift_id` int(11) NOT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `start_time` datetime NOT NULL,
  `end_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shift`
--

INSERT INTO `shift` (`shift_id`, `employee_id`, `location_id`, `start_time`, `end_time`) VALUES
(1, 1, 1, '2025-01-01 09:00:00', '2025-01-01 17:00:00'),
(2, 2, 2, '2025-01-02 10:00:00', '2025-01-02 18:00:00'),
(3, 3, 1, '2025-01-03 11:00:00', '2025-01-03 19:00:00'),
(4, 4, 3, '2025-01-04 12:00:00', '2025-01-04 20:00:00'),
(5, 5, 2, '2025-01-05 13:00:00', '2025-01-05 21:00:00'),
(6, 6, 1, '2025-01-06 14:00:00', '2025-01-06 22:00:00'),
(7, 7, 3, '2025-01-07 15:00:00', '2025-01-07 23:00:00'),
(8, 8, 2, '2025-01-08 16:00:00', '2025-01-08 00:00:00'),
(9, 9, 1, '2025-01-09 17:00:00', '2025-01-09 01:00:00'),
(10, 10, 3, '2025-01-10 18:00:00', '2025-01-10 02:00:00'),
(11, 1, 2, '2025-01-11 09:00:00', '2025-01-11 17:00:00'),
(12, 2, 1, '2025-01-12 10:00:00', '2025-01-12 18:00:00'),
(13, 3, 2, '2025-01-13 11:00:00', '2025-01-13 19:00:00'),
(14, 4, 3, '2025-01-14 12:00:00', '2025-01-14 20:00:00'),
(15, 5, 1, '2025-01-15 13:00:00', '2025-01-15 21:00:00'),
(16, 6, 2, '2025-01-16 14:00:00', '2025-01-16 22:00:00'),
(17, 7, 3, '2025-01-17 15:00:00', '2025-01-17 23:00:00'),
(18, 8, 1, '2025-01-18 16:00:00', '2025-01-18 00:00:00'),
(19, 9, 2, '2025-01-19 17:00:00', '2025-01-19 01:00:00'),
(20, 10, 3, '2025-01-20 18:00:00', '2025-01-20 02:00:00'),
(21, 11, 1, '2025-01-21 09:00:00', '2025-01-21 17:00:00'),
(22, 12, 2, '2025-01-22 10:00:00', '2025-01-22 18:00:00'),
(23, 13, 1, '2025-01-23 11:00:00', '2025-01-23 19:00:00'),
(24, 14, 3, '2025-01-24 12:00:00', '2025-01-24 20:00:00'),
(25, 15, 2, '2025-01-25 13:00:00', '2025-01-25 21:00:00'),
(26, 16, 1, '2025-01-26 14:00:00', '2025-01-26 22:00:00'),
(27, 17, 3, '2025-01-27 15:00:00', '2025-01-27 23:00:00'),
(28, 18, 2, '2025-01-28 16:00:00', '2025-01-28 00:00:00'),
(29, 19, 1, '2025-01-29 17:00:00', '2025-01-29 01:00:00'),
(30, 20, 3, '2025-01-30 18:00:00', '2025-01-30 02:00:00'),
(31, 11, 2, '2025-02-01 09:00:00', '2025-02-01 17:00:00'),
(32, 12, 1, '2025-02-02 10:00:00', '2025-02-02 18:00:00'),
(33, 13, 2, '2025-02-03 11:00:00', '2025-02-03 19:00:00'),
(34, 14, 3, '2025-02-04 12:00:00', '2025-02-04 20:00:00'),
(35, 15, 1, '2025-02-05 13:00:00', '2025-02-05 21:00:00'),
(36, 16, 2, '2025-02-06 14:00:00', '2025-02-06 22:00:00'),
(37, 17, 3, '2025-02-07 15:00:00', '2025-02-07 23:00:00'),
(38, 18, 1, '2025-02-08 16:00:00', '2025-02-08 00:00:00'),
(39, 19, 2, '2025-02-09 17:00:00', '2025-02-09 01:00:00'),
(40, 20, 3, '2025-02-10 18:00:00', '2025-02-10 02:00:00'),
(41, 11, 1, '2025-02-11 09:00:00', '2025-02-11 17:00:00'),
(42, 12, 2, '2025-02-12 10:00:00', '2025-02-12 18:00:00'),
(43, 13, 1, '2025-02-13 11:00:00', '2025-02-13 19:00:00'),
(44, 14, 3, '2025-02-14 12:00:00', '2025-02-14 20:00:00'),
(45, 15, 2, '2025-02-15 13:00:00', '2025-02-15 21:00:00'),
(46, 16, 1, '2025-02-16 14:00:00', '2025-02-16 22:00:00'),
(47, 17, 3, '2025-02-17 15:00:00', '2025-02-17 23:00:00'),
(48, 18, 2, '2025-02-18 16:00:00', '2025-02-18 00:00:00'),
(49, 19, 1, '2025-02-19 17:00:00', '2025-02-19 01:00:00'),
(50, 20, 3, '2025-02-20 18:00:00', '2025-02-20 02:00:00'),
(51, 11, 2, '2025-02-21 09:00:00', '2025-02-21 17:00:00'),
(52, 12, 1, '2025-02-22 10:00:00', '2025-02-22 18:00:00'),
(53, 13, 2, '2025-02-23 11:00:00', '2025-02-23 19:00:00'),
(54, 14, 3, '2025-02-24 12:00:00', '2025-02-24 20:00:00'),
(55, 15, 1, '2025-02-25 13:00:00', '2025-02-25 21:00:00'),
(56, 16, 2, '2025-02-26 14:00:00', '2025-02-26 22:00:00'),
(57, 17, 3, '2025-02-27 15:00:00', '2025-02-27 23:00:00'),
(58, 18, 1, '2025-02-28 16:00:00', '2025-02-28 00:00:00'),
(59, 19, 2, '2025-03-01 17:00:00', '2025-03-01 01:00:00'),
(60, 20, 3, '2025-03-02 18:00:00', '2025-03-02 02:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `supplier_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `contact_details` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`supplier_id`, `name`, `contact_details`) VALUES
(1, 'Fresh Foods Co.', 'freshfoods@example.com, +1 234 567 890'),
(2, 'Gourmet Ingredients Ltd.', 'gourmetingredients@example.com, +1 345 678 901'),
(3, 'Green Farms', 'greenfarms@example.com, +1 456 789 012'),
(4, 'Dairy Delights', 'dairydelights@example.com, +1 567 890 123'),
(5, 'Beverage Supply Co.', 'beveragesupply@example.com, +1 678 901 234'),
(6, 'Spice World', 'spiceworld@example.com, +1 789 012 345'),
(7, 'Meat Masters', 'meatmasters@example.com, +1 890 123 456'),
(8, 'Oceanic Foods', 'oceanicfoods@example.com, +1 901 234 567'),
(9, 'Bread Bakers', 'breadbakers@example.com, +1 123 345 678'),
(10, 'Fruit & Veggies Ltd.', 'fruitandveggies@example.com, +1 234 456 789'),
(11, 'Tasty Treats Bakery', 'tastytreats@example.com, +1 234 567 890'),
(12, 'Herb Garden Supplies', 'herbgardens@example.com, +1 345 678 901'),
(13, 'Cereal Co.', 'cerealco@example.com, +1 456 789 012'),
(14, 'Pasta Producers', 'pastaproducers@example.com, +1 567 890 123'),
(15, 'Sweet Tooth Confections', 'sweettooth@example.com, +1 678 901 234'),
(16, 'Olive Oil Imports', 'oliveoilimports@example.com, +1 789 012 345'),
(17, 'Citrus Grove', 'citrusgrove@example.com, +1 890 123 456'),
(18, 'Nutty Delights', 'nuttydelights@example.com, +1 901 234 567'),
(19, 'Sushi Supplies', 'sushisupplies@example.com, +1 123 345 678'),
(20, 'Gourmet Grains', 'gourmetgrains@example.com, +1 234 456 789'),
(21, 'Farm Fresh Eggs', 'farmfresheggs@example.com, +1 345 567 890'),
(22, 'Artisan Cheese Makers', 'artisancheese@example.com, +1 456 678 901'),
(23, 'Fresh Catch Seafood', 'freshcatch@example.com, +1 567 789 012'),
(24, 'Vegetable Patch', 'vegetablepatch@example.com, +1 678 890 123'),
(25, 'Beverage Barrels', 'beveragebarrels@example.com, +1 789 901 234'),
(26, 'Chocolate Haven', 'chocolatehaven@example.com, +1 890 012 345'),
(27, 'Gourmet Spices', 'gourmetspices@example.com, +1 901 123 456'),
(28, 'Greenhouse Greens', 'greenhousegreens@example.com, +1 123 234 567'),
(29, 'Grill Masters', 'grillmasters@example.com, +1 234 345 678'),
(30, 'Crispy Crunch Co.', 'crispycrunch@example.com, +1 345 456 789'),
(31, 'Brewed Perfection', 'brewedperfection@example.com, +1 456 567 890'),
(32, 'Flour & Sugar Co.', 'flourandsugar@example.com, +1 567 678 901'),
(33, 'Meat & More', 'meatandmore@example.com, +1 678 789 012'),
(34, 'The Spice Rack', 'thespicerack@example.com, +1 789 890 123'),
(35, 'Ocean Breeze Seafood', 'oceanbreeze@example.com, +1 890 901 234'),
(36, 'The Herb Shed', 'theherbshed@example.com, +1 901 012 345'),
(37, 'Sweets & Treats', 'sweetsandtreats@example.com, +1 123 123 123'),
(38, 'Sunshine Farms', 'sunshinefarms@example.com, +1 234 234 234'),
(39, 'The Cheese Shop', 'thecheeseshop@example.com, +1 345 345 345'),
(40, 'Tropical Fruits', 'tropicalfruits@example.com, +1 456 456 456'),
(41, 'Baked Bliss', 'bakedbliss@example.com, +1 567 567 567'),
(42, 'Herbivore Supplies', 'herbivoresupplies@example.com, +1 678 678 678'),
(43, 'Mushroom Kingdom', 'mushroomkingdom@example.com, +1 789 789 789'),
(44, 'Farm to Table', 'farmtotable@example.com, +1 890 890 890'),
(45, 'Olive Grove', 'olivegrove@example.com, +1 901 901 901'),
(46, 'Citrus Farm', 'citrusfarm@example.com, +1 123 234 345'),
(47, 'Cheese & Co.', 'cheeseandco@example.com, +1 234 345 456'),
(48, 'Fruit Basket', 'fruitbasket@example.com, +1 345 456 567'),
(49, 'Perfect Pastries', 'perfectpastries@example.com, +1 456 567 678'),
(50, 'Brewed Bliss', 'brewedbliss@example.com, +1 567 678 789');

-- --------------------------------------------------------

--
-- Table structure for table `supply_order`
--

CREATE TABLE `supply_order` (
  `order_id` int(11) NOT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `ingredient_id` int(11) DEFAULT NULL,
  `quantity_ordered` decimal(10,2) NOT NULL,
  `order_date` datetime NOT NULL,
  `delivery_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `supply_order`
--

INSERT INTO `supply_order` (`order_id`, `supplier_id`, `ingredient_id`, `quantity_ordered`, `order_date`, `delivery_date`) VALUES
(1, 1, 1, 50.00, '2025-01-01 00:00:00', '2025-01-03 00:00:00'),
(2, 2, 2, 20.00, '2025-01-02 00:00:00', '2025-01-04 00:00:00'),
(3, 3, 4, 30.00, '2025-01-03 00:00:00', '2025-01-05 00:00:00'),
(4, 4, 5, 40.00, '2025-01-04 00:00:00', '2025-01-06 00:00:00'),
(5, 5, 6, 100.00, '2025-01-05 00:00:00', '2025-01-07 00:00:00'),
(6, 6, 7, 25.00, '2025-01-06 00:00:00', '2025-01-08 00:00:00'),
(7, 7, 8, 60.00, '2025-01-07 00:00:00', '2025-01-09 00:00:00'),
(8, 8, 9, 20.00, '2025-01-08 00:00:00', '2025-01-10 00:00:00'),
(9, 9, 10, 15.00, '2025-01-09 00:00:00', '2025-01-11 00:00:00'),
(10, 10, 11, 50.00, '2025-01-10 00:00:00', '2025-01-12 00:00:00'),
(11, 1, 12, 30.00, '2025-01-11 00:00:00', '2025-01-13 00:00:00'),
(12, 2, 13, 20.00, '2025-01-12 00:00:00', '2025-01-14 00:00:00'),
(13, 3, 14, 15.00, '2025-01-13 00:00:00', '2025-01-15 00:00:00'),
(14, 4, 15, 100.00, '2025-01-14 00:00:00', '2025-01-16 00:00:00'),
(15, 5, 16, 25.00, '2025-01-15 00:00:00', '2025-01-17 00:00:00'),
(16, 6, 17, 50.00, '2025-01-16 00:00:00', '2025-01-18 00:00:00'),
(17, 7, 18, 30.00, '2025-01-17 00:00:00', '2025-01-19 00:00:00'),
(18, 8, 19, 20.00, '2025-01-18 00:00:00', '2025-01-20 00:00:00'),
(19, 9, 20, 10.00, '2025-01-19 00:00:00', '2025-01-21 00:00:00'),
(20, 10, 1, 50.00, '2025-01-20 00:00:00', '2025-01-22 00:00:00'),
(21, 1, 2, 40.00, '2025-01-21 00:00:00', '2025-01-23 00:00:00'),
(22, 2, 3, 25.00, '2025-01-22 00:00:00', '2025-01-24 00:00:00'),
(23, 3, 4, 50.00, '2025-01-23 00:00:00', '2025-01-25 00:00:00'),
(24, 4, 5, 30.00, '2025-01-24 00:00:00', '2025-01-26 00:00:00'),
(25, 5, 6, 100.00, '2025-01-25 00:00:00', '2025-01-27 00:00:00'),
(26, 6, 7, 20.00, '2025-01-26 00:00:00', '2025-01-28 00:00:00'),
(27, 7, 8, 60.00, '2025-01-27 00:00:00', '2025-01-29 00:00:00'),
(28, 8, 9, 25.00, '2025-01-28 00:00:00', '2025-01-30 00:00:00'),
(29, 9, 10, 10.00, '2025-01-29 00:00:00', '2025-01-31 00:00:00'),
(30, 10, 11, 50.00, '2025-01-30 00:00:00', '2025-02-01 00:00:00'),
(31, 1, 12, 40.00, '2025-02-01 00:00:00', '2025-02-03 00:00:00'),
(32, 2, 13, 30.00, '2025-02-02 00:00:00', '2025-02-04 00:00:00'),
(33, 3, 14, 20.00, '2025-02-03 00:00:00', '2025-02-05 00:00:00'),
(34, 4, 15, 100.00, '2025-02-04 00:00:00', '2025-02-06 00:00:00'),
(35, 5, 16, 50.00, '2025-02-05 00:00:00', '2025-02-07 00:00:00'),
(36, 6, 17, 30.00, '2025-02-06 00:00:00', '2025-02-08 00:00:00'),
(37, 7, 18, 20.00, '2025-02-07 00:00:00', '2025-02-09 00:00:00'),
(38, 8, 19, 15.00, '2025-02-08 00:00:00', '2025-02-10 00:00:00'),
(39, 9, 20, 50.00, '2025-02-09 00:00:00', '2025-02-11 00:00:00'),
(40, 10, 1, 60.00, '2025-02-10 00:00:00', '2025-02-12 00:00:00'),
(41, 1, 2, 35.00, '2025-02-11 00:00:00', '2025-02-13 00:00:00'),
(42, 2, 3, 45.00, '2025-02-12 00:00:00', '2025-02-14 00:00:00'),
(43, 3, 4, 50.00, '2025-02-13 00:00:00', '2025-02-15 00:00:00'),
(44, 4, 5, 25.00, '2025-02-14 00:00:00', '2025-02-16 00:00:00'),
(45, 5, 6, 100.00, '2025-02-15 00:00:00', '2025-02-17 00:00:00'),
(46, 6, 7, 30.00, '2025-02-16 00:00:00', '2025-02-18 00:00:00'),
(47, 7, 8, 40.00, '2025-02-17 00:00:00', '2025-02-19 00:00:00'),
(48, 8, 9, 20.00, '2025-02-18 00:00:00', '2025-02-20 00:00:00'),
(49, 9, 10, 10.00, '2025-02-19 00:00:00', '2025-02-21 00:00:00'),
(50, 10, 11, 55.00, '2025-02-20 00:00:00', '2025-02-22 00:00:00'),
(51, 1, 12, 30.00, '2025-02-21 00:00:00', '2025-02-23 00:00:00'),
(52, 2, 13, 25.00, '2025-02-22 00:00:00', '2025-02-24 00:00:00'),
(53, 3, 14, 20.00, '2025-02-23 00:00:00', '2025-02-25 00:00:00'),
(54, 4, 15, 100.00, '2025-02-24 00:00:00', '2025-02-26 00:00:00'),
(55, 5, 16, 50.00, '2025-02-25 00:00:00', '2025-02-27 00:00:00'),
(56, 6, 17, 30.00, '2025-02-26 00:00:00', '2025-02-28 00:00:00'),
(57, 7, 18, 40.00, '2025-02-27 00:00:00', '2025-03-01 00:00:00'),
(58, 8, 19, 15.00, '2025-02-28 00:00:00', '2025-03-02 00:00:00'),
(59, 9, 20, 50.00, '2025-03-01 00:00:00', '2025-03-03 00:00:00'),
(60, 10, 1, 60.00, '2025-03-02 00:00:00', '2025-03-04 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`employee_id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`feedback_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `reservation_id` (`reservation_id`);

--
-- Indexes for table `ingredient_category`
--
ALTER TABLE `ingredient_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`ingredient_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `menu_ingredient`
--
ALTER TABLE `menu_ingredient`
  ADD PRIMARY KEY (`menu_item_id`,`ingredient_id`),
  ADD KEY `ingredient_id` (`ingredient_id`);

--
-- Indexes for table `menu_item`
--
ALTER TABLE `menu_item`
  ADD PRIMARY KEY (`item_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`),
  ADD KEY `transaction_id` (`transaction_id`);

--
-- Indexes for table `promotion`
--
ALTER TABLE `promotion`
  ADD PRIMARY KEY (`promotion_id`);

--
-- Indexes for table `promotion_menu_item`
--
ALTER TABLE `promotion_menu_item`
  ADD PRIMARY KEY (`promotion_id`,`menu_item_id`),
  ADD KEY `menu_item_id` (`menu_item_id`);

--
-- Indexes for table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`reservation_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `location_id` (`location_id`);

--
-- Indexes for table `restaurant_location`
--
ALTER TABLE `restaurant_location`
  ADD PRIMARY KEY (`location_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`transaction_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `menu_item_id` (`menu_item_id`);

--
-- Indexes for table `shift`
--
ALTER TABLE `shift`
  ADD PRIMARY KEY (`shift_id`),
  ADD KEY `employee_id` (`employee_id`),
  ADD KEY `location_id` (`location_id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`supplier_id`);

--
-- Indexes for table `supply_order`
--
ALTER TABLE `supply_order`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `supplier_id` (`supplier_id`),
  ADD KEY `ingredient_id` (`ingredient_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `feedback`
--
ALTER TABLE `feedback`
  ADD CONSTRAINT `feedback_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`),
  ADD CONSTRAINT `feedback_ibfk_2` FOREIGN KEY (`reservation_id`) REFERENCES `reservation` (`reservation_id`);

--
-- Constraints for table `inventory`
--
ALTER TABLE `inventory`
  ADD CONSTRAINT `inventory_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `ingredient_category` (`category_id`);

--
-- Constraints for table `menu_ingredient`
--
ALTER TABLE `menu_ingredient`
  ADD CONSTRAINT `menu_ingredient_ibfk_1` FOREIGN KEY (`menu_item_id`) REFERENCES `menu_item` (`item_id`),
  ADD CONSTRAINT `menu_ingredient_ibfk_2` FOREIGN KEY (`ingredient_id`) REFERENCES `inventory` (`ingredient_id`);

--
-- Constraints for table `menu_item`
--
ALTER TABLE `menu_item`
  ADD CONSTRAINT `menu_item_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`);

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`transaction_id`) REFERENCES `sales` (`transaction_id`);

--
-- Constraints for table `promotion_menu_item`
--
ALTER TABLE `promotion_menu_item`
  ADD CONSTRAINT `promotion_menu_item_ibfk_1` FOREIGN KEY (`promotion_id`) REFERENCES `promotion` (`promotion_id`),
  ADD CONSTRAINT `promotion_menu_item_ibfk_2` FOREIGN KEY (`menu_item_id`) REFERENCES `menu_item` (`item_id`);

--
-- Constraints for table `reservation`
--
ALTER TABLE `reservation`
  ADD CONSTRAINT `reservation_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`),
  ADD CONSTRAINT `reservation_ibfk_2` FOREIGN KEY (`location_id`) REFERENCES `restaurant_location` (`location_id`);

--
-- Constraints for table `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `sales_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`),
  ADD CONSTRAINT `sales_ibfk_2` FOREIGN KEY (`menu_item_id`) REFERENCES `menu_item` (`item_id`);

--
-- Constraints for table `shift`
--
ALTER TABLE `shift`
  ADD CONSTRAINT `shift_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`employee_id`),
  ADD CONSTRAINT `shift_ibfk_2` FOREIGN KEY (`location_id`) REFERENCES `restaurant_location` (`location_id`);

--
-- Constraints for table `supply_order`
--
ALTER TABLE `supply_order`
  ADD CONSTRAINT `supply_order_ibfk_1` FOREIGN KEY (`supplier_id`) REFERENCES `supplier` (`supplier_id`),
  ADD CONSTRAINT `supply_order_ibfk_2` FOREIGN KEY (`ingredient_id`) REFERENCES `inventory` (`ingredient_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
