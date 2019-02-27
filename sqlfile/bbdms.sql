-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 26, 2019 at 03:36 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bbdms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', '3e2d7e623cea5f94ec76541e31ebd4f4', '2019-02-26 14:14:14');

-- --------------------------------------------------------

--
-- Table structure for table `tblblooddonars`
--

CREATE TABLE `tblblooddonars` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `MobileNumber` char(11) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `Gender` varchar(20) DEFAULT NULL,
  `Age` int(11) DEFAULT NULL,
  `BloodGroup` varchar(20) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `Message` mediumtext,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblblooddonars`
--

INSERT INTO `tblblooddonars` (`id`, `FullName`, `MobileNumber`, `EmailId`, `Gender`, `Age`, `BloodGroup`, `Address`, `Message`, `PostingDate`, `status`) VALUES
(6, 'Benjamin kimutai', '0717571452', 'benjaminkoech852@gmail.com', 'Male', 25, 'A-', '052341', ' Am a generous kenyan and am happy to donate for a fellow human', '2019-02-26 13:32:26', 1),
(7, 'Audrey Sulecha', '0710700023', 'audreysu@gmail.com', 'Female', 23, 'O-', '40800-052', ' Glad to help', '2019-02-26 13:33:56', 1),
(8, 'Dennis Kiprop', '0710929461', 'kipdenno@gmail.com', 'Male', 18, 'A-', '45324', ' Available and ready to donate', '2019-02-26 13:36:05', 1),
(9, 'Maurice Amutabi', '0732442620', 'amutabi@yahoo.com', 'Male', 32, 'AB+', 'Kisii', ' Happy to help support my fellow human. ', '2019-02-26 14:25:12', 1),
(10, 'Stella Wanjiku', '0793223551', 'wanja@gmail.com', 'Female', 26, 'O+', 'Nairobi', ' Contact me when urgently needed', '2019-02-26 14:27:32', 1),
(11, 'Joshua Omollo', '0710929464', 'omosh@mail.org', 'Male', 24, 'A+', 'Kisumu', ' Am a regular donor and am happy helping others', '2019-02-26 14:30:45', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblbloodgroup`
--

