-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th2 10, 2018 lúc 03:47 AM
-- Phiên bản máy phục vụ: 10.1.25-MariaDB
-- Phiên bản PHP: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `hotel_booking_system`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `birthday` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`id`, `name`, `birthday`, `gender`, `img`, `password`, `phone`, `username`) VALUES
(1, 'cuong', '1995-10-12', 'male', 'login_avatar.png', 'ititiu13170', '0908998923', 'cdo7@csc.com');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `restaurant`
--

CREATE TABLE `restaurant` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `details` longtext NOT NULL,
  `img` varchar(255) NOT NULL,
  `img2` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `note` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `serveTime` varchar(255) NOT NULL,
  `serveType` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `restaurant`
--

INSERT INTO `restaurant` (`id`, `name`, `created_at`, `created_by`, `details`, `img`, `img2`, `price`, `type`, `note`, `quantity`, `serveTime`, `serveType`) VALUES
(1, 'Hamburger', '15-08-2017 10:21:18', 'dohungcuongdev', 'A hamburger or burger is a sandwich consisting of one or more cooked patties of ground meat, usually beef, placed inside a sliced bread roll or bun. The patty may be pan fried, barbecued, or flame broiled. Hamburgers are often served with cheese, lettuce, tomato, bacon, onion, pickles, or chiles; condiments such as mustard, mayonnaise, ketchup, relish, or special sauce; and are frequently placed on sesame seed buns. A hamburger topped with cheese is called a cheeseburger.', 'the-ultimate-hamburger.jpg', 'hamburger_2.jpg', 100, 'food', 'The quantity is the number of hamburger for each food portion', 1, '7:00 am to 10:00 am', 'breakfast'),
(2, 'Soda', '15-08-2017 10:21:18', 'dohungcuongdev', 'The natural caramel coloring in sodas like Pepsi and Coke is made by reacting sugar with sulfites and ammonia under high temperatures. Byproducts created with this process include the compounds 2-methylimidozole and 4-methylimidozole, which are known carcinogens, but the FDA still allows this product to be used widely.', 'soda.jpg', 'soda_2.jpg', 80, 'drink', 'The quantity is the number of soda glass for each drink portion', 4, 'Anytime', 'snack'),
(3, 'Spaghetti', '15-08-2017 10:21:18', 'dohungcuongdev', 'Spaghetti is a long, thin, cylindrical, solid pasta.It is a staple food of traditional Italian cuisine. Like other pasta, spaghetti is made of milled wheat and water. Italian spaghetti is made from durum wheat semolina.', 'spaghetti.jpg', 'spaghetti_2.jpg', 125, 'food', 'The quantity is the number of spaghetti plate for each food portion', 1, 'null', 'dinner'),
(4, 'Cocacola', '15-08-2017 10:21:18', 'dohungcuongdev', 'Coca-Cola (often referred to simply as Coke) is a carbonated soft drink produced by The Coca-Cola Company. Originally intended as a patent medicine, it was invented in the late 19th century by John Pemberton and was bought out by businessman Asa Griggs Candler..', 'cocacola.jpg', 'cocacola_2.jpg', 55, 'drink', 'The quantity is the number of cocacola glass for each drink portion', 1, 'null', 'snack'),
(5, 'Pizza', '15-08-2017 10:21:18', 'dohungcuongdev', 'Pizza is a yeasted flatbread typically topped with tomato sauce and cheese and baked in an oven. It is commonly topped with a selection of meats, vegetables and condiments.Pizza is sold fresh or frozen, either whole or in portions, and is a common fast food item in Europe and North America.[6] Various types of ovens are used to cook them and many varieties exist. Several similar dishes are prepared from ingredients commonly used in pizza preparation, such as calzone and stromboli.', 'pizza.jpg', 'pizza_2.jpg', 55, 'food', 'The quantity is the number of pizza for each meal portion', 1, 'null', 'lunch'),
(6, 'Orange Juice', '15-08-2017 10:21:18', 'dohungcuongdev', 'Orange juice is the liquid extract of the fruit of the orange tree, produced by squeezing oranges. It comes in several different varieties, including blood orange, navel oranges, valencia orange, clementine, and tangerine. As well as variations in oranges used, some varieties include differing amounts of juice vesicles, known as pulp in American English, and juicy bits in British English. These vesicles contain the juice of the orange and can be left in or removed during the manufacturing process. How juicy these vesicles are depend upon many factors, such as species, variety, and season. In American English, the beverage name may be abbreviated as OJ.', 'orange juice.jpg', 'orange juice_2.jpg', 60, 'drink', 'The quantity is the number of orange juice glass for each drink portion', 1, 'null', 'breakfast'),
(7, 'Chocolate ice-cream', '15-08-2017 10:21:18', 'dohungcuongdev', 'Chocolate ice cream is sold in many places, including restaurants, cafés, diners, supermarkets, and grocery and convenience stores. Ice cream parlors specialize in the sale of ice cream. Chocolate is one of the five most popular ice cream flavors in the United States and second only to vanilla.Chocolate ice cream is used in the creation of other flavors, such as rocky road. Other flavors of ice cream contain chocolate chips mixed in with the ice cream. For example, (plain) chocolate chip ice cream is made with vanilla ice cream, chocolate chocolate chip (or double chocolate chip) ice cream is made with chocolate ice cream, and mint chocolate chip ice cream is made with mint ice cream.', 'chocolate ice-cream.jpg', 'chocolate ice-cream_2.jpg', 155, 'ice-cream', 'The quantity is the number of Chocolate ice-cream plate for each meal portion', 1, 'null', 'dinner'),
(8, 'Strawberry', '15-08-2017 10:21:18', 'dohungcuongdev', 'The garden strawberry (or simply strawberry; Fragaria × ananassa) is a widely grown hybrid species of the genus Fragaria, collectively known as the strawberries. It is cultivated worldwide for its fruit. The fruit is widely appreciated for its characteristic aroma, bright red color, juicy texture, and sweetness. It is consumed in large quantities, either fresh or in such prepared foods as preserves, juice, pies, ice creams, milkshakes, and chocolates. Artificial strawberry flavorings and aromas are also widely used in many products like lip gloss, candy, hand sanitizers, perfume, and many others.', 'strawberry.jpg', 'strawberry_2.jpg', 95, 'fruit', 'The quantity is the number of strawberry bowl for each meal portion', 1, 'null', 'dinner'),
(9, 'fried chicken', '15-08-2017 10:21:18', 'dohungcuongdev', 'Fried chicken (also referred to as Southern fried chicken for the variant in the United States) is a dish consisting of chicken pieces usually from broiler chickens which have been floured or battered and then pan-fried, deep fried, or pressure fried. The breading adds a crisp coating or crust to the exterior. What separates fried chicken from other fried forms of chicken is that generally the chicken is cut at the joints, and the bones and skin are left intact. Crisp well-seasoned skin, rendered of excess fat, is a hallmark of well made fried chicken.', 'fried chicken.jpg', 'fried chicken_2.jpg', 95, 'food', 'The quantity is the number of chicken legs for each meal portion', 9, 'null', 'lunch');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `rooms`
--

