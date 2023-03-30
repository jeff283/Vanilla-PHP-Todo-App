-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 25, 2023 at 03:57 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `todo_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `task`
--

CREATE TABLE `task` (
  `task_ID` int(11) NOT NULL,
  `uuid` varchar(255) DEFAULT NULL,
  `task_title` varchar(1000) DEFAULT NULL,
  `task_desc` text DEFAULT NULL,
  `task_status` bit(1) DEFAULT b'0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `task`
--

INSERT INTO `task` (`task_ID`, `uuid`, `task_title`, `task_desc`, `task_status`) VALUES
(1, '40d92952-bbe7-41b2-b49d-c0f6f4969534', 'the only bad', 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', b'1'),
(2, '28eaa78e-655a-4478-b79b-31c2a7a51af5', 'Let Him Have It', 'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.', b'0'),
(3, '3027519d-5258-45df-82bd-3e6244f5e609', 'Sabretooth', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.', b'0'),
(4, '28eaa78e-655a-4478-b79b-31c2a7a51af5', 'Bridesmaid, The (Demoiselle d\'honneur, La)', 'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.', b'0'),
(5, '0f47c5fc-862c-42db-b893-a3c90521c04c', 'World Before Her, The', 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.', b'0'),
(6, '40d92952-bbe7-41b2-b49d-c0f6f4969534', 'From the Sky Down', 'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.', b'0'),
(7, '0f47c5fc-862c-42db-b893-a3c90521c04c', 'Three Wishes', 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.', b'0'),
(8, '28eaa78e-655a-4478-b79b-31c2a7a51af5', 'Right Kind of Wrong, The', 'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.', b'0'),
(9, '40d92952-bbe7-41b2-b49d-c0f6f4969534', 'Wordplay', 'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.', b'0'),
(10, '0b7605aa-fca3-44aa-9271-d9e4d3945a98', 'Dark Circles ', 'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.', b'1'),
(11, '3027519d-5258-45df-82bd-3e6244f5e609', 'Manufacturing Dissent', 'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.', b'0'),
(12, '3027519d-5258-45df-82bd-3e6244f5e609', 'Antboy II: Revenge of the Red Fury (Antboy: Den Røde Furies Hævn)', 'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.', b'0'),
(13, '28eaa78e-655a-4478-b79b-31c2a7a51af5', 'I, Monster', 'In congue. Etiam justo. Etiam pretium iaculis justo.', b'0'),
(14, '40d92952-bbe7-41b2-b49d-c0f6f4969534', 'Journey of Hope (Reise der Hoffnung)', 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', b'0'),
(15, '0b7605aa-fca3-44aa-9271-d9e4d3945a98', 'Othello', 'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', b'1'),
(16, '0f47c5fc-862c-42db-b893-a3c90521c04c', 'Messengers 2: The Scarecrow', 'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.', b'1'),
(17, '0f47c5fc-862c-42db-b893-a3c90521c04c', 'Tennessee Johnson', 'In congue. Etiam justo. Etiam pretium iaculis justo.', b'1'),
(18, '40d92952-bbe7-41b2-b49d-c0f6f4969534', 'Man Vanishes, A (Ningen Johatsu)', 'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.', b'0'),
(19, '0f47c5fc-862c-42db-b893-a3c90521c04c', 'H.O.T.S.', 'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.', b'1'),
(20, '3027519d-5258-45df-82bd-3e6244f5e609', 'Zach Galifianakis: Live at the Purple Onion', 'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.', b'0'),
(21, '0f47c5fc-862c-42db-b893-a3c90521c04c', 'Double Trouble', 'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.', b'0'),
(22, '28eaa78e-655a-4478-b79b-31c2a7a51af5', 'Empire State', 'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.', b'1'),
(23, '40d92952-bbe7-41b2-b49d-c0f6f4969534', 'Pittsburgh', 'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.', b'0'),
(24, '3027519d-5258-45df-82bd-3e6244f5e609', 'Mickey\'s Once Upon a Christmas', 'Sed ante. Vivamus tortor. Duis mattis egestas metus.', b'1'),
(25, '0f47c5fc-862c-42db-b893-a3c90521c04c', 'Island, The', 'Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', b'1'),
(26, '28eaa78e-655a-4478-b79b-31c2a7a51af5', 'Ernest Goes to Africa', 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.', b'0'),
(27, '28eaa78e-655a-4478-b79b-31c2a7a51af5', 'Harry Potter and the Goblet of Fire', 'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.', b'0'),
(28, '3027519d-5258-45df-82bd-3e6244f5e609', 'Broken Bridges', 'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.', b'0'),
(29, '40d92952-bbe7-41b2-b49d-c0f6f4969534', 'It Came from Beneath the Sea', 'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.', b'0'),
(30, '40d92952-bbe7-41b2-b49d-c0f6f4969534', 'Hombre', 'Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', b'0'),
(31, '0b7605aa-fca3-44aa-9271-d9e4d3945a98', 'Killing Auntie (Zabicie ciotki)', 'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.', b'1'),
(32, '3027519d-5258-45df-82bd-3e6244f5e609', 'Slow Southern Steel', 'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.', b'1'),
(33, '3027519d-5258-45df-82bd-3e6244f5e609', 'Maelström', 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.', b'1'),
(34, '28eaa78e-655a-4478-b79b-31c2a7a51af5', 'Letter to Three Wives, A', 'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.', b'0'),
(35, '3027519d-5258-45df-82bd-3e6244f5e609', 'Juwanna Mann', 'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.', b'0'),
(36, '0b7605aa-fca3-44aa-9271-d9e4d3945a98', 'Set-Up, The', 'Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', b'1'),
(37, '0f47c5fc-862c-42db-b893-a3c90521c04c', 'Tell Me and I Will Forget', 'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.', b'1'),
(38, '28eaa78e-655a-4478-b79b-31c2a7a51af5', 'True Romance', 'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.', b'0'),
(39, '0b7605aa-fca3-44aa-9271-d9e4d3945a98', 'Deadly Spawn, The', 'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.', b'1'),
(40, '0f47c5fc-862c-42db-b893-a3c90521c04c', 'Racket, The', 'Fusce consequat. Nulla nisl. Nunc nisl.', b'0'),
(41, '40d92952-bbe7-41b2-b49d-c0f6f4969534', 'Berserk: The Golden Age Arc 2 - The Battle for Doldrey', 'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.', b'1'),
(42, '3027519d-5258-45df-82bd-3e6244f5e609', 'Killing of America, The', 'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.', b'1'),
(43, '0f47c5fc-862c-42db-b893-a3c90521c04c', 'Soloist, The', 'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.', b'1'),
(44, '3027519d-5258-45df-82bd-3e6244f5e609', 'Spanish Apartment, The (L\'auberge espagnole)', 'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.', b'1'),
(45, '28eaa78e-655a-4478-b79b-31c2a7a51af5', 'Asylum', 'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', b'1'),
(46, '0f47c5fc-862c-42db-b893-a3c90521c04c', 'Mr. Wrong', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.', b'0'),
(47, '28eaa78e-655a-4478-b79b-31c2a7a51af5', 'Class Trip, The (La classe de neige)', 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.', b'1'),
(48, '28eaa78e-655a-4478-b79b-31c2a7a51af5', 'Bridget Jones: The Edge of Reason', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.', b'1'),
(49, '3027519d-5258-45df-82bd-3e6244f5e609', 'Howards of Virginia, The', 'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.', b'0'),
(50, '0b7605aa-fca3-44aa-9271-d9e4d3945a98', 'Heavenly Creatures', 'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.', b'1'),
(51, '40d92952-bbe7-41b2-b49d-c0f6f4969534', 'Shaft\'s Big Score!', 'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.', b'0'),
(52, '3027519d-5258-45df-82bd-3e6244f5e609', 'You, Me and Dupree', 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.', b'1'),
(53, '0f47c5fc-862c-42db-b893-a3c90521c04c', 'Magic Magic', 'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.', b'0'),
(54, '0f47c5fc-862c-42db-b893-a3c90521c04c', 'In Therapy (Divã)', 'Sed ante. Vivamus tortor. Duis mattis egestas metus.', b'0'),
(55, '40d92952-bbe7-41b2-b49d-c0f6f4969534', 'Fragile', 'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.', b'1'),
(56, '40d92952-bbe7-41b2-b49d-c0f6f4969534', 'Parental Guidance', 'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.', b'1'),
(57, '28eaa78e-655a-4478-b79b-31c2a7a51af5', '101 Dalmatians II: Patch\'s London Adventure', 'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.', b'1'),
(58, '40d92952-bbe7-41b2-b49d-c0f6f4969534', 'Calendar', 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.', b'1'),
(59, '0f47c5fc-862c-42db-b893-a3c90521c04c', 'I\'ll Be Home For Christmas', 'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', b'1'),
(60, '0f47c5fc-862c-42db-b893-a3c90521c04c', 'Price of Forgiveness, The (Ndeysaan)', 'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.', b'1'),
(61, '0b7605aa-fca3-44aa-9271-d9e4d3945a98', 'Henry: Portrait of a Serial Killer', 'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.', b'1'),
(62, '0f47c5fc-862c-42db-b893-a3c90521c04c', 'Longshots, The', 'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.', b'0'),
(63, '0f47c5fc-862c-42db-b893-a3c90521c04c', 'The Orkly Kid', 'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', b'1'),
(64, '28eaa78e-655a-4478-b79b-31c2a7a51af5', 'Unknown Known, The', 'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', b'1'),
(65, '40d92952-bbe7-41b2-b49d-c0f6f4969534', 'One Potato, Two Potato', 'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.', b'1'),
(66, '40d92952-bbe7-41b2-b49d-c0f6f4969534', 'Tree, The', 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.', b'1'),
(67, '40d92952-bbe7-41b2-b49d-c0f6f4969534', 'Sabotage', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', b'0'),
(68, '40d92952-bbe7-41b2-b49d-c0f6f4969534', 'Living on One Dollar', 'Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', b'0'),
(69, '28eaa78e-655a-4478-b79b-31c2a7a51af5', 'Pretty Poison', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', b'0'),
(70, '0f47c5fc-862c-42db-b893-a3c90521c04c', 'Decoding the Past: Secrets of the Koran', 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.', b'0'),
(71, '0f47c5fc-862c-42db-b893-a3c90521c04c', 'Jabberwocky', 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.', b'1'),
(72, '0b7605aa-fca3-44aa-9271-d9e4d3945a98', 'Used People', 'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.', b'1'),
(73, '0b7605aa-fca3-44aa-9271-d9e4d3945a98', 'Blackboards (Takhté Siah)', 'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.', b'0'),
(74, '40d92952-bbe7-41b2-b49d-c0f6f4969534', 'Summer Interlude (Sommarlek)', 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', b'1'),
(75, '40d92952-bbe7-41b2-b49d-c0f6f4969534', 'Made for Each Other', 'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.', b'1'),
(76, '0b7605aa-fca3-44aa-9271-d9e4d3945a98', 'Harvey', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.', b'0'),
(77, '28eaa78e-655a-4478-b79b-31c2a7a51af5', 'Hulk', 'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.', b'1'),
(78, '0f47c5fc-862c-42db-b893-a3c90521c04c', 'Out of the Fog', 'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.', b'0'),
(79, '40d92952-bbe7-41b2-b49d-c0f6f4969534', 'Hollywood Revue of 1929, The', 'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.', b'0'),
(80, '28eaa78e-655a-4478-b79b-31c2a7a51af5', 'Antisocial', 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.', b'1'),
(81, '0f47c5fc-862c-42db-b893-a3c90521c04c', 'Varan the Unbelievable', 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.', b'0'),
(82, '0b7605aa-fca3-44aa-9271-d9e4d3945a98', 'Gold', 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.', b'1'),
(83, '3027519d-5258-45df-82bd-3e6244f5e609', 'Don\'t Eat the Pictures: Sesame Street at the Metropolitan Museum of Art', 'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.', b'0'),
(84, '40d92952-bbe7-41b2-b49d-c0f6f4969534', 'Lady and the Duke, The (Anglaise et le duc, L\')', 'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.', b'1'),
(85, '0f47c5fc-862c-42db-b893-a3c90521c04c', 'Underworld: Awakening', 'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', b'1'),
(86, '40d92952-bbe7-41b2-b49d-c0f6f4969534', 'Magic Gloves, The (Los guantes mágicos)', 'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.', b'1'),
(87, '40d92952-bbe7-41b2-b49d-c0f6f4969534', 'May 18 (Hwaryeohan hyuga)', 'In congue. Etiam justo. Etiam pretium iaculis justo.', b'0'),
(88, '40d92952-bbe7-41b2-b49d-c0f6f4969534', 'Tuck Everlasting', 'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', b'0'),
(89, '40d92952-bbe7-41b2-b49d-c0f6f4969534', 'Man Trouble', 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.', b'1'),
(90, '40d92952-bbe7-41b2-b49d-c0f6f4969534', 'Phantoms', 'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.', b'0'),
(91, '0f47c5fc-862c-42db-b893-a3c90521c04c', 'Cross of Iron', 'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.', b'1'),
(92, '3027519d-5258-45df-82bd-3e6244f5e609', 'Number One with a Bullet', 'Fusce consequat. Nulla nisl. Nunc nisl.', b'0'),
(93, '3027519d-5258-45df-82bd-3e6244f5e609', 'It\'s a Bikini World', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.', b'1'),
(94, '40d92952-bbe7-41b2-b49d-c0f6f4969534', 'Angel', 'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.', b'0'),
(95, '40d92952-bbe7-41b2-b49d-c0f6f4969534', 'Momma\'s Man', 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.', b'0'),
(96, '3027519d-5258-45df-82bd-3e6244f5e609', 'Tom and Huck', 'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.', b'0'),
(97, '0b7605aa-fca3-44aa-9271-d9e4d3945a98', 'Boyz N the Hood', 'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.', b'1'),
(98, '0f47c5fc-862c-42db-b893-a3c90521c04c', 'Love Letters', 'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.', b'1'),
(99, '3027519d-5258-45df-82bd-3e6244f5e609', 'Captain Corelli\'s Mandolin', 'Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', b'1'),
(100, '0b7605aa-fca3-44aa-9271-d9e4d3945a98', 'Sum of Us, The', 'Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', b'1'),
(101, '40d92952-bbe7-41b2-b49d-c0f6f4969534', 'Test Bird, The', 'Nulla ut erat id mauris vulputate ', b'0'),
(102, '40d92952-bbe7-41b2-b49d-c0f6f4969534', 'Test Bird, The', 'Nulla ut erat id mauris vulputate', b'0'),
(103, '40d92952-bbe7-41b2-b49d-c0f6f4969534', 'Test Bird, The', 'Nulla ut erat id mauris vulputate', b'0'),
(104, '40d92952-bbe7-41b2-b49d-c0f6f4969534', 'test 2', 'test2 desc', b'0'),
(105, '40d92952-bbe7-41b2-b49d-c0f6f4969534', 'test3 ', 'test3 desc', b'0'),
(106, '40d92952-bbe7-41b2-b49d-c0f6f4969534', 'another', 'another desc', b'0'),
(107, '40d92952-bbe7-41b2-b49d-c0f6f4969534', 'One Blue Bird ', 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', b'0'),
(108, '40d92952-bbe7-41b2-b49d-c0f6f4969534', 'wqnad12', 'wqnad12 desc', b'0'),
(109, '40d92952-bbe7-41b2-b49d-c0f6f4969534', 'tre', 'tre desc', b'0'),
(110, '40d92952-bbe7-41b2-b49d-c0f6f4969534', 'sompa', 'sompa desc', b'0');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `uuid` varchar(255) NOT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `user_password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`uuid`, `user_name`, `user_password`) VALUES
('0252984d-cb0e-11ed-bd19-fc15b4ea0b5a', 'aorta', 'canva'),
('0b7605aa-fca3-44aa-9271-d9e4d3945a98', 'tkainec', 'j55oo5'),
('0f47c5fc-862c-42db-b893-a3c90521c04c', 'tblissb', 'MdW93U'),
('28eaa78e-655a-4478-b79b-31c2a7a51af5', 'dhadingham2', 'RUJ16P'),
('3027519d-5258-45df-82bd-3e6244f5e609', 'bhobben1', 'dGauZVBpKU'),
('40d92952-bbe7-41b2-b49d-c0f6f4969534', 'ksigsworth8', 'VMFOhfBq'),
('44de3156-8fcf-47e9-b4d7-20c65999d713', 'ndeverale5', 'IynwdOJm'),
('56ff6b2e-cb0b-11ed-bd19-fc15b4ea0b5a', 'osongo', 'kisogo'),
('6a92935d-ad14-4770-b23e-3573348dccc5', 'rbrieretona', 'jWT7bbZl'),
('704168bc-26e0-4bf5-b361-fd2f333e2ddf', 'kcoleshillg', 'edcbej45uTSs'),
('79a90864-6468-4d9b-9ac3-4c1255af63f4', 'ssmorthite', 'OXdQnpfgVG'),
('83595295-887d-496f-8be0-311b3ab46c56', 'ederoche4', 'Olxc9sKwB9'),
('8d1d196b-8359-43d2-aab9-5a4ce219e441', 'mchasteauh', 'UcUKrS'),
('8f557acd-ddc2-4e0d-aee8-a909fcb6afcb', 'wdunbobin0', 'r9TZ1YJE0'),
('9e8dd04b-ba0e-4531-8825-0f618172f911', 'mchape6', '0S1msR15D1W'),
('a542fb66-9e32-4350-a1ad-15e915443de6', 'alangeley3', '27pO80aOmC'),
('aa355d15-598b-4f72-a9c4-86c90acf7047', 'llarner9', 'a0AefKwUGVY'),
('b845cbc9-611f-486f-88b6-e5572d8a493b', 'tpettie7', 'yaoDbZC'),
('b9f78de6-7934-46fe-a7d1-659dbf19d12b', 'kworswickd', 'CI35hOO74p3i'),
('c65b98cd-8f19-4095-b888-cc3b3236eedb', 'lmardlej', 'KIuX37J'),
('d014f670-cb0d-11ed-bd19-fc15b4ea0b5a', 'a', 'a'),
('d925aa34-cb0d-11ed-bd19-fc15b4ea0b5a', 'abel', 'mutua'),
('ed47cb06-37e1-4c6a-88b3-511252aba75e', 'tgagenf', 'w6fvRWau'),
('f41c3501-cb0d-11ed-bd19-fc15b4ea0b5a', 'abel', 'mutua'),
('f56d57df-b97d-4b8e-92a7-75f21785dda7', 'cpyketti', 'rHg5HCJIC');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `task`
--
ALTER TABLE `task`
  ADD PRIMARY KEY (`task_ID`),
  ADD KEY `uuid` (`uuid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`uuid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `task`
--
ALTER TABLE `task`
  MODIFY `task_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `task`
--
ALTER TABLE `task`
  ADD CONSTRAINT `task_ibfk_1` FOREIGN KEY (`uuid`) REFERENCES `user` (`uuid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
