-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 18 jun 2021 om 20:37
-- Serverversie: 10.4.17-MariaDB
-- PHP-versie: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `japan_intern`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `education`
--

CREATE TABLE `education` (
  `education_id` mediumint(9) NOT NULL,
  `user_id` mediumint(9) DEFAULT NULL,
  `education_name` varchar(255) DEFAULT NULL,
  `contact_firstname` varchar(255) DEFAULT NULL,
  `contact_middlename` varchar(255) DEFAULT NULL,
  `contact_surname` varchar(255) DEFAULT NULL,
  `contact_email` varchar(255) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `region` varchar(50) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `postalZip` varchar(10) DEFAULT NULL,
  `street_address` varchar(255) DEFAULT NULL,
  `profile_text` text DEFAULT NULL,
  `position` text DEFAULT NULL,
  `position_text` text DEFAULT NULL,
  `video` text DEFAULT NULL,
  `profile_image` text DEFAULT NULL,
  `social_links` text DEFAULT NULL,
  `profile_open_untill` varchar(255) DEFAULT NULL,
  `website` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `education`
--

INSERT INTO `education` (`education_id`, `user_id`, `education_name`, `contact_firstname`, `contact_middlename`, `contact_surname`, `contact_email`, `country`, `region`, `city`, `postalZip`, `street_address`, `profile_text`, `position`, `position_text`, `video`, `profile_image`, `social_links`, `profile_open_untill`, `website`) VALUES
(1, 0, 'Vel Quam Company', 'Connor', 'Lynn', 'Sanders', 'augue@quis.net', 'Nigeria', 'Delta', 'Warri', '634387', 'P.O. Box 868, 213 Semper Rd.', 'eget tincidunt dui augue eu tellus. Phasellus elit pede, malesuada vel, venenatis vel, faucibus id, libero. Donec consectetuer mauris id sapien. Cras dolor dolor, tempus non, lacinia at, iaculis quis, pede. Praesent eu dui. Cum', 'Pellentesque', 'a nunc. In at pede. Cras vulputate velit eu sem. Pellentesque ut ipsum ac mi eleifend egestas. Sed pharetra, felis eget varius ultrices, mauris ipsum porta elit, a feugiat tellus lorem eu metus. In lorem. Donec elementum,', 'felis, adipiscing fringilla, porttitor', 'est. Nunc ullamcorper,', 'sapien, cursus in, hendrerit consectetuer,', '2022年5月23日', 'et, rutrum eu, ultrices'),
(2, 2, 'Nulla Tincidunt Limited', 'Magee', 'Edward', 'Grant', 'aliquam.erat.volutpat@adipiscingelit.edu', 'Chile', 'Atacama', 'Alto del Carmen', '144765', 'P.O. Box 604, 1669 Auctor St.', 'vitae, sodales at, velit. Pellentesque ultricies dignissim lacus. Aliquam rutrum lorem ac risus. Morbi metus. Vivamus euismod urna. Nullam lobortis quam a felis ullamcorper viverra. Maecenas iaculis aliquet diam. Sed diam lorem, auctor', 'tempor lorem, eget mollis lectus pede et', 'tempus risus. Donec egestas. Duis ac arcu. Nunc mauris. Morbi non sapien molestie orci tincidunt adipiscing. Mauris molestie pharetra nibh. Aliquam ornare, libero at auctor', 'pretium', 'ac nulla. In tincidunt congue turpis. In condimentum.', 'lorem ac risus. Morbi metus. Vivamus euismod urna.', '2022年5月23日', 'mi lacinia mattis. Integer'),
(3, 3, 'Penatibus Et LLC', 'Jade', 'Edward', 'Bell', 'dui.cum@auctorvitaealiquet.co.uk', 'Nigeria', 'Delta', 'Sapele', '356162', 'P.O. Box 906, 7238 Mauris Rd.', 'risus. Morbi metus. Vivamus euismod urna. Nullam lobortis quam a felis ullamcorper viverra. Maecenas iaculis aliquet diam. Sed diam lorem, auctor quis, tristique ac, eleifend vitae, erat. Vivamus nisi. Mauris nulla. Integer urna. Vivamus molestie dapibus ligula.', 'blandit. Nam nulla magna, malesuada vel, convallis in, cursus', 'placerat, augue. Sed molestie. Sed id risus quis diam luctus lobortis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos hymenaeos. Mauris ut quam vel sapien imperdiet ornare. In faucibus. Morbi vehicula. Pellentesque tincidunt tempus risus. Donec egestas. Duis ac arcu. Nunc mauris. Morbi', 'purus sapien, gravida non, sollicitudin a, malesuada id, erat.', 'gravida sagittis. Duis gravida.', 'lobortis quis, pede. Suspendisse dui. Fusce diam', '2022年5月23日', 'leo. Morbi neque tellus, imperdiet'),
(4, 0, 'Imperdiet Nec Foundation', 'Isabelle', 'Edward', 'Brady', 'arcu.vestibulum@donecconsectetuermauris.edu', 'South Korea', 'South Chungcheong', 'Daejeon', '22593', '938-6284 Fusce Rd.', 'mollis. Integer tincidunt aliquam arcu. Aliquam ultrices iaculis odio. Nam interdum enim non nisi. Aenean eget metus. In nec orci. Donec nibh. Quisque nonummy ipsum non arcu. Vivamus sit amet risus. Donec egestas. Aliquam nec enim. Nunc', 'vulputate ullamcorper magna.', 'nunc risus varius orci, in consequat enim diam vel arcu. Curabitur ut odio vel est tempor bibendum. Donec felis orci, adipiscing non, luctus sit amet, faucibus ut, nulla. Cras eu tellus eu augue porttitor interdum. Sed auctor odio a purus. Duis elementum, dui quis accumsan convallis, ante lectus', 'nonummy. Fusce fermentum fermentum arcu. Vestibulum ante', 'sapien,', 'aliquet libero. Integer in magna. Phasellus dolor elit, pellentesque', '2022年5月23日', 'augue eu tellus. Phasellus elit pede,'),
(5, 2, 'Ultricies Dignissim Limited', 'Rogan', 'Elizabeth', 'Haley', 'eros.nec@sapiencursus.org', 'Austria', 'Tyrol', 'Lienz', '2870', 'P.O. Box 600, 1626 Lobortis Street', 'viverra. Maecenas iaculis aliquet diam. Sed diam lorem, auctor quis, tristique ac, eleifend vitae, erat. Vivamus nisi. Mauris nulla. Integer urna. Vivamus', 'non, dapibus rutrum, justo. Praesent luctus. Curabitur egestas nunc', 'neque. Nullam ut nisi a odio semper cursus. Integer mollis. Integer tincidunt aliquam arcu. Aliquam ultrices iaculis odio. Nam interdum enim non nisi. Aenean eget', 'eros. Nam consequat dolor vitae dolor. Donec', 'auctor. Mauris vel turpis. Aliquam adipiscing', 'erat neque non', '2022年5月23日', 'faucibus ut, nulla. Cras eu tellus'),
(6, 2, 'Interdum Enim Ltd', 'Macaulay', 'Lynn', 'Wilkinson', 'curabitur@integer.ca', 'Colombia', 'Córdoba', 'Santa Cruz de Lorica', '385673', 'Ap #449-1431 Tortor. St.', 'Aenean eget magna. Suspendisse tristique neque venenatis lacus. Etiam bibendum fermentum metus. Aenean sed pede nec ante blandit viverra. Donec tempus, lorem fringilla ornare', 'mollis', 'sodales purus, in molestie tortor nibh sit amet orci. Ut sagittis lobortis mauris. Suspendisse aliquet molestie tellus. Aenean egestas hendrerit neque. In ornare sagittis felis. Donec tempor, est ac mattis semper, dui lectus rutrum urna, nec luctus felis purus ac tellus. Suspendisse sed dolor. Fusce mi lorem, vehicula et,', 'et, lacinia vitae,', 'tellus. Nunc lectus', 'ornare. In faucibus. Morbi vehicula. Pellentesque tincidunt tempus risus. Donec', '2022年5月23日', 'sollicitudin adipiscing ligula. Aenean'),
(7, 4, 'Ante Bibendum Ltd', 'Stephanie', 'Henry', 'Blake', 'ipsum.leo@metusin.co.uk', 'Austria', 'Vienna', 'Vienna', '5939', '347-484 Commodo St.', 'ante, iaculis nec, eleifend non, dapibus rutrum, justo. Praesent luctus. Curabitur egestas nunc sed libero. Proin sed turpis nec mauris blandit mattis. Cras eget nisi dictum augue malesuada malesuada. Integer id magna et', 'non, bibendum sed, est.', 'Sed malesuada augue ut lacus. Nulla tincidunt, neque vitae semper egestas, urna justo faucibus lectus, a sollicitudin orci sem eget massa. Suspendisse eleifend. Cras sed leo. Cras vehicula aliquet libero. Integer in magna. Phasellus dolor elit, pellentesque a, facilisis non,', 'habitant morbi tristique senectus et netus et', 'auctor velit. Aliquam nisl. Nulla eu neque', 'arcu. Aliquam ultrices iaculis odio. Nam interdum', '2022年5月23日', 'quis diam. Pellentesque habitant morbi tristique senectus et'),
(8, 2, 'Lectus Nullam LLP', 'Florence', 'Henry', 'Mays', 'lobortis@suspendissesagittisnullam.net', 'South Korea', 'North Gyeongsang', 'Sangju', '26608', '971-8456 Dui. Rd.', 'sem, vitae aliquam eros turpis non enim. Mauris quis turpis vitae purus gravida sagittis. Duis gravida. Praesent eu nulla at sem molestie sodales. Mauris blandit enim consequat purus. Maecenas libero est, congue a, aliquet vel, vulputate eu, odio. Phasellus at augue id ante', 'aliquet, sem ut cursus', 'vitae risus. Duis a mi fringilla mi lacinia mattis. Integer eu lacus. Quisque imperdiet, erat nonummy ultricies ornare, elit elit fermentum risus, at', 'dapibus rutrum, justo.', 'vitae, orci. Phasellus dapibus quam quis', 'lorem ipsum sodales purus, in molestie tortor', '2022年5月23日', 'amet risus. Donec'),
(9, 1, 'Lobortis Class Aptent LLC', 'Michael', 'Francis', 'Camacho', 'sed.nec.metus@sodalesmaurisblandit.org', 'Canada', 'Quebec', 'Pointe-Claire', 'H2M 3V1', 'P.O. Box 205, 7973 Vulputate, Avenue', 'Nam consequat dolor vitae dolor. Donec fringilla. Donec feugiat metus sit amet ante. Vivamus non lorem vitae odio sagittis semper. Nam tempor diam dictum sapien. Aenean', 'luctus et ultrices posuere', 'euismod et, commodo at, libero. Morbi accumsan laoreet ipsum. Curabitur consequat, lectus sit amet luctus vulputate, nisi sem semper erat, in consectetuer ipsum nunc id enim. Curabitur massa. Vestibulum accumsan neque et nunc. Quisque ornare tortor at risus. Nunc ac sem ut dolor dapibus gravida. Aliquam tincidunt,', 'lectus quis massa. Mauris vestibulum, neque', 'placerat eget, venenatis a, magna. Lorem ipsum dolor', 'nunc id enim. Curabitur massa. Vestibulum accumsan neque et', '2022年5月23日', 'pellentesque a, facilisis non, bibendum sed, est. Nunc'),
(10, 3, 'Scelerisque Scelerisque LLC', 'Keegan', 'James', 'Green', 'nisl.arcu.iaculis@aliquetodio.org', 'Colombia', 'Huila', 'Garzón', '842882', 'Ap #492-1703 Pede. Ave', 'eu tempor erat neque non quam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aliquam fringilla cursus purus. Nullam scelerisque neque sed sem egestas blandit. Nam nulla magna, malesuada vel, convallis in, cursus et, eros. Proin ultrices. Duis', 'ante ipsum primis in', 'tellus non magna. Nam ligula elit, pretium et, rutrum non, hendrerit id, ante. Nunc mauris sapien, cursus in, hendrerit consectetuer, cursus et, magna. Praesent interdum ligula eu enim. Etiam imperdiet', 'arcu. Aliquam ultrices iaculis odio. Nam interdum enim', 'auctor odio a purus. Duis elementum, dui quis', 'adipiscing elit. Aliquam auctor, velit eget', '2022年5月23日', 'tristique pharetra. Quisque');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `entity`
--

CREATE TABLE `entity` (
  `entity_id` mediumint(9) NOT NULL,
  `user_id` mediumint(9) DEFAULT NULL,
  `entity_name` varchar(255) DEFAULT NULL,
  `contact_firstname` varchar(255) DEFAULT NULL,
  `contact_middlename` varchar(255) DEFAULT NULL,
  `contact_surname` varchar(255) DEFAULT NULL,
  `contact_email` varchar(255) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `region` varchar(50) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `postalZip` varchar(10) DEFAULT NULL,
  `street_address` varchar(255) DEFAULT NULL,
  `profile_text` text DEFAULT NULL,
  `position` text DEFAULT NULL,
  `position_text` text DEFAULT NULL,
  `video` text DEFAULT NULL,
  `profile_image` text DEFAULT NULL,
  `social_links` text DEFAULT NULL,
  `profile_open_untill` varchar(255) DEFAULT NULL,
  `website` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `entity`
--

INSERT INTO `entity` (`entity_id`, `user_id`, `entity_name`, `contact_firstname`, `contact_middlename`, `contact_surname`, `contact_email`, `country`, `region`, `city`, `postalZip`, `street_address`, `profile_text`, `position`, `position_text`, `video`, `profile_image`, `social_links`, `profile_open_untill`, `website`) VALUES
(1, 0, 'Cras Eu Industries', 'Alvin', 'Charles', 'Holcomb', 'a.auctor.non@ipsumacmi.ca', 'Colombia', 'Guaviare', 'Miraflores', '188985', 'Ap #750-4240 A Rd.', 'Etiam bibendum fermentum metus. Aenean sed pede nec ante blandit viverra. Donec tempus, lorem fringilla ornare placerat, orci lacus vestibulum lorem, sit amet ultricies sem magna nec quam. Curabitur', 'sem magna nec quam. Curabitur', 'eu dui. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean eget magna. Suspendisse tristique neque venenatis lacus. Etiam bibendum fermentum metus. Aenean sed pede nec', 'risus. In mi', 'fermentum risus, at fringilla purus', 'eget nisi dictum augue malesuada malesuada.', '2022年5月23日', 'faucibus orci luctus et ultrices posuere cubilia'),
(2, 2, 'Enim Suspendisse Corporation', 'Roth', 'Edward', 'Beasley', 'primis@sit.org', 'Austria', 'Tyrol', 'Landeck', '5703', 'Ap #330-1993 Egestas Av.', 'netus et malesuada fames ac turpis egestas. Fusce aliquet magna a neque. Nullam ut nisi a odio semper cursus. Integer mollis. Integer tincidunt aliquam arcu. Aliquam ultrices iaculis odio. Nam interdum enim', 'Vivamus molestie dapibus', 'dictum placerat, augue. Sed molestie. Sed id risus quis diam luctus lobortis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos hymenaeos. Mauris ut quam vel sapien imperdiet ornare. In faucibus. Morbi vehicula. Pellentesque', 'sollicitudin orci sem', 'Donec dignissim magna a tortor.', 'sit amet', '2022年5月23日', 'mollis vitae, posuere at, velit.'),
(3, 1, 'Odio Sagittis Incorporated', 'Tanek', 'Elizabeth', 'Watson', 'lobortis@elementumlorem.edu', 'United Kingdom', 'Nairnshire', 'Nairn', 'E1I 4JC', '3499 Eros St.', 'malesuada ut, sem. Nulla interdum. Curabitur dictum. Phasellus in felis. Nulla tempor augue ac ipsum. Phasellus vitae mauris sit amet lorem semper auctor. Mauris vel turpis. Aliquam adipiscing lobortis risus. In mi pede, nonummy ut, molestie in,', 'malesuada fames ac turpis', 'est. Nunc laoreet lectus quis massa. Mauris vestibulum, neque sed dictum eleifend, nunc risus varius orci, in consequat enim diam vel arcu. Curabitur ut odio vel est tempor bibendum. Donec felis orci, adipiscing non, luctus sit amet, faucibus ut, nulla. Cras eu', 'Mauris eu turpis. Nulla aliquet. Proin', 'vestibulum, neque sed dictum eleifend, nunc', 'enim, condimentum eget, volutpat', '2022年5月23日', 'malesuada augue ut lacus. Nulla tincidunt, neque vitae semper egestas,'),
(4, 2, 'Purus In Corp.', 'Tara', 'Charles', 'Francis', 'lectus.a@tellusaeneanegestas.co.uk', 'Belgium', 'Quảng Nam', 'Tam Kỳ', '728859', '2399 Tempus Avenue', 'ac facilisis facilisis, magna tellus faucibus leo, in lobortis tellus justo sit amet nulla. Donec non justo. Proin non massa non ante bibendum ullamcorper. Duis cursus, diam at pretium aliquet, metus urna convallis erat, eget', 'Integer urna. Vivamus', 'convallis convallis dolor. Quisque tincidunt pede ac urna. Ut tincidunt vehicula risus. Nulla eget metus eu erat semper rutrum. Fusce dolor quam, elementum at, egestas a, scelerisque sed, sapien. Nunc pulvinar arcu et', 'Suspendisse non leo. Vivamus nibh dolor, nonummy', 'est ac facilisis facilisis,', 'Proin', '2022年5月23日', 'fames ac turpis egestas. Fusce aliquet magna a neque.'),
(5, 1, 'Cras Associates', 'Sopoline', 'Henry', 'Workman', 'quis.tristique@hendreritdonec.edu', 'Costa Rica', 'Limón', 'Guápiles', '50113', '449-7635 Aliquam St.', 'eu tempor erat neque non quam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aliquam fringilla cursus purus. Nullam scelerisque neque sed sem egestas blandit. Nam nulla magna, malesuada vel, convallis in,', 'erat vel pede blandit congue. In scelerisque scelerisque', 'bibendum ullamcorper. Duis cursus, diam at pretium aliquet, metus urna convallis erat, eget tincidunt dui augue eu tellus. Phasellus elit pede, malesuada vel, venenatis vel, faucibus id, libero. Donec consectetuer', 'justo. Proin non', 'mattis ornare,', 'ac sem ut dolor dapibus gravida. Aliquam tincidunt,', '2022年5月23日', 'erat vel pede blandit congue. In scelerisque scelerisque dui. Suspendisse'),
(6, 4, 'Netus Associates', 'Sydney', 'James', 'Hendrix', 'elit@tellusnunc.co.uk', 'Austria', 'Styria', 'Knittelfeld', '3436', 'Ap #535-4879 Nulla Street', 'eget magna. Suspendisse tristique neque venenatis lacus. Etiam bibendum fermentum metus. Aenean sed pede nec ante blandit viverra. Donec tempus, lorem fringilla ornare placerat, orci lacus vestibulum', 'blandit', 'lacus. Nulla tincidunt, neque vitae semper egestas, urna justo faucibus lectus, a sollicitudin orci sem eget massa. Suspendisse eleifend. Cras sed leo. Cras vehicula aliquet libero. Integer in magna. Phasellus dolor elit, pellentesque a, facilisis non, bibendum sed, est. Nunc laoreet lectus quis massa. Mauris vestibulum, neque sed dictum', 'eu dolor egestas rhoncus. Proin nisl sem,', 'scelerisque mollis. Phasellus libero mauris, aliquam', 'parturient montes, nascetur ridiculus mus. Proin vel', '2022年5月23日', 'ridiculus mus. Donec dignissim magna a'),
(7, 2, 'Auctor Velit Foundation', 'Neville', 'James', 'Mccarthy', 'consectetuer.adipiscing.elit@dapibusrutrum.com', 'Canada', 'Newfoundland and Labrador', 'Spaniard\'s Bay', 'A8G 8H5', '3310 Vulputate Av.', 'lectus. Nullam suscipit, est ac facilisis facilisis, magna tellus faucibus leo, in lobortis tellus justo sit amet nulla. Donec non justo. Proin non massa non ante bibendum ullamcorper. Duis cursus,', 'enim. Etiam', 'in faucibus orci luctus et ultrices posuere cubilia Curae Phasellus ornare. Fusce mollis. Duis sit amet diam eu dolor egestas rhoncus. Proin nisl sem, consequat nec, mollis vitae, posuere at, velit. Cras lorem lorem, luctus ut, pellentesque eget, dictum placerat, augue. Sed molestie. Sed id risus quis', 'lorem, sit amet ultricies sem', 'morbi tristique senectus et', 'semper tellus id nunc interdum feugiat. Sed', '2022年5月23日', 'gravida nunc sed pede. Cum sociis natoque penatibus et'),
(8, 2, 'Vitae Mauris Corporation', 'Aristotle', 'John', 'Baxter', 'semper.egestas.urna@loremsit.com', 'Belgium', 'Bình Dương', 'Thủ Dầu Một', '461707', 'Ap #516-1507 Nunc Rd.', 'mi lorem, vehicula et, rutrum eu, ultrices sit amet, risus. Donec nibh enim, gravida sit amet, dapibus id, blandit at, nisi. Cum sociis natoque penatibus et magnis dis parturient montes,', 'sit amet risus. Donec egestas. Aliquam nec', 'tincidunt tempus risus. Donec egestas. Duis ac arcu. Nunc mauris. Morbi non sapien molestie orci tincidunt adipiscing. Mauris molestie pharetra nibh. Aliquam ornare, libero at auctor ullamcorper, nisl arcu iaculis enim, sit amet ornare lectus justo', 'orci luctus et ultrices posuere cubilia Curae', 'consectetuer ipsum nunc id enim. Curabitur massa. Vestibulum', 'elit pede, malesuada', '2022年5月23日', 'cursus luctus,'),
(9, 3, 'Sodales LLP', 'Reece', 'Francis', 'Petersen', 'placerat.velit.quisque@eratvolutpat.edu', 'Peru', 'Ancash', 'Chimbote', '24621', '751-1385 A Avenue', 'elit erat vitae risus. Duis a mi fringilla mi lacinia mattis. Integer eu lacus. Quisque imperdiet, erat nonummy ultricies ornare, elit elit fermentum risus, at fringilla purus mauris a nunc. In at pede. Cras vulputate velit eu sem. Pellentesque ut', 'condimentum eget, volutpat ornare, facilisis eget, ipsum. Donec', 'faucibus ut, nulla. Cras eu tellus eu augue porttitor interdum. Sed auctor odio a purus. Duis elementum, dui quis accumsan convallis, ante lectus', 'sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam', 'vitae, aliquet nec, imperdiet nec, leo. Morbi', 'tellus. Nunc lectus pede, ultrices a, auctor non, feugiat', '2022年5月23日', 'sit amet'),
(10, 2, 'Vel Arcu LLC', 'Jana', 'Elizabeth', 'Stanton', 'dui.augue.eu@sollicitudin.net', 'Indonesia', 'Bengkulu', 'Bengkulu', '28742', '167-7816 Nunc St.', 'ultrices sit amet, risus. Donec nibh enim, gravida sit amet, dapibus id, blandit at, nisi. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin vel nisl. Quisque fringilla euismod enim. Etiam gravida molestie arcu. Sed eu nibh vulputate mauris sagittis placerat. Cras dictum ultricies', 'id ante', 'Phasellus nulla. Integer vulputate, risus a ultricies adipiscing, enim mi tempor lorem, eget mollis lectus pede et risus. Quisque libero lacus, varius et, euismod', 'Morbi sit amet massa. Quisque porttitor eros nec', 'lectus sit amet luctus vulputate, nisi sem semper erat,', 'lorem ac risus. Morbi metus.', '2022年5月23日', 'interdum.');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `intern`
--

CREATE TABLE `intern` (
  `intern_id` mediumint(9) NOT NULL,
  `user_id` mediumint(9) DEFAULT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `middlename` varchar(255) DEFAULT NULL,
  `surname` varchar(255) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `region` varchar(50) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `postalZip` varchar(10) DEFAULT NULL,
  `street_address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `date_of_birth` varchar(255) DEFAULT NULL,
  `profile_text` text DEFAULT NULL,
  `study` text DEFAULT NULL,
  `video` text DEFAULT NULL,
  `profile_image` text DEFAULT NULL,
  `field_of_studies` text DEFAULT NULL,
  `already_graduated` text DEFAULT NULL,
  `currently_university_student` varchar(255) DEFAULT NULL,
  `native_language` text DEFAULT NULL,
  `second_language` text DEFAULT NULL,
  `social_links` text DEFAULT NULL,
  `seeking_internship` text DEFAULT NULL,
  `open_real_employment` varchar(255) DEFAULT NULL,
  `profile_open_untill` varchar(255) DEFAULT NULL,
  `pass_word` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `intern`
--

INSERT INTO `intern` (`intern_id`, `user_id`, `firstname`, `middlename`, `surname`, `country`, `region`, `city`, `postalZip`, `street_address`, `email`, `date_of_birth`, `profile_text`, `study`, `video`, `profile_image`, `field_of_studies`, `already_graduated`, `currently_university_student`, `native_language`, `second_language`, `social_links`, `seeking_internship`, `open_real_employment`, `profile_open_untill`, `pass_word`, `username`) VALUES
(1, 2, 'voornaamtest', 'Francis', 'Garcia', '', 'Americas', 'Toronto', '5770', 'kasbaskd', 'lorem.auctor@nunc.ca', '1965年9月13日', 'felis, adipiscing fringilla, porttitor vulputate, posuere vulputate, lacus. Cras interdum. Nunc sollicitudin commodo ipsum. Suspendisse non leo. Vivamus nibh dolor, nonummy ac, feugiat non, lobortis quis, pede. Suspendisse dui. Fusce diam nunc, ullamcorper eu, euismod ac, fermentum vel, mauris. Integer sem', 'mi lacinia mattis. Integer eu lacus. Quisque imperdiet,', 'neque sed dictum', '', 'sed, est. Nunc laoreet lectus quis massa. Mauris vestibulum,', 'highschool', 'yes', 'English', 'nederland', 'metus. In lorem. Donec elementum, lorem', 'risus odio, auctor vitae,', 'yes', '2022年5月23日', '$2y$10$0wyDPL3wY/Rwx.93d7e.b.iDdyx3Y/UecvrwrFmDPFxNaL.iueHUy', 'testusername'),
(2, 2, 'Amelia', 'James', 'Chaney', 'Austria', 'Styria', 'Leoben', '8157', '292-2613 Ridiculus Rd.', 'ipsum.sodales.purus@metusaliquamerat.co.uk', '1981年10月19日', 'nibh dolor, nonummy ac, feugiat non, lobortis quis, pede. Suspendisse dui. Fusce diam nunc, ullamcorper eu, euismod ac, fermentum vel, mauris. Integer sem elit, pharetra ut, pharetra sed, hendrerit a, arcu. Sed et libero. Proin mi. Aliquam gravida mauris ut mi. Duis risus odio, auctor vitae, aliquet', 'sit amet ornare lectus justo eu arcu. Morbi sit amet', 'vestibulum lorem, sit amet ultricies sem magna', 'auctor, nunc nulla vulputate', 'nec ante.', 'adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus.', 'Yes', 'quis,', 'dapibus gravida. Aliquam', 'dui, in sodales elit erat vitae risus.', 'enim. Mauris quis turpis vitae', 'No', '2022年5月23日', '$2y$10$RiANd1fnra3OYDJxaLM7yeY0L35hmzxfqv8t.7SKWjEi1P28lkMYa', 'ameliausername'),
(3, 2, 'Alvin', 'Edward', 'Black', 'Spain', 'Galicia', 'Vigo', '63231', 'Ap #149-2463 Est, Street', 'quam@senectusetnetus.org', '1968年9月27日', 'fringilla. Donec feugiat metus sit amet ante. Vivamus non lorem vitae odio sagittis semper. Nam tempor diam dictum sapien. Aenean massa. Integer vitae nibh. Donec est mauris, rhoncus id, mollis nec, cursus a,', 'sit', 'at auctor ullamcorper, nisl', 'In lorem. Donec elementum, lorem ut aliquam iaculis,', 'magna. Sed eu eros. Nam consequat', 'urna et arcu imperdiet ullamcorper. Duis at', 'No', 'nec, mollis', 'egestas rhoncus. Proin', 'tristique aliquet. Phasellus fermentum convallis ligula. Donec luctus', 'sodales', 'No', '2022年5月23日', NULL, NULL),
(4, 2, 'Laith', 'Elizabeth', 'Odonnell', 'Sweden', 'Östergötlands län', 'Norrköping', '10698', 'Ap #756-7986 In Rd.', 'tortor.nunc.commodo@nonnisi.co.uk', '1984年1月16日', 'pharetra ut, pharetra sed, hendrerit a, arcu. Sed et libero. Proin mi. Aliquam gravida mauris ut mi. Duis risus odio, auctor vitae, aliquet nec, imperdiet nec, leo. Morbi neque tellus, imperdiet non, vestibulum nec, euismod in, dolor. Fusce feugiat. Lorem ipsum', 'in molestie tortor nibh sit', 'semper tellus id nunc', 'amet orci. Ut sagittis lobortis mauris. Suspendisse', 'mattis. Cras eget nisi dictum augue malesuada malesuada. Integer', 'ut erat. Sed nunc est, mollis', 'No', 'Phasellus elit pede,', 'lacinia mattis. Integer', 'turpis non enim.', 'volutpat. Nulla dignissim. Maecenas ornare egestas ligula. Nullam', 'No', '2022年5月23日', NULL, NULL),
(5, 2, 'Otto', 'William', 'Kerr', 'India', 'Uttar Pradesh', 'Muzaffarnagar', '531868', '193-4526 Nunc St.', 'non.lacinia@sagittisaugueeu.co.uk', '1995年9月27日', 'Aliquam rutrum lorem ac risus. Morbi metus. Vivamus euismod urna. Nullam lobortis quam a felis ullamcorper viverra. Maecenas iaculis aliquet diam. Sed diam lorem, auctor quis, tristique ac, eleifend vitae, erat. Vivamus nisi. Mauris nulla. Integer urna. Vivamus molestie dapibus ligula. Aliquam erat volutpat. Nulla dignissim. Maecenas', 'sapien. Cras dolor dolor, tempus', 'arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravida', 'vitae purus gravida sagittis. Duis gravida. Praesent eu nulla at', 'libero. Morbi', 'Aenean sed pede nec ante blandit viverra. Donec tempus,', 'Yes', 'ipsum nunc', 'fringilla, porttitor', 'Cras lorem lorem, luctus', 'laoreet lectus quis massa. Mauris vestibulum, neque sed dictum', 'No', '2022年5月23日', NULL, NULL),
(6, 2, 'Blythe', 'Charles', 'Kirk', 'Pakistan', 'FATA', 'North Waziristan', '923912', '5199 Justo St.', 'lobortis@nonbibendum.com', '1946年7月19日', 'lorem, vehicula et, rutrum eu, ultrices sit amet, risus. Donec nibh enim, gravida sit amet, dapibus id, blandit at, nisi. Cum', 'a felis ullamcorper viverra.', 'natoque penatibus et magnis dis parturient montes, nascetur ridiculus', 'sem magna nec quam. Curabitur', 'tincidunt pede', 'mollis. Duis sit amet diam eu', 'Yes', 'Fusce', 'fringilla mi', 'eu tellus eu augue porttitor interdum. Sed auctor', 'inceptos hymenaeos. Mauris ut quam vel sapien imperdiet ornare. In', 'Yes', '2022年5月23日', NULL, NULL),
(7, 2, 'Keelie', 'James', 'Salas', 'Chile', 'Maule', 'San Rafael', '132393', 'Ap #162-4954 Non St.', 'a.dui.cras@vitaesodalesat.edu', '1967年8月10日', 'nec quam. Curabitur vel lectus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec dignissim magna a tortor. Nunc commodo auctor velit. Aliquam nisl. Nulla eu neque pellentesque massa lobortis ultrices. Vivamus', 'penatibus et magnis dis parturient montes, nascetur ridiculus', 'convallis, ante lectus convallis', 'massa. Quisque porttitor eros nec tellus. Nunc lectus pede,', 'malesuada fringilla', 'sit amet, consectetuer adipiscing', 'No', 'urna, nec luctus', 'tincidunt', 'suscipit nonummy. Fusce fermentum fermentum arcu. Vestibulum', 'justo sit amet nulla. Donec non justo. Proin non massa', 'Yes', '2022年5月23日', NULL, NULL),
(8, 2, 'Helen', 'Lynn', 'Stafford', 'Sweden', 'Stockholms län', 'Boo', '81459', '9387 Vitae St.', 'semper.nam@vestibulumlorem.org', '1946年12月30日', 'pharetra ut, pharetra sed, hendrerit a, arcu. Sed et libero. Proin mi. Aliquam gravida mauris ut mi. Duis risus odio, auctor vitae, aliquet nec, imperdiet nec, leo. Morbi neque tellus, imperdiet non, vestibulum nec, euismod in, dolor. Fusce feugiat. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aliquam auctor,', 'sit', 'Curabitur sed tortor. Integer aliquam adipiscing lacus.', 'ligula. Aenean gravida', 'varius. Nam porttitor scelerisque neque.', 'Etiam ligula tortor, dictum eu, placerat eget, venenatis', 'Yes', 'nec, diam. Duis', 'orci luctus', 'vehicula. Pellentesque tincidunt tempus risus. Donec egestas. Duis', 'ante dictum cursus. Nunc mauris elit, dictum eu,', 'Yes', '2022年5月23日', NULL, NULL),
(9, 2, 'Ayanna', 'William', 'Bryan', 'Spain', 'Galicia', 'Vigo', '72628', '8264 Risus, Ave', 'duis@nunccommodo.edu', '1961年9月28日', 'montes, nascetur ridiculus mus. Donec dignissim magna a tortor. Nunc commodo auctor velit. Aliquam nisl. Nulla eu neque pellentesque massa lobortis ultrices. Vivamus rhoncus. Donec est. Nunc ullamcorper, velit in aliquet lobortis, nisi nibh lacinia orci, consectetuer euismod est arcu ac orci. Ut semper pretium neque.', 'sed libero. Proin sed turpis nec mauris blandit mattis.', 'Nulla dignissim. Maecenas ornare egestas', 'elementum, lorem', 'eget magna. Suspendisse tristique', 'ut, sem. Nulla interdum. Curabitur dictum. Phasellus in felis.', 'Yes', 'Proin eget odio.', 'hendrerit id,', 'velit. Sed', 'sed dictum eleifend, nunc risus varius orci,', 'Yes', '2022年5月23日', NULL, NULL),
(10, 2, 'Calvin', 'Francis', 'Rocha', 'Ireland', 'Leinster', 'Dublin', '4005', '642-1662 A, Rd.', 'sed.molestie@ante.ca', '1942年6月6日', 'auctor non, feugiat nec, diam. Duis mi enim, condimentum eget, volutpat ornare, facilisis eget, ipsum. Donec sollicitudin adipiscing ligula. Aenean gravida nunc sed pede.', 'tempus eu, ligula. Aenean euismod mauris eu', 'tincidunt tempus risus. Donec egestas.', 'In condimentum. Donec at arcu. Vestibulum ante ipsum', 'ultrices posuere cubilia Curae Donec tincidunt. Donec vitae', 'non, bibendum sed, est. Nunc laoreet lectus quis', 'No', 'sit amet', 'cursus non, egestas', 'urna. Nullam lobortis quam a felis', 'diam dictum sapien. Aenean massa. Integer vitae nibh.', 'No', '2022年5月23日', NULL, NULL),
(11, 2, 'Yigit', NULL, 'Findik', NULL, NULL, NULL, NULL, NULL, 'yigit8@live.nl', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$mGS0lyd26Ho1/noZZudDbuQM3ico4i96.BUO1hnyPtNwdTHrh78ke', 'kingyigit'),
(12, 2, 'Yigit', '', 'Findik', 'Angola', 'Europe', 'Amsterdam', '6544AP', 'testadressvideo', 'testmail@google.com', 'videotest', 'videotest', 'videotest', NULL, '', '', '', 'no', '', '', '', NULL, 'no', '', '$2y$10$a7wOfUC7x26WclWGBy2MSub8vyc0p4lOOlamNvpxplg2b.KhnUELa', 'videotest');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `user`
--

CREATE TABLE `user` (
  `user_id` int(9) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `user`
--

INSERT INTO `user` (`user_id`, `username`, `password`, `role`) VALUES
(1, 'admin', 'admin', 1),
(2, 'interntest', 'interntest', 2),
(3, 'entitytest', 'entitytest', 3),
(4, 'educationtest', 'educationtest', 4);

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `education`
--
ALTER TABLE `education`
  ADD PRIMARY KEY (`education_id`);

--
-- Indexen voor tabel `entity`
--
ALTER TABLE `entity`
  ADD PRIMARY KEY (`entity_id`);

--
-- Indexen voor tabel `intern`
--
ALTER TABLE `intern`
  ADD PRIMARY KEY (`intern_id`);

--
-- Indexen voor tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `education`
--
ALTER TABLE `education`
  MODIFY `education_id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT voor een tabel `entity`
--
ALTER TABLE `entity`
  MODIFY `entity_id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT voor een tabel `intern`
--
ALTER TABLE `intern`
  MODIFY `intern_id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT voor een tabel `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