CREATE TABLE `tblbloodgroup` (
  `id` int(11) NOT NULL,
  `BloodGroup` varchar(20) DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbloodgroup`
--

INSERT INTO `tblbloodgroup` (`id`, `BloodGroup`, `PostingDate`) VALUES
(7, 'A-', '2019-02-26 14:04:00'),
(8, 'AB-', '2019-02-26 14:04:30'),
(9, 'AB+', '2019-02-26 14:04:37'),
(10, 'A+', '2019-02-26 14:05:25'),
(11, 'O-', '2019-02-26 14:05:38'),
(12, 'O+', '2019-02-26 14:05:44');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusinfo`
--

CREATE TABLE `tblcontactusinfo` (
  `id` int(11) NOT NULL,
  `Address` tinytext,
  `EmailId` varchar(255) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactusinfo`
--

INSERT INTO `tblcontactusinfo` (`id`, `Address`, `EmailId`, `ContactNo`) VALUES
(1, 'Benjamin Group of hospitals - Kenya																									', 'benjaminkoech852@gmail.com', '0717571452');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusquery`
--

CREATE TABLE `tblcontactusquery` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `ContactNumber` char(11) DEFAULT NULL,
  `Message` longtext,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactusquery`
--

INSERT INTO `tblcontactusquery` (`id`, `name`, `EmailId`, `ContactNumber`, `Message`, `PostingDate`, `status`) VALUES
(5, 'Benjamin kimutai', 'benjaminkoech852@gmail.com', '0717571452', 'Hello,do you guys carry out community blood donation and sensitization?', '2019-02-26 13:58:36', 1),
(6, 'Audrey Sulecha', 'adreysu@gmail.com', '0710700023', 'Great job that you engage in. God bless you', '2019-02-26 14:00:02', 1),
(7, 'Dennis Kiprop', 'kipropdenno@gmail.com', '0710929461', 'I would love to know if you have a branch in Eldoret or nearby towns ', '2019-02-26 14:02:11', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT '',
  `detail` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `type`, `detail`) VALUES
(2, 'Why Become Donor', 'donor', '<div class=\"css-ytdpgv ebfcul31\" style=\"-webkit-font-smoothing: antialiased; box-sizing: inherit; width: calc(100% - 350px); max-width: 750px; position: relative;\"><div style=\"-webkit-font-smoothing: antialiased; box-sizing: inherit; position: relative;\"><article class=\"article-body css-ut2lnm e13ml3jd0\" style=\"-webkit-font-smoothing: antialiased; box-sizing: inherit; margin-bottom: 25px;\"><p style=\"-webkit-font-smoothing: antialiased; box-sizing: inherit; margin-bottom: 25px; margin-top: 25px; font-size: 18px; line-height: 26px;\">Donating blood has benefits for your emotional and physical health. According to a report by the&nbsp;<a href=\"https://www.mentalhealth.org.uk/publications/doing-good-altruism-and-wellbeing-age-austerity\" target=\"_blank\" rel=\"noopener noreferrer\" class=\"content-link\" style=\"-webkit-font-smoothing: antialiased; box-sizing: inherit; cursor: pointer; border-color: currentcolor; color: rgb(5, 162, 211);\">Mental Health Foundation</a>, helping others can:</p><ul style=\"-webkit-font-smoothing: antialiased; box-sizing: inherit; margin-bottom: 25px; margin-left: 20px; margin-top: 20px; padding-left: 25px; list-style-image: url(&quot;data:image/svg+xml,%3Csvg width=\'10\' height=\'10\' xmlns=\'http://www.w3.org/2000/svg\'%3E%3Ccircle cx=\'5\' cy=\'5\' r=\'2.5\' fill=\'%23EC1C82\'/%3E%3C/svg%3E&quot;);\"><li style=\"-webkit-font-smoothing: antialiased; box-sizing: inherit; font-size: 18px; line-height: 26px; margin-bottom: 8px;\">reduce stress</li><li style=\"-webkit-font-smoothing: antialiased; box-sizing: inherit; font-size: 18px; line-height: 26px; margin-bottom: 8px;\">improve your emotional well-being</li><li style=\"-webkit-font-smoothing: antialiased; box-sizing: inherit; font-size: 18px; line-height: 26px; margin-bottom: 8px;\">benefit your physical health</li><li style=\"-webkit-font-smoothing: antialiased; box-sizing: inherit; font-size: 18px; line-height: 26px; margin-bottom: 8px;\">help get rid of negative feelings</li><li style=\"-webkit-font-smoothing: antialiased; box-sizing: inherit; font-size: 18px; line-height: 26px; margin-bottom: 8px;\">provide a sense of belonging and reduce isolation</li></ul><p style=\"-webkit-font-smoothing: antialiased; box-sizing: inherit; margin-bottom: 25px; margin-top: 25px; font-size: 18px; line-height: 26px;\">Research has found further evidence of the health benefits that come specifically from donating blood.</p><h3 style=\"-webkit-font-smoothing: antialiased; box-sizing: inherit; font-weight: bold; line-height: 26px; margin-bottom: 20px; margin-top: 35px; clear: both;\">Lower risk of heart disease</h3><p style=\"-webkit-font-smoothing: antialiased; box-sizing: inherit; margin-bottom: 25px; margin-top: 25px; font-size: 18px; line-height: 26px;\">Blood donation may lower the risk of heart disease and heart attack. This is because it reduces the blood’s viscosity.</p><p style=\"-webkit-font-smoothing: antialiased; box-sizing: inherit; margin-bottom: 25px; margin-top: 25px; font-size: 18px; line-height: 26px;\"><span style=\"text-align: center;\">A</span><span style=\"text-align: center;\">&nbsp;</span><a href=\"https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3663474/\" target=\"_blank\" rel=\"noopener noreferrer\" class=\"content-link\" style=\"text-align: center; background-color: rgb(255, 255, 255); -webkit-font-smoothing: antialiased; box-sizing: inherit; cursor: pointer; border-color: currentcolor; color: rgb(5, 162, 211);\">2013 study</a><span style=\"text-align: center;\">&nbsp;</span><span style=\"text-align: center;\">found that regular blood donation significantly lowered the mean total cholesterol and low-density lipoprotein cholesterol, protecting against cardiovascular disease. Researchers note this is consistent with findings in other studies which found that blood donors had a lower risk of heart disease and heart attack.</span></p><div id=\"hl-incontent-video-ad\" style=\"-webkit-font-smoothing: antialiased; box-sizing: inherit;\"></div><p style=\"-webkit-font-smoothing: antialiased; box-sizing: inherit; margin-bottom: 25px; margin-top: 25px; font-size: 18px; line-height: 26px;\">Donating blood regularly may also&nbsp;<a href=\"https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3663474/\" target=\"_blank\" rel=\"noopener noreferrer\" class=\"content-link\" style=\"-webkit-font-smoothing: antialiased; box-sizing: inherit; cursor: pointer; border-color: currentcolor; color: rgb(5, 162, 211);\">lower</a>&nbsp;iron stores. This&nbsp;<a href=\"https://academic.oup.com/jnci/article/100/8/572/927859\" target=\"_blank\" rel=\"noopener noreferrer\" class=\"content-link\" style=\"-webkit-font-smoothing: antialiased; box-sizing: inherit; cursor: pointer; border-color: currentcolor; color: rgb(5, 162, 211);\">may</a>&nbsp;reduce the risk of heart attack. High body iron stores are believed to increase the risk of heart attack.</p><div id=\"onequarter-of-article\" style=\"-webkit-font-smoothing: antialiased; box-sizing: inherit;\"></div><h3 style=\"-webkit-font-smoothing: antialiased; box-sizing: inherit; font-weight: bold; line-height: 26px; margin-bottom: 20px; margin-top: 35px; clear: both;\">Lower risk of cancer</h3><div class=\"css-1627q90\" data-empty=\"true\" style=\"-webkit-font-smoothing: antialiased; box-sizing: inherit; z-index: 0; clear: both; position: relative; text-align: center;\"><div style=\"-webkit-font-smoothing: antialiased; box-sizing: inherit;\"></div><div id=\"ina\" data-ad=\"true\" class=\"css-cyquts\" style=\"-webkit-font-smoothing: antialiased; box-sizing: inherit; justify-content: center;\"><div id=\"google_ads_iframe_/4788/hl/bloodtransfusions/ina_0__container__\" style=\"-webkit-font-smoothing: antialiased; box-sizing: inherit; border: 0pt none; width: 750px; height: 0px;\"></div></div></div><p style=\"-webkit-font-smoothing: antialiased; box-sizing: inherit; margin-bottom: 25px; margin-top: 25px; font-size: 18px; line-height: 26px;\">A&nbsp;<a href=\"https://academic.oup.com/jnci/article/100/8/572/927859\" target=\"_blank\" rel=\"noopener noreferrer\" class=\"content-link\" style=\"-webkit-font-smoothing: antialiased; box-sizing: inherit; cursor: pointer; border-color: currentcolor; color: rgb(5, 162, 211);\">2008 study</a>&nbsp;found a small decrease in the risk of certain cancers in people who regularly donated blood. These included cancers that are linked to high iron levels, including cancer of the:</p><ul style=\"-webkit-font-smoothing: antialiased; box-sizing: inherit; margin-bottom: 25px; margin-left: 20px; margin-top: 20px; padding-left: 25px; list-style-image: url(&quot;data:image/svg+xml,%3Csvg width=\'10\' height=\'10\' xmlns=\'http://www.w3.org/2000/svg\'%3E%3Ccircle cx=\'5\' cy=\'5\' r=\'2.5\' fill=\'%23EC1C82\'/%3E%3C/svg%3E&quot;);\"><li style=\"-webkit-font-smoothing: antialiased; box-sizing: inherit; font-size: 18px; line-height: 26px; margin-bottom: 8px;\">liver</li><li style=\"-webkit-font-smoothing: antialiased; box-sizing: inherit; font-size: 18px; line-height: 26px; margin-bottom: 8px;\">colon</li><li style=\"-webkit-font-smoothing: antialiased; box-sizing: inherit; font-size: 18px; line-height: 26px; margin-bottom: 8px;\">lung</li><li style=\"-webkit-font-smoothing: antialiased; box-sizing: inherit; font-size: 18px; line-height: 26px; margin-bottom: 8px;\">esophagus</li><li style=\"-webkit-font-smoothing: antialiased; box-sizing: inherit; font-size: 18px; line-height: 26px; margin-bottom: 8px;\">stomach</li></ul><p style=\"-webkit-font-smoothing: antialiased; box-sizing: inherit; margin-bottom: 25px; margin-top: 25px; font-size: 18px; line-height: 26px;\">A&nbsp;<a href=\"https://www.degruyter.com/view/j/jbcpp.2016.27.issue-6/jbcpp-2015-0111/jbcpp-2015-0111.xml\" target=\"_blank\" rel=\"noopener noreferrer\" class=\"content-link\" style=\"-webkit-font-smoothing: antialiased; box-sizing: inherit; cursor: pointer; border-color: currentcolor; color: rgb(5, 162, 211);\">2016 study</a>&nbsp;also found that donating blood can lower inflammatory markers and increase antioxidant capacity.</p><h3 style=\"-webkit-font-smoothing: antialiased; box-sizing: inherit; font-weight: bold; line-height: 26px; margin-bottom: 20px; margin-top: 35px; clear: both;\">Free health checkup</h3><p style=\"-webkit-font-smoothing: antialiased; box-sizing: inherit; margin-bottom: 25px; margin-top: 25px; font-size: 18px; line-height: 26px;\">In order to give blood, you’re required to undergo a health screening. A trained staff member performs this checkup. They’ll check your:</p><ul style=\"-webkit-font-smoothing: antialiased; box-sizing: inherit; margin-bottom: 25px; margin-left: 20px; margin-top: 20px; padding-left: 25px; list-style-image: url(&quot;data:image/svg+xml,%3Csvg width=\'10\' height=\'10\' xmlns=\'http://www.w3.org/2000/svg\'%3E%3Ccircle cx=\'5\' cy=\'5\' r=\'2.5\' fill=\'%23EC1C82\'/%3E%3C/svg%3E&quot;);\"><li style=\"-webkit-font-smoothing: antialiased; box-sizing: inherit; font-size: 18px; line-height: 26px; margin-bottom: 8px;\">pulse</li><li style=\"-webkit-font-smoothing: antialiased; box-sizing: inherit; font-size: 18px; line-height: 26px; margin-bottom: 8px;\">blood pressure</li><li style=\"-webkit-font-smoothing: antialiased; box-sizing: inherit; font-size: 18px; line-height: 26px; margin-bottom: 8px;\">body temperature</li><li style=\"-webkit-font-smoothing: antialiased; box-sizing: inherit; font-size: 18px; line-height: 26px; margin-bottom: 8px;\">hemoglobin levels</li></ul><p style=\"-webkit-font-smoothing: antialiased; box-sizing: inherit; margin-bottom: 25px; margin-top: 25px; font-size: 18px; line-height: 26px;\">This free mini-physical can offer excellent insight into your health. It can effectively detect problems that could indicate an underlying medical condition or risk factors for certain diseases.</p><p style=\"-webkit-font-smoothing: antialiased; box-sizing: inherit; margin-bottom: 25px; margin-top: 25px; font-size: 18px; line-height: 26px;\">Your blood is also tested for several diseases. These include:</p><ul style=\"-webkit-font-smoothing: antialiased; box-sizing: inherit; margin-bottom: 25px; margin-left: 20px; margin-top: 20px; padding-left: 25px; list-style-image: url(&quot;data:image/svg+xml,%3Csvg width=\'10\' height=\'10\' xmlns=\'http://www.w3.org/2000/svg\'%3E%3Ccircle cx=\'5\' cy=\'5\' r=\'2.5\' fill=\'%23EC1C82\'/%3E%3C/svg%3E&quot;);\"><li style=\"-webkit-font-smoothing: antialiased; box-sizing: inherit; font-size: 18px; line-height: 26px; margin-bottom: 8px;\">hepatitis B</li><li style=\"-webkit-font-smoothing: antialiased; box-sizing: inherit; font-size: 18px; line-height: 26px; margin-bottom: 8px;\">hepatitis C</li><li style=\"-webkit-font-smoothing: antialiased; box-sizing: inherit; font-size: 18px; line-height: 26px; margin-bottom: 8px;\">HIV</li><li style=\"-webkit-font-smoothing: antialiased; box-sizing: inherit; font-size: 18px; line-height: 26px; margin-bottom: 8px;\">West Nile virus</li><li style=\"-webkit-font-smoothing: antialiased; box-sizing: inherit; font-size: 18px; line-height: 26px; margin-bottom: 8px;\">syphilis</li><li style=\"-webkit-font-smoothing: antialiased; box-sizing: inherit; font-size: 18px; line-height: 26px; margin-bottom: 8px;\"><em style=\"-webkit-font-smoothing: antialiased; box-sizing: inherit;\">Trypanosoma cruzi</em></li></ul><div id=\"middle-of-article\" style=\"-webkit-font-smoothing: antialiased; box-sizing: inherit;\"></div><div class=\"css-1tdk91s e2muz2j0\" style=\"-webkit-font-smoothing: antialiased; box-sizing: inherit; clear: both; margin: 40px auto 30px; min-height: 90px; width: 728px;\"><aside class=\"css-0\" style=\"-webkit-font-smoothing: antialiased; box-sizing: inherit;\"><div class=\"css-0\" style=\"-webkit-font-smoothing: antialiased; box-sizing: inherit;\"><div class=\"css-14vjguq\" style=\"-webkit-font-smoothing: antialiased; box-sizing: inherit; z-index: 0; clear: both; position: relative; text-align: center; margin-left: auto; margin-right: auto; min-height: 90px; width: 728px;\"><div id=\"inline4__slot\" data-ad=\"true\" class=\"css-1dy05as\" data-google-query-id=\"CNGc5vPL2eACFVgGBgAdghYPTA\" style=\"-webkit-font-smoothing: antialiased; box-sizing: inherit; display: flex; justify-content: center; min-height: 90px; width: 728px;\"><div id=\"google_ads_iframe_/4788/hl/bloodtransfusions/DLB3_0__container__\" style=\"-webkit-font-smoothing: antialiased; box-sizing: inherit; border: 0pt none; display: inline-block; width: 728px; height: 90px;\"><br></div></div></div></div></aside></div></article></div></div>'),
(3, 'About Us ', 'aboutus', '<br><div class=\"lead-text page-intro__text\" style=\"box-sizing: inherit; font-size: 2.5rem; color: rgb(255, 255, 255); font-family: Roboto, sans-serif; text-shadow: rgb(0, 0, 0) 0px 0px 2px; margin: 0px; background-color: rgba(0, 115, 198, 0.8);\"><p style=\"box-sizing: inherit; line-height: 1.5; margin-bottom: 22.5px; color: rgb(95, 95, 95); font-family: Arial, Helvetica, sans-serif; font-size: 16px; background-color: rgb(255, 255, 255);\">We provide a blood and transplantation service to the NHS, looking after blood donation services in Nairobi and transplant services across the Kenya.&nbsp;This includes managing the donation, storage and transplantation of blood, organs, tissues, bone marrow and stem cells, and researching new treatments and processes.</p><div class=\"container\" style=\"box-sizing: inherit; max-width: 1200px; color: rgb(95, 95, 95); font-family: Arial, Helvetica, sans-serif; font-size: 16px; background-color: rgb(255, 255, 255);\"><div class=\"page-intro page-intro--hero page-intro--blue\" style=\"box-sizing: inherit; position: relative; z-index: 580; margin: 0px -15px 30px; color: rgb(255, 255, 255); background-color: rgba(0, 115, 198, 0.8); background-repeat: no-repeat; background-size: cover; background-position: 50% center; min-height: 260px; background-image: url(&quot;/remote.axd/nhsbtdbe.blob.core.windows.net/umbraco-assets-corp/11302/dsc_0362.jpg?anchor=center&amp;mode=crop&amp;quality=70&amp;width=2000&amp;rnd=131750888850000000&quot;);\"><div class=\"container\" style=\"box-sizing: inherit; padding: 0px; max-width: 1200px;\"><div class=\"page-intro__content\" style=\"box-sizing: inherit; max-width: 790px; position: relative; z-index: 2; color: inherit; padding: 135px 15px 45px;\"><h1 id=\"page-intro\" class=\"page-intro__title\" style=\"box-sizing: inherit; font-size: 4rem; margin-top: 0px; margin-bottom: 0px; font-family: Roboto, sans-serif; line-height: normal; color: rgb(255, 255, 255); display: inline-block; text-shadow: rgb(0, 0, 0) 0px 0px 2px;\">Our values</h1>&nbsp;<br style=\"box-sizing: inherit;\"></div></div></div></div><div class=\"container\" style=\"box-sizing: inherit; max-width: 1200px; color: rgb(95, 95, 95); font-family: Arial, Helvetica, sans-serif; font-size: 16px; background-color: rgb(255, 255, 255);\"><div class=\"row\" style=\"position: relative;\"><div class=\"col-xs-12\" style=\"box-sizing: inherit; width: 1200px;\"></div></div></div><div data-container=\"true\" style=\"box-sizing: inherit; margin-right: auto; margin-left: auto; padding-left: 15px; padding-right: 15px; max-width: 1200px; margin-bottom: 15px; color: rgb(95, 95, 95); font-family: Arial, Helvetica, sans-serif; font-size: 16px; background-color: rgb(255, 255, 255);\"><div class=\"row clearfix\" style=\"position: relative;\"><div class=\"col-md-12 column\" style=\"box-sizing: inherit; width: 1200px;\"><div style=\"box-sizing: inherit;\"><div class=\"grid-text\" data-mh=\"grid-text\" style=\"box-sizing: inherit; margin-bottom: 36px; max-width: 100%; font-size: 1.6rem;\"><p style=\"box-sizing: inherit; line-height: 1.5; margin-bottom: 22.5px;\"><span class=\"lead-text\" style=\"box-sizing: inherit; font-size: 2.5rem; color: rgb(44, 44, 44);\">Caring | Expert | Quality</span></p><p style=\"box-sizing: inherit; line-height: 1.5; margin-bottom: 22.5px;\">Our three core principles&nbsp;are critical to our service, guiding everything we do and inspiring us to be the best.</p></div></div></div></div></div><div data-container=\"true\" style=\"box-sizing: inherit; margin-right: auto; margin-left: auto; padding-left: 15px; padding-right: 15px; max-width: 1200px; margin-bottom: 15px; color: rgb(95, 95, 95); font-family: Arial, Helvetica, sans-serif; font-size: 16px; background-color: rgb(255, 255, 255);\"><div class=\"row clearfix\" style=\"position: relative;\"><div class=\"col-md-6 column\" style=\"box-sizing: inherit; width: 600px;\"><div style=\"box-sizing: inherit;\"><div class=\"grid-text\" data-mh=\"grid-text\" style=\"box-sizing: inherit; margin-bottom: 36px; max-width: 100%; font-size: 1.6rem;\"><p style=\"box-sizing: inherit; line-height: 1.5; margin-bottom: 22.5px;\"><span class=\"lead-text\" style=\"box-sizing: inherit; font-size: 2.5rem; color: rgb(44, 44, 44);\">Caring</span></p><ul style=\"box-sizing: inherit; margin-bottom: 5px;\"><li style=\"box-sizing: inherit;\">We care about our donors, their families, the patients we serve, and our people.</li></ul><p style=\"box-sizing: inherit; line-height: 1.5; margin-bottom: 22.5px;\"><span class=\"lead-text\" style=\"box-sizing: inherit; font-size: 2.5rem; color: rgb(44, 44, 44);\">Expert</span></p><ul style=\"box-sizing: inherit; margin-bottom: 5px;\"><li style=\"box-sizing: inherit;\">We are expert at meeting the needs of those who use our service and those who operate it.</li></ul><p style=\"box-sizing: inherit; line-height: 1.5; margin-bottom: 22.5px;\"><span class=\"lead-text\" style=\"box-sizing: inherit; font-size: 2.5rem; color: rgb(44, 44, 44);\">Quality</span></p><ul style=\"box-sizing: inherit; margin-bottom: 5px;\"><li style=\"box-sizing: inherit;\">We provide quality products, services and experiences for donors, patients and colleagues</li></ul></div></div></div></div></div></div>\r\n										');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblblooddonars`
--
ALTER TABLE `tblblooddonars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbloodgroup`
--
ALTER TABLE `tblbloodgroup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblblooddonars`
--
ALTER TABLE `tblblooddonars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tblbloodgroup`
--
ALTER TABLE `tblbloodgroup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
