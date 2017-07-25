-- phpMyAdmin SQL Dump
-- version 4.0.10.12
-- http://www.phpmyadmin.net
--
-- Host: 127.11.204.130:3306
-- Generation Time: Oct 18, 2016 at 09:35 AM
-- Server version: 5.5.50
-- PHP Version: 5.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `rbs`
--

-- --------------------------------------------------------

--
-- Table structure for table `airport`
--

CREATE TABLE IF NOT EXISTS `airport` (
  `airport_name` varchar(17) DEFAULT NULL,
  `airport_lat` decimal(9,7) DEFAULT NULL,
  `airport_lon` decimal(8,6) DEFAULT NULL,
  `airport_description` varchar(115) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `airport`
--

INSERT INTO `airport` (`airport_name`, `airport_lat`, `airport_lon`, `airport_description`) VALUES
('CIAL Nedumbassery', '10.1517834', '76.392958', 'Low-floor buses to airport available from bustop at University Main Gate, En-Route to : Aluva Nedumbassery Angamaly');

-- --------------------------------------------------------

--
-- Table structure for table `atm`
--

CREATE TABLE IF NOT EXISTS `atm` (
  `atm_name` varchar(23) DEFAULT NULL,
  `atm_lat` decimal(10,8) DEFAULT NULL,
  `atm_lon` decimal(10,8) DEFAULT NULL,
  `atm_description` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `atm`
--

INSERT INTO `atm` (`atm_name`, `atm_lat`, `atm_lon`, `atm_description`) VALUES
('State Bank Of India ATM', '10.04909859', '76.31747480', NULL),
('Canara Bank ATM', '10.04910717', '76.31738026', NULL),
('Indicash ATM', '10.04641526', '76.32141832', NULL),
('SBI ATM', '10.04593920', '76.32345747', NULL),
('SBT ATM', '10.04202047', '76.32844403', NULL),
('HDFC Bank ATM', '10.04862716', '76.31861709', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `auto`
--

CREATE TABLE IF NOT EXISTS `auto` (
  `auto_name` varchar(35) DEFAULT NULL,
  `auto_lat` decimal(10,8) DEFAULT NULL,
  `auto_lon` decimal(10,8) DEFAULT NULL,
  `auto_description` varchar(59) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auto`
--

INSERT INTO `auto` (`auto_name`, `auto_lat`, `auto_lon`, `auto_description`) VALUES
('CUSAT Main Gate', '10.04738456', '76.31869589', 'Autos available from main gate at all times.'),
('Below South Kalamassery Over Bridge', '10.04865753', '76.31698027', NULL),
('Auto to Main Gate', '10.04245535', '76.32771675', 'To get to Main Gate from CUSAT, Get an auto from this point');

-- --------------------------------------------------------

--
-- Table structure for table `badminton`
--

CREATE TABLE IF NOT EXISTS `badminton` (
  `badminton_name` varchar(15) DEFAULT NULL,
  `badminton_icn` varchar(2) DEFAULT NULL,
  `badminton_lat` decimal(10,8) DEFAULT NULL,
  `badminton_lon` decimal(10,8) DEFAULT NULL,
  `badminton_description` varchar(87) DEFAULT NULL,
  `badminton_otime` varchar(8) DEFAULT NULL,
  `badminton_ctime` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `badminton`
--

INSERT INTO `badminton` (`badminton_name`, `badminton_icn`, `badminton_lat`, `badminton_lon`, `badminton_description`, `badminton_otime`, `badminton_ctime`) VALUES
('Badminton Court', 'BM', '10.04064973', '76.32661812', 'Located in Students Amenity Centre', '06:00 AM', '06:30 PM'),
('CUSAT Arena', 'FB', '10.04317992', '76.32900730', 'Multipurpose sporting area with a basketball court,volleyball court and throwball court', '06:00 AM', '06:30 PM');

-- --------------------------------------------------------

--
-- Table structure for table `bank`
--

CREATE TABLE IF NOT EXISTS `bank` (
  `bank_name` varchar(24) DEFAULT NULL,
  `bank_lat` decimal(10,8) DEFAULT NULL,
  `bank_lon` decimal(10,8) DEFAULT NULL,
  `bank_description` varchar(105) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bank`
--

INSERT INTO `bank` (`bank_name`, `bank_lat`, `bank_lon`, `bank_description`) VALUES
('State Bank of India', '10.04603428', '76.32364389', 'CUSAT Branch, Ground Floor, Vidhyabharathi Building, Cochin University University Road, South Kalamassery'),
('HDFC Bank', '10.04862716', '76.31861709', NULL),
('State Bank of Travancore', '10.04207329', '76.32854864', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `basketball`
--

CREATE TABLE IF NOT EXISTS `basketball` (
  `basketball_name` varchar(18) DEFAULT NULL,
  `basketball_icn` varchar(2) DEFAULT NULL,
  `basketball_lat` decimal(10,8) DEFAULT NULL,
  `basketball_lon` decimal(10,8) DEFAULT NULL,
  `basketball_description` varchar(87) DEFAULT NULL,
  `basketball_otime` varchar(8) DEFAULT NULL,
  `basketball_ctime` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `basketball`
--

INSERT INTO `basketball` (`basketball_name`, `basketball_icn`, `basketball_lat`, `basketball_lon`, `basketball_description`, `basketball_otime`, `basketball_ctime`) VALUES
('BasketBall Court 1', 'BB', '10.04064973', '76.32661812', 'Located in Cusat Arena', '06:00 AM', '06:30 PM'),
('CUSAT Arena', 'FB', '10.04308748', '76.32920310', 'Multipurpose sporting area with a basketball court,volleyball court and throwball court', '06:00 AM', '06:30 PM');

-- --------------------------------------------------------

--
-- Table structure for table `boxing`
--

CREATE TABLE IF NOT EXISTS `boxing` (
  `boxing_name` varchar(6) DEFAULT NULL,
  `boxing_icn` varchar(2) DEFAULT NULL,
  `boxing_lat` decimal(10,8) DEFAULT NULL,
  `boxing_lon` decimal(10,8) DEFAULT NULL,
  `boxing_description` varchar(32) DEFAULT NULL,
  `boxing_otime` varchar(8) DEFAULT NULL,
  `boxing_ctime` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `boxing`
--

INSERT INTO `boxing` (`boxing_name`, `boxing_icn`, `boxing_lat`, `boxing_lon`, `boxing_description`, `boxing_otime`, `boxing_ctime`) VALUES
('Boxing', 'BR', '10.04064973', '76.32661812', 'Located in the University Ground', '06:00 AM', '06:30 PM');

-- --------------------------------------------------------

--
-- Table structure for table `bus`
--

CREATE TABLE IF NOT EXISTS `bus` (
  `bus_name` varchar(31) DEFAULT NULL,
  `bus_lat` decimal(10,8) DEFAULT NULL,
  `bus_lon` decimal(10,8) DEFAULT NULL,
  `bus_description` varchar(140) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bus`
--

INSERT INTO `bus` (`bus_name`, `bus_lat`, `bus_lon`, `bus_description`) VALUES
('University Stop Private', '10.04887410', '76.31906971', 'Near University Main Gate, En-Route to : Edapally - Vytilla - Ernakulam Town'),
('University Stop KSRTC', '10.04832740', '76.31852254', 'Near University Main Gate, En-Route to : Aluva Nedumbassery Angamaly'),
('South Kalamassery', '10.04962878', '76.31711606', 'Near South Kalamassery Over Bridge : Aluva '),
('CUSAT Main Office Bus Stop', '10.04428654', '76.32461384', 'Near University Main Gate, En-Route to : Aluva Nedumbassery Angamaly'),
('Cochin University Bus Stop', '10.04184087', '76.32825091', 'Near University Main Gate, En-Route to : Aluva Nedumbassery Angamaly'),
('Toshiba Bus Stop', '10.05210410', '76.33360259', 'Towards Kakkanad, CMC, Thriponithura'),
('Orthodox Church Bus Stop', '10.05301658', '76.33171029', 'HMT Rd Hidayath Nagar, Thrikkakara'),
('Vytilla Mobility Hub', '9.96915392', '76.32170763', 'Private Buses : to Kottayam Pathanamthitta Guruvayoor Kozhikkode etc \r\nKSRTC Buses : to Trivandrum Thrissur Kottayam Pathanamthitta etc'),
('Aluva Private Bus Stand', '10.10850040', '76.35087764', NULL),
('KSRTC Bus Stand Aluva', '10.10689076', '76.35627980', NULL),
('KSRTC Bus Stand Ernakulam South', '9.97783231', '76.28883854', 'Long distance buses pass and start from this bus station. You can reach here via buses available from university bus stop or by other means.'),
('Kaloor Private Bus Terminal', '9.99401885', '76.29189788', 'Relativel few private buses station here, as many were shifted to Vytilla Mobility Hub.');

-- --------------------------------------------------------

--
-- Table structure for table `cafe`
--

CREATE TABLE IF NOT EXISTS `cafe` (
  `cafe_name` varchar(18) DEFAULT NULL,
  `cafe_lat` decimal(10,8) DEFAULT NULL,
  `cafe_lon` decimal(10,8) DEFAULT NULL,
  `cafe_description` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cafe`
--

INSERT INTO `cafe` (`cafe_name`, `cafe_lat`, `cafe_lon`, `cafe_description`) VALUES
('Ice Spot', '10.02534300', '76.33896600', NULL),
('Quality Bakers', '10.05054060', '76.33372229', NULL),
('Milma Coolbar', '10.04163751', '76.32867001', NULL),
('Burger Spot', '10.04653939', '76.32099420', NULL),
('Jam Rolls', '10.04590751', '76.32306386', NULL),
('Thamburans Coolbar', '10.04929800', '76.33302400', NULL),
('Kuttikadans', '10.04765194', '76.33195471', NULL),
('Coffee Break', '10.04255700', '76.32876500', NULL),
('Abdullaz Corner', '10.04395112', '76.33286297', NULL),
('Real Bakers', '10.04625415', '76.32191688', NULL),
('Cofi Club', '10.03135940', '76.33415710', 'Nice place to have a relishing cup of coffee. Open 24 hours.');

-- --------------------------------------------------------

--
-- Table structure for table `church`
--

CREATE TABLE IF NOT EXISTS `church` (
  `church_name` varchar(32) DEFAULT NULL,
  `church_lat` decimal(10,8) DEFAULT NULL,
  `church_lon` decimal(10,8) DEFAULT NULL,
  `church_description` varchar(37) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `church`
--

INSERT INTO `church` (`church_name`, `church_lat`, `church_lon`, `church_description`) VALUES
('St George Orthodox Syrian Church', '10.05252799', '76.33190475', 'Seaport-Airport road,Ernakulam,Kerala'),
('St John''s Church', '10.04086366', '76.33324854', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cittic`
--

CREATE TABLE IF NOT EXISTS `cittic` (
  `cittic_name` varchar(6) DEFAULT NULL,
  `cittic_lat` decimal(9,7) DEFAULT NULL,
  `cittic_lon` decimal(9,7) DEFAULT NULL,
  `cittic_description` varchar(57) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cittic`
--

INSERT INTO `cittic` (`cittic_name`, `cittic_lat`, `cittic_lon`, `cittic_description`) VALUES
('CITTIC', '10.0410273', '76.3281521', 'Start-Up Incubation Hub of CUSAT. LEARN,BUILD,COLLABORATE');

-- --------------------------------------------------------

--
-- Table structure for table `cricket`
--

CREATE TABLE IF NOT EXISTS `cricket` (
  `cricket_name` varchar(14) DEFAULT NULL,
  `cricket_icn` varchar(2) DEFAULT NULL,
  `cricket_lat` decimal(10,8) DEFAULT NULL,
  `cricket_lon` decimal(10,8) DEFAULT NULL,
  `cricket_description` varchar(32) DEFAULT NULL,
  `cricket_otime` varchar(8) DEFAULT NULL,
  `cricket_ctime` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cricket`
--

INSERT INTO `cricket` (`cricket_name`, `cricket_icn`, `cricket_lat`, `cricket_lon`, `cricket_description`, `cricket_otime`, `cricket_ctime`) VALUES
('Cricket Ground', 'CC', '10.03980324', '76.32717334', 'Located in the University Ground', '06:00 AM', '06:30 PM');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE IF NOT EXISTS `departments` (
  `departments_name` varchar(51) DEFAULT NULL,
  `departments_lat` decimal(9,7) DEFAULT NULL,
  `departments_lon` decimal(9,7) DEFAULT NULL,
  `departments_otime` varchar(7) DEFAULT NULL,
  `departments_ctime` varchar(7) DEFAULT NULL,
  `departments_description` varchar(209) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`departments_name`, `departments_lat`, `departments_lon`, `departments_otime`, `departments_ctime`, `departments_description`) VALUES
('SCHOOL OF ENGINEERING', '10.0482921', '76.3314729', '9:00 AM', '4:30 PM', 'Btech and Mtech in various branches ranging from conventional courses such as Civil/Mechanical/Electronics/Computer Science to rare courses such as Information Technology and Safety and Fire Engg. Are offered.'),
('DEPARTMENT OF ELECTRONICS', '10.0448313', '76.3275217', '9:00 AM', '4:30 PM', 'COURSES OFFERED:Msc in Electronic Science,Mtech in Electronics Comm. Engg,Phd in Electronics'),
('SCHOOL OF LEGAL STUDIES', '10.0437874', '76.3279844', '9:00 AM', '4:30 PM', 'Advanced Legal Aid Clinic for undergraduate,postgraduate and research work/studies.'),
('SCHOOL OF MANAGEMENT STUDIES', '10.0431734', '76.3274005', '9:00 AM', '4:30 PM', 'Has both full time and part time courses for Management Studies in International Business and Travel and Tourism.Options for Phd and Mphil Programmes are also avalable.'),
('DEPARTMENT OF INSTRUMENTATION', '10.0446735', '76.3269586', '9:00 AM', '4:30 PM', 'Courses in Btech,Msc and Phd in Instrumentation engineering are the main attraction.'),
('DEPARTMENT OF COMPUTER APPLICATION', '10.0461632', '76.3263480', '9:00 AM', '4:30 PM', 'Courses in highlight include MCA and Msc in computer science and technology.'),
('DEPARTMENT OF STATISTICS', '10.0433054', '76.3279803', '9:00 AM', '4:30 PM', 'Mtech in Engg Statistics,Phd and Msc in Statistics are the academic programmes offered.'),
('DEPARTMENT OF POLYMER SCIENCE AND RUBBER TECHNOLOGY', '10.0461802', '76.3256103', '9:00 AM', '4:30 PM', 'PSRT has  Btech , Metch and Phd Programmes in Polymer Science Engg.'),
('DEPARTMENT OF SHIP TECHNOLOGY', '10.0452855', '76.3261152', '9:00 AM', '4:30 PM', 'Ship Technology and design courses including Btech in Naval Architecture and Ship Building and Mtech in Computer Aided Structural Analysis and Research are much sought novelties.'),
('Old SOE', '10.0461561', '76.3261636', '9:00 AM', '4:30 PM', NULL),
('DEPARTMENT OF HINDI', '10.0448313', '76.3275217', '9:00 AM', '4:30 PM', 'M.A , M.Phil,Phd courses in Hindi are undertaken.'),
('DEPARTMENT OF MATHEMATICS', '10.0448313', '76.3275217', '9:00 AM', '4:30 PM', 'Caters to courses in Msc ,Mphil and Phd in Mathematics'),
('INTERNATIONAL SCHOOL OF PHOTONICS', '10.0443061', '76.3256811', '9:00 AM', '4:30 PM', 'Main courses include Btech and Mtech in Opto Electronics and LASER technology.'),
('DEPARTMENT OF BIOTECHNOLOGY', '10.0448187', '76.3276622', '9:00 AM', '4:30 PM', 'Msc and Phd in Biotechnology are the stellar courses at hand.'),
('STIC', '10.0451211', '76.3274674', '9:00 AM', '4:30 PM', NULL),
('C-SIS', '10.0448313', '76.3275217', '9:00 AM', '4:30 PM', 'A fully functional Science Park with Sciene Pavillions , Math and Computer Labs among other points of interest'),
('COMPUTER CENTRE CUSAT', '10.0345044', '76.2953848', NULL, NULL, NULL),
('CUSAT RADAR STATION', '10.0425929', '76.3320923', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `football`
--

CREATE TABLE IF NOT EXISTS `football` (
  `football_name` varchar(15) DEFAULT NULL,
  `football_icn` varchar(2) DEFAULT NULL,
  `football_lat` decimal(10,8) DEFAULT NULL,
  `football_lon` decimal(10,8) DEFAULT NULL,
  `football_description` varchar(32) DEFAULT NULL,
  `football_otime` varchar(8) DEFAULT NULL,
  `football_ctime` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `football`
--

INSERT INTO `football` (`football_name`, `football_icn`, `football_lat`, `football_lon`, `football_description`, `football_otime`, `football_ctime`) VALUES
('Football Ground', 'FB', '10.03980324', '76.32717334', 'Located in the University Ground', '06:00 AM', '06:30 PM');

-- --------------------------------------------------------

--
-- Table structure for table `grounds`
--

CREATE TABLE IF NOT EXISTS `grounds` (
  `grounds_name` varchar(17) DEFAULT NULL,
  `grounds_icn` varchar(2) DEFAULT NULL,
  `grounds_lat` decimal(9,7) DEFAULT NULL,
  `grounds_lon` decimal(9,7) DEFAULT NULL,
  `grounds_description` varchar(108) DEFAULT NULL,
  `grounds_otime` varchar(8) DEFAULT NULL,
  `grounds_ctime` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `grounds`
--

INSERT INTO `grounds` (`grounds_name`, `grounds_icn`, `grounds_lat`, `grounds_lon`, `grounds_description`, `grounds_otime`, `grounds_ctime`) VALUES
('University Ground', 'FB', '9.9507243', '76.2517138', 'This is the official multipurpose ground where various events related to sports take place in the university', '06:00 AM', '06:30 PM'),
('Cusat Arena', 'CC', '10.0431898', '76.3290083', 'Located in the University Ground', '06:00 AM', '06:30 PM');

-- --------------------------------------------------------

--
-- Table structure for table `gym`
--

CREATE TABLE IF NOT EXISTS `gym` (
  `gym_name` varchar(15) DEFAULT NULL,
  `gym_icn` varchar(2) DEFAULT NULL,
  `gym_lat` decimal(10,8) DEFAULT NULL,
  `gym_lon` decimal(10,8) DEFAULT NULL,
  `gym_description` int(11) DEFAULT NULL,
  `gym_otime` varchar(8) DEFAULT NULL,
  `gym_ctime` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gym`
--

INSERT INTO `gym` (`gym_name`, `gym_icn`, `gym_lat`, `gym_lon`, `gym_description`, `gym_otime`, `gym_ctime`) VALUES
('Power House Gym', 'GM', '10.04582366', '76.32314868', NULL, '06:00 AM', '06:30 PM'),
('Figure Gym', 'GM', '10.04642054', '76.32252239', NULL, '06:00 AM', '06:30 PM');

-- --------------------------------------------------------

--
-- Table structure for table `hospital`
--

CREATE TABLE IF NOT EXISTS `hospital` (
  `hospital_name` varchar(28) DEFAULT NULL,
  `hospital_lat` decimal(10,8) DEFAULT NULL,
  `hospital_lon` decimal(10,8) DEFAULT NULL,
  `hospital_description` varchar(31) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hospital`
--

INSERT INTO `hospital` (`hospital_name`, `hospital_lat`, `hospital_lon`, `hospital_description`) VALUES
('ESI Dispensary', '10.03712644', '76.33110344', 'Near St.Jhons School'),
('Kims', '10.03823570', '76.31577190', 'Pathadipalam, en-route Edapally'),
('CMC : Cochin Medical College', '10.05248705', '76.35559469', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `instruments`
--

CREATE TABLE IF NOT EXISTS `instruments` (
  `instruments_name` varchar(25) DEFAULT NULL,
  `instruments_lat` decimal(8,6) DEFAULT NULL,
  `instruments_lon` decimal(8,6) DEFAULT NULL,
  `instruments_description` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `instruments`
--

INSERT INTO `instruments` (`instruments_name`, `instruments_lat`, `instruments_lon`, `instruments_description`) VALUES
('Co-operative Store By PTA', '10.050011', '76.331071', NULL),
('Indus Stationary', '10.046018', '76.322597', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `laundry`
--

CREATE TABLE IF NOT EXISTS `laundry` (
  `laundry_name` varchar(7) DEFAULT NULL,
  `laundry_lat` decimal(8,6) DEFAULT NULL,
  `laundry_lon` decimal(8,6) DEFAULT NULL,
  `laundry_description` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `laundry`
--

INSERT INTO `laundry` (`laundry_name`, `laundry_lat`, `laundry_lon`, `laundry_description`) VALUES
('Laundry', '10.046259', '76.322601', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `library`
--

CREATE TABLE IF NOT EXISTS `library` (
  `library_name` varchar(18) DEFAULT NULL,
  `library_lat` decimal(9,7) DEFAULT NULL,
  `library_lon` decimal(9,7) DEFAULT NULL,
  `library_description` int(11) DEFAULT NULL,
  `library_otime` varchar(8) DEFAULT NULL,
  `library_ctime` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `library`
--

INSERT INTO `library` (`library_name`, `library_lat`, `library_lon`, `library_description`, `library_otime`, `library_ctime`) VALUES
('University Library', '10.0452296', '76.3243348', NULL, '09:00 AM', '07:30 PM'),
('SOE Library', '10.0490378', '76.3311963', NULL, '09:00 AM', '08:00 PM');

-- --------------------------------------------------------

--
-- Table structure for table `mall`
--

CREATE TABLE IF NOT EXISTS `mall` (
  `mall_name` varchar(13) DEFAULT NULL,
  `mall_lat` decimal(10,8) DEFAULT NULL,
  `mall_lon` decimal(11,9) DEFAULT NULL,
  `mall_description` varchar(75) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mall`
--

INSERT INTO `mall` (`mall_name`, `mall_lat`, `mall_lon`, `mall_description`) VALUES
('LuLu Mall', '10.02749930', '76.308038100', 'NH47, Nethaji Nagar, Edappally'),
('Oberon', '10.01443282', '76.311799590', 'Mosque Road, Padivattom, Edappally'),
('Gold Souk', '9.97766188', '76.316514921', '30/2011-C3, Service Rd, Ponnurunni East, Chalikkavattom, Vyttila, Ernakulam'),
('Nucleus', '9.93969070', '76.330984400', 'Kochi-Madurai-Tondi Point Rd, Poonithura, Maradu, Ernakulam'),
('Grand', '10.02430601', '76.308763330', 'K.K Tower, 27/479, Service Rd, Toll Junction, Edappally'),
('Bay Pride', '9.97727190', '76.276710930', 'Alliance Residency, Shanmugham Rd, Marine Drive, Ernakulam'),
('Centre Square', '9.97799860', '76.283330400', '40/6972, Mahatma Gandhi Rd, Shenoys, Ernakulam');

-- --------------------------------------------------------

--
-- Table structure for table `men`
--

CREATE TABLE IF NOT EXISTS `men` (
  `men_name` varchar(24) DEFAULT NULL,
  `men_lat` decimal(10,8) DEFAULT NULL,
  `men_lon` decimal(10,8) DEFAULT NULL,
  `men_description` varchar(46) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `men`
--

INSERT INTO `men` (`men_name`, `men_lat`, `men_lon`, `men_description`) VALUES
('Dream Valley', '10.04514700', '76.33082400', 'PH:9496907220'),
('Opal Homes', '10.04530000', '76.33065300', 'PH:0484-2544774'),
('Panadans Hostel', '10.04753400', '76.33398400', 'PH:9895139116'),
('SSF Wisdom Homes', '10.05073700', '76.33343200', 'PH:+919846616935. Islamic Hostel'),
('SM Boys Hostel', '10.04227900', '76.32290100', 'PH:+919846115023'),
('Rasheed Manakkadan Lodge', '10.05018406', '76.33216292', 'Hidayath Nagar, North Kalamassery, Kalamassery'),
('Bait Al Noor', '10.05086545', '76.33091435', NULL),
('Ashiana Enclave', '10.04124662', '76.33328542', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `menug`
--

CREATE TABLE IF NOT EXISTS `menug` (
  `menug_name` varchar(20) DEFAULT NULL,
  `menug_lat` decimal(9,7) DEFAULT NULL,
  `menug_lon` decimal(9,7) DEFAULT NULL,
  `menug_description` varchar(38) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `menug`
--

INSERT INTO `menug` (`menug_name`, `menug_lat`, `menug_lon`, `menug_description`) VALUES
('Sahara Hostel', '10.0454038', '76.3298112', 'University Hostel for B.TECH'),
('Sarovar Men''s Hostel', '10.0468695', '76.3299890', 'University Hostel for Main Campus'),
('Siberia Mens Hostel', '10.0468695', '76.3299890', 'University Hostel for Main Campus'),
('Sagar Hostel ', '10.0460802', '76.3304470', 'University Hostel for Post Metric Boys'),
('Swaraj Hostel ', '10.0460802', '76.3304470', 'University Hostel for OBC Boys'),
('Sanathana Hostel', '10.0410723', '76.3250683', 'University Hostel for Main Campus');

-- --------------------------------------------------------

--
-- Table structure for table `mosque`
--

CREATE TABLE IF NOT EXISTS `mosque` (
  `mosque_name` varchar(27) DEFAULT NULL,
  `mosque_lat` decimal(10,8) DEFAULT NULL,
  `mosque_lon` decimal(10,8) DEFAULT NULL,
  `mosque_description` varchar(46) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mosque`
--

INSERT INTO `mosque` (`mosque_name`, `mosque_lat`, `mosque_lon`, `mosque_description`) VALUES
('Masjid Al Huda', '10.04606069', '76.32358287', 'University Road,Alfiya Nagar,South Kalamassery'),
('Hidayathu Nagar Juma Masjid', '10.05086376', '76.33407464', 'HMT, Kalamassery'),
('Muhidheen Masjid', '10.04266750', '76.32548150', 'Thrikkakara'),
('Salafi Masjid', '10.04443972', '76.32985421', 'Pipeline Road, Kalamassery');

-- --------------------------------------------------------

--
-- Table structure for table `office`
--

CREATE TABLE IF NOT EXISTS `office` (
  `office_name` varchar(13) DEFAULT NULL,
  `office_lat` decimal(8,6) DEFAULT NULL,
  `office_lon` decimal(8,6) DEFAULT NULL,
  `office_description` varchar(97) DEFAULT NULL,
  `office_otime` varchar(7) DEFAULT NULL,
  `office_ctime` varchar(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `office`
--

INSERT INTO `office` (`office_name`, `office_lat`, `office_lon`, `office_description`, `office_otime`, `office_ctime`) VALUES
('Hostel Office', '10.042557', '76.328765', '1st Floor, Amenity Centre \r\nPhone: 0484-2575944, 0484-2862155 \r\nWebsite:http://hostels.cusat.ac.i', '9:00 AM', '5:00 PM');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE IF NOT EXISTS `post` (
  `post_name` varchar(17) DEFAULT NULL,
  `post_lat` decimal(9,7) DEFAULT NULL,
  `post_lon` decimal(10,8) DEFAULT NULL,
  `post_description` varchar(29) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`post_name`, `post_lat`, `post_lon`, `post_description`) VALUES
('CUSAT Post Office', '10.0430439', '76.32858083', 'All postal services available');

-- --------------------------------------------------------

--
-- Table structure for table `resources`
--

CREATE TABLE IF NOT EXISTS `resources` (
  `resources_name` varchar(10) DEFAULT NULL,
  `resources_lat` decimal(10,8) DEFAULT NULL,
  `resources_lon` decimal(10,8) DEFAULT NULL,
  `resources_description` varchar(65) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `resources`
--

INSERT INTO `resources` (`resources_name`, `resources_lat`, `resources_lon`, `resources_description`) VALUES
('Indus', '10.04603494', '76.32249422', 'Printing, Photography, Intenet Access, Lamination, DTP, Photostat'),
('Twinkle', '10.04628585', '76.32268332', 'Printing, Lamination, DTP, Photostat'),
('Cyber Park', '10.04661862', '76.32153064', 'Printing, Lamination, DTP, Photostat');

-- --------------------------------------------------------

--
-- Table structure for table `resturant`
--

CREATE TABLE IF NOT EXISTS `resturant` (
  `resturant_name` varchar(28) DEFAULT NULL,
  `resturant_lat` decimal(10,8) DEFAULT NULL,
  `resturant_lon` decimal(10,8) DEFAULT NULL,
  `resturant_description` varchar(96) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `resturant`
--

INSERT INTO `resturant` (`resturant_name`, `resturant_lat`, `resturant_lon`, `resturant_description`) VALUES
('CUSAT Coffee House [CCH]', '10.04219580', '76.32847890', 'Campus Canteen where you can get quality food for low prices'),
('Nalukettu - CUSAT Food Court', '10.05243260', '76.32103580', NULL),
('Timepass', '10.04282200', '76.32569750', NULL),
('Prakash Mess', '10.04978790', '76.33194700', 'North Indian Mess'),
('Hot n Taste', '10.05165170', '76.33445660', NULL),
('Ice Berg', '10.04607984', '76.32323451', NULL),
('NAS', '10.04628585', '76.32276982', NULL),
('Hot n Taste', '10.04990939', '76.33302122', NULL),
('Kismath Resturant', '10.04727493', '76.31897248', NULL),
('Aryas', '10.04636376', '76.32152595', 'Pure Vegeterian Restaurant'),
('Payyappally Stores', '10.04572330', '76.32321406', 'First junction after the main gate. A busy junction where almost all things are easily available'),
('Chai Chillum Chappathi', '10.04232800', '76.32635470', NULL),
('Chandini Mess', '10.04638260', '76.33179680', 'North Indian Food'),
('Cafe d''Arabia(Edappally)', '10.03015370', '76.30484680', 'The best place for arabian food at reasonable price and great ambience.');

-- --------------------------------------------------------

--
-- Table structure for table `stores`
--

CREATE TABLE IF NOT EXISTS `stores` (
  `stores_name` varchar(24) DEFAULT NULL,
  `stores_lat` decimal(10,8) DEFAULT NULL,
  `stores_lon` decimal(10,8) DEFAULT NULL,
  `stores_description` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `stores`
--

INSERT INTO `stores` (`stores_name`, `stores_lat`, `stores_lon`, `stores_description`) VALUES
('Campus House', '10.04616172', '76.32216297', 'Stationery shop with mobile recharge'),
('Margin Free Super Market', '10.04603362', '76.32335521', 'Super Market');

-- --------------------------------------------------------

--
-- Table structure for table `tabletennis`
--

CREATE TABLE IF NOT EXISTS `tabletennis` (
  `tabletennis_name` varchar(32) DEFAULT NULL,
  `tabletennis_lat` decimal(10,8) DEFAULT NULL,
  `tabletennis_lon` decimal(9,7) DEFAULT NULL,
  `tabletennis_description` varchar(108) DEFAULT NULL,
  `tabletennis_otime` varchar(8) DEFAULT NULL,
  `tabletennis_ctime` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tabletennis`
--

INSERT INTO `tabletennis` (`tabletennis_name`, `tabletennis_lat`, `tabletennis_lon`, `tabletennis_description`, `tabletennis_otime`, `tabletennis_ctime`) VALUES
('Indoor Stadium University Ground', '10.04060483', '76.3267985', 'This is the official multipurpose ground where various events related to sports take place in the university', '06:00 AM', '06:30 PM');

-- --------------------------------------------------------

--
-- Table structure for table `tailoring`
--

CREATE TABLE IF NOT EXISTS `tailoring` (
  `tailoring_name` varchar(15) DEFAULT NULL,
  `tailoring_lat` decimal(9,7) DEFAULT NULL,
  `tailoring_lon` decimal(9,7) DEFAULT NULL,
  `tailoring_description` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tailoring`
--

INSERT INTO `tailoring` (`tailoring_name`, `tailoring_lat`, `tailoring_lon`, `tailoring_description`) VALUES
('Skill Tailoring', '10.0491936', '76.3173473', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `temple`
--

CREATE TABLE IF NOT EXISTS `temple` (
  `temple_name` varchar(18) DEFAULT NULL,
  `temple_lat` decimal(10,8) DEFAULT NULL,
  `temple_lon` decimal(10,8) DEFAULT NULL,
  `temple_description` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `temple`
--

INSERT INTO `temple` (`temple_name`, `temple_lat`, `temple_lon`, `temple_description`) VALUES
('Thrikkakara Temple', '10.03581378', '76.32951692', 'Pukkattupady Road, Thrikkakara');

-- --------------------------------------------------------

--
-- Table structure for table `thattukada`
--

CREATE TABLE IF NOT EXISTS `thattukada` (
  `thattukada_name` varchar(21) DEFAULT NULL,
  `thattukada_lat` decimal(8,6) DEFAULT NULL,
  `thattukada_lon` decimal(8,6) DEFAULT NULL,
  `thattukada_description` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `thattukada`
--

INSERT INTO `thattukada` (`thattukada_name`, `thattukada_lat`, `thattukada_lon`, `thattukada_description`) VALUES
('Thattukada(Main Gate)', '10.047949', '76.318776', NULL),
('Thattukada(Edappally)', '10.022769', '76.309869', 'Opp. iCare,Toll Junction, Edappally.');

-- --------------------------------------------------------

--
-- Table structure for table `train`
--

CREATE TABLE IF NOT EXISTS `train` (
  `train_name` varchar(36) DEFAULT NULL,
  `train_lat` decimal(10,8) DEFAULT NULL,
  `train_lon` decimal(10,8) DEFAULT NULL,
  `train_description` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `train`
--

INSERT INTO `train` (`train_name`, `train_lat`, `train_lon`, `train_description`) VALUES
('Aluva Railway Station', '10.10804206', '76.35631735', NULL),
('Ernakulam Junction South', '9.96905267', '76.29101130', NULL),
('Ernakulam Town North Railway Station', '9.99208150', '76.28647366', NULL),
('Thrippunithura Railway Station', '9.94981250', '76.35251830', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tution`
--

CREATE TABLE IF NOT EXISTS `tution` (
  `tution_name` varchar(47) DEFAULT NULL,
  `tution_lat` decimal(10,8) DEFAULT NULL,
  `tution_lon` decimal(10,8) DEFAULT NULL,
  `tution_description` varchar(53) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tution`
--

INSERT INTO `tution` (`tution_name`, `tution_lat`, `tution_lon`, `tution_description`) VALUES
('SolutionS Institute of Engineering & Technology', '10.04776353', '76.31788082', 'Tuition for all sujects from all semesters taken here'),
('B.Tech Tuition', '10.04578800', '76.32306252', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `uniform`
--

CREATE TABLE IF NOT EXISTS `uniform` (
  `uniform_name` varchar(8) DEFAULT NULL,
  `uniform_lat` decimal(10,8) DEFAULT NULL,
  `uniform_lon` decimal(10,8) DEFAULT NULL,
  `uniform_description` int(11) DEFAULT NULL,
  `uniform_otime` varchar(8) DEFAULT NULL,
  `uniform_ctime` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `uniform`
--

INSERT INTO `uniform` (`uniform_name`, `uniform_lat`, `uniform_lon`, `uniform_description`, `uniform_otime`, `uniform_ctime`) VALUES
('Uniforms', '10.04181083', '76.32864822', NULL, '09:00 AM', '04:00 PM');

-- --------------------------------------------------------

--
-- Table structure for table `volleyball`
--

CREATE TABLE IF NOT EXISTS `volleyball` (
  `volleyball_name` varchar(23) DEFAULT NULL,
  `volleyball_icn` varchar(2) DEFAULT NULL,
  `volleyball_lat` decimal(10,8) DEFAULT NULL,
  `volleyball_lon` decimal(10,8) DEFAULT NULL,
  `volleyball_description` varchar(56) DEFAULT NULL,
  `volleyball_otime` varchar(8) DEFAULT NULL,
  `volleyball_ctime` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `volleyball`
--

INSERT INTO `volleyball` (`volleyball_name`, `volleyball_icn`, `volleyball_lat`, `volleyball_lon`, `volleyball_description`, `volleyball_otime`, `volleyball_ctime`) VALUES
('VolleyBall Court', 'VB', '10.04305843', '76.32906631', 'Located in Cusat Arena', '06:00 AM', '06:30 PM'),
('Girls'' VolleyBall Court', 'TB', '10.04208914', '76.32889196', 'Opposite Milma/Kunjali marakkar college for marine engg.', '06:00 AM', '06:30 PM');

-- --------------------------------------------------------

--
-- Table structure for table `women`
--

CREATE TABLE IF NOT EXISTS `women` (
  `women_name` varchar(22) DEFAULT NULL,
  `women_lat` decimal(10,8) DEFAULT NULL,
  `women_lon` decimal(10,8) DEFAULT NULL,
  `women_description` varchar(73) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `women`
--

INSERT INTO `women` (`women_name`, `women_lat`, `women_lon`, `women_description`) VALUES
('Marthoma Ladies Hostel', '10.03802443', '76.32666975', 'MNRA Cross Rd 10 Maveli Nagar, Vidya Nagar Colony, Thrikkakara, Edappally'),
('Carmel Hostel', '10.03909674', '76.32519454', 'PH:9744397535'),
('National Hostel', '10.04821515', '76.31795995', 'University PO, South Kalamassery, Kalamassery'),
('Illickal Hostel', '10.04274678', '76.32661074', 'University Road Vidya Nagar, Thrikkakara, Kalamassery');

-- --------------------------------------------------------

--
-- Table structure for table `womenug`
--

CREATE TABLE IF NOT EXISTS `womenug` (
  `womenug_name` varchar(27) DEFAULT NULL,
  `womenug_lat` decimal(9,7) DEFAULT NULL,
  `womenug_lon` decimal(9,7) DEFAULT NULL,
  `womenug_description` varchar(27) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `womenug`
--

INSERT INTO `womenug` (`womenug_name`, `womenug_lat`, `womenug_lon`, `womenug_description`) VALUES
('Post Metric Women''s Hostel', '10.0455163', '76.3237533', 'Post Metric Women''s Hostel'),
('Alakananda Hostel For Girls', '10.0461210', '76.3246770', 'University Hostel for Girls'),
('Ananya Ladies Hostel', '10.0441551', '76.3231996', 'University Hostel for Girls');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
