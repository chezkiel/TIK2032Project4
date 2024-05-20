-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 20, 2024 at 06:25 PM
-- Server version: 10.11.2-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `web`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `article_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `interest_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`article_id`, `title`, `content`, `image_url`, `interest_id`) VALUES
(1, 'History Of Japan', 'Japan\'s history is a tapestry woven with threads of tradition, innovation, and resilience. Spanning millennia, its story is one of adaptation and transformation. From the prehistoric Jomon culture to the classical elegance of the Heian period, Japan\'s ancient roots run deep. The emergence of feudalism during the Kamakura period saw the rise of the samurai warrior class and the birth of a distinct martial culture. The following Muromachi and Azuchi-Momoyama periods witnessed a flowering of art, culture, and commerce, alongside the tumult of civil wars. The Tokugawa shogunate brought an era of relative peace and isolation, characterized by strict social hierarchy and the imposition of the sakoku policy, limiting foreign influence. However, by the mid-19th century, pressure from Western powers forced Japan to open its doors, leading to rapid modernization during the Meiji Restoration. The 20th century saw Japan rise as an industrial and imperial power, but it was marred by militarism, culminating in World War II and the devastation of Hiroshima and Nagasaki. Yet, from the ashes, Japan emerged once again, rebuilding its economy and society to become a global leader in technology, innovation, and culture. Today, Japan stands as a testament to the enduring spirit of its people and the resilience of its history.', 'image/image\\ \\(9\\).jpg', 1),
(2, 'Shrines in Japan', 'Shrines hold a sacred place in Japan\'s cultural and spiritual landscape, serving as conduits between the earthly realm and the divine. Rooted deeply in Shinto, the indigenous religion of Japan, these holy sites are dedicated to kami, the spirits believed to inhabit natural elements, ancestors, and even significant historical figures. From the iconic grandeur of the Meiji Shrine in Tokyo to the serene beauty of the Fushimi Inari Shrine in Kyoto, each shrine carries its own unique atmosphere and significance. Visitors often engage in rituals such as purification rites, prayers, and offerings, seeking blessings for health, prosperity, and success. The architecture of shrines, characterized by distinctive torii gates, vermilion-lacquered structures, and serene gardens, reflects a harmonious blend of nature and human craftsmanship. Throughout Japan, shrines serve as sanctuaries of peace and reflection, inviting all who enter to connect with the spiritual essence of the land and its people.', 'image/image\\ \\(2\\).jpg', 1),
(3, 'Torii Gate', 'Torii gates stand as iconic symbols of Japanese spirituality and tradition, marking the transition from the secular to the sacred. Rooted in Shinto belief, these distinctive vermilion arches symbolize the separation between the physical world and the realm of the kami, the spirits revered in Japan\'s indigenous religion. Each gate is meticulously crafted, typically made of wood or stone, and often adorned with sacred inscriptions or symbols. As visitors pass through the torii gate, they symbolically purify themselves before entering the sacred space of a shrine or other spiritual site. Beyond their religious significance, torii gates also serve as architectural marvels, blending seamlessly with the natural surroundings and creating picturesque vistas that have captivated artists and travelers for centuries. From the bustling streets of Tokyo to the tranquil paths of Kyoto\'s forests, torii gates continue to symbolize the timeless connection between humanity and the divine in Japanese culture.', 'image/image\\ \\(6\\).jpg', 1),
(4, 'Exploring Japan', 'Exploring Japan offers a journey through a land of contrasts, where ancient traditions harmoniously coexist with cutting-edge modernity. Travelers can immerse themselves in the vibrant energy of cities like Tokyo, with its towering skyscrapers, bustling markets, and innovative technology. In contrast, the tranquil temples and historic districts of Kyoto provide a serene glimpse into Japan\'s rich cultural heritage. Natural wonders abound, from the iconic silhouette of Mount Fuji to the serene beauty of cherry blossoms in spring and the fiery foliage of autumn. Culinary adventures await at every turn, from savoring sushi and ramen in local eateries to indulging in kaiseki, the art of Japanese haute cuisine. Whether it\'s soaking in an onsen, exploring historic castles, or participating in traditional tea ceremonies, Japan offers a multifaceted experience that enchants and enlightens. Each region, with its unique customs and landscapes, contributes to the country\'s tapestry, making exploring Japan a truly unforgettable adventure.', 'image/image\\ \\(5\\).jpg', 1),
(5, 'Zelda Revolution', 'This article explores the impact and legacy of Nintendo\'s critically acclaimed game, \"The Legend of Zelda: Breath of the Wild.\" It discusses how the game redefined open-world exploration with its vast, seamless landscape, emergent gameplay systems, and emphasis on player freedom. The article also examines the game\'s influence on the open-world genre and its lasting contributions to video game design.', 'image/image\\ \\(10\\).jpg', 2),
(6, 'Narrative Dive', 'Delving into the narrative intricacies of Naughty Dog\'s highly anticipated sequel, \"The Last of Us Part II,\" this article analyzes the storytelling techniques and themes explored in the game. It examines the controversial narrative choices, character development, and emotional impact of the game\'s storyline, offering insights into the evolving landscape of narrative-driven gaming experiences.', 'image/image\\ \\(11\\).jpg', 2),
(7, 'Minecraft Creativity', 'Focusing on the enduring popularity of \"Minecraft,\" this article explores how the game\'s open-ended sandbox gameplay fosters creativity and community building among players. It examines the diverse ways in which players engage with the game, from constructing elaborate structures to collaborating on shared projects and participating in player-run servers. The article also discusses the role of mods and user-generated content in expanding the possibilities of the \"Minecraft\" experience.', 'image/image\\ \\(12\\).jpg', 2),
(8, 'Among Us Storm', 'This article investigates the unexpected rise of \"Among Us,\" a multiplayer party game developed by InnerSloth. It explores the factors contributing to the game\'s sudden popularity, including its accessible gameplay, social dynamics, and viral spread on social media platforms. The article also examines the impact of \"Among Us\" on online gaming culture and its role in shaping new trends in multiplayer gaming.', 'image/image\\ \\(13\\).jpg', 2),
(9, 'Python Dominance', 'In this comprehensive exploration, we delve into the meteoric ascent of Python as the premier programming language in contemporary software development. Python\'s ascent to prominence stems from its remarkable versatility, user-friendly syntax, and extensive library support, which empower developers across diverse domains. From web development to data science, artificial intelligence, and beyond, Python has emerged as the go-to tool for tackling complex challenges with elegance and efficiency. We investigate the factors underpinning Python\'s widespread adoption, its vibrant community, and its pivotal role in shaping the technological landscape of the 21st century.', 'image/image\\ \\(14\\).jpg', 3),
(10, 'DevOps Revolution', 'Unpacking the transformative power of DevOps, this article offers a deep dive into the paradigm shift revolutionizing software development and deployment practices worldwide. DevOps bridges the traditional divide between development and operations, fostering seamless collaboration, automation, and continuous integration and delivery (CI/CD). By streamlining workflows, minimizing manual intervention, and embracing agile methodologies, DevOps empowers organizations to accelerate innovation, enhance product quality, and respond swiftly to market demands. We dissect the core principles of DevOps, spotlighting real-world success stories and charting the path toward a more agile, resilient, and customer-centric approach to software delivery.', 'image/image\\ \\(15\\).jpg', 3),
(11, 'Functional Paradigm', 'Embark on a journey into the realm of functional programming, where immutable data structures and pure functions reign supreme. This article illuminates the underlying principles and profound advantages of embracing a functional paradigm in software development. By prioritizing immutability, referential transparency, and higher-order functions, functional programming languages such as Haskell, Clojure, and Scala empower developers to craft code that is inherently more robust, predictable, and scalable. We explore the elegance of functional programming constructs, unravel the mysteries of monads and monoids, and showcase how embracing functional techniques can elevate the craft of software engineering to new heights of clarity and expressiveness.', 'image/image\\ \\(16\\).jpg', 3),
(12, 'Ethical AI', 'Amid the burgeoning advancements in artificial intelligence, a critical dialogue ensues about the ethical dimensions that underpin AI programming and deployment. This article confronts the moral quandaries and societal implications inherent in the development of AI systems, from algorithmic bias and data privacy concerns to questions of accountability and fairness. As AI technologies exert an ever-expanding influence on our daily lives, it is imperative for developers and policymakers alike to grapple with the ethical imperatives that accompany this transformative wave. We navigate the ethical terrain of AI programming, interrogate the ethical frameworks guiding AI research and development, and advocate for a principled approach that prioritizes human values, social responsibility, and the common good in the age of intelligent machines.', 'image/image\\ \\(17\\).jpg', 3);

-- --------------------------------------------------------

--
-- Table structure for table `interests`
--

CREATE TABLE `interests` (
  `interest_id` int(11) NOT NULL,
  `interest_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `interests`
--

INSERT INTO `interests` (`interest_id`, `interest_name`) VALUES
(1, 'Japan'),
(2, 'Games'),
(3, 'Programming');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `interest_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `interest_id`) VALUES
(22, 'Akuma', 1),
(23, 'kichi', 2),
(24, 'aingmaow', 3),
(25, 'kambey', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`article_id`);

--
-- Indexes for table `interests`
--
ALTER TABLE `interests`
  ADD PRIMARY KEY (`interest_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `interest_id` (`interest_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `article_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `interests`
--
ALTER TABLE `interests`
  MODIFY `interest_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`interest_id`) REFERENCES `interests` (`interest_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
