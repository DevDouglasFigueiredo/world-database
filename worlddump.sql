-- MySQL dump 10.13  Distrib 8.0.33, for Linux (x86_64)
--
-- Host: localhost    Database: world
-- ------------------------------------------------------
-- Server version	8.0.33

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `city`
--

DROP TABLE IF EXISTS `city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `city` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(35) NOT NULL,
  `CountryCode` char(3) NOT NULL,
  `District` varchar(20) NOT NULL,
  `Population` int NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `CountryCode` (`CountryCode`),
  CONSTRAINT `city_ibfk_1` FOREIGN KEY (`CountryCode`) REFERENCES `country` (`Code`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `city`
--

LOCK TABLES `city` WRITE;
/*!40000 ALTER TABLE `city` DISABLE KEYS */;
INSERT INTO `city` VALUES (1,'Kabul','AFG','Kabol',1780000),(2,'Qandahar','AFG','Qandahar',237500),(3,'Herat','AFG','Herat',186800),(4,'Mazar-e-Sharif','AFG','Balkh',127800),(5,'Amsterdam','NLD','Noord-Holland',731200),(6,'Rotterdam','NLD','Zuid-Holland',593321),(7,'Haaq','NLD','Zuid-Holland',440900),(8,'Utrecht','NLD','Utrecht',234323),(9,'Eindhoven','NLD','Noord-Brabant',201843),(10,'Tilburg','NLD','Noord-Brabant',193238),(11,'Groningen','NLD','Groningen',172701),(12,'Breda','NLD','Noord-Brabant',162980),(13,'São Paulo','BRA','São Paulo',17300000),(14,'Rio de Janeiro','BRA','Rio de Janeiro',6748000),(15,'Salvador','BRA','Bahia',2887000),(16,'Brasília','BRA','Distrito Federal',3055149),(17,'Fortaleza','BRA','Ceará',2687000),(18,'Belo Horizonte','BRA','Minas Gerais',2512000),(19,'Manaus','BRA','Amazonas',2183000),(20,'Curitiba','BRA','Paraná',1943000),(21,'Recife','BRA','Pernambuco',1655000),(22,'Goiânia','BRA','Goiás',1536000),(23,'Belém','BRA','Pará',1493000),(24,'Porto Alegre','BRA','Rio Grande do Sul',1488000),(25,'Guarulhos','BRA','São Paulo',1385000),(26,'Campinas','BRA','São Paulo',1223000),(27,'São Luís','BRA','Maranhão',1102000),(28,'São Gonçalo','BRA','Rio de Janeiro',1092000),(29,'Maceió','BRA','Alagoas',1027000),(30,'Duque de Caxias','BRA','Rio de Janeiro',924624),(31,'Natal','BRA','Rio Grande do Norte',884122),(32,'Teresina','BRA','Piauí',868075),(33,'Campo Grande','BRA','Mato Grosso do Sul',906092),(34,'São Bernardo do Campo','BRA','São Paulo',844483),(35,'Nova Iguaçu','BRA','Rio de Janeiro',823302),(36,'João Pessoa','BRA','Paraíba',817511),(37,'Santo André','BRA','São Paulo',721368),(38,'Jaboatão dos Guararapes','BRA','Pernambuco',716925),(39,'Osasco','BRA','São Paulo',699944),(40,'Ribeirão Preto','BRA','São Paulo',694534),(41,'Uberlândia','BRA','Minas Gerais',699097),(42,'Contagem','BRA','Minas Gerais',674858),(43,'Florianópolis','BRA','Santa Catarina',508826),(44,'São José','BRA','Santa Catarina',250181),(45,'Palhoça','BRA','Santa Catarina',175272),(46,'Biguaçu','BRA','Santa Catarina',68197);
/*!40000 ALTER TABLE `city` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `country` (
  `Code` char(3) NOT NULL,
  `Name` varchar(52) NOT NULL,
  `Continent` enum('Asia','Europe','North America','Africa','Oceania','Antarctica','South America') NOT NULL,
  `Region` varchar(26) NOT NULL,
  `SurfaceArea` float NOT NULL,
  `IndepYear` smallint DEFAULT NULL,
  `Population` int NOT NULL,
  `LifeExpectancy` float DEFAULT NULL,
  `GNP` float DEFAULT NULL,
  `GNPOld` float DEFAULT NULL,
  `LocalName` varchar(45) NOT NULL,
  `GovernmentForm` varchar(45) NOT NULL,
  `HeadOfState` varchar(45) DEFAULT NULL,
  `Capital` int DEFAULT NULL,
  `Code2` char(2) NOT NULL,
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country`
--