CREATE TABLE `rooms` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `details` longtext NOT NULL,
  `img` varchar(255) NOT NULL,
  `img2` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `amenities` longtext NOT NULL,
  `avgAminities` int(11) NOT NULL,
  `booked_by` varchar(255) DEFAULT NULL,
  `checkin` varchar(255) DEFAULT NULL,
  `checkout` varchar(255) DEFAULT NULL,
  `numpeople` int(11) NOT NULL,
  `numvote` int(11) DEFAULT NULL,
  `size` int(11) NOT NULL,
  `star` int(11) DEFAULT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `rooms`
--

INSERT INTO `rooms` (`id`, `name`, `created_at`, `created_by`, `details`, `img`, `img2`, `price`, `type`, `amenities`, `avgAminities`, `booked_by`, `checkin`, `checkout`, `numpeople`, `numvote`, `size`, `star`, `status`) VALUES
(1, '101', '14-08-2017 10:21:18', 'cdo7@csc.com', 'Our inexpensive family-operated 3-star Seibel’s Park-Hotel has over 40 guest rooms which are comfortably furnished in an elegant Florentine country house style. Alongside a television, radio and mini-bar, the rooms also contain a PC- and fax-port as well as a balcony.', 'room-pictures-simple-50-best-living-room-ideas.jpg', 'room-pictures-remarkable-room-pics.jpg', 300, 'deluxe', 'Shower,Bathtub,One bed for 2 adult,Seating unit,Telephone,Mini-fridge,Hair dryer,TV 39 inchs,Air-conditioner,Free WiFi', 315, 'cdo7@dxc.com', '2018-01-31', '2018-01-31', 2, 3, 200, 9, 'booked'),
(2, '102', '14-08-2017 11:16:23', 'cdo7@csc.com', 'Our inexpensive family-operated 3-star Seibel’s Park-Hotel has over 40 guest rooms which are comfortably furnished in an elegant Florentine country house style. Alongside a television, radio and mini-bar, the rooms also contain a PC- and fax-port as well as a balcony.', 'blue-and-grey-bedroom-cool-bedroom-decorating-ideas-blue-and-gray-myideasbedroom.jpg', 'blue-and-grey-bedroom-best-blue-and-gray-bedroom-contemporary-bedroom-atmosphere-interior.jpg', 200, 'couple', 'Shower,Bathtub,One bed for 2 adult,Seating unit,Telephone,Mini-fridge,Hair dryer,TV 39 inchs,Air-conditioner,Free WiFi', 215, NULL, NULL, NULL, 2, 4, 400, 12, 'available'),
(3, '103', '14-08-2017 10:23:14', 'cdo7@csc.com', 'Our inexpensive family-operated 3-star Seibel’s Park-Hotel has over 40 guest rooms which are comfortably furnished in an elegant Florentine country house style. Alongside a television, radio and mini-bar, the rooms also contain a PC- and fax-port as well as a balcony.', '101.jpg', 'blue-and-grey-bedroom-delightful-gray-and-blue-bedroom-designs-grey-blue-bedroom-blue-and-grey-boys.jpg', 80, 'single', 'Shower,Bathtub,One bed for 2 adult,Seating unit,Telephone,Mini-fridge,Hair dryer,TV 39 inchs,Air-conditioner,Free WiFi', 50, '', '', '', 1, 0, 60, 0, 'available'),
(4, '201', '14-08-2017 10:25:19', 'cdo7@csc.com', 'Our inexpensive family-operated 3-star Seibel’s Park-Hotel has over 40 guest rooms which are comfortably furnished in an elegant Florentine country house style. Alongside a television, radio and mini-bar, the rooms also contain a PC- and fax-port as well as a balcony.', 'blue-and-grey-bedroom-layout-gray-and-blue-bedroom-transitional-bedroom-erin-gates-design.jpg', 'room-pictures-contemporary-lets-room-tu-casa-fuera-de-your-home-away-from.jpg', 420, 'deluxe', 'Shower,Bathtub,One bed for 2 adult,Seating unit,Telephone,Mini-fridge,Hair dryer,TV 39 inchs,Air-conditioner,Free WiFi', 400, '', '', '', 4, 0, 300, 0, 'available'),
(5, '202', '14-08-2017 10:26:22', 'cdo7@csc.com', 'Our inexpensive family-operated 3-star Seibel’s Park-Hotel has over 40 guest rooms which are comfortably furnished in an elegant Florentine country house style. Alongside a television, radio and mini-bar, the rooms also contain a PC- and fax-port as well as a balcony.', 'blue-and-grey-bedroom-great-blue-and-grey-bedroom-decorating-ideas.jpg', 'blue-and-grey-bedroom-cool-teal-gray-bedroom-tributary-contemporary-bedroom.jpg', 185, 'couple', 'Shower,Bathtub,One bed for 2 adult,Seating unit,Telephone,Mini-fridge,Hair dryer,TV 39 inchs,Air-conditioner,Free WiFi', 200, '', '', '', 2, 0, 300, 0, 'available'),
(6, '203', '14-08-2017 10:26:29', 'cdo7@csc.com', 'Our inexpensive family-operated 3-star Seibel’s Park-Hotel has over 40 guest rooms which are comfortably furnished in an elegant Florentine country house style. Alongside a television, radio and mini-bar, the rooms also contain a PC- and fax-port as well as a balcony.', 'blue-and-grey-bedroom-delightful-gray-and-blue-bedroom-designs-grey-blue-bedroom-blue-and-grey-boys.jpg', 'blue-and-grey-bedroom-magnificent-20-beautiful-blue-and-gray-bedrooms-digsdigs.jpg', 120, 'couple', 'Shower,Bathtub,One bed for 2 adult,Seating unit,Telephone,Mini-fridge,Hair dryer,TV 39 inchs,Air-conditioner,Free WiFi', 105, '', '', '', 2, 0, 150, 0, 'available'),
(7, '204', '14-08-2017 10:28:18', 'cdo7@csc.com', 'Our inexpensive family-operated 3-star Seibel’s Park-Hotel has over 40 guest rooms which are comfortably furnished in an elegant Florentine country house style. Alongside a television, radio and mini-bar, the rooms also contain a PC- and fax-port as well as a balcony.', 'blue-and-grey-bedroom-contemporary-gray-and-blue-bedroom-ideas-blue-and-grey-bedroom-ideas.jpg', 'blue-and-grey-bedroom-fascinating.jpg', 95, 'single', 'Shower,Bathtub,One bed for 2 adult,Seating unit,Telephone,Mini-fridge,Hair dryer,TV 39 inchs,Air-conditioner,Free WiFi', 80, '', '', '', 1, 0, 80, 0, 'available'),
(8, '205', '14-08-2017 10:30:12', 'cdo7@csc.com', 'Our inexpensive family-operated 3-star Seibel’s Park-Hotel has over 40 guest rooms which are comfortably furnished in an elegant Florentine country house style. Alongside a television, radio and mini-bar, the rooms also contain a PC- and fax-port as well as a balcony.', 'room-pictures-gorgeous-houzz.jpg', 'room-pictures-inspiring-ideas-the-club-room-in-marina-bay-sands.jpg', 500, 'deluxe', 'Shower,Bathtub,One bed for 2 adult,Seating unit,Telephone,Mini-fridge,Hair dryer,TV 39 inchs,Air-conditioner,Free WiFi', 600, '', '', '', 2, 0, 319, 0, 'available'),
(9, '301', '14-08-2017 10:32:28', 'cdo7@csc.com', 'Our inexpensive family-operated 3-star Seibel’s Park-Hotel has over 40 guest rooms which are comfortably furnished in an elegant Florentine country house style. Alongside a television, radio and mini-bar, the rooms also contain a PC- and fax-port as well as a balcony.', 'room-pictures-perfect-deluxe-rooms-information-picture-amenities-online-reservations.jpg', 'blue-and-grey-bedroom-stylish-20-beautiful-blue-and-gray-bedrooms-digsdigs.jpg', 150, 'single', 'Shower,Bathtub,One bed for 2 adult,Seating unit,Telephone,Mini-fridge,Hair dryer,TV 39 inchs,Air-conditioner,Free WiFi', 135, '', '', '', 1, 0, 180, 0, 'available'),
(10, '302', '14-08-2017 10:33:46', 'cdo7@csc.com', 'Our inexpensive family-operated 3-star Seibel’s Park-Hotel has over 40 guest rooms which are comfortably furnished in an elegant Florentine country house style. Alongside a television, radio and mini-bar, the rooms also contain a PC- and fax-port as well as a balcony.', 'blue-and-grey-bedroom-wonderful-blue-and-gray-bedroom-interior-design-ideas.jpg', 'blue-and-grey-bedroom-unique-blue-and-grey-bedroom-remodel-ideas-pinterest.jpg', 90, 'single', 'Shower,Bathtub,One bed for 2 adult,Seating unit,Telephone,Mini-fridge,Hair dryer,TV 39 inchs,Air-conditioner,Free WiFi', 120, '', '', '', 1, 0, 85, 0, 'available'),
(11, '303', '14-08-2017 10:35:55', 'cdo7@csc.com', 'Our inexpensive family-operated 3-star Seibel’s Park-Hotel has over 40 guest rooms which are comfortably furnished in an elegant Florentine country house style. Alongside a television, radio and mini-bar, the rooms also contain a PC- and fax-port as well as a balcony.', 'blue-and-grey-bedroom-layout-gray-and-blue-bedroom-transitional-bedroom-erin-gates-design.jpg', 'blue-and-grey-bedroom-comfortable-light-blue-and-grey-bedroom-bedroom-ideas-pictures.jpg', 210, 'couple', 'Shower,Bathtub,One bed for 2 adult,Seating unit,Telephone,Mini-fridge,Hair dryer,TV 39 inchs,Air-conditioner,Free WiFi', 250, '', '', '', 2, 0, 320, 0, 'available'),
(12, '304', '14-08-2017 10:36:29', 'cdo7@csc.com', 'Our inexpensive family-operated 3-star Seibel’s Park-Hotel has over 40 guest rooms which are comfortably furnished in an elegant Florentine country house style. Alongside a television, radio and mini-bar, the rooms also contain a PC- and fax-port as well as a balcony.', 'blue-and-grey-bedroom-fascinating-blue-bedroom-gray-nightstand-blue-and-gray-bedding-bed-with-1.jpg', 'blue-and-grey-bedroom-exquisite-men-and-women-bedrooms-just-some-cool-touches-of-that-color-and-you-ll.jpg', 100, 'couple', 'Shower,Bathtub,One bed for 2 adult,Seating unit,Telephone,Mini-fridge,Hair dryer,TV 39 inchs,Air-conditioner,Free WiFi', 140, 'null', '', '', 1, 0, 100, 0, 'available'),
(13, '305', '14-08-2017 10:38:40', 'cdo7@csc.com', 'Our inexpensive family-operated 3-star Seibel’s Park-Hotel has over 40 guest rooms which are comfortably furnished in an elegant Florentine country house style. Alongside a television, radio and mini-bar, the rooms also contain a PC- and fax-port as well as a balcony.', 'blue-and-grey-bedroom-simple-houzz-discussions-design-dilemma-before-after-polls-pro-to-pro.jpg', 'room-pictures-best-family.jpg', 300, 'deluxe', 'Shower,Bathtub,One bed for 2 adult,Seating unit,Telephone,Mini-fridge,Hair dryer,TV 39 inchs,Air-conditioner,Free WiFi', 230, 'null', '', '', 2, 0, 200, 0, 'available'),
(14, '401', '14-08-2017 10:39:45', 'cdo7@csc.com', 'Our inexpensive family-operated 3-star Seibel’s Park-Hotel has over 40 guest rooms which are comfortably furnished in an elegant Florentine country house style. Alongside a television, radio and mini-bar, the rooms also contain a PC- and fax-port as well as a balcony.', 'room-pictures-wonderful-101-living-room-decorating-ideas-designs-and-photos.jpg', 'room-pictures-trend-modern-living-room-design-ideas-remodels-photos.jpg', 150, 'family', 'Shower,Bathtub,One bed for 2 adult,Seating unit,Telephone,Mini-fridge,Hair dryer,TV 39 inchs,Air-conditioner,Free WiFi', 200, '', '', '', 3, 0, 180, 0, 'available'),
(15, '402', '14-08-2017 10:41:25', 'cdo7@csc.com', 'Our inexpensive family-operated 3-star Seibel’s Park-Hotel has over 40 guest rooms which are comfortably furnished in an elegant Florentine country house style. Alongside a television, radio and mini-bar, the rooms also contain a PC- and fax-port as well as a balcony.', 'room-pictures-amazing-trident-cochin-rooms-and-suites.jpg', 'room-pictures-beautiful-free-stock-photos-of-pexels.jpg', 200, 'deluxe', 'Shower,Bathtub,One bed for 2 adult,Seating unit,Telephone,Mini-fridge,Hair dryer,TV 39 inchs,Air-conditioner,Free WiFi', 195, '', '', '', 1, 0, 180, 0, 'available'),
(16, '403', '14-08-2017 10:42:18', 'cdo7@csc.com', 'Our inexpensive family-operated 3-star Seibel’s Park-Hotel has over 40 guest rooms which are comfortably furnished in an elegant Florentine country house style. Alongside a television, radio and mini-bar, the rooms also contain a PC- and fax-port as well as a balcony.', 'blue-and-grey-bedroom-stunning-20-beautiful-blue-and-gray-bedrooms-digsdigs.jpg', 'blue-and-grey-bedroom-marvelous-blue-gray-bedroom-blogger-homes.jpg', 199, 'couple', 'Shower,Bathtub,One bed for 2 adult,Seating unit,Telephone,Mini-fridge,Hair dryer,TV 39 inchs,Air-conditioner,Free WiFi', 230, '', '', '', 2, 0, 165, 0, 'available'),
(17, '404', '14-08-2017 10:45:27', 'cdo7@csc.com', 'Our inexpensive family-operated 3-star Seibel’s Park-Hotel has over 40 guest rooms which are comfortably furnished in an elegant Florentine country house style. Alongside a television, radio and mini-bar, the rooms also contain a PC- and fax-port as well as a balcony.', 'room-pictures-awesome-teenage-room-designs.jpg', 'room-pictures-amazing-trident-cochin-rooms-and-suites.jpg', 80, 'single', 'Shower,Bathtub,One bed for 2 adult,Seating unit,Telephone,Mini-fridge,Hair dryer,TV 39 inchs,Air-conditioner,Free WiFi', 100, 'null', '', '', 1, 0, 60, 0, 'available'),
(18, '405', '14-08-2017 10:46:12', 'cdo7@csc.com', 'Our inexpensive family-operated 3-star Seibel’s Park-Hotel has over 40 guest rooms which are comfortably furnished in an elegant Florentine country house style. Alongside a television, radio and mini-bar, the rooms also contain a PC- and fax-port as well as a balcony.', 'room-pictures-contemporary-lets-room-tu-casa-fuera-de-your-home-away-from.jpg', 'room-pictures-delightful-livingfamily-room-aaron-design-and-build-inc.jpg', 180, 'family', 'Shower,Bathtub,One bed for 2 adult,Seating unit,Telephone,Mini-fridge,Hair dryer,TV 39 inchs,Air-conditioner,Free WiFi', 165, '', '', '', 4, 0, 165, 0, 'available'),
(19, '501', '14-08-2017 10:43:12', 'cdo7@csc.com', 'Our inexpensive family-operated 3-star Seibel’s Park-Hotel has over 40 guest rooms which are comfortably furnished in an elegant Florentine country house style. Alongside a television, radio and mini-bar, the rooms also contain a PC- and fax-port as well as a balcony.', 'room-pictures-unique-room-images.jpg', 'room-pictures-gorgeous-houzz.jpg', 550, 'family', 'Shower,Bathtub,One bed for 2 adult,Seating unit,Telephone,Mini-fridge,Hair dryer,TV 39 inchs,Air-conditioner,Free WiFi', 620, '', '', '', 8, 0, 800, 0, 'available'),
(20, '502', '14-08-2017 10:49:18', 'cdo7@csc.com', 'Our inexpensive family-operated 3-star Seibel’s Park-Hotel has over 40 guest rooms which are comfortably furnished in an elegant Florentine country house style. Alongside a television, radio and mini-bar, the rooms also contain a PC- and fax-port as well as a balcony.', 'blue-and-grey-bedroom-fascinating-blue-bedroom-gray-nightstand-blue-and-gray-bedding-bed-with-1.jpg', 'blue-and-grey-bedroom-2017.jpg', 95, 'couple', 'Shower,Bathtub,One bed for 2 adult,Seating unit,Telephone,Mini-fridge,Hair dryer,TV 39 inchs,Air-conditioner,Free WiFi', 120, '', '', '', 2, 0, 100, 0, 'available'),
(21, '503', '14-08-2017 10:56:12', 'cdo7@csc.com', 'Our inexpensive family-operated 3-star Seibel’s Park-Hotel has over 40 guest rooms which are comfortably furnished in an elegant Florentine country house style. Alongside a television, radio and mini-bar, the rooms also contain a PC- and fax-port as well as a balcony.', 'room-pictures-excellent-best-traditional-family-room-design-ideas-remodel-pictures.jpg', '504.jpg', 180, 'family', 'Shower,Bathtub,One bed for 2 adult,Seating unit,Telephone,Mini-fridge,Hair dryer,TV 39 inchs,Air-conditioner,Free WiFi', 185, 'null', '', '', 3, 0, 200, 0, 'available'),
(22, '504', '14-08-2017 10:59:13', 'cdo7@csc.com', 'Our inexpensive family-operated 3-star Seibel’s Park-Hotel has over 40 guest rooms which are comfortably furnished in an elegant Florentine country house style. Alongside a television, radio and mini-bar, the rooms also contain a PC- and fax-port as well as a balcony.', 'blue-and-grey-bedroom-terrific-bedroom-interior-light-blue-and-gray-3d-bedroom-interior-light-blue.jpg', 'blue-and-grey-bedroom-cool-teal-gray-bedroom-tributary-contemporary-bedroom.jpg', 145, 'couple', 'Shower,Bathtub,One bed for 2 adult,Seating unit,Telephone,Mini-fridge,Hair dryer,TV 39 inchs,Air-conditioner,Free WiFi', 160, '', '', '', 2, 0, 160, 0, 'available'),
(23, '505', '14-08-2017 11:02:13', 'cdo7@csc.com', 'Our inexpensive family-operated 3-star Seibel’s Park-Hotel has over 40 guest rooms which are comfortably furnished in an elegant Florentine country house style. Alongside a television, radio and mini-bar, the rooms also contain a PC- and fax-port as well as a balcony.', 'blue-and-grey-bedroom-stylish.jpg', 'blue-and-grey-bedroom-unique-blue-and-grey-bedroom-remodel-ideas-pinterest.jpg', 215, 'couple', 'Shower,Bathtub,One bed for 2 adult,Seating unit,Telephone,Mini-fridge,Hair dryer,TV 39 inchs,Air-conditioner,Free WiFi', 240, '', '', '', 2, 0, 180, 0, 'available'),
(24, '601', '14-08-2017 11:04:18', 'cdo7@csc.com', 'Our inexpensive family-operated 3-star Seibel’s Park-Hotel has over 40 guest rooms which are comfortably furnished in an elegant Florentine country house style. Alongside a television, radio and mini-bar, the rooms also contain a PC- and fax-port as well as a balcony.', 'blue-and-grey-bedroom-trend-20-beautiful-blue-and-gray-bedrooms-digsdigs.jpg', 'room-pictures-excellent-best-traditional-family-room-design-ideas-remodel-pictures.jpg', 130, 'couple', 'Shower,Bathtub,One bed for 2 adult,Seating unit,Telephone,Mini-fridge,Hair dryer,TV 39 inchs,Air-conditioner,Free WiFi', 110, '', '', '', 2, 0, 100, 0, 'available'),
(25, '602', '14-08-2017 11:05:36', 'cdo7@csc.com', 'Our inexpensive family-operated 3-star Seibel’s Park-Hotel has over 40 guest rooms which are comfortably furnished in an elegant Florentine country house style. Alongside a television, radio and mini-bar, the rooms also contain a PC- and fax-port as well as a balcony.', 'room-pictures-excellent-luxury-hotel-rooms.jpg', 'room-pictures-incredible-club-room-with-executive-lounge-benefits.jpg', 400, 'deluxe', 'Shower,Bathtub,One bed for 2 adult,Seating unit,Telephone,Mini-fridge,Hair dryer,TV 39 inchs,Air-conditioner,Free WiFi', 500, 'null', '', '', 4, 0, 250, 0, 'available'),
(26, '603', '14-08-2017 11:21:14', 'cdo7@csc.com', 'Our inexpensive family-operated 3-star Seibel’s Park-Hotel has over 40 guest rooms which are comfortably furnished in an elegant Florentine country house style. Alongside a television, radio and mini-bar, the rooms also contain a PC- and fax-port as well as a balcony.', 'blue-and-grey-bedroom-layout-blue-grey-bedroom-home-design-trends-blue-grey-bedroom-gray-blue-grey.jpg', 'blue-and-grey-bedroom-great-cobalt-blue-and-gray-master-bedroom-home-sweet-home-pinterest.jpg', 320, 'family', 'Shower,Bathtub,One bed for 2 adult,Seating unit,Telephone,Mini-fridge,Hair dryer,TV 39 inchs,Air-conditioner,Free WiFi', 380, '', '', '', 5, 0, 300, 0, 'available');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_5cca88c6i17ttuegcvdkgehah` (`name`),
  ADD UNIQUE KEY `UK_gfn44sntic2k93auag97juyij` (`username`);

--
-- Chỉ mục cho bảng `restaurant`
--
ALTER TABLE `restaurant`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_i6u3x7opncroyhd755ejknses` (`name`);

--
-- Chỉ mục cho bảng `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_1kuqhbfxed2e8t571uo82n545` (`name`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT cho bảng `restaurant`
--
ALTER TABLE `restaurant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT cho bảng `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
