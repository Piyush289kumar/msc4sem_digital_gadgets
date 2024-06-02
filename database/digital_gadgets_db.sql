-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 07, 2024 at 05:03 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `digital_gadgets_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cart_id` int(255) NOT NULL,
  `product_img` varchar(255) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `qty` int(11) NOT NULL,
  `price` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cart_id`, `product_img`, `product_name`, `qty`, `price`) VALUES
(13, '23_Apr_2023_05_35_42am_laptop.PNG', 'HP Intel Core i5 11th Gen - (8 GB/512 GB SSD/Windows 11 Home) 15s- fr4000TU Thin and Light Laptop  (', 1, '989');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `post` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`, `post`) VALUES
(65, 'Laptop', 2),
(64, 'Mobile', 2),
(63, 'Graphic Cards', 0),
(62, 'IT Accessories', 5);

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `post_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `category` varchar(100) NOT NULL,
  `post_date` varchar(50) NOT NULL,
  `author` int(11) NOT NULL,
  `post_img` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`post_id`, `title`, `description`, `category`, `post_date`, `author`, `post_img`) VALUES
(99, 'HP 330 Mouse & Keyboard Combo Wireless Desktop Keyboard  (Black)', 'Specifications\r\nGeneral\r\nModel Name\r\n330\r\nModel Number\r\n330 Mouse & Keyboard Combo\r\nType\r\nDesktop Keyboard\r\nProduct Details\r\nSales Package\r\n1 Keyboard, Mouse, Product Notice, Quick Start Guide, Warranty Card, R.E.D. RTF Card\r\nIlluminated Keys\r\nNo\r\nWarranty\r\nWarranty Summary\r\n1 Year\r\nCovered in Warranty\r\nManufacturing Defects\r\nNot Covered in Warranty\r\nIf Product Damaged by Customer will Not Covered in Warranty\r\nWarranty Service Type\r\n1 Year Limited Warranty (Return to HP/Dealer - Standard Bench Repair & Phone-in Assistance)', '62', '23 Apr, 2023', 111, '23_Apr_2023_05_24_34am_keyboard.PNG'),
(100, 'ZOTAC NVIDIA RTX 2060 Twin Fan 12 GB GDDR6 Graphics Card', 'Specifications\r\nIn The Box\r\nSales Package\r\n1 Unit of ZOTAC GAMING GeForce RTX 2060 Twin Fan 12GB, User Manual\r\nGeneral\r\nBrand\r\nZOTAC\r\nGraphics Engine\r\nNVIDIA GeForce RTX 2060\r\nGPU Clock\r\n1650 MHz\r\nProcessors and Cores\r\n2176 CUDA Cores\r\nBus Standard\r\nPCI Express 4.0 16x\r\nCooling and Heatsink\r\nDual Fan IceStorm 2.0 Advanced Cooling\r\nModel ID\r\nRTX 2060 Twin Fan\r\nPower Supply Required\r\n500 W\r\nPart Number\r\nZT-T20620F-10M\r\nMemory\r\nMemory\r\n192-bit, 12 GB GDDR6 Memory\r\nSystem Requirements\r\nSupported OS\r\nGame Ready Drivers, Microsoft DirectX 12 Ultimate, Vulkan RT API, OpenGL 4.6, Windows 11 / 10 (April 2018 update or later) / 7 (64-bit)\r\nWarranty\r\nWarranty Summary\r\n5 Years Warranty : 3 Years Standard and 2 Years Extended Warranty on Registration\r\nCovered in Warranty\r\nComplete Product Warranty\r\nNot Covered in Warranty\r\nTampers, defaces, or removes any stickers containing product identification information such as model number, serial number, or part number. Tampers, defaces, or removes any stickers indicating void warranty if broken. Causes defects through improper usage, failure to comply with operations, inappropriate operating conditions, or unapproved repairs or modifications. Causes defects through accidents, acts of God, acts of nature, negligence, liquid immersion, or improper ventilation. Knowingly and willingly attempt to defraud the validity of a claim.\r\nService Type\r\nCarry-in Warranty', '62', '23 Apr, 2023', 111, '23_Apr_2023_05_28_59am_Graphic.PNG'),
(101, 'vivo T2x 5G (Marine Blue, 128 GB)  (8 GB RAM)', 'Specifications\r\nGeneral\r\nIn The Box\r\nHandset, USB Power Adapter, USB Cable, Sim Eject Tool, Phone Case, Protective Film (Applied), Documentation\r\nModel Number\r\nV2253\r\nModel Name\r\nT2x 5G\r\nColor\r\nMarine Blue\r\nBrowse Type\r\nSmartphones\r\nSIM Type\r\nDual Sim\r\nHybrid Sim Slot\r\nYes\r\nTouchscreen\r\nYes\r\nOTG Compatible\r\nYes\r\nQuick Charging\r\nYes\r\nDisplay Features\r\nDisplay Size\r\n16.71 cm (6.58 inch)\r\nResolution\r\n2408 x 1080 Pixels\r\nResolution Type\r\nFull HD+\r\nDisplay Type\r\nFull HD+ LCD Display\r\nOs & Processor Features\r\nOperating System\r\nAndroid 13\r\nProcessor Type\r\nDimensity 6020\r\nProcessor Core\r\nOcta Core\r\nPrimary Clock Speed\r\n2.2 GHz\r\nOperating Frequency\r\n3G WCDMA: B1/B5/B8, 4G FDD LTE: B1/B3/B5/B8, 4G TDD LTE: B38/B40/B41 (120M), 5G: n1/n3/n8/n28A/n77/n78\r\nMemory & Storage Features\r\nInternal Storage\r\n128 GB\r\nRAM\r\n8 GB\r\nMemory Card Slot Type\r\nHybrid Slot\r\nCall Log Memory\r\nYes\r\nCamera Features\r\nPrimary Camera Available\r\nYes\r\nPrimary Camera\r\n50MP + 2MP\r\nPrimary Camera Features\r\nDual Camera Setup: 50MP (f/1.8 Aperture) + 2MP (f/2.4 Aperture), Camera Features: Photo, Night, Portrait, Video, 50 MP, Panorama, Live Photo, Slo-Mo, Timelapse, Pro, Documents\r\nSecondary Camera Available\r\nYes\r\nSecondary Camera\r\n8MP Front Camera\r\nSecondary Camera Features\r\n8MP Front Camera Setup: (f/2.0 Aperture)\r\nFlash\r\nRear Flashlight\r\nFull HD Recording\r\nYes\r\nVideo Recording\r\nYes\r\nDual Camera Lens\r\nPrimary Camera\r\nCall Features\r\nPhone Book\r\nYes\r\nConnectivity Features\r\nNetwork Type\r\n5G, 4G, 3G\r\nSupported Networks\r\n5G, 4G LTE, WCDMA\r\nInternet Connectivity\r\n5G, 4G, 3G, Wi-Fi\r\n3G\r\nYes\r\nPre-installed Browser\r\nYes\r\nMicro USB Version\r\nUSB (Type C)\r\nBluetooth Support\r\nYes\r\nBluetooth Version\r\nv5.1\r\nWi-Fi\r\nYes\r\nWi-Fi Version\r\nSupports 2.4 GHz and 5 GHz Dual Band\r\nWi-Fi Hotspot\r\nYes\r\nNFC\r\nNo\r\nUSB Connectivity\r\nYes\r\nGPS Support\r\nYes\r\nOther Details\r\nSmartphone\r\nYes\r\nSIM Size\r\nNano Sim\r\nUser Interface\r\nFuntouch OS 13 (Based on Android 13)\r\nRemovable Battery\r\nNo\r\nSMS\r\nYes\r\nSIM Access\r\nDual Sim Dual Standby (DSDS)\r\nSensors\r\nAccelerometer, Ambient Light Sensor, Proximity Sensor, E-Compass, Fingerprint Sensor, Gyroscope\r\nOther Features\r\nHandset Material: 2.5D Plastic, 18W Fast Charging, Video Recording: MP4\r\nGPS Type\r\nGPS, BEIDOU, GLONASS, GALILEO, QZSS\r\nMultimedia Features\r\nFM Radio\r\nYes\r\nFM Radio Recording\r\nYes\r\nAudio Formats\r\nWAV, MP3, MP2, MP1, MIDI, Vorbis, APE, FLAC, AAC, OPUS\r\nVideo Formats\r\nMP4, 3GP, MKV, FLV\r\nBattery & Power Features\r\nBattery Capacity\r\n5000 mAh\r\nBattery Type\r\nLithium\r\nDimensions\r\nWidth\r\n75.6 mm\r\nHeight\r\n164.05 mm\r\nDepth\r\n8.15 mm\r\nWeight\r\n184 g\r\nWarranty\r\nWarranty Summary\r\n1 Year of Device & 6 Months for Inbox Accessories\r\nDomestic Warranty\r\n1 Year', '64', '23 Apr, 2023', 111, '23_Apr_2023_05_32_15am_vivo.PNG'),
(102, 'HP Intel Core i5 11th Gen - (8 GB/512 GB SSD/Windows 11 Home) 15s- fr4000TU Thin and Light Laptop  (', 'Specifications\r\nGeneral\r\nSales Package\r\nLaptop, Power Adaptor, User Guide, Warranty Documents\r\nModel Number\r\n15s- fr4000TU\r\nPart Number\r\n7J3Z2PA#ACJ\r\nModel Name\r\n15s- fr4000TU\r\nSeries\r\nIntel\r\nColor\r\nNatural Silver\r\nType\r\nThin and Light Laptop\r\nSuitable For\r\nProcessing & Multitasking\r\nMS Office Provided\r\nYes\r\nProcessor And Memory Features\r\nProcessor Brand\r\nIntel\r\nProcessor Name\r\nCore i5\r\nProcessor Generation\r\n11th Gen\r\nSSD\r\nYes\r\nSSD Capacity\r\n512 GB\r\nRAM\r\n8 GB\r\nRAM Type\r\nDDR4\r\nProcessor Variant\r\n1155G7\r\nClock Speed\r\n2.5 GHz upto max turbo frequency at 4.5 Ghz\r\nCache\r\n8 MB\r\nGraphic Processor\r\nIntel Integrated Iris Xe\r\nNumber of Cores\r\n4\r\nOperating System\r\nOS Architecture\r\n64 bit\r\nOperating System\r\nWindows 11 Home\r\nSupported Operating System\r\nWindows 11 Home\r\nSystem Architecture\r\n64 bit\r\nPort And Slot Features\r\nMic In\r\nYes\r\nUSB Port\r\n1 x USB Type-C 5Gbps signaling rate, 2 x USB Type-A 5Gbps signaling rate\r\nHDMI Port\r\n1 x HDMI 1.4b\r\nDisplay And Audio Features\r\nTouchscreen\r\nNo\r\nScreen Size\r\n39.62 cm (15.6 Inch)\r\nScreen Resolution\r\n1920 x 1080 Pixel\r\nScreen Type\r\nFull HD, micro-edge, anti-glare, Brightness: 250 nits, 141 ppi, Color Gamut: 45%NTSC\r\nSpeakers\r\nBuilt-in Dual Speakers\r\nInternal Mic\r\nYes\r\nConnectivity Features\r\nWireless LAN\r\nRealtek RTL8822CE 802.11a/b/g/n/ac (2x2) Wi-Fi\r\nBluetooth\r\nv5.0\r\nDimensions\r\nDimensions\r\n358 x 242 x 17.9 mm\r\nWeight\r\n1.69 Kg\r\nAdditional Features\r\nDisk Drive\r\nNot Available\r\nWeb Camera\r\nHP True Vision 720p HD camera\r\nFinger Print Sensor\r\nNo\r\nFace Recognition\r\nNo\r\nKeyboard\r\nFull-size, backlit natural silver keyboard with numeric keypad\r\nBacklit Keyboard\r\nYes\r\nWarranty\r\nWarranty Summary\r\n1 Year Onsite Warranty\r\nWarranty Service Type\r\nOnsite\r\nCovered in Warranty\r\nManufacturing Defects\r\nNot Covered in Warranty\r\nPhysical Damage\r\nDomestic Warranty\r\n1 Year\r\nInternational Warranty\r\n1 Year', '65', '23 Apr, 2023', 111, '23_Apr_2023_05_35_42am_laptop.PNG'),
(103, 'HP 315 Multi-function Color Inkjet Printer (Color Page Cost: 20 Paise | Black Page Cost: 10 Paise)  ', 'Specifications\r\nGeneral\r\nPrinting Method\r\nInkjet\r\nType\r\nMulti-function\r\nModel Name\r\n315\r\nPrinting Output\r\nColor\r\nFunctions\r\nPrint, Copy, Scan\r\nBrand\r\nHP\r\nRefill Type\r\nRefillable Ink Tank\r\nIdeal Usage\r\nHome & Small Office\r\nVoice Assistant Compatibility\r\nNA\r\nPrint\r\nMax Print Resolution (Colour)\r\nUp to 4800 x 1200 optimised colour dpi\r\nPrint Speed Color\r\n15 ppm\r\nPrint Speed Mono\r\n19 ppm\r\nCost per Page (Color) - As per ISO Standards\r\n20 Paise\r\nCost per Page (Black)- As per ISO Standards\r\n10 Paise\r\nDuplex Print\r\nManual\r\nPaper Handling\r\nAuto Document Feeder\r\nNo\r\nOutput tray capacity\r\n25 Sheets\r\nInput tray capacity\r\n60 Sheet\r\nScan\r\nOptical scanning resolution\r\nUp to 1200 x 1200 dpi dpi\r\nFax\r\nResolution\r\nUp to 4800 x 1200 dpi dpi\r\nDimensions And Weight\r\nHeight\r\n15.8 cm\r\nWidth\r\n52.5 cm\r\nWeight\r\n4.67 kg\r\nDepth\r\n31 cm\r\nConnectivity\r\nUSB support\r\nUSB 2.0\r\nWireless Support\r\nNo\r\nCompatible Inks/toners\r\nCompatible Colour Cartridge\r\nHP GT52 Cyan Original Ink Bottle, HP GT52 Magenta Original Ink Bottle, HP GT52 Yellow Original Ink Bottle\r\nCompatible Black cartridge\r\nHP GT53 Black Original Ink Bottle\r\nSales Package\r\nIn The Box\r\nInkjet Printer 1N, (Black Ink Cartridge 1N,Color Ink Cartridge 1N,Power Cord 1N, USB Cable 1N,User Manual 5N)', '62', '23 Apr, 2023', 111, '23_Apr_2023_05_39_32am_Printer.PNG'),
(104, 'SAMSUNG 32 inch 4K Ultra HD LED Backlit VA Panel with 1 Billion Colors, PBP, Slim Bezels Flat Monito', 'Specifications\r\nGeneral\r\nModel Name\r\nLU32J590UQWXXL\r\nColor\r\nDark Blue Grey\r\nDisplay\r\n81.28 cm (32 inch) LED Backlit Display\r\nBacklight\r\nLED Backlit Backlight\r\nPanel Type\r\nVA Panel\r\nResolution\r\n3840 x 2160 pixels\r\nScreen Resolution Type\r\n4K Ultra HD\r\nSales Package\r\n1 Monitor, Warranty Card\r\nScreen Form Factor\r\nFlat\r\nDisplay Features\r\nMaximum Refresh Rate\r\n60 Hz (Analog)\r\nAspect Ratio\r\n16:09\r\nResponse Time\r\n4 ms\r\nBrightness\r\n270 nits (2D)\r\nTouchscreen Features\r\nTouchscreen Support\r\nNo\r\nPower Features\r\nPower Requirement\r\nAC 100 - 240 V\r\nConnectivity\r\nHDMI\r\nYes\r\nMounting Features\r\nStand\r\nSimple\r\nStand Tilt\r\n-2 to 20 Degree\r\nWall Mounting\r\n100 x 100 mm\r\nDimensions\r\nWidth With Stand\r\n729.5 mm\r\nHeight With Stand\r\n534.5 mm\r\nDepth With Stand\r\n250.5 mm\r\nWeight With Stand\r\n6.3 kg\r\nWidth Without Stand\r\n729.5 mm\r\nHeight Without Stand\r\n427.8 mm\r\nDepth Without Stand\r\n56.4 mm\r\nWeight Without Stand\r\n5.5 kg\r\nWarranty\r\nWarranty Summary\r\n3 Years Warranty\r\nCovered in Warranty\r\nDefect Arising Out of Faulty, Defective Material or Workmanship are Covered in Warranty\r\nNot Covered in Warranty\r\nWarranty does not Cover Any External Accessories (Such as Battery, Cable, Carrying Bag), Damage Caused to the Product due to Improper Installation by Customer, Normal Wear and Tear to Magnetic Heads, Audio, Video, Laser Pick-ups and TV Picture Tubes, Panel, Damages Caused to the Product by Accident, Lightening, Ingress of Water, Fire, Dropping or Excessive Shock, Any Damage Caused due to Tampering of the Product by An Unauthorised Agent, Liability for Loss of Data, Recorded Images or Business Opportunity Loss\r\nDomestic Warranty\r\n3 Year', '62', '27 Apr, 2023', 111, '27_Apr_2023_05_25_41am_moni.PNG'),
(105, 'POCO M4 5G (Power Black, 128 GB)  (6 GB RAM)', 'Specifications\r\nGeneral\r\nIn The Box\r\nHandset, 22.5 W Power Adapter, USB Type A-C Cable, Sim Ejector Tool, Transparent Case, Pre-Applied Screen Protector, User Guide, Warranty Card\r\nModel Number\r\nMZB0BRVIN\r\nModel Name\r\nM4 5G\r\nColor\r\nPower Black\r\nBrowse Type\r\nSmartphones\r\nSIM Type\r\nDual Sim\r\nHybrid Sim Slot\r\nNo\r\nTouchscreen\r\nYes\r\nOTG Compatible\r\nYes\r\nQuick Charging\r\nYes\r\nSound Enhancements\r\nHi-Res Audio Certification\r\nSAR Value\r\nHead: 0.853 W/kg, Body: 0.846 W/kg\r\nDisplay Features\r\nDisplay Size\r\n16.71 cm (6.58 inch)\r\nResolution\r\n2400 x 1080 Pixels\r\nResolution Type\r\nFull HD+\r\nGPU\r\nARM Mali-G57 MC2\r\nDisplay Type\r\nFull HD+ Display\r\nOther Display Features\r\n90 Hz Refresh Rate, 240 Hz Touch Sampling Rate, Aspect Ratio: 20:9, Contrast Ratio: 1500:1, NTSC: Supports 70% NTSC Color Gamut, Scrren Mirror/Cast\r\nOs & Processor Features\r\nOperating System\r\nAndroid 12\r\nProcessor Type\r\nMediatek Dimensity 700\r\nProcessor Core\r\nOcta Core\r\nPrimary Clock Speed\r\n2.2 GHz\r\nSecondary Clock Speed\r\n2 GHz\r\nOperating Frequency\r\n2G GSM: B2/B3/B5/B8, 3G WCDMA: B1/B2/B5/B8, 4G FDD-LTE: B1/B3/B5/B8, 4G TDD-LTE: B40/B41, 5G SA: N1/N3/N5/N8/N28/N40/N78, 5G NSA: N1/N3/N40/N77/N78\r\nMemory & Storage Features\r\nInternal Storage\r\n128 GB\r\nRAM\r\n6 GB\r\nExpandable Storage\r\n512 GB\r\nSupported Memory Card Type\r\nMicroSD\r\nMemory Card Slot Type\r\nDedicated Slot\r\nCamera Features\r\nPrimary Camera Available\r\nYes\r\nPrimary Camera\r\n50MP + 2MP\r\nPrimary Camera Features\r\nDual Camera Setup: 50MP Primary Camera (f/1.8 Aperture, 0.7um Pixel Size (4 -in-1: 12.5MP, 1.4um Pixel Size)) + 2MP Depth Sensor, Camera Feature: Portrait, Panorama, Pro Mode, Night Mode, HDR, AI Scene Detection, Google Lens, Movie Frame, Pro colour, Tilt Shift, Document Mode, Timed Burst\r\nSecondary Camera Available\r\nYes\r\nSecondary Camera\r\n8MP Front Camera\r\nSecondary Camera Features\r\n8MP Camera Setup: (f/2.45 Aperture, 1.0um Pixel Size), Camera Feature: Portrait, HDR, Timed Burst, AI Beauty Mode, AI Filters, Movie Frame, Palm Shutter\r\nFlash\r\nRear Flash\r\nHD Recording\r\nYes\r\nFull HD Recording\r\nYes\r\nVideo Recording\r\nYes\r\nVideo Recording Resolution\r\nRear Camera: 1080p (at 30fps), Front Camera: 1080p (at 30fps)\r\nFrame Rate\r\n30 fps\r\nDual Camera Lens\r\nPrimary Camera', '64', '27 Apr, 2023', 111, '27_Apr_2023_05_27_44am_ppp.PNG'),
(106, 'ASUS VivoBook 14 (2021) Celeron Dual Core - (4 GB/256 GB SSD/Windows 11 Home) X415MA-BV011W Thin and', 'Specifications\r\nGeneral\r\nSales Package\r\nLaptop, Power Adaptor, User Guide, Warranty Documents\r\nModel Number\r\nX415MA-BV011W\r\nPart Number\r\n90NB0TG1-M002R0\r\nModel Name\r\nX415MA-BV011W\r\nSeries\r\nVivoBook 14 (2021)\r\nColor\r\nTransparent Silver\r\nType\r\nThin and Light Laptop\r\nSuitable For\r\nProcessing & Multitasking\r\nPower Supply\r\n33W AC Adapter\r\nBattery Cell\r\n2 cell\r\nMS Office Provided\r\nNo\r\nProcessor And Memory Features\r\nProcessor Brand\r\nIntel\r\nProcessor Name\r\nCeleron Dual Core\r\nSSD\r\nYes\r\nSSD Capacity\r\n256 GB\r\nRAM\r\n4 GB\r\nRAM Type\r\nDDR4\r\nProcessor Variant\r\nN4020\r\nClock Speed\r\n1.1 GHz upto max turbo frequency at 2.8 Ghz\r\nCache\r\n4\r\nGraphic Processor\r\nIntel Integrated UHD\r\nNumber of Cores\r\n2\r\nOperating System\r\nOS Architecture\r\n64 bit\r\nOperating System\r\nWindows 11 Home\r\nSupported Operating System\r\nWindows 11 Home\r\nPort And Slot Features\r\nMic In\r\nYes\r\nUSB Port\r\n1 x USB 3.2 Gen 1 Type-A, 1 x USB 3.2 Gen 1 Type-C, 2 x USB 2.0 Type-A\r\nHDMI Port\r\n1 x HDMI 1.4\r\nDisplay And Audio Features\r\nTouchscreen\r\nNo\r\nScreen Size\r\n35.56 cm (14 inch)\r\nScreen Resolution\r\n1366 x 768 Pixel\r\nScreen Type\r\nHD 16:9 aspect ratio, 200nits, 45% NTSC color gamut, Anti-glare display\r\nSpeakers\r\nBuilt-in Speaker\r\nInternal Mic\r\nBuilt-in Microphone\r\nSound Properties\r\nSonicMaster\r\nConnectivity Features\r\nWireless LAN\r\nWi-Fi 5(802.11ac)\r\nBluetooth\r\nv4.1\r\nDimensions\r\nDimensions\r\n325.4 x 216 x 19.9 mm\r\nWeight\r\n1.60 kg\r\nAdditional Features\r\nDisk Drive\r\nNot Available\r\nWeb Camera\r\nVGA camera\r\nFinger Print Sensor\r\nYes\r\nKeyboard\r\nChiclet Keyboard\r\nBacklit Keyboard\r\nNo\r\nWarranty\r\nWarranty Summary\r\n1 Year Onsite Warranty\r\nWarranty Service Type\r\nOnsite\r\nCovered in Warranty\r\nManufacturing Defects\r\nNot Covered in Warranty\r\nPhysical Damage\r\nDomestic Warranty\r\n1 Year', '65', '27 Apr, 2023', 111, '27_Apr_2023_05_29_17am_pl.PNG'),
(107, 'ZEBRONICS Zeb CHEETAH Wireless mouse with 1600 DPI, High accuracy, Ergonomic design Wireless Optical', 'Specifications\r\nGeneral\r\nModel Name\r\nZeb CHEETAH Wireless mouse with 1600 DPI, High accuracy, Ergonomic design\r\nSystem Requirements\r\nDesktop\r\nSales Package\r\nMouse - 1 Unit, Nano Receiver - 1 Unit\r\nColor\r\nBlue\r\nConnectivity And Power Features\r\nBluetooth\r\nNo', '62', '27 Apr, 2023', 111, '27_Apr_2023_05_30_41am_mouse.PNG');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `websitename` varchar(60) NOT NULL,
  `logo` varchar(50) NOT NULL,
  `footerdesc` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `websitename`, `logo`, `footerdesc`) VALUES
(1, 'Digital Gadgets', 'LOGO.png', 'Copyright 2024');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(40) DEFAULT NULL,
  `role` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `first_name`, `last_name`, `username`, `password`, `role`) VALUES
(111, 'E', 'Shopy', 'Anisha', 'c4ca4238a0b923820dcc509a6f75849b', 1),
(112, 'admin', 'user', 'admin', '202cb962ac59075b964b07152d234b70', 1),
(113, 'normal', 'user', 'normal', '202cb962ac59075b964b07152d234b70', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`post_id`),
  ADD UNIQUE KEY `post_id` (`post_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
