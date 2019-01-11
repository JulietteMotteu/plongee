-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 26, 2018 at 04:06 PM
-- Server version: 10.1.22-MariaDB
-- PHP Version: 7.0.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `plongee`
--

-- --------------------------------------------------------

--
-- Table structure for table `sites`
--

CREATE TABLE `sites` (
  `id` int(11) NOT NULL,
  `nom` varchar(60) NOT NULL,
  `photos` varchar(60) NOT NULL,
  `texte` text NOT NULL,
  `continent` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sites`
--

INSERT INTO `sites` (`id`, `nom`, `photos`, `texte`, `continent`) VALUES
(1, 'Malte', 'malte.jpg', 'Les eaux chaudes de Malte en été attirent de nombreux plongeurs. On y trouve un des meilleurs spots de plongée d\'Europe : le Blue Hole, où l\'on plonge dans une sorte de cavité et où l\'eau est d\'un beau bleu turquoise. A côté se trouve l\'Inland Sea, où l\'on plonge à côté d\'une impressionnante paroi qui descend jusqu\'à 60 mètres de profondeur.\r\nA Malte, il y a également moyen de faire de nombreuses plongée sur épaves qui offrent une vie sous-marine florissante.', 'EU'),
(2, 'Corse', 'corse.jpg', 'La Corse est incontestablement l’une des plus belles îles et l’une des meilleures destinations plongées de France. Les nombreuses réserves naturelles telles que Finocchiarola, Tre Padule de Suartone, Cerbicale, les bouches de Bonifacio, et la fameuse réserve de Scandola, classée au patrimoine mondial de l’UNESCO, préservent la vie sous-marine. La plongée en Corse permet de voir d’impressionnantes structures rocheuses, visiter des épaves exceptionnelles et plonger avec des mérous, des murènes et des poissons typiques de la méditerranée.', 'EU'),
(3, 'Maldives', 'maldives.jpg', 'Ce pays est considéré comme abritant les plus beaux spots de plongée au monde. L\'eau y est quasi transparante et l\'on peut trouver une variété de poissons extraordinaire. Ainsi, on peut apercevoir des raies mantas par dizaines, des requins, des tortues de mer... ', 'AS'),
(4, 'Thaïlande', 'thailande.jpg', 'La Thaïlande est une des plus touristiques destination de plongée. La plongée en Thailande comprend deux parties distinctes : le Golfe de Thailande et la mer Andaman. Les îles Similan sont un parc naturel connu comme le meilleur site pour faire de la plongée en Thailande et l’un des meilleurs du monde pour ses corails, sa grande faune marine et ses plages de sable blanc. Les 9  îles qui forment l’archipel des îles Similan sont situées dans un lieu magique, au coeur de la mer d’Andaman, à environ trois heures en bâteau du continent. Ses eaux font partie de la Thaïlande, même si elles se rapprochent des frontières avec la Birmanie. Ses îles sont pour la plupart inhabitées, faisant de cet endroit un pays magique. La majorité des meilleurs sites de plongée en Thaïlande se situe donc dans cet archipel.', 'AS'),
(5, 'Egypte', 'egypte.jpg', 'La plongée en Egypte offre de nombreux trésors sous marins. En Mer Rouge, on trouve probablement ce qui est la plus belle épave au monde : il s’agit de l’épave du Thistlegorm. Dans le Sinai se trouve le plus célèbre site de plongée au monde : le Blue Hole de Dahab. La plongée en Mer Rouge permet d\'admirer des formations de corail, des raies mantas, des requins marteaux, des tortues...', 'AF'),
(6, 'Tanzanie', 'tanzanie.jpg', 'L\'île de Zanzibar est une destination tropicale idyllique et fascinante pour les plongeurs. En effet, cette île compte parmi les meilleurs sites de plongée au monde si l’on veut y apercevoir pendant les mois de Septembre et d’Octobre, des baleines à bosse et des cachalots et de décembre à avril, des raies Manta et des requins baleines. Dans l’atoll de Mnemba, le site de Wattabomi nous plonge dans des eaux cristallines avec de superbes paysages sous-marins où il est possible de croiser des tortues et des requins de récifs. Leven Bank, est le meilleur site de plongée de Tanzanie ou bien le site de plongée ultime pour les plus aventureux! Avec de grands tombants et une excellente visibilité, c’est le lieu privilégié pour rencontrer des requins marteaux, des requins de récifs, des mérous géants et d\'énormes murènes.', 'AF'),
(7, 'Autralie', 'australie.jpg', 'La plongée en Australie est très souvent associée à la célèbre Grande Barrière de Corail. En effet, celle-ci, longue de 2000km et située dans le Queensland, constitue le plus grand récif de corail au monde. \r\nLa barrière de corail abrite un des écosystèmes les plus riches de la planète. Du fait de sa biodiversité, elle est une destinations très prisée des plongeurs. On y trouve aussi de nombreuses espèces endémiques.', 'OC'),
(8, 'Polynésie', 'polynesie.jpg', 'La Polynésie française est souvent considéré comme étant l’une des meilleures destinations plongées au monde : elle regorge d\'îles paradisiaques et de fonds marins d’une exceptionnelle beauté, aussi bien au niveau de sa flore que de sa faune. La passe de Tiputa est sans nul doute l’un des meilleurs sites de plongée du monde. Cette passe est particulièrement connue pour ses pélagiques. Il est très courant de croiser de grands requins gris, d’immenses requins marteaux tel que le M.Mokarran, de larges raies Manta, de grands bancs de raies léopards ou raies aigles, de beaux dauphins, ainsi que des tortues, des thons, des napoléons et bien d’autres. Par ailleurs, il est possible d\'y observer la migration des baleines, d’aout à octobre. Enfin, la visibilité est tout simplement extraordinaire et peut atteindre jusqu’à 60 mètres. C’est pourquoi ce site de plongée sous-marine en Polynésie française est un véritable paradis pour la plongée sous-marine. ', 'OC'),
(9, 'Mexique', 'mexique.jpg', 'La plongée au Mexique a beaucoup de choix à proposer: ainsi on peut plonger dans les Cénotes (réseau de puits naturels pouvant atteindre des dizaines de km) qui offrent un des meilleurs sites de plongée en grotte.\r\nSistema Dos Ojos est le meilleur site de plongée du Mexique. Il s\'agit d\'un réseau de grottes qui s’étend sur 82 kilomètres environ. La visibilité est excellente et l’eau est proche des 25°. Le site de plongée de Manchones Reef est lui le plus grand musée aquatique du monde : on peut y voir des centaines de statues immergées entre 3 et 6 mètres de profondeur. \r\nEnfin chaque année au large de Isla Mujeres, on peut observer des rassemblements géants de raies manta et de requins baleine.', 'AM'),
(10, 'Equateur', 'equateur.jpg', 'Le parc national des Galápagos, inscrit sur la liste mondiale du patrimoine de l’Unesco, accueille chaque année des dizaines de millier de touristes. Darwin’s Arch, meilleur site de plongée des Galápagos est un site unique où l\'on peut admirer des bancs gigantesques de requins marteaux, de raies Manta, de raies aigles, de requins de récifs et même parfois de requins baleines. \r\nOn pourra également observer énormément de tortue, de raies marbrée, de phoque, de barracuda... ', 'AM');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `sites`
--
ALTER TABLE `sites`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `sites`
--
ALTER TABLE `sites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