LOCK TABLES `country` WRITE;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` VALUES ('AFG','Afghanistan','Asia','Southern and Central Asia',652230,1919,22720000,45.9,5976,NULL,'Afganistan/Afqanestan','Islamic Emirate','Mohammad Omar',NULL,'AF'),('AGO','Angola','Africa','Central Africa',1246700,1975,12878000,38.3,6648,7984,'Angola','Republic','José Eduardo dos Santos',56,'AO'),('ARG','Argentina','South America','South America',2780400,1816,37032000,75.1,340238,323310,'Argentina','Federal Republic','Fernando de la Rúa',69,'AR'),('AUS','Australia','Oceania','Australia and New Zealand',7741220,1901,18886000,79.8,351182,392911,'Australia','Constitutional Monarchy, Federation','Elisabeth II',135,'AU'),('BDI','Burundi','Africa','Eastern Africa',27834,1962,6695000,46.2,903,982,'Burundi/Uburundi','Republic','Pierre Buyoya',552,'BI'),('BFA','Burkina Faso','Africa','Western Africa',274000,1960,11937000,46.7,2425,2201,'Burkina Faso','Republic','Blaise Compaoré',549,'BF'),('BRA','Brazil','South America','South America',8547400,1822,170115000,72,776739,804108,'Brasil','Federal Republic','Luis Inacio Lula da Silva',2118,'BR'),('BWA','Botswana','Africa','Southern Africa',581730,1966,1622000,39.3,4834,4935,'Botswana','Republic','Festus G. Mogae',204,'BW'),('CAN','Canada','North America','North America',9970610,1867,31147000,79.4,598862,625626,'Canada','Constitutional Monarchy, Federation','Elisabeth II',1822,'CA'),('CIV','Côte d’Ivoire','Africa','Western Africa',322463,1960,14786000,45.2,11345,10285,'Côte d’Ivoire','Republic','Laurent Gbagbo',2814,'CI'),('CMR','Cameroon','Africa','Central Africa',475442,1960,15085000,54.8,9174,8596,'Cameroun/Cameroon','Republic','Paul Biya',1804,'CM'),('COG','Congo','Africa','Central Africa',342000,1960,2943000,47.4,2108,2287,'Congo','Republic','Denis Sassou-Nguesso',2296,'CG'),('COM','Comoros','Africa','Eastern Africa',1862,1975,578000,60,440,436,'Komori/Comores','Republic','Azali Assoumani',2295,'KM'),('CPV','Cape Verde','Africa','Western Africa',4033,1975,428000,68.9,435,420,'Cabo Verde','Republic','António Mascarenhas Monteiro',1859,'CV'),('DEU','Germany','Europe','Western Europe',357022,1955,82164700,77.4,2133370,2102830,'Deutschland','Federal Republic','Johannes Rau',3068,'DE'),('DJI','Djibouti','Africa','Eastern Africa',23200,1977,638000,50.8,382,373,'Djibouti/Jibuti','Republic','Ismail Omar Guelleh',585,'DJ'),('EGY','Egypt','Africa','Northern Africa',1001450,1922,68470000,63.3,82710,75617,'Misr','Republic','Hosni Mubarak',608,'EG'),('ERI','Eritrea','Africa','Eastern Africa',117600,1993,3850000,55.8,650,0,'Ertra','Republic','Isayas Afewerki',652,'ER'),('ESP','Spain','Europe','Southern Europe',505992,1492,39441700,78.8,553233,532031,'España','Constitutional Monarchy','Juan Carlos I',653,'ES'),('FRA','France','Europe','Western Europe',551500,843,59225700,78.8,1424280,1392450,'France','Republic','Jacques Chirac',2974,'FR'),('FSM','Micronesia','Oceania','Micronesia',702,1990,119000,68.6,212,NULL,'Micronesia','Republic','Leo A. Falcam',2689,'FM'),('GBR','United Kingdom','Europe','British Islands',242900,1066,59623400,77.7,1378330,1296830,'United Kingdom','Constitutional Monarchy','Elisabeth II',456,'GB'),('GNQ','Equatorial Guinea','Africa','Central Africa',28051,1968,453000,53.6,283,542,'Guinea Ecuatorial','Republic','Teodoro Obiang Nguema Mbasogo',2972,'GQ'),('IND','India','Asia','Southern and Central Asia',3287260,1947,1013662000,62.5,447114,430572,'Bharat/India','Federal Republic','Kocheril Raman Narayanan',1109,'IN'),('IRL','Ireland','Europe','British Islands',70273,1921,3775100,76.8,75921,73132,'Ireland/Éire','Republic','Mary McAleese',1447,'IE'),('ISR','Israel','Asia','Middle East',21056,1948,6217000,78.6,97477,98577,'Yisra’el/Isra’il','Republic','Moshe Katzav',1450,'IL'),('ITA','Italy','Europe','Southern Europe',301316,1861,57680000,79,1161760,1145370,'Italia','Republic','Carlo Azeglio Ciampi',1464,'IT'),('JAM','Jamaica','North America','Caribbean',10990,1962,2583000,75.2,6871,6722,'Jamaica','Constitutional Monarchy','Elisabeth II',1530,'JM'),('JOR','Jordan','Asia','Middle East',88946,1946,5083000,77.4,7526,7051,'Al-Urdunn','Constitutional Monarchy','Abdullah II',1786,'JO'),('JPN','Japan','Asia','Eastern Asia',377829,-660,126714000,80.7,3787040,4192640,'Nihon/Nippon','Constitutional Monarchy','Akihito',1532,'JP'),('KAZ','Kazakstan','Asia','Southern and Central Asia',2724900,1991,16223000,63.2,24375,23383,'Qazaqstan','Republic','Nursultan Nazarbajev',1864,'KZ'),('KEN','Kenya','Africa','Eastern Africa',580367,1963,30080000,48,9217,10241,'Kenya','Republic','Daniel arap Moi',1881,'KE'),('KGZ','Kyrgyzstan','Asia','Southern and Central Asia',199900,1991,4699000,63.4,1626,1767,'Kyrgyzstan','Republic','Askar Akajev',2253,'KG'),('KIR','Kiribati','Oceania','Micronesia',726,1979,83000,59.8,40.7,NULL,'Kiribati','Republic','Teburoro Tito',2256,'KI'),('KWT','Kuwait','Asia','Middle East',17818,1961,1972000,76.1,27037,30373,'Al-Kuwayt','Constitutional Monarchy (Emirate)','Jabir al-Ahmad al-Jabir al-Sabah',2429,'KW'),('LAO','Laos','Asia','Southeast Asia',236800,1953,5433000,53.1,1292,1746,'Lao','Republic','Khamtay Siphandone',2432,'LA'),('LBN','Lebanon','Asia','Middle East',10400,1941,3282000,71.3,17121,15129,'Lubnan','Republic','Émile Lahoud',2438,'LB'),('LBR','Liberia','Africa','Western Africa',111369,1847,3154000,51,2012,0,'Liberia','Republic','Charles Taylor',2440,'LR'),('LBY','Libyan Arab Jamahiriya','Africa','Northern Africa',1759540,1951,5605000,75.5,44806,40562,'Libiya','Socialistic State','Muammar al-Qadhafi',2441,'LY'),('LIE','Liechtenstein','Europe','Western Europe',160,1806,32300,78.8,1119,1084,'Liechtenstein','Constitutional Monarchy','Hans-Adam II',2446,'LI'),('LSO','Lesotho','Africa','Southern Africa',30355,1966,2153000,50.8,1061,1161,'Lesotho','Constitutional Monarchy','Letsie III',2430,'LS'),('LTU','Lithuania','Europe','Baltic Countries',65301,1991,3698500,69.1,10692,9585,'Lietuva','Republic','Valdas Adamkus',2447,'LT'),('LUX','Luxembourg','Europe','Western Europe',2586,1867,435700,77.1,16321,15519,'Luxembourg/Lëtzebuerg','Constitutional Monarchy','Henri',2452,'LU'),('LVA','Latvia','Europe','Baltic Countries',64589,1991,2424200,68.4,6398,5639,'Latvija','Republic','Vaira Vike-Freiberga',2434,'LV'),('MAC','Macao','Asia','Eastern Asia',18,NULL,473000,81.6,5749,5940,'Macau/Aomen','Special Administrative Region of China','Jiang Zemin',2454,'MO'),('MDA','Moldova','Europe','Eastern Europe',33851,1991,4380000,64.5,1579,1871,'Moldova','Republic','Petru Lucinschi',2690,'MD'),('MDG','Madagascar','Africa','Eastern Africa',587041,1960,15942000,55,3750,3545,'Madagasikara/Madagascar','Federal Republic','Didier Ratsiraka',2455,'MG'),('MDV','Maldives','Asia','Southern and Central Asia',298,1965,286000,62.2,199,NULL,'Dhivehi Raajje/Maldives','Republic','Maumoon Abdul Gayoom',2463,'MV'),('MEX','Mexico','North America','Central America',1958200,1810,98881000,71.5,414972,401461,'México','Federal Republic','Vicente Fox Quesada',2515,'MX'),('MHL','Marshall Islands','Oceania','Micronesia',181,1990,64000,65.5,97,NULL,'Marshall Islands/Majol','Republic','Kessai Note',2507,'MH'),('MKD','Macedonia','Europe','Southern Europe',25713,1991,2024000,73.8,1694,1915,'Makedonija','Republic','Boris Trajkovski',2460,'MK'),('MLI','Mali','Africa','Western Africa',1240190,1960,11234000,46.7,2642,2453,'Mali','Republic','Alpha Oumar Konaré',2482,'ML'),('MLT','Malta','Europe','Southern Europe',316,1964,380200,77.9,3512,3338,'Malta','Republic','Guido de Marco',2484,'MT'),('MRT','Mauritania','Africa','Western Africa',1025520,1960,2670000,50.8,998,1081,'Muritaniya','Republic','Maaouiya Ould Sid´Ahmad Taya',2509,'MR'),('MUS','Mauritius','Africa','Eastern Africa',2040,1968,1158000,71,4251,4186,'Mauritius','Republic','Cassam Uteem',2511,'MU'),('MWI','Malawi','Africa','Eastern Africa',118484,1964,10925000,37.6,1687,2527,'Malawi','Republic','Bakili Muluzi',2462,'MW'),('MYS','Malaysia','Asia','Southeast Asia',329758,1957,22244000,70.8,69213,97884,'Malaysia','Constitutional Monarchy, Federation','Salahuddin Abdul Aziz Shah Alhaj',2464,'MY'),('NGA','Nigeria','Africa','Western Africa',923768,1960,111506000,51.6,65707,58623,'Nigeria','Federal Republic','Olusegun Obasanjo',2754,'NG'),('NLD','Netherlands','Europe','Western Europe',41526,1581,15864000,78.3,371362,360478,'Nederland','Constitutional Monarchy','Beatrix',NULL,'NL'),('PAK','Pakistan','Asia','Southern and Central Asia',796095,1947,156483000,61.1,61289,58549,'Pakistan','Republic','Mohammad Rafiq Tarar',2831,'PK'),('RUS','Russian Federation','Europe','Eastern Europe',17075400,1991,146934000,67.2,276608,442989,'Rossija','Federal Republic','Vladimir Putin',3580,'RU'),('SAU','Saudi Arabia','Asia','Middle East',2149690,1932,21607000,67.8,137635,146171,'Al-´Arabiya as-Sa´udiya','Monarchy (Emirate)','Fahd ibn Abdul-Aziz al-Sa´ud',3173,'SA'),('SWZ','Swaziland','Africa','Southern Africa',17363,1968,1008000,49.5,1206,1312,'kaNgwane','Monarchy','Mswati III',716,'SZ'),('TCD','Chad','Africa','Central Africa',1284000,1960,7651000,50.5,1208,1102,'Tchad/Tshad','Republic','Idriss Déby',1823,'TD'),('TUR','Turkey','Asia','Middle East',774815,1923,66591000,71,210721,189122,'Türkiye','Republic','Ahmet Necdet Sezer',3358,'TR'),('USA','United States','North America','North America',9363520,1776,278357000,77.1,8510700,8110900,'United States','Federal Republic','George W. Bush',3813,'US'),('ZAF','South Africa','Africa','Southern Africa',1221040,1910,40377000,51.1,116729,129092,'South Africa','Republic','Thabo Mbeki',716,'ZA'),('ZWE','Zimbabwe','Africa','Eastern Africa',390757,1980,11669000,37.8,5951,8670,'Zimbabwe','Republic','Robert G. Mugabe',4068,'ZW');
/*!40000 ALTER TABLE `country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countrylanguage`
--

DROP TABLE IF EXISTS `countrylanguage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countrylanguage` (
  `CountryCode` char(3) NOT NULL,
  `Language` varchar(30) NOT NULL,
  `IsOfficial` enum('T','F') NOT NULL,
  `Percentage` float NOT NULL,
  PRIMARY KEY (`CountryCode`,`Language`),
  CONSTRAINT `countrylanguage_ibfk_1` FOREIGN KEY (`CountryCode`) REFERENCES `country` (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countrylanguage`
--

LOCK TABLES `countrylanguage` WRITE;
/*!40000 ALTER TABLE `countrylanguage` DISABLE KEYS */;
INSERT INTO `countrylanguage` VALUES ('AFG','Pashto','T',35),('AFG','Turkmen','F',11),('AFG','Uzbek','F',11),('NLD','Dutch','T',90),('NLD','Frisian','F',10);
/*!40000 ALTER TABLE `countrylanguage` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-19 16:31:51
