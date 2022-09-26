-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 23, 2022 at 11:22 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `idr`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertProducts` (IN `pproductcode` VARCHAR(255), IN `pproductname` VARCHAR(255), IN `psubcategory` VARCHAR(255), IN `pbrand` VARCHAR(255), IN `RetailPrice` INT, IN `pproductstatus` VARCHAR(255))   BEGIN
	INSERT INTO products(ProductCode, ProductName, SubCategory, Brand, RetailPrice, ProductStatus)
    VALUES(pproductcode, pproductname, psubcategory, pbrand, pretailprice, pproductstatus);
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `ProductCode` varchar(255) DEFAULT NULL,
  `ProductName` varchar(255) DEFAULT NULL,
  `SubCategory` varchar(255) DEFAULT NULL,
  `Brand` varchar(255) DEFAULT NULL,
  `RetailPrice` bigint(20) DEFAULT NULL,
  `ProductStatus` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO products (ProductCode, ProductName, SubCategory, Brand, RetailPrice, ProductStatus) VALUES
('TST-1029-OO', 'Meja Kerja Test Product', 'MEJAKERJAEXECUTIVE', 'Clarity', 36900000, 'Active'),
('CMK-2010-LOR', 'Meja Kerja Eselon 1/Direktur/Kepala/Sekjen.(200)', 'MEJAKERJAEXECUTIVE', 'Clarity', 30950000, 'Active'),
('CMK-2210-LOR', 'Meja Kerja Eselon 1/Direktur/Kepala/Sekjen.(220)', 'MEJAKERJAEXECUTIVE', 'Clarity', 34770000, 'Active'),
('FWM-6408-OGS', 'Meja Kerja', 'MEJAKERJAEXECUTIVE', 'Ebert Group', 31273487, 'Nonactive'),
('MZF-2971-BLX', 'Meja Gaming', 'MEJAGAMINGEXECUTIVE', 'Donnelly-Abernathy', 32759155, 'Nonactive'),
('KKF-1929-KZW', 'Meja Gaming', 'MEJAGAMINGEXECUTIVE', 'Turcotte and Sons', 29240334, 'Active'),
('STU-3002-NDD', 'Meja Gaming', 'MEJAGAMINGEXECUTIVE', 'Hartmann and Sons', 32121886, 'Nonactive'),
('ICK-4423-ICH', 'Kursi Gaming', 'KURSIGAMINGEXECUTIVE', 'Larkin-Macejkovic', 37501368, 'Nonactive'),
('EKT-2574-LMI', 'Kursi Gaming', 'KURSIGAMINGEXECUTIVE', 'Abbott, Kilback and Lebsack', 28978235, 'Nonactive'),
('AFJ-2745-IXT', 'Meja Gaming', 'MEJAGAMINGEXECUTIVE', 'Auer-Spencer', 21792653, 'Nonactive'),
('WSH-6446-EIZ', 'Kursi Gaming', 'KURSIGAMINGEXECUTIVE', 'Schumm, Green and Gorczany', 22712824, 'Active'),
('SBD-2759-JGT', 'Meja Gaming', 'MEJAGAMINGEXECUTIVE', 'Amore-Bins', 28894176, 'Nonactive'),
('GZS-4560-MOS', 'Meja Gaming', 'MEJAGAMINGEXECUTIVE', 'Denesik-Davis', 20101934, 'Nonactive'),
('UPG-9088-TBW', 'Meja Kerja', 'MEJAKERJAEXECUTIVE', 'Green Inc', 28190913, 'Nonactive'),
('DWS-3395-FAO', 'Meja Kerja', 'MEJAKERJAEXECUTIVE', 'Murphy, Kautzer and Ernser', 25536499, 'Nonactive'),
('FMC-5967-FXK', 'Kursi Gaming', 'KURSIGAMINGEXECUTIVE', 'Welch, Balistreri and Wuckert', 37790317, 'Active'),
('WBV-1265-IRF', 'Meja Gaming', 'MEJAGAMINGEXECUTIVE', 'Schuppe LLC', 39574669, 'Nonactive'),
('WJM-2781-BGJ', 'Kursi Kerja', 'KURSIKERJAEXECUTIVE', 'Parisian-Fisher', 32911774, 'Active'),
('ZOF-4211-NLY', 'Meja Gaming', 'MEJAGAMINGEXECUTIVE', 'Torp-Armstrong', 30807921, 'Active'),
('SSX-9010-SZJ', 'Kursi Kerja', 'KURSIKERJAEXECUTIVE', 'Feil, Nitzsche and Cummerata', 25819134, 'Active'),
('DWH-7288-NMU', 'Kursi Gaming', 'KURSIGAMINGEXECUTIVE', 'Stiedemann-Hessel', 22297060, 'Nonactive'),
('HJD-4709-THY', 'Kursi Gaming', 'KURSIGAMINGEXECUTIVE', 'Schuster and Sons', 23650131, 'Nonactive'),
('CIT-8239-MHE', 'Meja Gaming', 'MEJAGAMINGEXECUTIVE', 'Ratke LLC', 20515474, 'Active'),
('CIB-1027-LEP', 'Kursi Gaming', 'KURSIGAMINGEXECUTIVE', 'Fadel-Kuhic', 26392699, 'Active'),
('CLT-7462-IYH', 'Meja Gaming', 'MEJAGAMINGEXECUTIVE', 'Marks-Lehner', 23576426, 'Nonactive'),
('NJN-4606-SNS', 'Kursi Kerja', 'KURSIKERJAEXECUTIVE', 'Reichel-Predovic', 27330461, 'Active'),
('GHN-3344-RUF', 'Kursi Gaming', 'KURSIGAMINGEXECUTIVE', 'Grant-Von', 39390605, 'Nonactive'),
('PHR-2849-DVP', 'Meja Gaming', 'MEJAGAMINGEXECUTIVE', 'Lynch, Heaney and Littel', 33513933, 'Nonactive'),
('TQE-3406-MAV', 'Meja Kerja', 'MEJAKERJAEXECUTIVE', 'Bergstrom, Klein and Wuckert', 36625647, 'Active'),
('YLD-0186-WUN', 'Meja Gaming', 'MEJAGAMINGEXECUTIVE', 'Prosacco, Lebsack and Hermiston', 26889399, 'Nonactive'),
('ZKW-9933-RVE', 'Meja Gaming', 'MEJAGAMINGEXECUTIVE', 'Conner and Sons', 35380960, 'Nonactive'),
('AXQ-3459-PGF', 'Meja Gaming', 'MEJAGAMINGEXECUTIVE', 'Schroeder, Breitenberg and Mayer', 38841647, 'Nonactive'),
('GII-6096-NPH', 'Meja Gaming', 'MEJAGAMINGEXECUTIVE', 'Ebert-Gaylord', 37239942, 'Active'),
('SOW-7286-ELW', 'Kursi Gaming', 'KURSIGAMINGEXECUTIVE', 'Hackett, Ortiz and Beer', 21128823, 'Nonactive'),
('VDZ-8370-CSM', 'Meja Gaming', 'MEJAGAMINGEXECUTIVE', 'Goldner, Rosenbaum and Rippin', 37379767, 'Active'),
('RIX-6591-QRW', 'Meja Kerja', 'MEJAKERJAEXECUTIVE', 'Littel, Oberbrunner and Tromp', 36111050, 'Active'),
('IIR-9681-RUA', 'Meja Gaming', 'MEJAGAMINGEXECUTIVE', 'Monahan, Larson and Stokes', 22183883, 'Nonactive'),
('TZL-4229-ZWG', 'Meja Gaming', 'MEJAGAMINGEXECUTIVE', 'Romaguera and Sons', 23032475, 'Active'),
('ZGC-0251-COF', 'Meja Gaming', 'MEJAGAMINGEXECUTIVE', 'Leffler, Hermiston and Reilly', 32734576, 'Active'),
('QZE-6878-MPB', 'Kursi Gaming', 'KURSIGAMINGEXECUTIVE', 'Hilll-Ziemann', 23429576, 'Nonactive'),
('AUM-7674-GKT', 'Kursi Gaming', 'KURSIGAMINGEXECUTIVE', 'Wunsch-Graham', 23079160, 'Nonactive'),
('PXB-6147-NNO', 'Meja Gaming', 'MEJAGAMINGEXECUTIVE', 'Feeney LLC', 36444237, 'Active'),
('HEB-8292-AUL', 'Meja Gaming', 'MEJAGAMINGEXECUTIVE', 'Becker-Crooks', 35580560, 'Nonactive'),
('PPK-3107-WSS', 'Meja Gaming', 'MEJAGAMINGEXECUTIVE', 'Runolfsdottir-Green', 36707309, 'Active'),
('SUY-8623-LUG', 'Meja Gaming', 'MEJAGAMINGEXECUTIVE', 'Schroeder-Schuster', 25795419, 'Active'),
('OJX-2731-TTJ', 'Meja Gaming', 'MEJAGAMINGEXECUTIVE', 'Kuphal Group', 35967385, 'Active'),
('CKM-0071-NUF', 'Meja Kerja', 'MEJAKERJAEXECUTIVE', 'Leffler-Corwin', 37041235, 'Active'),
('MHF-5214-DGH', 'Kursi Gaming', 'KURSIGAMINGEXECUTIVE', 'Thiel-Zemlak', 24491465, 'Nonactive'),
('WBM-6827-VCO', 'Meja Gaming', 'MEJAGAMINGEXECUTIVE', 'Johnson-Collins', 32332150, 'Active'),
('XRR-2535-NNV', 'Meja Gaming', 'MEJAGAMINGEXECUTIVE', 'Hackett, Upton and Harvey', 29087202, 'Active'),
('XMV-0725-TJZ', 'Kursi Gaming', 'KURSIGAMINGEXECUTIVE', 'Kessler, Rowe and Ortiz', 26435694, 'Active'),
('HWR-9474-ZZF', 'Meja Kerja', 'MEJAKERJAEXECUTIVE', 'Wunsch, Satterfield and Kunze', 37457421, 'Nonactive'),
('CEI-2166-RVF', 'Kursi Kerja', 'KURSIKERJAEXECUTIVE', 'Altenwerth, Lakin and Von', 30203534, 'Nonactive'),
('JCP-2407-YHE', 'Meja Gaming', 'MEJAGAMINGEXECUTIVE', 'Mertz Group', 27068986, 'Active'),
('AFS-4718-QGD', 'Meja Kerja', 'MEJAKERJAEXECUTIVE', 'Langosh-Orn', 24171449, 'Nonactive'),
('FRB-0700-CTJ', 'Kursi Gaming', 'KURSIGAMINGEXECUTIVE', 'Ernser Group', 32852864, 'Nonactive'),
('UOJ-2735-GOX', 'Kursi Kerja', 'KURSIKERJAEXECUTIVE', 'Connell and Sons', 30422063, 'Nonactive'),
('LPA-2100-MZV', 'Meja Kerja', 'MEJAKERJAEXECUTIVE', 'Balistreri Group', 28144814, 'Nonactive'),
('GLH-1678-GYH', 'Meja Gaming', 'MEJAGAMINGEXECUTIVE', 'Armstrong Group', 36301879, 'Nonactive'),
('JJB-7869-BPM', 'Kursi Kerja', 'KURSIKERJAEXECUTIVE', 'Glover LLC', 20718471, 'Active'),
('YDK-1303-HGF', 'Meja Gaming', 'MEJAGAMINGEXECUTIVE', 'Von, Dietrich and Christiansen', 28613224, 'Nonactive'),
('RES-0280-LDC', 'Kursi Gaming', 'KURSIGAMINGEXECUTIVE', 'Hills, Waelchi and Windler', 27448611, 'Nonactive'),
('SSP-5643-SUA', 'Meja Gaming', 'MEJAGAMINGEXECUTIVE', 'Frami, Corkery and Bode', 34870447, 'Active'),
('QCE-8566-IDT', 'Kursi Gaming', 'KURSIGAMINGEXECUTIVE', 'Blanda-Hickle', 28711899, 'Active'),
('CJF-2881-PXZ', 'Meja Gaming', 'MEJAGAMINGEXECUTIVE', 'Hermiston Group', 32828073, 'Nonactive'),
('BOD-8622-CMQ', 'Kursi Gaming', 'KURSIGAMINGEXECUTIVE', 'Lockman and Sons', 38509273, 'Active'),
('GMC-6780-MCH', 'Meja Gaming', 'MEJAGAMINGEXECUTIVE', 'Terry, Kris and Parisian', 22252105, 'Active'),
('RYT-8722-DVR', 'Meja Gaming', 'MEJAGAMINGEXECUTIVE', 'Heaney, Koch and Goldner', 36072662, 'Nonactive'),
('NXB-8867-RNH', 'Meja Gaming', 'MEJAGAMINGEXECUTIVE', 'Koepp, Ward and Koss', 22805865, 'Active'),
('OAW-0900-FAH', 'Meja Gaming', 'MEJAGAMINGEXECUTIVE', 'Schulist and Sons', 31173927, 'Active'),
('XQD-8802-SGO', 'Kursi Kerja', 'KURSIKERJAEXECUTIVE', 'Buckridge Group', 23066871, 'Nonactive'),
('XHS-6617-WHE', 'Kursi Gaming', 'KURSIGAMINGEXECUTIVE', 'Hettinger-Leannon', 21442353, 'Nonactive'),
('XAT-1252-CEG', 'Kursi Gaming', 'KURSIGAMINGEXECUTIVE', 'Bauch LLC', 36888622, 'Active'),
('DUS-8115-DCT', 'Kursi Gaming', 'KURSIGAMINGEXECUTIVE', 'Upton, Erdman and Swift', 24318752, 'Nonactive'),
('OEP-6077-FBO', 'Kursi Gaming', 'KURSIGAMINGEXECUTIVE', 'Wiegand, Langosh and Hoppe', 26368067, 'Active'),
('FUL-3659-HUA', 'Meja Gaming', 'MEJAGAMINGEXECUTIVE', 'Wilderman LLC', 36780449, 'Nonactive'),
('XWJ-1999-GID', 'Meja Kerja', 'MEJAKERJAEXECUTIVE', 'Considine LLC', 27564184, 'Active'),
('OVS-1100-BVJ', 'Kursi Gaming', 'KURSIGAMINGEXECUTIVE', 'Stroman, Ziemann and King', 21170944, 'Nonactive'),
('EMR-7631-AQI', 'Kursi Gaming', 'KURSIGAMINGEXECUTIVE', 'Labadie Inc', 31354151, 'Nonactive'),
('WRX-7847-FSC', 'Meja Gaming', 'MEJAGAMINGEXECUTIVE', 'Waelchi-Welch', 29802618, 'Active'),
('LHY-3861-YTT', 'Kursi Gaming', 'KURSIGAMINGEXECUTIVE', 'Batz and Sons', 36970252, 'Active'),
('QRZ-6254-YRY', 'Kursi Kerja', 'KURSIKERJAEXECUTIVE', 'Schaefer and Sons', 25440693, 'Active'),
('DIY-6275-OFF', 'Meja Gaming', 'MEJAGAMINGEXECUTIVE', 'Jacobson Group', 20872775, 'Active'),
('ULH-4249-EYB', 'Meja Gaming', 'MEJAGAMINGEXECUTIVE', 'Stroman, Mayer and Fahey', 31174143, 'Nonactive'),
('XXV-4833-HLA', 'Meja Gaming', 'MEJAGAMINGEXECUTIVE', 'Keefe-Sauer', 29305241, 'Nonactive'),
('SIA-7626-YBI', 'Meja Gaming', 'MEJAGAMINGEXECUTIVE', 'Denesik, MacGyver and Lakin', 31293817, 'Nonactive'),
('WJA-6444-WIQ', 'Meja Gaming', 'MEJAGAMINGEXECUTIVE', 'Bogan, Kuhn and Romaguera', 24848870, 'Nonactive'),
('KGN-8897-PEQ', 'Kursi Kerja', 'KURSIKERJAEXECUTIVE', 'Stamm Inc', 28785499, 'Nonactive'),
('PKL-0663-VIO', 'Meja Gaming', 'MEJAGAMINGEXECUTIVE', 'Kovacek, Trantow and MacGyver', 20472289, 'Active'),
('HWR-1480-ZGF', 'Meja Gaming', 'MEJAGAMINGEXECUTIVE', 'Kemmer, Zboncak and Goodwin', 28058306, 'Active'),
('GFB-1940-DJT', 'Kursi Gaming', 'KURSIGAMINGEXECUTIVE', 'Powlowski LLC', 29382268, 'Nonactive'),
('DFC-5436-MCA', 'Meja Gaming', 'MEJAGAMINGEXECUTIVE', 'Fisher LLC', 26693896, 'Nonactive'),
('CZD-3000-JYF', 'Meja Kerja', 'MEJAKERJAEXECUTIVE', 'Marks-Fahey', 21811323, 'Active'),
('FJH-7448-VXN', 'Meja Gaming', 'MEJAGAMINGEXECUTIVE', 'Bauch, Prohaska and Sawayn', 39436226, 'Nonactive'),
('TYL-0639-MFL', 'Meja Gaming', 'MEJAGAMINGEXECUTIVE', 'Wisozk-Wuckert', 39491211, 'Active'),
('JNT-1980-RDH', 'Meja Gaming', 'MEJAGAMINGEXECUTIVE', 'Bednar and Sons', 33927326, 'Active'),
('TFO-7200-MLQ', 'Meja Kerja', 'MEJAKERJAEXECUTIVE', 'Orn and Sons', 36447089, 'Active'),
('VJG-0025-ELS', 'Meja Gaming', 'MEJAGAMINGEXECUTIVE', 'Thompson, Quigley and Cummerata', 30103921, 'Nonactive'),
('FUF-8907-MLG', 'Kursi Kerja', 'KURSIKERJAEXECUTIVE', 'Spinka, Crist and Durgan', 35204566, 'Active'),
('HGA-9433-LAU', 'Kursi Gaming', 'KURSIGAMINGEXECUTIVE', 'Zieme-Breitenberg', 30855780, 'Nonactive'),
('ULS-1767-MWJ', 'Kursi Gaming', 'KURSIGAMINGEXECUTIVE', 'Spencer, Feest and Nienow', 34966389, 'Active'),
('NWF-1999-WYU', 'Meja Gaming', 'MEJAGAMINGEXECUTIVE', 'Towne LLC', 33199681, 'Active'),
('GBJ-2540-DNS', 'Meja Gaming', 'MEJAGAMINGEXECUTIVE', 'Osinski-Lubowitz', 35961998, 'Nonactive');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

SELECT * FROM products