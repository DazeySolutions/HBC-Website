-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: hbc_concrete
-- ------------------------------------------------------
-- Server version	5.5.44-0ubuntu0.14.10.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `AreaLayoutColumns`
--

DROP TABLE IF EXISTS `AreaLayoutColumns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AreaLayoutColumns` (
  `arLayoutColumnID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `arLayoutID` int(10) unsigned NOT NULL DEFAULT '0',
  `arLayoutColumnIndex` int(10) unsigned NOT NULL DEFAULT '0',
  `arID` int(10) unsigned NOT NULL DEFAULT '0',
  `arLayoutColumnDisplayID` int(11) DEFAULT '0',
  PRIMARY KEY (`arLayoutColumnID`),
  KEY `arLayoutID` (`arLayoutID`,`arLayoutColumnIndex`),
  KEY `arID` (`arID`),
  KEY `arLayoutColumnDisplayID` (`arLayoutColumnDisplayID`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AreaLayoutColumns`
--

LOCK TABLES `AreaLayoutColumns` WRITE;
/*!40000 ALTER TABLE `AreaLayoutColumns` DISABLE KEYS */;
INSERT INTO `AreaLayoutColumns` VALUES (1,1,0,28,1),(2,1,1,29,2),(3,1,2,30,3),(4,1,3,31,4),(5,2,0,33,5),(6,2,1,34,6),(7,2,2,35,7),(12,4,0,40,8),(13,4,1,41,9),(14,5,0,78,10),(15,5,1,79,11),(16,5,2,80,12),(17,5,3,81,13),(18,6,0,82,14),(19,6,1,83,15),(20,6,2,84,16),(21,7,0,85,17),(22,7,1,86,18),(23,7,2,87,19),(24,8,0,88,20),(25,8,1,89,21),(26,8,2,90,22),(27,9,0,91,23),(28,9,1,92,24),(29,9,2,93,25),(30,10,0,94,26),(31,10,1,95,27),(32,10,2,96,28),(37,12,0,108,29);
/*!40000 ALTER TABLE `AreaLayoutColumns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AreaLayoutCustomColumns`
--

DROP TABLE IF EXISTS `AreaLayoutCustomColumns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AreaLayoutCustomColumns` (
  `arLayoutColumnID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `arLayoutColumnWidth` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`arLayoutColumnID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AreaLayoutCustomColumns`
--

LOCK TABLES `AreaLayoutCustomColumns` WRITE;
/*!40000 ALTER TABLE `AreaLayoutCustomColumns` DISABLE KEYS */;
/*!40000 ALTER TABLE `AreaLayoutCustomColumns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AreaLayoutPresets`
--

DROP TABLE IF EXISTS `AreaLayoutPresets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AreaLayoutPresets` (
  `arLayoutPresetID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `arLayoutID` int(10) unsigned NOT NULL DEFAULT '0',
  `arLayoutPresetName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`arLayoutPresetID`),
  KEY `arLayoutID` (`arLayoutID`),
  KEY `arLayoutPresetName` (`arLayoutPresetName`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AreaLayoutPresets`
--

LOCK TABLES `AreaLayoutPresets` WRITE;
/*!40000 ALTER TABLE `AreaLayoutPresets` DISABLE KEYS */;
INSERT INTO `AreaLayoutPresets` VALUES (1,10,'3 Column');
/*!40000 ALTER TABLE `AreaLayoutPresets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AreaLayoutThemeGridColumns`
--

DROP TABLE IF EXISTS `AreaLayoutThemeGridColumns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AreaLayoutThemeGridColumns` (
  `arLayoutColumnID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `arLayoutColumnSpan` int(10) unsigned DEFAULT '0',
  `arLayoutColumnOffset` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`arLayoutColumnID`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AreaLayoutThemeGridColumns`
--

LOCK TABLES `AreaLayoutThemeGridColumns` WRITE;
/*!40000 ALTER TABLE `AreaLayoutThemeGridColumns` DISABLE KEYS */;
INSERT INTO `AreaLayoutThemeGridColumns` VALUES (1,1,0),(2,5,0),(3,5,0),(4,1,0),(5,1,0),(6,10,0),(7,1,0),(12,6,0),(13,6,0),(14,1,0),(15,5,0),(16,5,0),(17,1,0),(18,1,0),(19,10,0),(20,1,0),(21,1,0),(22,10,0),(23,1,0),(24,1,0),(25,10,0),(26,1,0),(27,1,0),(28,10,0),(29,1,0),(30,1,0),(31,10,0),(32,1,0),(37,12,0);
/*!40000 ALTER TABLE `AreaLayoutThemeGridColumns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AreaLayouts`
--

DROP TABLE IF EXISTS `AreaLayouts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AreaLayouts` (
  `arLayoutID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `arLayoutSpacing` int(10) unsigned NOT NULL DEFAULT '0',
  `arLayoutIsCustom` tinyint(1) NOT NULL DEFAULT '0',
  `arLayoutMaxColumns` int(10) unsigned NOT NULL DEFAULT '0',
  `arLayoutUsesThemeGridFramework` tinyint(1) NOT NULL DEFAULT '0',
  `arLayoutIsPreset` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`arLayoutID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AreaLayouts`
--

LOCK TABLES `AreaLayouts` WRITE;
/*!40000 ALTER TABLE `AreaLayouts` DISABLE KEYS */;
INSERT INTO `AreaLayouts` VALUES (1,0,0,12,1,0),(2,0,0,12,1,0),(4,0,0,12,1,0),(5,0,0,12,1,0),(6,0,0,12,1,0),(7,0,0,12,1,0),(8,0,0,12,1,0),(9,0,0,12,1,0),(10,0,0,12,1,0),(12,0,0,12,1,0);
/*!40000 ALTER TABLE `AreaLayouts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AreaLayoutsUsingPresets`
--

DROP TABLE IF EXISTS `AreaLayoutsUsingPresets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AreaLayoutsUsingPresets` (
  `arLayoutID` int(10) unsigned NOT NULL,
  `preset` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`arLayoutID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AreaLayoutsUsingPresets`
--

LOCK TABLES `AreaLayoutsUsingPresets` WRITE;
/*!40000 ALTER TABLE `AreaLayoutsUsingPresets` DISABLE KEYS */;
/*!40000 ALTER TABLE `AreaLayoutsUsingPresets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AreaPermissionAssignments`
--

DROP TABLE IF EXISTS `AreaPermissionAssignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AreaPermissionAssignments` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`arHandle`,`pkID`,`paID`),
  KEY `paID` (`paID`),
  KEY `pkID` (`pkID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AreaPermissionAssignments`
--

LOCK TABLES `AreaPermissionAssignments` WRITE;
/*!40000 ALTER TABLE `AreaPermissionAssignments` DISABLE KEYS */;
/*!40000 ALTER TABLE `AreaPermissionAssignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AreaPermissionBlockTypeAccessList`
--

DROP TABLE IF EXISTS `AreaPermissionBlockTypeAccessList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AreaPermissionBlockTypeAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`),
  KEY `peID` (`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AreaPermissionBlockTypeAccessList`
--

LOCK TABLES `AreaPermissionBlockTypeAccessList` WRITE;
/*!40000 ALTER TABLE `AreaPermissionBlockTypeAccessList` DISABLE KEYS */;
/*!40000 ALTER TABLE `AreaPermissionBlockTypeAccessList` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AreaPermissionBlockTypeAccessListCustom`
--

DROP TABLE IF EXISTS `AreaPermissionBlockTypeAccessListCustom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AreaPermissionBlockTypeAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `btID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`btID`),
  KEY `peID` (`peID`),
  KEY `btID` (`btID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AreaPermissionBlockTypeAccessListCustom`
--

LOCK TABLES `AreaPermissionBlockTypeAccessListCustom` WRITE;
/*!40000 ALTER TABLE `AreaPermissionBlockTypeAccessListCustom` DISABLE KEYS */;
/*!40000 ALTER TABLE `AreaPermissionBlockTypeAccessListCustom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Areas`
--

DROP TABLE IF EXISTS `Areas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Areas` (
  `arID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `arOverrideCollectionPermissions` tinyint(1) NOT NULL DEFAULT '0',
  `arInheritPermissionsFromAreaOnCID` int(10) unsigned NOT NULL DEFAULT '0',
  `arIsGlobal` tinyint(1) NOT NULL DEFAULT '0',
  `arParentID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`arID`),
  KEY `arIsGlobal` (`arIsGlobal`),
  KEY `cID` (`cID`),
  KEY `arHandle` (`arHandle`),
  KEY `arParentID` (`arParentID`)
) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Areas`
--

LOCK TABLES `Areas` WRITE;
/*!40000 ALTER TABLE `Areas` DISABLE KEYS */;
INSERT INTO `Areas` VALUES (1,125,'Main',0,0,0,0),(2,126,'Primary',0,0,0,0),(3,126,'Secondary 1',0,0,0,0),(4,126,'Secondary 2',0,0,0,0),(5,126,'Secondary 3',0,0,0,0),(6,126,'Secondary 4',0,0,0,0),(7,126,'Secondary 5',0,0,0,0),(8,143,'Main',0,0,0,0),(9,144,'Main',0,0,0,0),(10,1,'Header Site Title',0,0,1,0),(11,145,'Main',0,0,0,0),(12,1,'Header Navigation',0,0,1,0),(13,1,'Main',0,0,0,0),(14,1,'Page Footer',0,0,0,0),(15,146,'Main',0,0,0,0),(16,1,'Footer Legal',0,0,1,0),(17,147,'Main',0,0,0,0),(18,1,'Footer Navigation',0,0,1,0),(19,148,'Main',0,0,0,0),(20,1,'Footer Contact',0,0,1,0),(21,1,'Slide',0,0,0,0),(22,149,'Main',0,0,0,0),(23,1,'Connection',0,0,1,0),(24,150,'Main',0,0,0,0),(25,1,'Footer Content',0,0,1,0),(26,151,'Main',0,0,0,0),(27,1,'Footer Map',0,0,1,0),(28,1,'Main : 1',0,0,0,13),(29,1,'Main : 2',0,0,0,13),(30,1,'Main : 3',0,0,0,13),(31,1,'Main : 4',0,0,0,13),(32,140,'Main',0,0,0,0),(33,1,'Main : 5',0,0,0,13),(34,1,'Main : 6',0,0,0,13),(35,1,'Main : 7',0,0,0,13),(40,1,'Main : 8',0,0,0,13),(41,1,'Main : 9',0,0,0,13),(42,138,'Main',0,0,0,0),(43,152,'Main',0,0,0,0),(44,152,'Header Navigation',0,0,1,0),(45,152,'Slide',0,0,0,0),(46,152,'Connection',0,0,1,0),(47,152,'Footer Contact',0,0,1,0),(48,152,'Footer Content',0,0,1,0),(49,152,'Footer Map',0,0,1,0),(50,153,'Main',0,0,0,0),(51,153,'Header Navigation',0,0,1,0),(52,153,'Slide',0,0,0,0),(53,153,'Connection',0,0,1,0),(54,153,'Footer Contact',0,0,1,0),(55,153,'Footer Content',0,0,1,0),(56,153,'Footer Map',0,0,1,0),(57,154,'Main',0,0,0,0),(58,154,'Header Navigation',0,0,1,0),(59,154,'Slide',0,0,0,0),(60,154,'Connection',0,0,1,0),(61,154,'Footer Contact',0,0,1,0),(62,154,'Footer Content',0,0,1,0),(63,154,'Footer Map',0,0,1,0),(64,155,'Main',0,0,0,0),(65,155,'Header Navigation',0,0,1,0),(66,155,'Slide',0,0,0,0),(67,155,'Connection',0,0,1,0),(68,155,'Footer Contact',0,0,1,0),(69,155,'Footer Content',0,0,1,0),(70,155,'Footer Map',0,0,1,0),(71,156,'Main',0,0,0,0),(72,156,'Header Navigation',0,0,1,0),(73,156,'Slide',0,0,0,0),(74,156,'Connection',0,0,1,0),(75,156,'Footer Contact',0,0,1,0),(76,156,'Footer Content',0,0,1,0),(77,156,'Footer Map',0,0,1,0),(78,1,'Main : 10',0,0,0,13),(79,1,'Main : 11',0,0,0,13),(80,1,'Main : 12',0,0,0,13),(81,1,'Main : 13',0,0,0,13),(82,156,'Main : 14',0,0,0,71),(83,156,'Main : 15',0,0,0,71),(84,156,'Main : 16',0,0,0,71),(85,156,'Main : 17',0,0,0,71),(86,156,'Main : 18',0,0,0,71),(87,156,'Main : 19',0,0,0,71),(88,156,'Main : 20',0,0,0,71),(89,156,'Main : 21',0,0,0,71),(90,156,'Main : 22',0,0,0,71),(91,153,'Main : 23',0,0,0,50),(92,153,'Main : 24',0,0,0,50),(93,153,'Main : 25',0,0,0,50),(94,153,'Main : 26',0,0,0,50),(95,153,'Main : 27',0,0,0,50),(96,153,'Main : 28',0,0,0,50),(101,1,'test',0,0,0,0),(102,157,'Main',0,0,0,0),(103,1,'Phone',0,0,1,0),(104,158,'Main',0,0,0,0),(105,1,'Location',0,0,1,0),(106,159,'Main',0,0,0,0),(107,1,'Email',0,0,1,0),(108,1,'Main : 29',0,0,0,13),(109,161,'Main',0,0,0,0),(110,1,'Map',0,0,1,0),(111,162,'Main',0,0,0,0),(112,1,'Social',0,0,1,0),(113,156,'Phone',0,0,1,0),(114,156,'Location',0,0,1,0),(115,156,'Email',0,0,1,0),(116,156,'Map',0,0,1,0),(117,156,'Social',0,0,1,0);
/*!40000 ALTER TABLE `Areas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AttributeKeyCategories`
--

DROP TABLE IF EXISTS `AttributeKeyCategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AttributeKeyCategories` (
  `akCategoryID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `akCategoryHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `akCategoryAllowSets` smallint(6) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`akCategoryID`),
  KEY `akCategoryHandle` (`akCategoryHandle`),
  KEY `pkgID` (`pkgID`,`akCategoryID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AttributeKeyCategories`
--

LOCK TABLES `AttributeKeyCategories` WRITE;
/*!40000 ALTER TABLE `AttributeKeyCategories` DISABLE KEYS */;
INSERT INTO `AttributeKeyCategories` VALUES (1,'collection',1,NULL),(2,'user',1,NULL),(3,'file',1,NULL);
/*!40000 ALTER TABLE `AttributeKeyCategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AttributeKeys`
--

DROP TABLE IF EXISTS `AttributeKeys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AttributeKeys` (
  `akID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `akHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `akName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `akIsSearchable` tinyint(1) NOT NULL DEFAULT '0',
  `akIsSearchableIndexed` tinyint(1) NOT NULL DEFAULT '0',
  `akIsAutoCreated` tinyint(1) NOT NULL DEFAULT '0',
  `akIsInternal` tinyint(1) NOT NULL DEFAULT '0',
  `akIsColumnHeader` tinyint(1) NOT NULL DEFAULT '0',
  `akIsEditable` tinyint(1) NOT NULL DEFAULT '0',
  `atID` int(10) unsigned DEFAULT NULL,
  `akCategoryID` int(10) unsigned DEFAULT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`akID`),
  UNIQUE KEY `akHandle` (`akHandle`,`akCategoryID`),
  KEY `akCategoryID` (`akCategoryID`),
  KEY `atID` (`atID`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AttributeKeys`
--

LOCK TABLES `AttributeKeys` WRITE;
/*!40000 ALTER TABLE `AttributeKeys` DISABLE KEYS */;
INSERT INTO `AttributeKeys` VALUES (1,'meta_title','Meta Title',1,1,1,0,0,1,1,1,0),(2,'meta_description','Meta Description',1,1,1,0,0,1,2,1,0),(3,'meta_keywords','Meta Keywords',1,1,1,0,0,1,2,1,0),(4,'icon_dashboard','Dashboard Icon',0,0,1,1,0,1,2,1,0),(5,'exclude_nav','Exclude From Nav',1,1,1,0,0,1,3,1,0),(6,'exclude_page_list','Exclude From Page List',1,1,1,0,0,1,3,1,0),(7,'header_extra_content','Header Extra Content',1,1,1,0,0,1,2,1,0),(8,'tags','Tags',1,1,1,0,0,1,8,1,0),(9,'is_featured','Is Featured',1,0,1,0,0,1,3,1,0),(10,'exclude_search_index','Exclude From Search Index',1,1,1,0,0,1,3,1,0),(11,'exclude_sitemapxml','Exclude From sitemap.xml',1,1,1,0,0,1,3,1,0),(12,'profile_private_messages_enabled','I would like to receive private messages.',1,0,0,0,0,1,3,2,0),(13,'profile_private_messages_notification_enabled','Send me email notifications when I receive a private message.',1,0,0,0,0,1,3,2,0),(14,'width','Width',1,1,1,0,0,1,6,3,0),(15,'height','Height',1,1,1,0,0,1,6,3,0),(16,'account_profile_links','Personal Links',0,0,0,0,0,1,11,2,0),(17,'duration','Duration',1,1,1,0,0,1,6,3,0),(18,'real_name','Name',1,1,0,0,0,1,1,2,0),(19,'address','Address',1,0,0,0,0,1,9,2,0),(20,'sort_order','Sort Order',1,0,0,0,0,1,6,2,0),(21,'profile_image','Profile Image',0,0,0,0,0,1,5,2,0),(23,'details','Detail Section (displayed on site)',1,0,0,0,0,1,2,2,0),(24,'title','Position Title',1,0,0,0,0,1,1,2,0),(25,'service','Document Date',1,0,0,0,0,1,4,3,0);
/*!40000 ALTER TABLE `AttributeKeys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AttributeSetKeys`
--

DROP TABLE IF EXISTS `AttributeSetKeys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AttributeSetKeys` (
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `asID` int(10) unsigned NOT NULL DEFAULT '0',
  `displayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`akID`,`asID`),
  KEY `asID` (`asID`,`displayOrder`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AttributeSetKeys`
--

LOCK TABLES `AttributeSetKeys` WRITE;
/*!40000 ALTER TABLE `AttributeSetKeys` DISABLE KEYS */;
INSERT INTO `AttributeSetKeys` VALUES (1,1,1),(2,1,2),(3,1,3),(7,1,4),(11,1,5),(9,2,1),(5,2,2),(6,2,3),(10,2,4),(8,2,5);
/*!40000 ALTER TABLE `AttributeSetKeys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AttributeSets`
--

DROP TABLE IF EXISTS `AttributeSets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AttributeSets` (
  `asID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `asHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `akCategoryID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `asIsLocked` tinyint(1) NOT NULL DEFAULT '1',
  `asDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`asID`),
  UNIQUE KEY `asHandle` (`asHandle`),
  KEY `akCategoryID` (`akCategoryID`,`asDisplayOrder`),
  KEY `pkgID` (`pkgID`,`asID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AttributeSets`
--

LOCK TABLES `AttributeSets` WRITE;
/*!40000 ALTER TABLE `AttributeSets` DISABLE KEYS */;
INSERT INTO `AttributeSets` VALUES (1,'SEO','seo',1,0,0,0),(2,'Navigation and Indexing','navigation',1,0,0,1);
/*!40000 ALTER TABLE `AttributeSets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AttributeTypeCategories`
--

DROP TABLE IF EXISTS `AttributeTypeCategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AttributeTypeCategories` (
  `atID` int(10) unsigned NOT NULL DEFAULT '0',
  `akCategoryID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`atID`,`akCategoryID`),
  KEY `akCategoryID` (`akCategoryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AttributeTypeCategories`
--

LOCK TABLES `AttributeTypeCategories` WRITE;
/*!40000 ALTER TABLE `AttributeTypeCategories` DISABLE KEYS */;
INSERT INTO `AttributeTypeCategories` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(6,1),(7,1),(8,1),(10,1),(1,2),(2,2),(3,2),(4,2),(5,2),(6,2),(8,2),(9,2),(10,2),(11,2),(1,3),(2,3),(3,3),(4,3),(6,3),(7,3),(8,3),(10,3);
/*!40000 ALTER TABLE `AttributeTypeCategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AttributeTypes`
--

DROP TABLE IF EXISTS `AttributeTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AttributeTypes` (
  `atID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `atHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `atName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`atID`),
  UNIQUE KEY `atHandle` (`atHandle`),
  KEY `pkgID` (`pkgID`,`atID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AttributeTypes`
--

LOCK TABLES `AttributeTypes` WRITE;
/*!40000 ALTER TABLE `AttributeTypes` DISABLE KEYS */;
INSERT INTO `AttributeTypes` VALUES (1,'text','Text',0),(2,'textarea','Text Area',0),(3,'boolean','Checkbox',0),(4,'date_time','Date/Time',0),(5,'image_file','Image/File',0),(6,'number','Number',0),(7,'rating','Rating',0),(8,'select','Select',0),(9,'address','Address',0),(10,'topics','Topics',0),(11,'social_links','Social Links',0);
/*!40000 ALTER TABLE `AttributeTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AttributeValues`
--

DROP TABLE IF EXISTS `AttributeValues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AttributeValues` (
  `avID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `akID` int(10) unsigned DEFAULT NULL,
  `avDateAdded` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `uID` int(10) unsigned DEFAULT NULL,
  `atID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`avID`),
  KEY `akID` (`akID`),
  KEY `uID` (`uID`),
  KEY `atID` (`atID`)
) ENGINE=InnoDB AUTO_INCREMENT=152 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AttributeValues`
--

LOCK TABLES `AttributeValues` WRITE;
/*!40000 ALTER TABLE `AttributeValues` DISABLE KEYS */;
INSERT INTO `AttributeValues` VALUES (1,4,'2015-06-11 08:51:48',1,2),(2,3,'2015-06-11 08:51:48',1,2),(3,3,'2015-06-11 08:51:48',1,2),(4,3,'2015-06-11 08:51:48',1,2),(5,3,'2015-06-11 08:51:48',1,2),(6,3,'2015-06-11 08:51:48',1,2),(7,3,'2015-06-11 08:51:48',1,2),(8,3,'2015-06-11 08:51:48',1,2),(9,5,'2015-06-11 08:51:48',1,3),(10,3,'2015-06-11 08:51:48',1,2),(11,3,'2015-06-11 08:51:48',1,2),(12,3,'2015-06-11 08:51:48',1,2),(13,3,'2015-06-11 08:51:48',1,2),(14,3,'2015-06-11 08:51:48',1,2),(15,3,'2015-06-11 08:51:48',1,2),(16,5,'2015-06-11 08:51:48',1,3),(17,3,'2015-06-11 08:51:48',1,2),(18,5,'2015-06-11 08:51:48',1,3),(19,3,'2015-06-11 08:51:48',1,2),(20,3,'2015-06-11 08:51:48',1,2),(21,3,'2015-06-11 08:51:48',1,2),(22,3,'2015-06-11 08:51:48',1,2),(23,3,'2015-06-11 08:51:48',1,2),(24,3,'2015-06-11 08:51:48',1,2),(25,3,'2015-06-11 08:51:48',1,2),(26,3,'2015-06-11 08:51:48',1,2),(27,3,'2015-06-11 08:51:48',1,2),(28,5,'2015-06-11 08:51:48',1,3),(29,5,'2015-06-11 08:51:48',1,3),(30,5,'2015-06-11 08:51:48',1,3),(31,5,'2015-06-11 08:51:48',1,3),(32,5,'2015-06-11 08:51:48',1,3),(33,5,'2015-06-11 08:51:48',1,3),(34,5,'2015-06-11 08:51:48',1,3),(35,5,'2015-06-11 08:51:48',1,3),(36,3,'2015-06-11 08:51:49',1,2),(37,3,'2015-06-11 08:51:49',1,2),(38,3,'2015-06-11 08:51:49',1,2),(39,4,'2015-06-11 08:51:49',1,2),(40,3,'2015-06-11 08:51:49',1,2),(41,3,'2015-06-11 08:51:49',1,2),(42,5,'2015-06-11 08:51:49',1,3),(43,10,'2015-06-11 08:51:49',1,3),(44,3,'2015-06-11 08:51:49',1,2),(45,3,'2015-06-11 08:51:49',1,2),(46,3,'2015-06-11 08:51:49',1,2),(47,5,'2015-06-11 08:51:49',1,3),(48,3,'2015-06-11 08:51:49',1,2),(49,3,'2015-06-11 08:51:49',1,2),(50,3,'2015-06-11 08:51:49',1,2),(51,5,'2015-06-11 08:51:49',1,3),(52,3,'2015-06-11 08:51:49',1,2),(53,3,'2015-06-11 08:51:49',1,2),(54,3,'2015-06-11 08:51:49',1,2),(55,3,'2015-06-11 08:51:49',1,2),(56,3,'2015-06-11 08:51:49',1,2),(57,3,'2015-06-11 08:51:49',1,2),(58,3,'2015-06-11 08:51:49',1,2),(59,3,'2015-06-11 08:51:49',1,2),(60,3,'2015-06-11 08:51:49',1,2),(61,3,'2015-06-11 08:51:49',1,2),(62,3,'2015-06-11 08:51:49',1,2),(63,3,'2015-06-11 08:51:49',1,2),(64,3,'2015-06-11 08:51:49',1,2),(65,3,'2015-06-11 08:51:49',1,2),(66,3,'2015-06-11 08:51:49',1,2),(67,3,'2015-06-11 08:51:49',1,2),(68,3,'2015-06-11 08:51:49',1,2),(69,3,'2015-06-11 08:51:49',1,2),(70,3,'2015-06-11 08:51:49',1,2),(71,3,'2015-06-11 08:51:49',1,2),(72,3,'2015-06-11 08:51:49',1,2),(73,3,'2015-06-11 08:51:49',1,2),(74,3,'2015-06-11 08:51:49',1,2),(75,3,'2015-06-11 08:51:49',1,2),(76,3,'2015-06-11 08:51:49',1,2),(77,3,'2015-06-11 08:51:49',1,2),(78,3,'2015-06-11 08:51:49',1,2),(79,3,'2015-06-11 08:51:49',1,2),(80,3,'2015-06-11 08:51:49',1,2),(81,3,'2015-06-11 08:51:49',1,2),(82,3,'2015-06-11 08:51:49',1,2),(83,3,'2015-06-11 08:51:49',1,2),(84,3,'2015-06-11 08:51:49',1,2),(85,3,'2015-06-11 08:51:49',1,2),(86,3,'2015-06-11 08:51:49',1,2),(87,3,'2015-06-11 08:51:49',1,2),(88,3,'2015-06-11 08:51:49',1,2),(89,3,'2015-06-11 08:51:49',1,2),(90,3,'2015-06-11 08:51:49',1,2),(91,3,'2015-06-11 08:51:49',1,2),(92,3,'2015-06-11 08:51:49',1,2),(93,3,'2015-06-11 08:51:49',1,2),(94,3,'2015-06-11 08:51:49',1,2),(95,3,'2015-06-11 08:51:49',1,2),(96,3,'2015-06-11 08:51:49',1,2),(97,3,'2015-06-11 08:51:49',1,2),(98,10,'2015-06-11 08:51:50',1,3),(99,3,'2015-06-11 08:51:50',1,2),(100,3,'2015-06-11 08:51:50',1,2),(101,3,'2015-06-11 08:51:50',1,2),(102,3,'2015-06-11 08:51:50',1,2),(103,3,'2015-06-11 08:51:50',1,2),(104,3,'2015-06-11 08:51:50',1,2),(105,3,'2015-06-11 08:51:50',1,2),(106,5,'2015-06-11 08:51:50',1,3),(107,5,'2015-06-11 08:51:50',1,3),(108,10,'2015-06-11 08:51:50',1,3),(109,4,'2015-06-11 08:51:51',1,2),(110,4,'2015-06-11 08:51:51',1,2),(111,4,'2015-06-11 08:51:51',1,2),(112,4,'2015-06-11 08:51:51',1,2),(113,14,'2015-06-11 10:03:44',1,6),(114,15,'2015-06-11 10:03:44',1,6),(115,14,'2015-06-11 10:04:03',1,6),(116,15,'2015-06-11 10:04:03',1,6),(117,18,'2015-06-11 11:12:29',1,1),(118,19,'2015-06-11 11:12:42',1,9),(119,12,'2015-06-11 11:12:48',1,3),(120,13,'2015-06-11 11:12:51',1,3),(121,18,'2015-06-11 13:36:26',1,1),(122,19,'2015-06-11 13:36:26',1,9),(123,12,'2015-06-11 13:36:26',1,3),(124,13,'2015-06-11 13:36:26',1,3),(125,20,'2015-06-11 13:37:07',1,6),(126,23,'2015-06-11 13:56:51',1,2),(127,14,'2015-06-11 13:57:25',1,6),(128,15,'2015-06-11 13:57:25',1,6),(129,21,'2015-06-11 13:57:44',1,5),(130,24,'2015-06-11 14:30:47',1,1),(131,18,'2015-06-11 14:43:43',1,1),(132,19,'2015-06-11 14:43:43',1,9),(133,12,'2015-06-11 14:43:43',1,3),(134,13,'2015-06-11 14:43:43',1,3),(135,24,'2015-06-11 14:44:09',1,1),(136,23,'2015-06-11 14:44:18',1,2),(137,14,'2015-06-11 14:44:33',1,6),(138,15,'2015-06-11 14:44:33',1,6),(139,21,'2015-06-11 14:45:01',1,5),(140,20,'2015-06-11 14:45:11',1,6),(141,5,'2015-06-12 08:32:09',1,3),(142,25,'2015-06-12 10:03:20',1,4),(143,25,'2015-06-12 10:03:35',1,4),(144,25,'2015-06-18 10:26:14',1,4),(145,25,'2015-06-18 10:27:30',1,4),(146,25,'2015-06-18 10:32:42',1,4),(147,14,'2015-07-09 12:26:52',1,6),(148,15,'2015-07-09 12:26:52',1,6),(149,25,'2015-07-09 12:59:03',1,4),(150,25,'2015-07-09 13:00:07',1,4),(151,25,'2015-07-09 13:00:24',1,4);
/*!40000 ALTER TABLE `AttributeValues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AuthenticationTypes`
--

DROP TABLE IF EXISTS `AuthenticationTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AuthenticationTypes` (
  `authTypeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `authTypeHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `authTypeName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `authTypeIsEnabled` tinyint(1) NOT NULL,
  `authTypeDisplayOrder` int(10) unsigned DEFAULT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`authTypeID`),
  UNIQUE KEY `authTypeHandle` (`authTypeHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AuthenticationTypes`
--

LOCK TABLES `AuthenticationTypes` WRITE;
/*!40000 ALTER TABLE `AuthenticationTypes` DISABLE KEYS */;
INSERT INTO `AuthenticationTypes` VALUES (1,'concrete','Standard',1,0,0),(2,'community','concrete5.org',0,0,0),(3,'facebook','Facebook',0,0,0),(4,'twitter','Twitter',0,0,0),(5,'google','Google',1,0,0);
/*!40000 ALTER TABLE `AuthenticationTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BannedWords`
--

DROP TABLE IF EXISTS `BannedWords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BannedWords` (
  `bwID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bannedWord` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`bwID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BannedWords`
--

LOCK TABLES `BannedWords` WRITE;
/*!40000 ALTER TABLE `BannedWords` DISABLE KEYS */;
INSERT INTO `BannedWords` VALUES (1,'fuck'),(2,'shit'),(3,'bitch'),(4,'ass');
/*!40000 ALTER TABLE `BannedWords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BasicWorkflowPermissionAssignments`
--

DROP TABLE IF EXISTS `BasicWorkflowPermissionAssignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BasicWorkflowPermissionAssignments` (
  `wfID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`wfID`,`pkID`,`paID`),
  KEY `pkID` (`pkID`),
  KEY `paID` (`paID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BasicWorkflowPermissionAssignments`
--

LOCK TABLES `BasicWorkflowPermissionAssignments` WRITE;
/*!40000 ALTER TABLE `BasicWorkflowPermissionAssignments` DISABLE KEYS */;
/*!40000 ALTER TABLE `BasicWorkflowPermissionAssignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BasicWorkflowProgressData`
--

DROP TABLE IF EXISTS `BasicWorkflowProgressData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BasicWorkflowProgressData` (
  `wpID` int(10) unsigned NOT NULL DEFAULT '0',
  `uIDStarted` int(10) unsigned NOT NULL DEFAULT '0',
  `uIDCompleted` int(10) unsigned NOT NULL DEFAULT '0',
  `wpDateCompleted` datetime DEFAULT NULL,
  PRIMARY KEY (`wpID`),
  KEY `uIDStarted` (`uIDStarted`),
  KEY `uIDCompleted` (`uIDCompleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BasicWorkflowProgressData`
--

LOCK TABLES `BasicWorkflowProgressData` WRITE;
/*!40000 ALTER TABLE `BasicWorkflowProgressData` DISABLE KEYS */;
/*!40000 ALTER TABLE `BasicWorkflowProgressData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BlockFeatureAssignments`
--

DROP TABLE IF EXISTS `BlockFeatureAssignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BlockFeatureAssignments` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `faID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`bID`,`faID`),
  KEY `faID` (`faID`,`cID`,`cvID`),
  KEY `bID` (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BlockFeatureAssignments`
--

LOCK TABLES `BlockFeatureAssignments` WRITE;
/*!40000 ALTER TABLE `BlockFeatureAssignments` DISABLE KEYS */;
/*!40000 ALTER TABLE `BlockFeatureAssignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BlockPermissionAssignments`
--

DROP TABLE IF EXISTS `BlockPermissionAssignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BlockPermissionAssignments` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`bID`,`pkID`,`paID`),
  KEY `bID` (`bID`),
  KEY `pkID` (`pkID`),
  KEY `paID` (`paID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BlockPermissionAssignments`
--

LOCK TABLES `BlockPermissionAssignments` WRITE;
/*!40000 ALTER TABLE `BlockPermissionAssignments` DISABLE KEYS */;
/*!40000 ALTER TABLE `BlockPermissionAssignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BlockRelations`
--

DROP TABLE IF EXISTS `BlockRelations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BlockRelations` (
  `brID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `originalBID` int(10) unsigned NOT NULL DEFAULT '0',
  `relationType` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`brID`),
  KEY `bID` (`bID`),
  KEY `originalBID` (`originalBID`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BlockRelations`
--

LOCK TABLES `BlockRelations` WRITE;
/*!40000 ALTER TABLE `BlockRelations` DISABLE KEYS */;
INSERT INTO `BlockRelations` VALUES (1,16,15,'DUPLICATE'),(2,43,10,'DUPLICATE'),(3,44,43,'DUPLICATE'),(4,54,52,'DUPLICATE'),(5,60,54,'DUPLICATE'),(6,61,60,'DUPLICATE'),(7,67,66,'DUPLICATE'),(9,70,59,'DUPLICATE'),(10,72,61,'DUPLICATE'),(11,74,44,'DUPLICATE'),(12,76,75,'DUPLICATE'),(13,77,76,'DUPLICATE'),(14,78,77,'DUPLICATE'),(20,94,93,'DUPLICATE'),(21,96,95,'DUPLICATE'),(22,97,94,'DUPLICATE');
/*!40000 ALTER TABLE `BlockRelations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BlockTypePermissionBlockTypeAccessList`
--

DROP TABLE IF EXISTS `BlockTypePermissionBlockTypeAccessList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BlockTypePermissionBlockTypeAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`),
  KEY `peID` (`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BlockTypePermissionBlockTypeAccessList`
--

LOCK TABLES `BlockTypePermissionBlockTypeAccessList` WRITE;
/*!40000 ALTER TABLE `BlockTypePermissionBlockTypeAccessList` DISABLE KEYS */;
/*!40000 ALTER TABLE `BlockTypePermissionBlockTypeAccessList` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BlockTypePermissionBlockTypeAccessListCustom`
--

DROP TABLE IF EXISTS `BlockTypePermissionBlockTypeAccessListCustom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BlockTypePermissionBlockTypeAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `btID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`btID`),
  KEY `peID` (`peID`),
  KEY `btID` (`btID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BlockTypePermissionBlockTypeAccessListCustom`
--

LOCK TABLES `BlockTypePermissionBlockTypeAccessListCustom` WRITE;
/*!40000 ALTER TABLE `BlockTypePermissionBlockTypeAccessListCustom` DISABLE KEYS */;
/*!40000 ALTER TABLE `BlockTypePermissionBlockTypeAccessListCustom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BlockTypeSetBlockTypes`
--

DROP TABLE IF EXISTS `BlockTypeSetBlockTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BlockTypeSetBlockTypes` (
  `btID` int(10) unsigned NOT NULL DEFAULT '0',
  `btsID` int(10) unsigned NOT NULL DEFAULT '0',
  `displayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`btID`,`btsID`),
  KEY `btsID` (`btsID`,`displayOrder`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BlockTypeSetBlockTypes`
--

LOCK TABLES `BlockTypeSetBlockTypes` WRITE;
/*!40000 ALTER TABLE `BlockTypeSetBlockTypes` DISABLE KEYS */;
INSERT INTO `BlockTypeSetBlockTypes` VALUES (12,1,0),(25,1,1),(27,1,2),(15,1,3),(26,1,4),(19,1,5),(41,1,6),(44,1,7),(45,1,8),(11,2,0),(18,2,1),(28,2,2),(30,2,3),(29,2,4),(13,2,5),(36,2,6),(20,2,7),(31,2,8),(35,2,9),(39,2,10),(17,3,0),(32,3,1),(14,3,2),(34,4,0),(5,4,1),(21,4,2),(22,4,3),(23,4,4),(43,4,5),(16,5,0),(33,5,1),(37,5,2),(38,5,3),(24,5,4);
/*!40000 ALTER TABLE `BlockTypeSetBlockTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BlockTypeSets`
--

DROP TABLE IF EXISTS `BlockTypeSets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BlockTypeSets` (
  `btsID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `btsName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `btsHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `btsDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`btsID`),
  UNIQUE KEY `btsHandle` (`btsHandle`),
  KEY `btsDisplayOrder` (`btsDisplayOrder`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BlockTypeSets`
--

LOCK TABLES `BlockTypeSets` WRITE;
/*!40000 ALTER TABLE `BlockTypeSets` DISABLE KEYS */;
INSERT INTO `BlockTypeSets` VALUES (1,'Basic','basic',0,0),(2,'Navigation','navigation',0,0),(3,'Forms','form',0,0),(4,'Social Networking','social',0,0),(5,'Multimedia','multimedia',0,0);
/*!40000 ALTER TABLE `BlockTypeSets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BlockTypes`
--

DROP TABLE IF EXISTS `BlockTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BlockTypes` (
  `btID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `btHandle` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `btName` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `btDescription` text COLLATE utf8_unicode_ci,
  `btCopyWhenPropagate` tinyint(1) NOT NULL DEFAULT '0',
  `btIncludeAll` tinyint(1) NOT NULL DEFAULT '0',
  `btIsInternal` tinyint(1) NOT NULL DEFAULT '0',
  `btSupportsInlineAdd` tinyint(1) NOT NULL DEFAULT '0',
  `btSupportsInlineEdit` tinyint(1) NOT NULL DEFAULT '0',
  `btIgnorePageThemeGridFrameworkContainer` tinyint(1) NOT NULL DEFAULT '0',
  `btDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  `btInterfaceWidth` int(10) unsigned NOT NULL DEFAULT '400',
  `btInterfaceHeight` int(10) unsigned NOT NULL DEFAULT '400',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`btID`),
  UNIQUE KEY `btHandle` (`btHandle`),
  KEY `btDisplayOrder` (`btDisplayOrder`,`btName`,`btID`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BlockTypes`
--

LOCK TABLES `BlockTypes` WRITE;
/*!40000 ALTER TABLE `BlockTypes` DISABLE KEYS */;
INSERT INTO `BlockTypes` VALUES (1,'core_area_layout','Area Layout','Proxy block for area layouts.',0,0,1,1,1,0,0,400,400,0),(2,'core_page_type_composer_control_output','Composer Control','Proxy block for blocks that need to be output through composer.',0,0,1,0,0,0,0,400,400,0),(3,'core_scrapbook_display','Scrapbook Display','Proxy block for blocks pasted through the scrapbook.',0,0,1,0,0,0,0,400,400,0),(4,'core_stack_display','Stack Display','Proxy block for stacks added through the UI.',0,0,1,0,0,0,0,400,400,0),(5,'core_conversation','Conversation','Displays conversations on a page.',1,0,0,0,0,0,20,400,400,0),(6,'dashboard_featured_addon','Dashboard Featured Add-On','Features an add-on from concrete5.org.',0,0,1,0,0,0,0,300,100,0),(7,'dashboard_featured_theme','Dashboard Featured Theme','Features a theme from concrete5.org.',0,0,1,0,0,0,0,300,100,0),(8,'dashboard_newsflow_latest','Dashboard Newsflow Latest','Grabs the latest newsflow data from concrete5.org.',0,0,1,0,0,0,0,400,400,0),(9,'dashboard_app_status','Dashboard App Status','Displays update and welcome back information on your dashboard.',0,0,1,0,0,0,0,400,400,0),(10,'dashboard_site_activity','Dashboard Site Activity','Displays a summary of website activity.',0,0,1,0,0,0,0,400,400,0),(11,'autonav','Auto-Nav','Creates navigation trees and sitemaps.',0,0,0,0,0,0,21,800,350,0),(12,'content','Content','HTML/WYSIWYG Editor Content.',0,0,0,1,1,0,22,600,465,0),(14,'external_form','External Form','Include external forms in the filesystem and place them on pages.',0,0,0,0,0,0,23,370,175,0),(15,'file','File','Link to files stored in the asset library.',0,0,0,0,0,0,24,300,320,0),(17,'form','Form','Build simple forms and surveys.',0,0,0,0,0,0,25,420,430,0),(21,'social_links','Social Links','Allows users to add social icons to their website',0,0,0,0,0,0,19,400,400,0),(22,'testimonial','Testimonial','Displays a quote or paragraph next to biographical information and a person\'s picture.',0,0,0,0,0,0,9,450,560,0),(23,'share_this_page','Share This Page','Allows users to share this page with social networks.',0,0,0,0,0,0,10,400,400,0),(25,'html','HTML','For adding HTML by hand.',0,0,0,0,0,1,11,600,500,0),(26,'horizontal_rule','Horizontal Rule','Adds a thin hairline horizontal divider to the page.',0,0,0,0,0,1,12,400,400,0),(27,'image','Image','Adds images and onstates from the library to pages.',0,0,0,0,0,0,13,400,550,0),(28,'faq','FAQ','Frequently Asked Questions Block',0,0,0,0,0,0,14,600,465,0),(32,'search','Search','Add a search box to your site.',0,0,0,0,0,0,15,400,420,0),(33,'image_slider','Image Slider','Display your images and captions in an attractive slideshow format.',0,0,0,0,0,1,16,600,465,0),(34,'survey','Survey','Provide a simple survey, along with results in a pie chart format.',0,0,0,0,0,0,17,420,400,0),(37,'video','Video Player','Embeds uploaded video into a web page. Supports WebM, Ogg, and Quicktime/MPEG4 formats.',0,0,0,0,0,0,18,320,270,0),(38,'youtube','YouTube Video','Embeds a YouTube Video in your web page.',0,0,0,0,0,0,26,400,430,0),(39,'map','Google Map','Enter an address and a Google Map of that location will be placed in your page.',0,0,0,0,0,0,7,600,480,0),(40,'events','Events','Displays Events Setup through external application',0,0,0,0,0,0,6,400,400,0),(41,'filesets','File Sets','List files by set',0,0,0,0,0,0,5,480,600,0),(42,'sermons','Sermon Series','Displays Sermon Series Setup through external application',0,0,0,0,0,0,4,400,400,0),(43,'social','Social','Select social links/feeds to display.',0,0,0,0,0,0,3,600,600,0),(44,'section_title','Section Title','Displays a Section\'s Title',0,0,0,0,0,0,2,400,400,0),(46,'group_details','Group Bios','Display Group Bios',0,0,0,0,0,0,8,480,600,0),(50,'feature','Feature','Displays an icon, a title, and a short paragraph description.',0,0,0,0,0,0,1,400,520,0);
/*!40000 ALTER TABLE `BlockTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Blocks`
--

DROP TABLE IF EXISTS `Blocks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Blocks` (
  `bID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bName` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bDateAdded` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `bDateModified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `bFilename` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bIsActive` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `btID` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned DEFAULT NULL,
  `btCachedBlockRecord` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`bID`),
  KEY `btID` (`btID`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Blocks`
--

LOCK TABLES `Blocks` WRITE;
/*!40000 ALTER TABLE `Blocks` DISABLE KEYS */;
INSERT INTO `Blocks` VALUES (1,'','2015-06-11 08:51:50','2015-06-11 08:51:50',NULL,'0',12,1,NULL),(2,'','2015-06-11 08:51:50','2015-06-11 08:51:50',NULL,'0',9,1,NULL),(3,'','2015-06-11 08:51:50','2015-06-11 08:51:50',NULL,'0',10,1,NULL),(4,'','2015-06-11 08:51:50','2015-06-11 08:51:50',NULL,'0',8,1,NULL),(5,'','2015-06-11 08:51:50','2015-06-11 08:51:50',NULL,'0',8,1,NULL),(6,'','2015-06-11 08:51:50','2015-06-11 08:51:50',NULL,'0',7,1,NULL),(7,'','2015-06-11 08:51:50','2015-06-11 08:51:50',NULL,'0',6,1,NULL),(8,'','2015-06-11 08:51:50','2015-06-11 08:51:50',NULL,'0',8,1,NULL),(9,'','2015-06-11 08:51:53','2015-06-11 08:51:53',NULL,'0',2,1,NULL),(10,'','2015-06-11 08:58:49','2015-06-11 08:58:49',NULL,'0',43,1,NULL),(11,'','2015-06-11 08:59:19','2015-06-11 08:59:19',NULL,'0',1,1,NULL),(12,'','2015-06-11 09:00:14','2015-06-11 09:00:14',NULL,'0',1,1,NULL),(14,'','2015-06-11 09:54:53','2015-06-11 09:54:53',NULL,'0',1,1,NULL),(15,'','2015-06-11 10:02:36','2015-06-11 10:02:50','responsive_header_navigation','0',11,1,NULL),(16,'','2015-06-11 10:03:02','2015-06-11 10:03:02','twitter_bootstrap_right.php','1',11,1,NULL),(17,'','2015-06-11 10:04:08','2015-06-11 10:04:08',NULL,'0',33,1,NULL),(18,'','2015-06-11 13:34:39','2015-06-11 13:34:39',NULL,'0',46,1,NULL),(24,'','2015-06-12 08:25:47','2015-06-12 08:25:47',NULL,'0',12,1,NULL),(27,'','2015-06-12 08:27:13','2015-06-12 08:27:13',NULL,'0',12,1,NULL),(31,'','2015-06-12 08:27:55','2015-06-12 08:27:55',NULL,'0',12,1,NULL),(37,'','2015-06-12 08:28:32','2015-06-12 08:28:32',NULL,'0',12,1,NULL),(41,'','2015-06-12 08:30:01','2015-06-12 08:30:01',NULL,'0',12,1,NULL),(42,'','2015-06-12 10:06:36','2015-06-12 10:06:36',NULL,'0',41,1,NULL),(43,'','2015-06-15 14:43:47','2015-06-15 14:43:47',NULL,'1',43,1,NULL),(44,'','2015-06-15 14:45:16','2015-06-15 14:45:16',NULL,'1',43,1,NULL),(45,'','2015-06-19 11:38:34','2015-06-19 11:38:34',NULL,'0',1,1,NULL),(46,'','2015-06-19 11:39:09','2015-06-19 11:39:09',NULL,'0',44,1,NULL),(47,'','2015-06-19 11:39:38','2015-06-19 11:39:38',NULL,'0',42,1,NULL),(48,'','2015-06-19 11:39:49','2015-06-19 11:39:49',NULL,'0',44,1,NULL),(49,'','2015-06-19 11:40:11','2015-06-19 11:40:11',NULL,'0',40,1,NULL),(50,'','2015-07-08 20:28:26','2015-07-08 20:28:26',NULL,'0',1,3,NULL),(51,'','2015-07-08 20:29:15','2015-07-08 20:29:15',NULL,'0',44,3,NULL),(52,'','2015-07-08 20:29:42','2015-07-08 20:33:26',NULL,'0',12,3,NULL),(53,'','2015-07-08 20:31:23','2015-07-08 20:32:06',NULL,'0',1,3,NULL),(54,'','2015-07-08 20:37:39','2015-07-08 20:49:12',NULL,'1',12,3,NULL),(55,'','2015-07-08 20:39:05','2015-07-08 20:45:43',NULL,'0',44,3,NULL),(56,'','2015-07-08 20:40:19','2015-07-08 20:40:19',NULL,'0',12,3,NULL),(57,'','2015-07-08 20:42:35','2015-07-08 20:42:54',NULL,'0',1,3,NULL),(58,'','2015-07-08 20:43:11','2015-07-08 20:43:11',NULL,'0',44,3,NULL),(59,'','2015-07-08 20:44:45','2015-07-08 20:44:45',NULL,'0',12,3,NULL),(60,'','2015-07-08 20:54:23','2015-07-08 20:54:23',NULL,'1',12,3,NULL),(61,'','2015-07-08 20:56:08','2015-07-09 13:03:46','','1',12,3,NULL),(62,'','2015-07-08 21:01:40','2015-07-08 21:02:02',NULL,'0',1,3,NULL),(63,'','2015-07-08 21:02:26','2015-07-08 21:02:26',NULL,'0',44,3,NULL),(64,'','2015-07-08 21:04:40','2015-07-08 21:04:40',NULL,'0',1,1,NULL),(66,'','2015-07-09 12:27:13','2015-07-09 12:27:13',NULL,'0',39,1,NULL),(67,'','2015-07-09 12:29:38','2015-07-09 12:29:38',NULL,'1',39,1,NULL),(70,'','2015-07-09 13:09:19','2015-07-09 13:11:21',NULL,'1',12,3,NULL),(71,'','2015-07-21 13:20:20','2015-07-21 13:21:18','input-sm.php','0',17,1,NULL),(72,'','2015-07-28 18:05:31','2015-07-28 18:05:31','','1',12,3,NULL),(74,'','2015-08-10 10:13:44','2015-08-10 10:13:44',NULL,'1',43,1,NULL),(75,'','2015-08-31 15:57:57','2015-08-31 15:57:57',NULL,'0',12,1,NULL),(76,'','2015-08-31 15:58:33','2015-08-31 15:58:33',NULL,'1',12,1,NULL),(77,'','2015-08-31 15:59:42','2015-08-31 15:59:42',NULL,'1',12,1,NULL),(78,'','2015-08-31 16:06:30','2015-08-31 16:06:30',NULL,'1',12,1,NULL),(89,'','2015-09-01 16:04:14','2015-09-01 16:04:57','hover_description','0',50,1,NULL),(90,'','2015-09-01 16:26:56','2015-09-01 16:27:07','hover_description','0',50,1,NULL),(91,'','2015-09-01 16:41:42','2015-09-01 16:41:51','hover_description','0',50,1,NULL),(92,'','2015-09-03 13:24:34','2015-09-03 13:24:34',NULL,'0',1,1,NULL),(93,'','2015-09-03 13:26:25','2015-09-03 13:26:25',NULL,'0',43,1,NULL),(94,'','2015-09-03 15:19:00','2015-09-03 15:19:00',NULL,'1',43,1,NULL),(95,'','2015-09-03 16:45:03','2015-09-03 16:45:03',NULL,'0',39,1,NULL),(96,'','2015-09-03 16:49:58','2015-09-03 16:49:58',NULL,'1',39,1,NULL),(97,'','2015-09-03 16:51:00','2015-09-03 16:51:00',NULL,'1',43,1,NULL);
/*!40000 ALTER TABLE `Blocks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CollectionAttributeValues`
--

DROP TABLE IF EXISTS `CollectionAttributeValues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CollectionAttributeValues` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `avID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`akID`),
  KEY `akID` (`akID`),
  KEY `avID` (`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CollectionAttributeValues`
--

LOCK TABLES `CollectionAttributeValues` WRITE;
/*!40000 ALTER TABLE `CollectionAttributeValues` DISABLE KEYS */;
INSERT INTO `CollectionAttributeValues` VALUES (2,1,4,1),(3,1,3,2),(4,1,3,3),(5,1,3,4),(6,1,3,5),(8,1,3,6),(9,1,3,7),(10,1,3,8),(11,1,5,9),(11,1,3,10),(12,1,3,11),(13,1,3,12),(14,1,3,13),(15,1,3,14),(16,1,3,15),(16,1,5,16),(17,1,3,17),(17,1,5,18),(19,1,3,19),(20,1,3,20),(22,1,3,21),(23,1,3,22),(24,1,3,23),(25,1,3,24),(26,1,3,25),(28,1,3,26),(29,1,3,27),(29,1,5,28),(31,1,5,29),(32,1,5,30),(33,1,5,31),(34,1,5,32),(35,1,5,33),(36,1,5,34),(38,1,5,35),(39,1,3,36),(40,1,3,37),(41,1,3,38),(43,1,4,39),(44,1,3,40),(48,1,3,41),(50,1,5,42),(50,1,10,43),(50,1,3,44),(51,1,3,45),(52,1,3,46),(53,1,5,47),(54,1,3,48),(55,1,3,49),(56,1,3,50),(56,1,5,51),(57,1,3,52),(58,1,3,53),(59,1,3,54),(61,1,3,55),(62,1,3,56),(63,1,3,57),(64,1,3,58),(65,1,3,59),(66,1,3,60),(67,1,3,61),(68,1,3,62),(73,1,3,63),(74,1,3,64),(75,1,3,65),(76,1,3,66),(77,1,3,67),(79,1,3,68),(80,1,3,69),(81,1,3,70),(82,1,3,71),(84,1,3,72),(85,1,3,73),(86,1,3,74),(87,1,3,75),(89,1,3,76),(90,1,3,77),(93,1,3,78),(94,1,3,79),(95,1,3,80),(96,1,3,81),(98,1,3,82),(99,1,3,83),(100,1,3,84),(101,1,3,85),(102,1,3,86),(103,1,3,87),(104,1,3,88),(105,1,3,89),(106,1,3,90),(107,1,3,91),(108,1,3,92),(109,1,3,93),(111,1,3,94),(112,1,3,95),(113,1,3,96),(114,1,3,97),(116,1,10,98),(117,1,3,99),(118,1,3,100),(119,1,3,101),(120,1,3,102),(121,1,3,103),(122,1,3,104),(124,1,3,105),(125,1,5,106),(126,1,5,107),(126,1,10,108),(127,1,4,109),(128,1,4,110),(129,1,4,111),(132,1,4,112),(1,5,5,141),(1,6,5,141),(1,7,5,141),(1,8,5,141),(1,9,5,141),(1,10,5,141),(1,11,5,141),(1,12,5,141),(1,13,5,141),(1,14,5,141),(1,15,5,141),(1,16,5,141),(1,17,5,141),(1,18,5,141),(1,19,5,141);
/*!40000 ALTER TABLE `CollectionAttributeValues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CollectionSearchIndexAttributes`
--

DROP TABLE IF EXISTS `CollectionSearchIndexAttributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CollectionSearchIndexAttributes` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `ak_meta_title` longtext COLLATE utf8_unicode_ci,
  `ak_meta_description` longtext COLLATE utf8_unicode_ci,
  `ak_meta_keywords` longtext COLLATE utf8_unicode_ci,
  `ak_icon_dashboard` longtext COLLATE utf8_unicode_ci,
  `ak_exclude_nav` tinyint(1) DEFAULT '0',
  `ak_exclude_page_list` tinyint(1) DEFAULT '0',
  `ak_header_extra_content` longtext COLLATE utf8_unicode_ci,
  `ak_tags` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ak_is_featured` tinyint(1) DEFAULT '0',
  `ak_exclude_search_index` tinyint(1) DEFAULT '0',
  `ak_exclude_sitemapxml` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`cID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CollectionSearchIndexAttributes`
--

LOCK TABLES `CollectionSearchIndexAttributes` WRITE;
/*!40000 ALTER TABLE `CollectionSearchIndexAttributes` DISABLE KEYS */;
INSERT INTO `CollectionSearchIndexAttributes` VALUES (1,NULL,NULL,NULL,NULL,1,0,NULL,NULL,0,0,0),(2,NULL,NULL,NULL,'fa fa-th-large',0,0,NULL,NULL,0,0,0),(3,NULL,NULL,'pages, add page, delete page, copy, move, alias',NULL,0,0,NULL,NULL,0,0,0),(4,NULL,NULL,'pages, add page, delete page, copy, move, alias',NULL,0,0,NULL,NULL,0,0,0),(5,NULL,NULL,'pages, add page, delete page, copy, move, alias, bulk',NULL,0,0,NULL,NULL,0,0,0),(6,NULL,NULL,'find page, search page, search, find, pages, sitemap',NULL,0,0,NULL,NULL,0,0,0),(8,NULL,NULL,'add file, delete file, copy, move, alias, resize, crop, rename, images, title, attribute',NULL,0,0,NULL,NULL,0,0,0),(9,NULL,NULL,'file, file attributes, title, attribute, description, rename',NULL,0,0,NULL,NULL,0,0,0),(10,NULL,NULL,'files, category, categories',NULL,0,0,NULL,NULL,0,0,0),(11,NULL,NULL,'new file set',NULL,1,0,NULL,NULL,0,0,0),(12,NULL,NULL,'users, groups, people, find, delete user, remove user, change password, password',NULL,0,0,NULL,NULL,0,0,0),(13,NULL,NULL,'find, search, people, delete user, remove user, change password, password',NULL,0,0,NULL,NULL,0,0,0),(14,NULL,NULL,'user, group, people, permissions, expire, badges',NULL,0,0,NULL,NULL,0,0,0),(15,NULL,NULL,'user attributes, user data, gather data, registration data',NULL,0,0,NULL,NULL,0,0,0),(16,NULL,NULL,'new user, create',NULL,1,0,NULL,NULL,0,0,0),(17,NULL,NULL,'new user group, new group, group, create',NULL,1,0,NULL,NULL,0,0,0),(19,NULL,NULL,'group set',NULL,0,0,NULL,NULL,0,0,0),(20,NULL,NULL,'community, points, karma',NULL,0,0,NULL,NULL,0,0,0),(22,NULL,NULL,'action, community actions',NULL,0,0,NULL,NULL,0,0,0),(23,NULL,NULL,'forms, log, error, email, mysql, exception, survey',NULL,0,0,NULL,NULL,0,0,0),(24,NULL,NULL,'forms, questions, response, data',NULL,0,0,NULL,NULL,0,0,0),(25,NULL,NULL,'questions, quiz, response',NULL,0,0,NULL,NULL,0,0,0),(26,NULL,NULL,'forms, log, error, email, mysql, exception, survey, history',NULL,0,0,NULL,NULL,0,0,0),(28,NULL,NULL,'new theme, theme, active theme, change theme, template, css',NULL,0,0,NULL,NULL,0,0,0),(29,NULL,NULL,'page types',NULL,1,0,NULL,NULL,0,0,0),(31,NULL,NULL,NULL,NULL,1,0,NULL,NULL,0,0,0),(32,NULL,NULL,NULL,NULL,1,0,NULL,NULL,0,0,0),(33,NULL,NULL,NULL,NULL,1,0,NULL,NULL,0,0,0),(34,NULL,NULL,NULL,NULL,1,0,NULL,NULL,0,0,0),(35,NULL,NULL,NULL,NULL,1,0,NULL,NULL,0,0,0),(36,NULL,NULL,NULL,NULL,1,0,NULL,NULL,0,0,0),(38,NULL,NULL,NULL,NULL,1,0,NULL,NULL,0,0,0),(39,NULL,NULL,'page attributes, custom',NULL,0,0,NULL,NULL,0,0,0),(40,NULL,NULL,'single, page, custom, application',NULL,0,0,NULL,NULL,0,0,0),(41,NULL,NULL,'atom, rss, feed, syndication',NULL,0,0,NULL,NULL,0,0,0),(43,NULL,NULL,NULL,'icon-bullhorn',0,0,NULL,NULL,0,0,0),(44,NULL,NULL,'add workflow, remove workflow',NULL,0,0,NULL,NULL,0,0,0),(48,NULL,NULL,'stacks, reusable content, scrapbook, copy, paste, paste block, copy block, site name, logo',NULL,0,0,NULL,NULL,0,0,0),(50,NULL,NULL,'edit stacks, view stacks, all stacks',NULL,1,0,NULL,NULL,0,1,0),(51,NULL,NULL,'block, refresh, custom',NULL,0,0,NULL,NULL,0,0,0),(52,NULL,NULL,'add-on, addon, add on, package, app, ecommerce, discussions, forums, themes, templates, blocks',NULL,0,0,NULL,NULL,0,0,0),(53,NULL,NULL,NULL,NULL,1,0,NULL,NULL,0,0,0),(54,NULL,NULL,'add-on, addon, ecommerce, install, discussions, forums, themes, templates, blocks',NULL,0,0,NULL,NULL,0,0,0),(55,NULL,NULL,'update, upgrade',NULL,0,0,NULL,NULL,0,0,0),(56,NULL,NULL,'concrete5.org, my account, marketplace',NULL,1,0,NULL,NULL,0,0,0),(57,NULL,NULL,'buy theme, new theme, marketplace, template',NULL,0,0,NULL,NULL,0,0,0),(58,NULL,NULL,'buy addon, buy add on, buy add-on, purchase addon, purchase add on, purchase add-on, find addon, new addon, marketplace',NULL,0,0,NULL,NULL,0,0,0),(59,NULL,NULL,'dashboard, configuration',NULL,0,0,NULL,NULL,0,0,0),(61,NULL,NULL,'website name, title',NULL,0,0,NULL,NULL,0,0,0),(62,NULL,NULL,'accessibility, easy mode',NULL,0,0,NULL,NULL,0,0,0),(63,NULL,NULL,'sharing, facebook, twitter',NULL,0,0,NULL,NULL,0,0,0),(64,NULL,NULL,'logo, favicon, iphone, icon, bookmark',NULL,0,0,NULL,NULL,0,0,0),(65,NULL,NULL,'tinymce, content block, fonts, editor, content, overlay',NULL,0,0,NULL,NULL,0,0,0),(66,NULL,NULL,'translate, translation, internationalization, multilingual',NULL,0,0,NULL,NULL,0,0,0),(67,NULL,NULL,'timezone, profile, locale',NULL,0,0,NULL,NULL,0,0,0),(68,NULL,NULL,'multilingual, localization, internationalization, i18n',NULL,0,0,NULL,NULL,0,0,0),(73,NULL,NULL,'vanity, pretty url, redirection, hostname, canonical, seo, pageview, view',NULL,0,0,NULL,NULL,0,0,0),(74,NULL,NULL,'bulk, seo, change keywords, engine, optimization, search',NULL,0,0,NULL,NULL,0,0,0),(75,NULL,NULL,'traffic, statistics, google analytics, quant, pageviews, hits',NULL,0,0,NULL,NULL,0,0,0),(76,NULL,NULL,'pretty, slug',NULL,0,0,NULL,NULL,0,0,0),(77,NULL,NULL,'configure search, site search, search option',NULL,0,0,NULL,NULL,0,0,0),(79,NULL,NULL,'file options, file manager, upload, modify',NULL,0,0,NULL,NULL,0,0,0),(80,NULL,NULL,'security, files, media, extension, manager, upload',NULL,0,0,NULL,NULL,0,0,0),(81,NULL,NULL,'images, picture, responsive, retina',NULL,0,0,NULL,NULL,0,0,0),(82,NULL,NULL,'security, alternate storage, hide files',NULL,0,0,NULL,NULL,0,0,0),(84,NULL,NULL,'cache option, change cache, override, turn on cache, turn off cache, no cache, page cache, caching',NULL,0,0,NULL,NULL,0,0,0),(85,NULL,NULL,'cache option, turn off cache, no cache, page cache, caching',NULL,0,0,NULL,NULL,0,0,0),(86,NULL,NULL,'index search, reindex search, build sitemap, sitemap.xml, clear old versions, page versions, remove old',NULL,0,0,NULL,NULL,0,0,0),(87,NULL,NULL,'queries, database, mysql',NULL,0,0,NULL,NULL,0,0,0),(89,NULL,NULL,'editors, hide site, offline, private, public, access',NULL,0,0,NULL,NULL,0,0,0),(90,NULL,NULL,'security, actions, administrator, admin, package, marketplace, search',NULL,0,0,NULL,NULL,0,0,0),(93,NULL,NULL,'security, lock ip, lock out, block ip, address, restrict, access',NULL,0,0,NULL,NULL,0,0,0),(94,NULL,NULL,'security, registration',NULL,0,0,NULL,NULL,0,0,0),(95,NULL,NULL,'antispam, block spam, security',NULL,0,0,NULL,NULL,0,0,0),(96,NULL,NULL,'lock site, under construction, hide, hidden',NULL,0,0,NULL,NULL,0,0,0),(98,NULL,NULL,'profile, login, redirect, specific, dashboard, administrators',NULL,0,0,NULL,NULL,0,0,0),(99,NULL,NULL,'member profile, member page, community, forums, social, avatar',NULL,0,0,NULL,NULL,0,0,0),(100,NULL,NULL,'signup, new user, community, public registration, public, registration',NULL,0,0,NULL,NULL,0,0,0),(101,NULL,NULL,'auth, authentication, types, oauth, facebook, login, registration',NULL,0,0,NULL,NULL,0,0,0),(102,NULL,NULL,'smtp, mail settings',NULL,0,0,NULL,NULL,0,0,0),(103,NULL,NULL,'email server, mail settings, mail configuration, external, internal',NULL,0,0,NULL,NULL,0,0,0),(104,NULL,NULL,'test smtp, test mail',NULL,0,0,NULL,NULL,0,0,0),(105,NULL,NULL,'email server, mail settings, mail configuration, private message, message system, import, email, message',NULL,0,0,NULL,NULL,0,0,0),(106,NULL,NULL,'conversations',NULL,0,0,NULL,NULL,0,0,0),(107,NULL,NULL,'conversations',NULL,0,0,NULL,NULL,0,0,0),(108,NULL,NULL,'conversations ratings, ratings, community, community points',NULL,0,0,NULL,NULL,0,0,0),(109,NULL,NULL,'conversations bad words, banned words, banned, bad words, bad, words, list',NULL,0,0,NULL,NULL,0,0,0),(111,NULL,NULL,'attribute configuration',NULL,0,0,NULL,NULL,0,0,0),(112,NULL,NULL,'attributes, sets',NULL,0,0,NULL,NULL,0,0,0),(113,NULL,NULL,'attributes, types',NULL,0,0,NULL,NULL,0,0,0),(114,NULL,NULL,'topics, tags, taxonomy',NULL,0,0,NULL,NULL,0,0,0),(116,NULL,NULL,NULL,NULL,0,0,NULL,NULL,0,1,0),(117,NULL,NULL,'overrides, system info, debug, support, help',NULL,0,0,NULL,NULL,0,0,0),(118,NULL,NULL,'errors, exceptions, develop, support, help',NULL,0,0,NULL,NULL,0,0,0),(119,NULL,NULL,'email, logging, logs, smtp, pop, errors, mysql, log',NULL,0,0,NULL,NULL,0,0,0),(120,NULL,NULL,'network, proxy server',NULL,0,0,NULL,NULL,0,0,0),(121,NULL,NULL,'database, entities, doctrine, orm',NULL,0,0,NULL,NULL,0,0,0),(122,NULL,NULL,'export, backup, database, sql, mysql, encryption, restore',NULL,0,0,NULL,NULL,0,0,0),(124,NULL,NULL,'upgrade, new version, update',NULL,0,0,NULL,NULL,0,0,0),(125,NULL,NULL,NULL,NULL,1,0,NULL,NULL,0,0,0),(126,NULL,NULL,NULL,NULL,1,0,NULL,NULL,0,1,0),(127,NULL,NULL,NULL,'fa fa-edit',0,0,NULL,NULL,0,0,0),(128,NULL,NULL,NULL,'fa fa-trash-o',0,0,NULL,NULL,0,0,0),(129,NULL,NULL,NULL,'fa fa-th',0,0,NULL,NULL,0,0,0),(132,NULL,NULL,NULL,'fa fa-briefcase',0,0,NULL,NULL,0,0,0),(145,NULL,NULL,NULL,NULL,0,0,NULL,NULL,0,0,0),(148,NULL,NULL,NULL,NULL,0,0,NULL,NULL,0,0,0),(149,NULL,NULL,NULL,NULL,0,0,NULL,NULL,0,0,0),(151,NULL,NULL,NULL,NULL,0,0,NULL,NULL,0,0,0),(152,NULL,NULL,NULL,NULL,0,0,NULL,NULL,0,0,0),(153,NULL,NULL,NULL,NULL,0,0,NULL,NULL,0,0,0),(154,NULL,NULL,NULL,NULL,0,0,NULL,NULL,0,0,0),(155,NULL,NULL,NULL,NULL,0,0,NULL,NULL,0,0,0),(156,NULL,NULL,NULL,NULL,0,0,NULL,NULL,0,0,0),(157,NULL,NULL,NULL,NULL,0,0,NULL,NULL,0,0,0),(158,NULL,NULL,NULL,NULL,0,0,NULL,NULL,0,0,0),(159,NULL,NULL,NULL,NULL,0,0,NULL,NULL,0,0,0),(161,NULL,NULL,NULL,NULL,0,0,NULL,NULL,0,0,0),(162,NULL,NULL,NULL,NULL,0,0,NULL,NULL,0,0,0);
/*!40000 ALTER TABLE `CollectionSearchIndexAttributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CollectionVersionAreaStyles`
--

DROP TABLE IF EXISTS `CollectionVersionAreaStyles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CollectionVersionAreaStyles` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `issID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`arHandle`),
  KEY `issID` (`issID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CollectionVersionAreaStyles`
--

LOCK TABLES `CollectionVersionAreaStyles` WRITE;
/*!40000 ALTER TABLE `CollectionVersionAreaStyles` DISABLE KEYS */;
/*!40000 ALTER TABLE `CollectionVersionAreaStyles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CollectionVersionBlockStyles`
--

DROP TABLE IF EXISTS `CollectionVersionBlockStyles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CollectionVersionBlockStyles` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `issID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`bID`,`arHandle`),
  KEY `bID` (`bID`,`issID`),
  KEY `issID` (`issID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CollectionVersionBlockStyles`
--

LOCK TABLES `CollectionVersionBlockStyles` WRITE;
/*!40000 ALTER TABLE `CollectionVersionBlockStyles` DISABLE KEYS */;
/*!40000 ALTER TABLE `CollectionVersionBlockStyles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CollectionVersionBlocks`
--

DROP TABLE IF EXISTS `CollectionVersionBlocks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CollectionVersionBlocks` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '1',
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cbDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  `isOriginal` tinyint(1) NOT NULL DEFAULT '0',
  `cbOverrideAreaPermissions` tinyint(1) NOT NULL DEFAULT '0',
  `cbIncludeAll` tinyint(1) NOT NULL DEFAULT '0',
  `cbOverrideBlockTypeCacheSettings` tinyint(1) NOT NULL DEFAULT '0',
  `cbOverrideBlockTypeContainerSettings` tinyint(1) NOT NULL DEFAULT '0',
  `cbEnableBlockContainer` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`bID`,`arHandle`),
  KEY `bID` (`bID`,`cID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CollectionVersionBlocks`
--

LOCK TABLES `CollectionVersionBlocks` WRITE;
/*!40000 ALTER TABLE `CollectionVersionBlocks` DISABLE KEYS */;
INSERT INTO `CollectionVersionBlocks` VALUES (1,2,11,'Main',0,1,0,0,0,0,0),(1,2,12,'Main',1,1,0,0,0,0,0),(1,3,14,'Main',0,1,0,0,0,0,0),(1,4,14,'Main',0,0,0,0,0,0,0),(1,4,17,'Slide',0,1,0,0,0,0,0),(1,5,14,'Main',0,0,0,0,0,0,0),(1,5,17,'Slide',0,0,0,0,0,0,0),(1,5,18,'Main',1,1,0,0,0,0,0),(1,6,14,'Main',0,0,0,0,0,0,0),(1,6,17,'Slide',0,0,0,0,0,0,0),(1,6,18,'Main',1,0,0,0,0,0,0),(1,6,42,'Main : 8',0,1,0,0,0,0,0),(1,7,17,'Slide',0,0,0,0,0,0,0),(1,7,18,'Main',1,0,0,0,0,0,0),(1,8,17,'Slide',0,0,0,0,0,0,0),(1,8,18,'Main',0,0,0,0,0,0,0),(1,9,17,'Slide',0,0,0,0,0,0,0),(1,9,18,'Main',0,0,0,0,0,0,0),(1,10,17,'Slide',0,0,0,0,0,0,0),(1,10,45,'Main',0,1,0,0,0,0,0),(1,10,46,'Main : 11',0,1,0,0,0,0,0),(1,10,47,'Main : 11',1,1,0,0,0,0,0),(1,10,48,'Main : 12',0,1,0,0,0,0,0),(1,10,49,'Main : 12',1,1,0,0,0,0,0),(1,11,17,'Slide',0,0,0,0,0,0,0),(1,11,45,'Main',0,0,0,0,0,0,0),(1,11,46,'Main : 11',0,0,0,0,0,0,0),(1,11,47,'Main : 11',1,0,0,0,0,0,0),(1,11,48,'Main : 12',0,0,0,0,0,0,0),(1,11,49,'Main : 12',1,0,0,0,0,0,0),(1,12,17,'Slide',0,0,0,0,0,0,0),(1,12,45,'Main',0,0,0,0,0,0,0),(1,12,46,'Main : 11',0,0,0,0,0,0,0),(1,12,47,'Main : 11',1,0,0,0,0,0,0),(1,12,48,'Main : 12',0,0,0,0,0,0,0),(1,12,49,'Main : 12',1,0,0,0,0,0,0),(1,13,17,'Slide',0,0,0,0,0,0,0),(1,13,45,'Main',0,0,0,0,0,0,0),(1,13,46,'Main : 11',0,0,0,0,0,0,0),(1,13,47,'Main : 11',1,0,0,0,0,0,0),(1,13,48,'Main : 12',0,0,0,0,0,0,0),(1,13,49,'Main : 12',1,0,0,0,0,0,0),(1,14,17,'Slide',0,0,0,0,0,0,0),(1,14,45,'Main',0,0,0,0,0,0,0),(1,14,46,'Main : 11',0,0,0,0,0,0,0),(1,14,47,'Main : 11',1,0,0,0,0,0,0),(1,14,48,'Main : 12',0,0,0,0,0,0,0),(1,14,49,'Main : 12',1,0,0,0,0,0,0),(1,14,92,'Main',1,1,0,0,0,0,0),(1,14,93,'Main : 29',0,1,0,0,0,0,0),(1,15,17,'Slide',0,0,0,0,0,0,0),(1,15,45,'Main',0,0,0,0,0,0,0),(1,15,46,'Main : 11',0,0,0,0,0,0,0),(1,15,47,'Main : 11',1,0,0,0,0,0,0),(1,15,48,'Main : 12',0,0,0,0,0,0,0),(1,15,49,'Main : 12',1,0,0,0,0,0,0),(1,15,92,'Main',1,0,0,0,0,0,0),(1,15,94,'Main : 29',0,1,0,0,0,0,0),(1,16,17,'Slide',0,0,0,0,0,0,0),(1,16,45,'Main',0,0,0,0,0,0,0),(1,16,46,'Main : 11',0,0,0,0,0,0,0),(1,16,47,'Main : 11',1,0,0,0,0,0,0),(1,16,48,'Main : 12',0,0,0,0,0,0,0),(1,16,49,'Main : 12',1,0,0,0,0,0,0),(1,16,92,'Main',1,0,0,0,0,0,0),(1,17,17,'Slide',0,0,0,0,0,0,0),(1,17,45,'Main',0,0,0,0,0,0,0),(1,17,46,'Main : 11',0,0,0,0,0,0,0),(1,17,47,'Main : 11',1,0,0,0,0,0,0),(1,17,48,'Main : 12',0,0,0,0,0,0,0),(1,17,49,'Main : 12',1,0,0,0,0,0,0),(1,18,17,'Slide',0,0,0,0,0,0,0),(1,18,45,'Main',0,0,0,0,0,0,0),(1,18,46,'Main : 11',0,0,0,0,0,0,0),(1,18,47,'Main : 11',1,0,0,0,0,0,0),(1,18,48,'Main : 12',0,0,0,0,0,0,0),(1,18,49,'Main : 12',1,0,0,0,0,0,0),(1,19,17,'Slide',0,0,0,0,0,0,0),(1,19,45,'Main',0,0,0,0,0,0,0),(1,19,46,'Main : 11',0,0,0,0,0,0,0),(1,19,47,'Main : 11',1,0,0,0,0,0,0),(1,19,48,'Main : 12',0,0,0,0,0,0,0),(1,19,49,'Main : 12',1,0,0,0,0,0,0),(125,1,1,'Main',0,1,0,0,0,0,0),(126,1,2,'Primary',0,1,0,0,0,0,0),(126,1,3,'Primary',1,1,0,0,0,0,0),(126,1,4,'Secondary 1',0,1,0,0,0,0,0),(126,1,5,'Secondary 2',0,1,0,0,0,0,0),(126,1,6,'Secondary 3',0,1,0,0,0,0,0),(126,1,7,'Secondary 4',0,1,0,0,0,0,0),(126,1,8,'Secondary 5',0,1,0,0,0,0,0),(143,1,9,'Main',0,1,0,0,0,0,0),(145,2,15,'Main',0,1,0,0,0,0,0),(145,3,15,'Main',0,0,0,0,0,0,0),(145,4,16,'Main',0,1,0,0,0,0,0),(148,2,71,'Main',0,1,0,0,0,0,0),(148,3,71,'Main',0,0,0,0,0,0,0),(149,2,10,'Main',0,1,0,0,0,0,0),(149,3,43,'Main',0,1,0,0,0,0,0),(149,4,44,'Main',0,1,0,0,0,0,0),(149,5,74,'Main',0,1,0,0,0,0,0),(149,6,74,'Main',0,0,0,0,0,0,0),(149,6,75,'Main',1,1,0,0,0,0,0),(149,7,74,'Main',0,0,0,0,0,0,0),(149,7,76,'Main',1,1,0,0,0,0,0),(149,8,74,'Main',0,0,0,0,0,0,0),(149,8,77,'Main',1,1,0,0,0,0,0),(149,9,74,'Main',0,0,0,0,0,0,0),(149,9,78,'Main',1,1,0,0,0,0,0),(149,10,74,'Main',0,0,0,0,0,0,0),(151,2,66,'Main',0,1,0,0,0,0,0),(151,3,67,'Main',0,1,0,0,0,0,0),(152,1,24,'Main',0,1,0,0,0,0,0),(153,1,27,'Main',0,1,0,0,0,0,0),(153,2,27,'Main',0,0,0,0,0,0,0),(153,2,62,'Main',1,1,0,0,0,0,0),(153,2,63,'Main : 24',0,1,0,0,0,0,0),(153,3,27,'Main',0,0,0,0,0,0,0),(153,3,62,'Main',1,0,0,0,0,0,0),(153,3,63,'Main : 24',0,0,0,0,0,0,0),(153,3,64,'Main',2,1,0,0,0,0,0),(154,1,31,'Main',0,1,0,0,0,0,0),(155,1,37,'Main',0,1,0,0,0,0,0),(156,1,41,'Main',0,1,0,0,0,0,0),(156,2,41,'Main',0,0,0,0,0,0,0),(156,2,50,'Main',1,1,0,0,0,0,0),(156,2,51,'Main : 15',0,1,0,0,0,0,0),(156,2,52,'Main : 15',1,1,0,0,0,0,0),(156,2,53,'Main',2,1,0,0,0,0,0),(156,3,41,'Main',0,0,0,0,0,0,0),(156,3,50,'Main',1,0,0,0,0,0,0),(156,3,51,'Main : 15',0,0,0,0,0,0,0),(156,3,53,'Main',2,0,0,0,0,0,0),(156,3,54,'Main : 15',1,1,0,0,0,0,0),(156,3,55,'Main : 21',1,1,0,0,0,0,0),(156,3,56,'Main : 21',2,1,0,0,0,0,0),(156,3,57,'Main',3,1,0,0,0,0,0),(156,3,58,'Main : 18',0,1,0,0,0,0,0),(156,3,59,'Main : 18',3,1,0,0,0,0,0),(156,4,41,'Main',0,0,0,0,0,0,0),(156,4,50,'Main',1,0,0,0,0,0,0),(156,4,51,'Main : 15',0,0,0,0,0,0,0),(156,4,53,'Main',2,0,0,0,0,0,0),(156,4,55,'Main : 21',0,0,0,0,0,0,0),(156,4,56,'Main : 21',1,0,0,0,0,0,0),(156,4,57,'Main',3,0,0,0,0,0,0),(156,4,58,'Main : 18',0,0,0,0,0,0,0),(156,4,59,'Main : 18',3,0,0,0,0,0,0),(156,4,60,'Main : 15',1,1,0,0,0,0,0),(156,5,41,'Main',0,0,0,0,0,0,0),(156,5,50,'Main',1,0,0,0,0,0,0),(156,5,51,'Main : 15',0,0,0,0,0,0,0),(156,5,53,'Main',2,0,0,0,0,0,0),(156,5,55,'Main : 21',0,0,0,0,0,0,0),(156,5,56,'Main : 21',1,0,0,0,0,0,0),(156,5,57,'Main',3,0,0,0,0,0,0),(156,5,58,'Main : 18',0,0,0,0,0,0,0),(156,5,59,'Main : 18',3,0,0,0,0,0,0),(156,5,61,'Main : 15',1,1,0,0,0,0,0),(156,6,41,'Main',0,0,0,0,0,0,0),(156,6,50,'Main',1,0,0,0,0,0,0),(156,6,51,'Main : 15',0,0,0,0,0,0,0),(156,6,53,'Main',2,0,0,0,0,0,0),(156,6,55,'Main : 21',0,0,0,0,0,0,0),(156,6,56,'Main : 21',1,0,0,0,0,0,0),(156,6,57,'Main',3,0,0,0,0,0,0),(156,6,58,'Main : 18',0,0,0,0,0,0,0),(156,6,70,'Main : 18',3,1,0,0,0,0,0),(156,6,72,'Main : 15',1,1,0,0,0,0,0),(157,13,89,'Main',0,1,0,0,0,0,0),(157,14,89,'Main',0,0,0,0,0,0,0),(158,2,90,'Main',0,1,0,0,0,0,0),(158,3,90,'Main',0,0,0,0,0,0,0),(159,2,91,'Main',0,1,0,0,0,0,0),(159,3,91,'Main',0,0,0,0,0,0,0),(161,2,95,'Main',0,1,0,0,0,0,0),(161,3,96,'Main',0,1,0,0,0,0,0),(162,2,94,'Main',0,0,0,0,0,0,0),(162,3,97,'Main',0,1,0,0,0,0,0);
/*!40000 ALTER TABLE `CollectionVersionBlocks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CollectionVersionBlocksCacheSettings`
--

DROP TABLE IF EXISTS `CollectionVersionBlocksCacheSettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CollectionVersionBlocksCacheSettings` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '1',
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `btCacheBlockOutput` tinyint(1) NOT NULL DEFAULT '0',
  `btCacheBlockOutputOnPost` tinyint(1) NOT NULL DEFAULT '0',
  `btCacheBlockOutputForRegisteredUsers` tinyint(1) NOT NULL DEFAULT '0',
  `btCacheBlockOutputLifetime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`bID`,`arHandle`),
  KEY `bID` (`bID`,`cID`,`cvID`,`arHandle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CollectionVersionBlocksCacheSettings`
--

LOCK TABLES `CollectionVersionBlocksCacheSettings` WRITE;
/*!40000 ALTER TABLE `CollectionVersionBlocksCacheSettings` DISABLE KEYS */;
/*!40000 ALTER TABLE `CollectionVersionBlocksCacheSettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CollectionVersionBlocksOutputCache`
--

DROP TABLE IF EXISTS `CollectionVersionBlocksOutputCache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CollectionVersionBlocksOutputCache` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '1',
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `btCachedBlockOutput` longtext COLLATE utf8_unicode_ci,
  `btCachedBlockOutputExpires` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`bID`,`arHandle`),
  KEY `bID` (`bID`,`cID`,`cvID`,`arHandle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CollectionVersionBlocksOutputCache`
--

LOCK TABLES `CollectionVersionBlocksOutputCache` WRITE;
/*!40000 ALTER TABLE `CollectionVersionBlocksOutputCache` DISABLE KEYS */;
/*!40000 ALTER TABLE `CollectionVersionBlocksOutputCache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CollectionVersionFeatureAssignments`
--

DROP TABLE IF EXISTS `CollectionVersionFeatureAssignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CollectionVersionFeatureAssignments` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '1',
  `faID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`faID`),
  KEY `faID` (`faID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CollectionVersionFeatureAssignments`
--

LOCK TABLES `CollectionVersionFeatureAssignments` WRITE;
/*!40000 ALTER TABLE `CollectionVersionFeatureAssignments` DISABLE KEYS */;
/*!40000 ALTER TABLE `CollectionVersionFeatureAssignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CollectionVersionRelatedEdits`
--

DROP TABLE IF EXISTS `CollectionVersionRelatedEdits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CollectionVersionRelatedEdits` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `cRelationID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvRelationID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`cRelationID`,`cvRelationID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CollectionVersionRelatedEdits`
--

LOCK TABLES `CollectionVersionRelatedEdits` WRITE;
/*!40000 ALTER TABLE `CollectionVersionRelatedEdits` DISABLE KEYS */;
/*!40000 ALTER TABLE `CollectionVersionRelatedEdits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CollectionVersionThemeCustomStyles`
--

DROP TABLE IF EXISTS `CollectionVersionThemeCustomStyles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CollectionVersionThemeCustomStyles` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '1',
  `pThemeID` int(10) unsigned NOT NULL DEFAULT '0',
  `scvlID` int(10) unsigned DEFAULT '0',
  `preset` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sccRecordID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`pThemeID`),
  KEY `pThemeID` (`pThemeID`),
  KEY `scvlID` (`scvlID`),
  KEY `sccRecordID` (`sccRecordID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CollectionVersionThemeCustomStyles`
--

LOCK TABLES `CollectionVersionThemeCustomStyles` WRITE;
/*!40000 ALTER TABLE `CollectionVersionThemeCustomStyles` DISABLE KEYS */;
/*!40000 ALTER TABLE `CollectionVersionThemeCustomStyles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CollectionVersions`
--

DROP TABLE IF EXISTS `CollectionVersions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CollectionVersions` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '1',
  `cvName` text COLLATE utf8_unicode_ci,
  `cvHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cvDescription` text COLLATE utf8_unicode_ci,
  `cvDatePublic` datetime DEFAULT NULL,
  `cvDateCreated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `cvComments` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cvIsApproved` tinyint(1) NOT NULL DEFAULT '0',
  `cvIsNew` tinyint(1) NOT NULL DEFAULT '0',
  `cvAuthorUID` int(10) unsigned DEFAULT NULL,
  `cvApproverUID` int(10) unsigned DEFAULT NULL,
  `pThemeID` int(10) unsigned NOT NULL DEFAULT '0',
  `pTemplateID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvActivateDatetime` datetime DEFAULT NULL,
  PRIMARY KEY (`cID`,`cvID`),
  KEY `cvIsApproved` (`cvIsApproved`),
  KEY `cvAuthorUID` (`cvAuthorUID`),
  KEY `cvApproverUID` (`cvApproverUID`),
  KEY `pThemeID` (`pThemeID`),
  KEY `pTemplateID` (`pTemplateID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CollectionVersions`
--

LOCK TABLES `CollectionVersions` WRITE;
/*!40000 ALTER TABLE `CollectionVersions` DISABLE KEYS */;
INSERT INTO `CollectionVersions` VALUES (1,1,'Home','home','','2015-06-11 08:51:40','2015-06-11 08:51:40','Initial Version',0,0,1,NULL,2,5,NULL),(1,2,'Home','home','','2015-06-11 08:51:40','2015-06-11 08:58:49','Version 2',0,0,1,1,2,5,NULL),(1,3,'Home','home','','2015-06-11 08:51:40','2015-06-11 09:38:52','Version 3',0,0,1,1,2,5,NULL),(1,4,'Home','home','','2015-06-11 08:51:40','2015-06-11 10:04:08','Version 4',0,0,1,1,2,5,NULL),(1,5,'Home','home','','2015-06-11 08:51:00','2015-06-11 13:34:39','New Version 5',0,0,1,1,2,5,NULL),(1,6,'Home','home','','2015-06-11 08:51:00','2015-06-12 10:06:36','Version 6',0,0,1,1,2,5,NULL),(1,7,'Home','home','','2015-06-11 08:51:00','2015-06-12 10:25:10','Version 7',0,0,1,1,2,5,NULL),(1,8,'Home','home','','2015-06-11 08:51:00','2015-06-15 14:43:47','set social section title',0,0,1,1,2,5,NULL),(1,9,'Home','home','','2015-06-11 08:51:00','2015-06-15 14:45:16','re-save title',0,0,1,1,2,5,NULL),(1,10,'Home','home','','2015-06-11 08:51:00','2015-06-19 11:37:34','Version 10',0,0,1,1,2,5,NULL),(1,11,'Home','home','','2015-06-11 08:51:00','2015-07-09 12:29:38','Version 11',0,0,1,1,2,5,NULL),(1,12,'Home','home','','2015-06-11 08:51:00','2015-07-21 13:21:18','Version 12',0,0,1,1,2,5,NULL),(1,13,'Home','home','','2015-06-11 08:51:00','2015-09-01 15:35:38','New Version 13',0,0,1,1,2,5,NULL),(1,14,'Home','home','','2015-06-11 08:51:00','2015-09-03 13:24:34','Version 14',0,0,1,1,2,5,NULL),(1,15,'Home','home','','2015-06-11 08:51:00','2015-09-03 15:19:00','Version 15',0,0,1,1,2,5,NULL),(1,16,'Home','home','','2015-06-11 08:51:00','2015-09-03 16:43:13','Version 16',0,0,1,1,2,5,NULL),(1,17,'Home','home','','2015-06-11 08:51:00','2015-09-03 16:46:24','Version 17',0,0,1,1,2,5,NULL),(1,18,'Home','home','','2015-06-11 08:51:00','2015-09-03 16:49:58','Version 18',0,0,1,1,2,5,NULL),(1,19,'Home','home','','2015-06-11 08:51:00','2015-09-03 16:51:00','Version 19',1,0,1,1,2,5,NULL),(2,1,'Dashboard','dashboard','','2015-06-11 08:51:44','2015-06-11 08:51:44','Initial Version',1,0,1,NULL,2,0,NULL),(3,1,'Sitemap','sitemap','Whole world at a glance.','2015-06-11 08:51:44','2015-06-11 08:51:44','Initial Version',1,0,1,NULL,2,0,NULL),(4,1,'Full Sitemap','full','','2015-06-11 08:51:44','2015-06-11 08:51:44','Initial Version',1,0,1,NULL,2,0,NULL),(5,1,'Flat View','explore','','2015-06-11 08:51:44','2015-06-11 08:51:44','Initial Version',1,0,1,NULL,2,0,NULL),(6,1,'Page Search','search','','2015-06-11 08:51:44','2015-06-11 08:51:44','Initial Version',1,0,1,NULL,2,0,NULL),(7,1,'Files','files','All documents and images.','2015-06-11 08:51:44','2015-06-11 08:51:44','Initial Version',1,0,1,NULL,2,0,NULL),(8,1,'File Manager','search','','2015-06-11 08:51:44','2015-06-11 08:51:44','Initial Version',1,0,1,NULL,2,0,NULL),(9,1,'Attributes','attributes','','2015-06-11 08:51:44','2015-06-11 08:51:44','Initial Version',1,0,1,NULL,2,0,NULL),(10,1,'File Sets','sets','','2015-06-11 08:51:44','2015-06-11 08:51:44','Initial Version',1,0,1,NULL,2,0,NULL),(11,1,'Add File Set','add_set','','2015-06-11 08:51:44','2015-06-11 08:51:44','Initial Version',1,0,1,NULL,2,0,NULL),(12,1,'Members','users','Add and manage the user accounts and groups on your website.','2015-06-11 08:51:44','2015-06-11 08:51:44','Initial Version',1,0,1,NULL,2,0,NULL),(13,1,'Search Users','search','','2015-06-11 08:51:44','2015-06-11 08:51:44','Initial Version',1,0,1,NULL,2,0,NULL),(14,1,'User Groups','groups','','2015-06-11 08:51:44','2015-06-11 08:51:44','Initial Version',1,0,1,NULL,2,0,NULL),(15,1,'Attributes','attributes','','2015-06-11 08:51:44','2015-06-11 08:51:44','Initial Version',1,0,1,NULL,2,0,NULL),(16,1,'Add User','add','','2015-06-11 08:51:44','2015-06-11 08:51:44','Initial Version',1,0,1,NULL,2,0,NULL),(17,1,'Add Group','add_group','','2015-06-11 08:51:44','2015-06-11 08:51:44','Initial Version',1,0,1,NULL,2,0,NULL),(18,1,'Move Multiple Groups','bulkupdate','','2015-06-11 08:51:44','2015-06-11 08:51:44','Initial Version',1,0,1,NULL,2,0,NULL),(19,1,'Group Sets','group_sets','','2015-06-11 08:51:44','2015-06-11 08:51:44','Initial Version',1,0,1,NULL,2,0,NULL),(20,1,'Community Points','points',NULL,'2015-06-11 08:51:44','2015-06-11 08:51:44','Initial Version',1,0,1,NULL,2,0,NULL),(21,1,'Assign Points','assign',NULL,'2015-06-11 08:51:44','2015-06-11 08:51:44','Initial Version',1,0,1,NULL,2,0,NULL),(22,1,'Actions','actions',NULL,'2015-06-11 08:51:44','2015-06-11 08:51:44','Initial Version',1,0,1,NULL,2,0,NULL),(23,1,'Reports','reports','Get data from forms and logs.','2015-06-11 08:51:44','2015-06-11 08:51:44','Initial Version',1,0,1,NULL,2,0,NULL),(24,1,'Form Results','forms','Get submission data.','2015-06-11 08:51:44','2015-06-11 08:51:44','Initial Version',1,0,1,NULL,2,0,NULL),(25,1,'Surveys','surveys','','2015-06-11 08:51:44','2015-06-11 08:51:44','Initial Version',1,0,1,NULL,2,0,NULL),(26,1,'Logs','logs','','2015-06-11 08:51:44','2015-06-11 08:51:44','Initial Version',1,0,1,NULL,2,0,NULL),(27,1,'Pages & Themes','pages','Reskin your site.','2015-06-11 08:51:44','2015-06-11 08:51:44','Initial Version',1,0,1,NULL,2,0,NULL),(28,1,'Themes','themes','Reskin your site.','2015-06-11 08:51:44','2015-06-11 08:51:44','Initial Version',1,0,1,NULL,2,0,NULL),(29,1,'Inspect','inspect','','2015-06-11 08:51:45','2015-06-11 08:51:45','Initial Version',1,0,1,NULL,2,0,NULL),(30,1,'Page Types','types','','2015-06-11 08:51:45','2015-06-11 08:51:45','Initial Version',1,0,1,NULL,2,0,NULL),(31,1,'Organize Page Type Order','organize','','2015-06-11 08:51:45','2015-06-11 08:51:45','Initial Version',1,0,1,NULL,2,0,NULL),(32,1,'Add Page Type','add','','2015-06-11 08:51:45','2015-06-11 08:51:45','Initial Version',1,0,1,NULL,2,0,NULL),(33,1,'Compose Form','form','','2015-06-11 08:51:45','2015-06-11 08:51:45','Initial Version',1,0,1,NULL,2,0,NULL),(34,1,'Defaults and Output','output','','2015-06-11 08:51:45','2015-06-11 08:51:45','Initial Version',1,0,1,NULL,2,0,NULL),(35,1,'Page Type Attributes','attributes','','2015-06-11 08:51:45','2015-06-11 08:51:45','Initial Version',1,0,1,NULL,2,0,NULL),(36,1,'Page Type Permissions','permissions','','2015-06-11 08:51:45','2015-06-11 08:51:45','Initial Version',1,0,1,NULL,2,0,NULL),(37,1,'Page Templates','templates','Form factors for pages in your site.','2015-06-11 08:51:45','2015-06-11 08:51:45','Initial Version',1,0,1,NULL,2,0,NULL),(38,1,'Add Page Template','add','Add page templates to your site.','2015-06-11 08:51:45','2015-06-11 08:51:45','Initial Version',1,0,1,NULL,2,0,NULL),(39,1,'Attributes','attributes','','2015-06-11 08:51:45','2015-06-11 08:51:45','Initial Version',1,0,1,NULL,2,0,NULL),(40,1,'Single Pages','single','','2015-06-11 08:51:45','2015-06-11 08:51:45','Initial Version',1,0,1,NULL,2,0,NULL),(41,1,'RSS Feeds','feeds','','2015-06-11 08:51:45','2015-06-11 08:51:45','Initial Version',1,0,1,NULL,2,0,NULL),(42,1,'Conversations','conversations','','2015-06-11 08:51:45','2015-06-11 08:51:45','Initial Version',1,0,1,NULL,2,0,NULL),(43,1,'Messages','messages','','2015-06-11 08:51:45','2015-06-11 08:51:45','Initial Version',1,0,1,NULL,2,0,NULL),(44,1,'Workflow','workflow','','2015-06-11 08:51:45','2015-06-11 08:51:45','Initial Version',1,0,1,NULL,2,0,NULL),(45,1,'Workflow List','workflows','','2015-06-11 08:51:45','2015-06-11 08:51:45','Initial Version',1,0,1,NULL,2,0,NULL),(46,1,'Waiting for Me','me','','2015-06-11 08:51:45','2015-06-11 08:51:45','Initial Version',1,0,1,NULL,2,0,NULL),(47,1,'Stacks & Blocks','blocks','Manage sitewide content and administer block types.','2015-06-11 08:51:45','2015-06-11 08:51:45','Initial Version',1,0,1,NULL,2,0,NULL),(48,1,'Stacks','stacks','Share content across your site.','2015-06-11 08:51:45','2015-06-11 08:51:45','Initial Version',1,0,1,NULL,2,0,NULL),(49,1,'Block & Stack Permissions','permissions','Control who can add blocks and stacks on your site.','2015-06-11 08:51:45','2015-06-11 08:51:45','Initial Version',1,0,1,NULL,2,0,NULL),(50,1,'Stack List','list','','2015-06-11 08:51:45','2015-06-11 08:51:45','Initial Version',1,0,1,NULL,2,0,NULL),(51,1,'Block Types','types','Manage the installed block types in your site.','2015-06-11 08:51:45','2015-06-11 08:51:45','Initial Version',1,0,1,NULL,2,0,NULL),(52,1,'Extend concrete5','extend','','2015-06-11 08:51:45','2015-06-11 08:51:45','Initial Version',1,0,1,NULL,2,0,NULL),(53,1,'Dashboard','news','','2015-06-11 08:51:45','2015-06-11 08:51:45','Initial Version',1,0,1,NULL,2,0,NULL),(54,1,'Add Functionality','install','Install add-ons & themes.','2015-06-11 08:51:45','2015-06-11 08:51:45','Initial Version',1,0,1,NULL,2,0,NULL),(55,1,'Update Add-Ons','update','Update your installed packages.','2015-06-11 08:51:45','2015-06-11 08:51:45','Initial Version',1,0,1,NULL,2,0,NULL),(56,1,'Connect to the Community','connect','Connect to the concrete5 community.','2015-06-11 08:51:45','2015-06-11 08:51:45','Initial Version',1,0,1,NULL,2,0,NULL),(57,1,'Get More Themes','themes','Download themes from concrete5.org.','2015-06-11 08:51:45','2015-06-11 08:51:45','Initial Version',1,0,1,NULL,2,0,NULL),(58,1,'Get More Add-Ons','addons','Download add-ons from concrete5.org.','2015-06-11 08:51:45','2015-06-11 08:51:45','Initial Version',1,0,1,NULL,2,0,NULL),(59,1,'System & Settings','system','Secure and setup your site.','2015-06-11 08:51:45','2015-06-11 08:51:45','Initial Version',1,0,1,NULL,2,0,NULL),(60,1,'Basics','basics','Basic information about your website.','2015-06-11 08:51:45','2015-06-11 08:51:45','Initial Version',1,0,1,NULL,2,0,NULL),(61,1,'Site Name','name','','2015-06-11 08:51:46','2015-06-11 08:51:46','Initial Version',1,0,1,NULL,2,0,NULL),(62,1,'Accessibility','accessibility','','2015-06-11 08:51:46','2015-06-11 08:51:46','Initial Version',1,0,1,NULL,2,0,NULL),(63,1,'Social Links','social','','2015-06-11 08:51:46','2015-06-11 08:51:46','Initial Version',1,0,1,NULL,2,0,NULL),(64,1,'Bookmark Icons','icons','Bookmark icon and mobile home screen icon setup.','2015-06-11 08:51:46','2015-06-11 08:51:46','Initial Version',1,0,1,NULL,2,0,NULL),(65,1,'Rich Text Editor','editor','','2015-06-11 08:51:46','2015-06-11 08:51:46','Initial Version',1,0,1,NULL,2,0,NULL),(66,1,'Languages','multilingual','','2015-06-11 08:51:46','2015-06-11 08:51:46','Initial Version',1,0,1,NULL,2,0,NULL),(67,1,'Time Zone','timezone','','2015-06-11 08:51:46','2015-06-11 08:51:46','Initial Version',1,0,1,NULL,2,0,NULL),(68,1,'Multilingual','multilingual','Run your site in multiple languages.','2015-06-11 08:51:46','2015-06-11 08:51:46','Initial Version',1,0,1,NULL,2,0,NULL),(69,1,'Multilingual Setup','setup','','2015-06-11 08:51:46','2015-06-11 08:51:46','Initial Version',1,0,1,NULL,2,0,NULL),(70,1,'Page Report','page_report','','2015-06-11 08:51:46','2015-06-11 08:51:46','Initial Version',1,0,1,NULL,2,0,NULL),(71,1,'Translate Site Interface','translate_interface','','2015-06-11 08:51:46','2015-06-11 08:51:46','Initial Version',1,0,1,NULL,2,0,NULL),(72,1,'SEO & Statistics','seo','Enable pretty URLs and tracking codes.','2015-06-11 08:51:46','2015-06-11 08:51:46','Initial Version',1,0,1,NULL,2,0,NULL),(73,1,'URLs and Redirection','urls','','2015-06-11 08:51:46','2015-06-11 08:51:46','Initial Version',1,0,1,NULL,2,0,NULL),(74,1,'Bulk SEO Updater','bulk','','2015-06-11 08:51:46','2015-06-11 08:51:46','Initial Version',1,0,1,NULL,2,0,NULL),(75,1,'Tracking Codes','codes','','2015-06-11 08:51:46','2015-06-11 08:51:46','Initial Version',1,0,1,NULL,2,0,NULL),(76,1,'Excluded URL Word List','excluded','','2015-06-11 08:51:46','2015-06-11 08:51:46','Initial Version',1,0,1,NULL,2,0,NULL),(77,1,'Search Index','searchindex','','2015-06-11 08:51:46','2015-06-11 08:51:46','Initial Version',1,0,1,NULL,2,0,NULL),(78,1,'Files','files','','2015-06-11 08:51:46','2015-06-11 08:51:46','Initial Version',1,0,1,NULL,2,0,NULL),(79,1,'File Manager Permissions','permissions','','2015-06-11 08:51:46','2015-06-11 08:51:46','Initial Version',1,0,1,NULL,2,0,NULL),(80,1,'Allowed File Types','filetypes','','2015-06-11 08:51:46','2015-06-11 08:51:46','Initial Version',1,0,1,NULL,2,0,NULL),(81,1,'Thumbnails','thumbnails','','2015-06-11 08:51:46','2015-06-11 08:51:46','Initial Version',1,0,1,NULL,2,0,NULL),(82,1,'File Storage Locations','storage','','2015-06-11 08:51:46','2015-06-11 08:51:46','Initial Version',1,0,1,NULL,2,0,NULL),(83,1,'Optimization','optimization','Keep your site running well.','2015-06-11 08:51:46','2015-06-11 08:51:46','Initial Version',1,0,1,NULL,2,0,NULL),(84,1,'Cache & Speed Settings','cache','','2015-06-11 08:51:46','2015-06-11 08:51:46','Initial Version',1,0,1,NULL,2,0,NULL),(85,1,'Clear Cache','clearcache','','2015-06-11 08:51:46','2015-06-11 08:51:46','Initial Version',1,0,1,NULL,2,0,NULL),(86,1,'Automated Jobs','jobs','','2015-06-11 08:51:46','2015-06-11 08:51:46','Initial Version',1,0,1,NULL,2,0,NULL),(87,1,'Database Query Log','query_log','','2015-06-11 08:51:46','2015-06-11 08:51:46','Initial Version',1,0,1,NULL,2,0,NULL),(88,1,'Permissions & Access','permissions','Control who sees and edits your site.','2015-06-11 08:51:46','2015-06-11 08:51:46','Initial Version',1,0,1,NULL,2,0,NULL),(89,1,'Site Access','site','','2015-06-11 08:51:46','2015-06-11 08:51:46','Initial Version',1,0,1,NULL,2,0,NULL),(90,1,'Task Permissions','tasks','','2015-06-11 08:51:46','2015-06-11 08:51:46','Initial Version',1,0,1,NULL,2,0,NULL),(91,1,'User Permissions','users','','2015-06-11 08:51:46','2015-06-11 08:51:46','Initial Version',1,0,1,NULL,2,0,NULL),(92,1,'Advanced Permissions','advanced','','2015-06-11 08:51:46','2015-06-11 08:51:46','Initial Version',1,0,1,NULL,2,0,NULL),(93,1,'IP Blacklist','blacklist','','2015-06-11 08:51:47','2015-06-11 08:51:47','Initial Version',1,0,1,NULL,2,0,NULL),(94,1,'Captcha Setup','captcha','','2015-06-11 08:51:47','2015-06-11 08:51:47','Initial Version',1,0,1,NULL,2,0,NULL),(95,1,'Spam Control','antispam','','2015-06-11 08:51:47','2015-06-11 08:51:47','Initial Version',1,0,1,NULL,2,0,NULL),(96,1,'Maintenance Mode','maintenance','','2015-06-11 08:51:47','2015-06-11 08:51:47','Initial Version',1,0,1,NULL,2,0,NULL),(97,1,'Login & Registration','registration','Change login behaviors and setup public profiles.','2015-06-11 08:51:47','2015-06-11 08:51:47','Initial Version',1,0,1,NULL,2,0,NULL),(98,1,'Login Destination','postlogin','','2015-06-11 08:51:47','2015-06-11 08:51:47','Initial Version',1,0,1,NULL,2,0,NULL),(99,1,'Public Profiles','profiles','','2015-06-11 08:51:47','2015-06-11 08:51:47','Initial Version',1,0,1,NULL,2,0,NULL),(100,1,'Public Registration','open','','2015-06-11 08:51:47','2015-06-11 08:51:47','Initial Version',1,0,1,NULL,2,0,NULL),(101,1,'Authentication Types','authentication','','2015-06-11 08:51:47','2015-06-11 08:51:47','Initial Version',1,0,1,NULL,2,0,NULL),(102,1,'Email','mail','Control how your site send and processes mail.','2015-06-11 08:51:47','2015-06-11 08:51:47','Initial Version',1,0,1,NULL,2,0,NULL),(103,1,'SMTP Method','method','','2015-06-11 08:51:47','2015-06-11 08:51:47','Initial Version',1,0,1,NULL,2,0,NULL),(104,1,'Test Mail Settings','test','','2015-06-11 08:51:47','2015-06-11 08:51:47','Initial Version',1,0,1,NULL,2,0,NULL),(105,1,'Email Importers','importers','','2015-06-11 08:51:47','2015-06-11 08:51:47','Initial Version',1,0,1,NULL,2,0,NULL),(106,1,'Conversations','conversations','Manage your conversations settings','2015-06-11 08:51:47','2015-06-11 08:51:47','Initial Version',1,0,1,NULL,2,0,NULL),(107,1,'Settings','settings','','2015-06-11 08:51:47','2015-06-11 08:51:47','Initial Version',1,0,1,NULL,2,0,NULL),(108,1,'Community Points','points','','2015-06-11 08:51:47','2015-06-11 08:51:47','Initial Version',1,0,1,NULL,2,0,NULL),(109,1,'Banned Words','bannedwords','','2015-06-11 08:51:47','2015-06-11 08:51:47','Initial Version',1,0,1,NULL,2,0,NULL),(110,1,'Conversation Permissions','permissions','','2015-06-11 08:51:47','2015-06-11 08:51:47','Initial Version',1,0,1,NULL,2,0,NULL),(111,1,'Attributes','attributes','Setup attributes for pages, users, files and more.','2015-06-11 08:51:47','2015-06-11 08:51:47','Initial Version',1,0,1,NULL,2,0,NULL),(112,1,'Sets','sets','Group attributes into sets for easier organization','2015-06-11 08:51:47','2015-06-11 08:51:47','Initial Version',1,0,1,NULL,2,0,NULL),(113,1,'Types','types','Choose which attribute types are available for different items.','2015-06-11 08:51:47','2015-06-11 08:51:47','Initial Version',1,0,1,NULL,2,0,NULL),(114,1,'Topics','topics','','2015-06-11 08:51:47','2015-06-11 08:51:47','Initial Version',1,0,1,NULL,2,0,NULL),(115,1,'Add Topic Tree','add','','2015-06-11 08:51:47','2015-06-11 08:51:47','Initial Version',1,0,1,NULL,2,0,NULL),(116,1,'Environment','environment','Advanced settings for web developers.','2015-06-11 08:51:47','2015-06-11 08:51:47','Initial Version',1,0,1,NULL,2,0,NULL),(117,1,'Environment Information','info','','2015-06-11 08:51:47','2015-06-11 08:51:47','Initial Version',1,0,1,NULL,2,0,NULL),(118,1,'Debug Settings','debug','','2015-06-11 08:51:47','2015-06-11 08:51:47','Initial Version',1,0,1,NULL,2,0,NULL),(119,1,'Logging Settings','logging','','2015-06-11 08:51:47','2015-06-11 08:51:47','Initial Version',1,0,1,NULL,2,0,NULL),(120,1,'Proxy Server','proxy','','2015-06-11 08:51:47','2015-06-11 08:51:47','Initial Version',1,0,1,NULL,2,0,NULL),(121,1,'Database Entities','entities','','2015-06-11 08:51:47','2015-06-11 08:51:47','Initial Version',1,0,1,NULL,2,0,NULL),(122,1,'Backup & Restore','backup','Backup or restore your website.','2015-06-11 08:51:47','2015-06-11 08:51:47','Initial Version',1,0,1,NULL,2,0,NULL),(123,1,'Backup Database','backup','','2015-06-11 08:51:47','2015-06-11 08:51:47','Initial Version',1,0,1,NULL,2,0,NULL),(124,1,'Update concrete5','update','','2015-06-11 08:51:47','2015-06-11 08:51:47','Initial Version',1,0,1,NULL,2,0,NULL),(125,1,'Welcome to concrete5','welcome','Learn about how to use concrete5, how to develop for concrete5, and get general help.','2015-06-11 08:51:48','2015-06-11 08:51:48','Initial Version',1,0,1,NULL,2,4,NULL),(126,1,'Customize Dashboard Home','home','','2015-06-11 08:51:48','2015-06-11 08:51:48','Initial Version',1,0,1,NULL,2,2,NULL),(127,1,'Drafts','!drafts','','2015-06-11 08:51:50','2015-06-11 08:51:50','Initial Version',1,0,1,NULL,2,0,NULL),(128,1,'Trash','!trash','','2015-06-11 08:51:50','2015-06-11 08:51:50','Initial Version',1,0,1,NULL,2,0,NULL),(129,1,'Stacks','!stacks','','2015-06-11 08:51:50','2015-06-11 08:51:50','Initial Version',1,0,1,NULL,2,0,NULL),(130,1,'Login','login','','2015-06-11 08:51:50','2015-06-11 08:51:50','Initial Version',1,0,1,NULL,2,0,NULL),(131,1,'Register','register','','2015-06-11 08:51:51','2015-06-11 08:51:51','Initial Version',1,0,1,NULL,2,0,NULL),(132,1,'My Account','account','','2015-06-11 08:51:51','2015-06-11 08:51:51','Initial Version',1,0,1,NULL,2,0,NULL),(133,1,'Edit Profile','edit_profile','Edit your user profile and change password.','2015-06-11 08:51:51','2015-06-11 08:51:51','Initial Version',1,0,1,NULL,2,0,NULL),(134,1,'Profile Picture','avatar','Specify a new image attached to posts or edits.','2015-06-11 08:51:51','2015-06-11 08:51:51','Initial Version',1,0,1,NULL,2,0,NULL),(135,1,'Messages','messages','Inbox for site-specific messages.','2015-06-11 08:51:51','2015-06-11 08:51:51','Initial Version',1,0,1,NULL,2,0,NULL),(136,1,'Inbox','inbox','','2015-06-11 08:51:51','2015-06-11 08:51:51','Initial Version',1,0,1,NULL,2,0,NULL),(137,1,'Members','members','','2015-06-11 08:51:51','2015-06-11 08:51:51','Initial Version',1,0,1,NULL,2,0,NULL),(138,1,'View Profile','profile','','2015-06-11 08:51:51','2015-06-11 08:51:51','Initial Version',1,0,1,NULL,2,0,NULL),(139,1,'Directory','directory','','2015-06-11 08:51:51','2015-06-11 08:51:51','Initial Version',1,0,1,NULL,2,0,NULL),(140,1,'Page Not Found','page_not_found','','2015-06-11 08:51:51','2015-06-11 08:51:51','Initial Version',1,0,1,NULL,2,0,NULL),(141,1,'Page Forbidden','page_forbidden','','2015-06-11 08:51:51','2015-06-11 08:51:51','Initial Version',1,0,1,NULL,2,0,NULL),(142,1,'Download File','download_file','','2015-06-11 08:51:51','2015-06-11 08:51:51','Initial Version',1,0,1,NULL,2,0,NULL),(143,1,'',NULL,NULL,'2015-06-11 08:51:53','2015-06-11 08:51:53','Initial Version',1,0,NULL,NULL,0,5,NULL),(144,1,'Header Site Title','header-site-title',NULL,'2015-06-11 08:52:12','2015-06-11 08:52:12','Initial Version',1,0,1,NULL,2,0,NULL),(145,1,'Header Navigation','header-navigation',NULL,'2015-06-11 08:52:12','2015-06-11 08:52:12','Initial Version',0,0,1,NULL,2,0,NULL),(145,2,'Header Navigation','header-navigation',NULL,'2015-06-11 08:52:12','2015-06-11 10:02:36','New Version 2',0,0,1,NULL,2,0,NULL),(145,3,'Header Navigation','header-navigation',NULL,'2015-06-11 08:52:12','2015-06-11 10:02:50','New Version 3',0,0,1,NULL,2,0,NULL),(145,4,'Header Navigation','header-navigation',NULL,'2015-06-11 08:52:12','2015-06-11 10:03:02','New Version 4',1,0,1,1,2,0,NULL),(146,1,'Footer Legal','footer-legal',NULL,'2015-06-11 08:52:12','2015-06-11 08:52:12','Initial Version',1,0,1,NULL,2,0,NULL),(147,1,'Footer Navigation','footer-navigation',NULL,'2015-06-11 08:52:12','2015-06-11 08:52:12','Initial Version',1,0,1,NULL,2,0,NULL),(148,1,'Footer Contact','footer-contact',NULL,'2015-06-11 08:52:12','2015-06-11 08:52:12','Initial Version',0,0,1,NULL,2,0,NULL),(148,2,'Footer Contact','footer-contact',NULL,'2015-06-11 08:52:12','2015-07-21 13:20:20','New Version 2',0,0,1,NULL,2,0,NULL),(148,3,'Footer Contact','footer-contact',NULL,'2015-06-11 08:52:12','2015-07-21 13:21:18','New Version 3',1,0,1,1,2,0,NULL),(149,1,'Connection','connection',NULL,'2015-06-11 08:52:48','2015-06-11 08:52:48','Initial Version',0,0,1,NULL,2,0,NULL),(149,2,'Connection','connection',NULL,'2015-06-11 08:52:48','2015-06-11 08:58:49','New Version 2',0,0,1,1,2,0,NULL),(149,3,'Connection','connection',NULL,'2015-06-11 08:52:48','2015-06-15 14:43:47','New Version 3',0,0,1,1,2,0,NULL),(149,4,'Connection','connection',NULL,'2015-06-11 08:52:48','2015-06-15 14:45:16','New Version 4',0,0,1,1,2,0,NULL),(149,5,'Connection','connection',NULL,'2015-06-11 08:52:48','2015-08-10 10:13:43','New Version 5',0,0,1,1,2,0,NULL),(149,6,'Connection','connection',NULL,'2015-06-11 08:52:48','2015-08-31 15:57:57','New Version 6',0,0,1,NULL,2,0,NULL),(149,7,'Connection','connection',NULL,'2015-06-11 08:52:48','2015-08-31 15:58:33','New Version 7',0,0,1,NULL,2,0,NULL),(149,8,'Connection','connection',NULL,'2015-06-11 08:52:48','2015-08-31 15:59:42','New Version 8',0,0,1,NULL,2,0,NULL),(149,9,'Connection','connection',NULL,'2015-06-11 08:52:48','2015-08-31 16:06:30','New Version 9',0,0,1,NULL,2,0,NULL),(149,10,'Connection','connection',NULL,'2015-06-11 08:52:48','2015-08-31 16:06:35','New Version 10',0,0,1,NULL,2,0,NULL),(149,11,'Connection','connection',NULL,'2015-06-11 08:52:48','2015-08-31 16:06:40','New Version 11',1,0,1,1,2,0,NULL),(150,1,'Footer Content','footer-content',NULL,'2015-06-11 08:52:48','2015-06-11 08:52:48','Initial Version',1,0,1,NULL,2,0,NULL),(151,1,'Footer Map','footer-map',NULL,'2015-06-11 08:52:48','2015-06-11 08:52:48','Initial Version',0,0,1,NULL,2,0,NULL),(151,2,'Footer Map','footer-map',NULL,'2015-06-11 08:52:48','2015-07-09 12:27:13','New Version 2',0,0,1,NULL,2,0,NULL),(151,3,'Footer Map','footer-map',NULL,'2015-06-11 08:52:48','2015-07-09 12:29:38','New Version 3',1,0,1,1,2,0,NULL),(152,1,'Worship','worship','','2015-06-12 08:25:17','2015-06-12 08:25:17','Version 1',1,0,1,1,2,5,NULL),(153,1,'Grow','grow','','2015-06-12 08:26:59','2015-06-12 08:26:59','Initial Version',0,0,1,1,2,5,NULL),(153,2,'Grow','grow','','2015-06-12 08:26:59','2015-07-08 21:01:40','Version 2',0,0,3,3,2,5,NULL),(153,3,'Grow','grow','','2015-06-12 08:26:59','2015-07-08 21:04:40','Version 3',1,0,1,3,2,5,NULL),(154,1,'Serve','serve','','2015-06-12 08:27:38','2015-06-12 08:27:38','Initial Version',1,0,1,1,2,5,NULL),(155,1,'Share','share','','2015-06-12 08:28:00','2015-06-12 08:28:00','Initial Version',1,0,1,1,2,5,NULL),(156,1,'I\'m New','im-new','','2015-06-12 08:29:40','2015-06-12 08:29:40','Initial Version',0,0,1,1,2,5,NULL),(156,2,'I\'m New','im-new','','2015-06-12 08:29:40','2015-07-08 20:28:26','Version 2',0,0,3,NULL,2,5,NULL),(156,3,'I\'m New','im-new','','2015-06-12 08:29:40','2015-07-08 20:37:39','Version 3',0,0,3,3,2,5,NULL),(156,4,'I\'m New','im-new','','2015-06-12 08:29:40','2015-07-08 20:54:23','Version 4',0,0,3,NULL,2,5,NULL),(156,5,'I\'m New','im-new','','2015-06-12 08:29:40','2015-07-08 20:56:08','Version 5',1,0,3,3,2,5,NULL),(156,6,'I\'m New','im-new','','2015-06-12 08:29:40','2015-07-09 13:09:19','New Version 6',0,1,1,NULL,2,5,NULL),(157,1,'Phone','phone',NULL,'2015-08-31 16:19:06','2015-08-31 16:19:06','Initial Version',0,0,1,NULL,2,0,NULL),(157,2,'Phone','phone',NULL,'2015-08-31 16:19:06','2015-08-31 16:22:26','New Version 2',0,0,1,NULL,2,0,NULL),(157,3,'Phone','phone',NULL,'2015-08-31 16:19:06','2015-08-31 16:22:38','New Version 3',0,0,1,1,2,0,NULL),(157,4,'Phone','phone',NULL,'2015-08-31 16:19:06','2015-09-01 15:35:38','New Version 4',0,0,1,1,2,0,NULL),(157,5,'Phone','phone',NULL,'2015-08-31 16:19:06','2015-09-01 15:35:59','New Version 5',0,0,1,1,2,0,NULL),(157,6,'Phone','phone',NULL,'2015-08-31 16:19:06','2015-09-01 15:36:31','New Version 6',0,0,1,1,2,0,NULL),(157,7,'Phone','phone',NULL,'2015-08-31 16:19:06','2015-09-01 15:37:33','New Version 7',0,0,1,1,2,0,NULL),(157,8,'Phone','phone',NULL,'2015-08-31 16:19:06','2015-09-01 15:41:35','New Version 8',0,0,1,NULL,2,0,NULL),(157,9,'Phone','phone',NULL,'2015-08-31 16:19:06','2015-09-01 15:42:07','New Version 9',0,0,1,NULL,2,0,NULL),(157,10,'Phone','phone',NULL,'2015-08-31 16:19:06','2015-09-01 15:50:33','New Version 10',0,0,1,NULL,2,0,NULL),(157,11,'Phone','phone',NULL,'2015-08-31 16:19:06','2015-09-01 15:54:01','New Version 11',0,0,1,NULL,2,0,NULL),(157,12,'Phone','phone',NULL,'2015-08-31 16:19:06','2015-09-01 15:55:53','New Version 12',0,0,1,1,2,0,NULL),(157,13,'Phone','phone',NULL,'2015-08-31 16:19:06','2015-09-01 16:04:14','New Version 13',0,0,1,1,2,0,NULL),(157,14,'Phone','phone',NULL,'2015-08-31 16:19:06','2015-09-01 16:04:57','New Version 14',1,0,1,1,2,0,NULL),(158,1,'Location','location',NULL,'2015-08-31 16:19:06','2015-08-31 16:19:06','Initial Version',0,0,1,NULL,2,0,NULL),(158,2,'Location','location',NULL,'2015-08-31 16:19:06','2015-09-01 16:26:56','New Version 2',0,0,1,NULL,2,0,NULL),(158,3,'Location','location',NULL,'2015-08-31 16:19:06','2015-09-01 16:27:07','New Version 3',1,0,1,1,2,0,NULL),(159,1,'Email','email',NULL,'2015-08-31 16:19:06','2015-08-31 16:19:06','Initial Version',0,0,1,NULL,2,0,NULL),(159,2,'Email','email',NULL,'2015-08-31 16:19:06','2015-09-01 16:41:42','New Version 2',0,0,1,NULL,2,0,NULL),(159,3,'Email','email',NULL,'2015-08-31 16:19:06','2015-09-01 16:41:51','New Version 3',1,0,1,1,2,0,NULL),(160,1,'Copy Languages','copy',NULL,'2015-09-03 10:04:37','2015-09-03 10:04:37','Initial Version',1,0,1,NULL,2,0,NULL),(161,1,'Map','map',NULL,'2015-09-03 16:42:48','2015-09-03 16:42:48','Initial Version',0,0,1,NULL,2,0,NULL),(161,2,'Map','map',NULL,'2015-09-03 16:42:48','2015-09-03 16:45:03','New Version 2',0,0,1,1,2,0,NULL),(161,3,'Map','map',NULL,'2015-09-03 16:42:48','2015-09-03 16:49:58','New Version 3',1,0,1,1,2,0,NULL),(162,1,'Social','social',NULL,'2015-09-03 16:42:48','2015-09-03 16:42:48','Initial Version',0,0,1,NULL,2,0,NULL),(162,2,'Social','social',NULL,'2015-09-03 16:42:48','2015-09-03 16:43:13','New Version 2',0,0,1,1,2,0,NULL),(162,3,'Social','social',NULL,'2015-09-03 16:42:48','2015-09-03 16:51:00','New Version 3',1,0,1,1,2,0,NULL);
/*!40000 ALTER TABLE `CollectionVersions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Collections`
--

DROP TABLE IF EXISTS `Collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Collections` (
  `cID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cDateAdded` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `cDateModified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `cHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`cID`),
  KEY `cIDDateModified` (`cID`,`cDateModified`),
  KEY `cDateModified` (`cDateModified`),
  KEY `cDateAdded` (`cDateAdded`)
) ENGINE=InnoDB AUTO_INCREMENT=163 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Collections`
--

LOCK TABLES `Collections` WRITE;
/*!40000 ALTER TABLE `Collections` DISABLE KEYS */;
INSERT INTO `Collections` VALUES (1,'2015-06-11 08:51:40','2015-09-03 16:51:05','home'),(2,'2015-06-11 08:51:44','2015-06-11 08:51:44','dashboard'),(3,'2015-06-11 08:51:44','2015-06-11 08:51:44','sitemap'),(4,'2015-06-11 08:51:44','2015-06-11 08:51:44','full'),(5,'2015-06-11 08:51:44','2015-06-11 08:51:44','explore'),(6,'2015-06-11 08:51:44','2015-06-11 08:51:44','search'),(7,'2015-06-11 08:51:44','2015-06-11 08:51:44','files'),(8,'2015-06-11 08:51:44','2015-06-11 08:51:44','search'),(9,'2015-06-11 08:51:44','2015-06-11 08:51:44','attributes'),(10,'2015-06-11 08:51:44','2015-06-11 08:51:44','sets'),(11,'2015-06-11 08:51:44','2015-06-11 08:51:44','add_set'),(12,'2015-06-11 08:51:44','2015-06-11 08:51:44','users'),(13,'2015-06-11 08:51:44','2015-06-11 08:51:44','search'),(14,'2015-06-11 08:51:44','2015-06-11 08:51:44','groups'),(15,'2015-06-11 08:51:44','2015-06-11 08:51:44','attributes'),(16,'2015-06-11 08:51:44','2015-06-11 08:51:44','add'),(17,'2015-06-11 08:51:44','2015-06-11 08:51:44','add_group'),(18,'2015-06-11 08:51:44','2015-06-11 08:51:44','bulkupdate'),(19,'2015-06-11 08:51:44','2015-06-11 08:51:44','group_sets'),(20,'2015-06-11 08:51:44','2015-06-11 08:51:44','points'),(21,'2015-06-11 08:51:44','2015-06-11 08:51:44','assign'),(22,'2015-06-11 08:51:44','2015-06-11 08:51:44','actions'),(23,'2015-06-11 08:51:44','2015-06-11 08:51:44','reports'),(24,'2015-06-11 08:51:44','2015-06-11 08:51:44','forms'),(25,'2015-06-11 08:51:44','2015-06-11 08:51:44','surveys'),(26,'2015-06-11 08:51:44','2015-06-11 08:51:44','logs'),(27,'2015-06-11 08:51:44','2015-06-11 08:51:44','pages'),(28,'2015-06-11 08:51:44','2015-06-11 08:51:45','themes'),(29,'2015-06-11 08:51:45','2015-06-11 08:51:45','inspect'),(30,'2015-06-11 08:51:45','2015-06-11 08:51:45','types'),(31,'2015-06-11 08:51:45','2015-06-11 08:51:45','organize'),(32,'2015-06-11 08:51:45','2015-06-11 08:51:45','add'),(33,'2015-06-11 08:51:45','2015-06-11 08:51:45','form'),(34,'2015-06-11 08:51:45','2015-06-11 08:51:45','output'),(35,'2015-06-11 08:51:45','2015-06-11 08:51:45','attributes'),(36,'2015-06-11 08:51:45','2015-06-11 08:51:45','permissions'),(37,'2015-06-11 08:51:45','2015-06-11 08:51:45','templates'),(38,'2015-06-11 08:51:45','2015-06-11 08:51:45','add'),(39,'2015-06-11 08:51:45','2015-06-11 08:51:45','attributes'),(40,'2015-06-11 08:51:45','2015-06-11 08:51:45','single'),(41,'2015-06-11 08:51:45','2015-06-11 08:51:45','feeds'),(42,'2015-06-11 08:51:45','2015-06-11 08:51:45','conversations'),(43,'2015-06-11 08:51:45','2015-06-11 08:51:45','messages'),(44,'2015-06-11 08:51:45','2015-06-11 08:51:45','workflow'),(45,'2015-06-11 08:51:45','2015-06-11 08:51:45','workflows'),(46,'2015-06-11 08:51:45','2015-06-11 08:51:45','me'),(47,'2015-06-11 08:51:45','2015-06-11 08:51:45','blocks'),(48,'2015-06-11 08:51:45','2015-06-11 08:51:45','stacks'),(49,'2015-06-11 08:51:45','2015-06-11 08:51:45','permissions'),(50,'2015-06-11 08:51:45','2015-06-11 08:51:45','list'),(51,'2015-06-11 08:51:45','2015-06-11 08:51:45','types'),(52,'2015-06-11 08:51:45','2015-06-11 08:51:45','extend'),(53,'2015-06-11 08:51:45','2015-06-11 08:51:45','news'),(54,'2015-06-11 08:51:45','2015-06-11 08:51:45','install'),(55,'2015-06-11 08:51:45','2015-06-11 08:51:45','update'),(56,'2015-06-11 08:51:45','2015-06-11 08:51:45','connect'),(57,'2015-06-11 08:51:45','2015-06-11 08:51:45','themes'),(58,'2015-06-11 08:51:45','2015-06-11 08:51:45','addons'),(59,'2015-06-11 08:51:45','2015-06-11 08:51:45','system'),(60,'2015-06-11 08:51:45','2015-06-11 08:51:46','basics'),(61,'2015-06-11 08:51:46','2015-06-11 08:51:46','name'),(62,'2015-06-11 08:51:46','2015-06-11 08:51:46','accessibility'),(63,'2015-06-11 08:51:46','2015-06-11 08:51:46','social'),(64,'2015-06-11 08:51:46','2015-06-11 08:51:46','icons'),(65,'2015-06-11 08:51:46','2015-06-11 08:51:46','editor'),(66,'2015-06-11 08:51:46','2015-06-11 08:51:46','multilingual'),(67,'2015-06-11 08:51:46','2015-06-11 08:51:46','timezone'),(68,'2015-06-11 08:51:46','2015-06-11 08:51:46','multilingual'),(69,'2015-06-11 08:51:46','2015-06-11 08:51:46','setup'),(70,'2015-06-11 08:51:46','2015-06-11 08:51:46','page_report'),(71,'2015-06-11 08:51:46','2015-06-11 08:51:46','translate_interface'),(72,'2015-06-11 08:51:46','2015-06-11 08:51:46','seo'),(73,'2015-06-11 08:51:46','2015-06-11 08:51:46','urls'),(74,'2015-06-11 08:51:46','2015-06-11 08:51:46','bulk'),(75,'2015-06-11 08:51:46','2015-06-11 08:51:46','codes'),(76,'2015-06-11 08:51:46','2015-06-11 08:51:46','excluded'),(77,'2015-06-11 08:51:46','2015-06-11 08:51:46','searchindex'),(78,'2015-06-11 08:51:46','2015-06-11 08:51:46','files'),(79,'2015-06-11 08:51:46','2015-06-11 08:51:46','permissions'),(80,'2015-06-11 08:51:46','2015-06-11 08:51:46','filetypes'),(81,'2015-06-11 08:51:46','2015-06-11 08:51:46','thumbnails'),(82,'2015-06-11 08:51:46','2015-06-11 08:51:46','storage'),(83,'2015-06-11 08:51:46','2015-06-11 08:51:46','optimization'),(84,'2015-06-11 08:51:46','2015-06-11 08:51:46','cache'),(85,'2015-06-11 08:51:46','2015-06-11 08:51:46','clearcache'),(86,'2015-06-11 08:51:46','2015-06-11 08:51:46','jobs'),(87,'2015-06-11 08:51:46','2015-06-11 08:51:46','query_log'),(88,'2015-06-11 08:51:46','2015-06-11 08:51:46','permissions'),(89,'2015-06-11 08:51:46','2015-06-11 08:51:46','site'),(90,'2015-06-11 08:51:46','2015-06-11 08:51:46','tasks'),(91,'2015-06-11 08:51:46','2015-06-11 08:51:46','users'),(92,'2015-06-11 08:51:46','2015-06-11 08:51:47','advanced'),(93,'2015-06-11 08:51:47','2015-06-11 08:51:47','blacklist'),(94,'2015-06-11 08:51:47','2015-06-11 08:51:47','captcha'),(95,'2015-06-11 08:51:47','2015-06-11 08:51:47','antispam'),(96,'2015-06-11 08:51:47','2015-06-11 08:51:47','maintenance'),(97,'2015-06-11 08:51:47','2015-06-11 08:51:47','registration'),(98,'2015-06-11 08:51:47','2015-06-11 08:51:47','postlogin'),(99,'2015-06-11 08:51:47','2015-06-11 08:51:47','profiles'),(100,'2015-06-11 08:51:47','2015-06-11 08:51:47','open'),(101,'2015-06-11 08:51:47','2015-06-11 08:51:47','authentication'),(102,'2015-06-11 08:51:47','2015-06-11 08:51:47','mail'),(103,'2015-06-11 08:51:47','2015-06-11 08:51:47','method'),(104,'2015-06-11 08:51:47','2015-06-11 08:51:47','test'),(105,'2015-06-11 08:51:47','2015-06-11 08:51:47','importers'),(106,'2015-06-11 08:51:47','2015-06-11 08:51:47','conversations'),(107,'2015-06-11 08:51:47','2015-06-11 08:51:47','settings'),(108,'2015-06-11 08:51:47','2015-06-11 08:51:47','points'),(109,'2015-06-11 08:51:47','2015-06-11 08:51:47','bannedwords'),(110,'2015-06-11 08:51:47','2015-06-11 08:51:47','permissions'),(111,'2015-06-11 08:51:47','2015-06-11 08:51:47','attributes'),(112,'2015-06-11 08:51:47','2015-06-11 08:51:47','sets'),(113,'2015-06-11 08:51:47','2015-06-11 08:51:47','types'),(114,'2015-06-11 08:51:47','2015-06-11 08:51:47','topics'),(115,'2015-06-11 08:51:47','2015-06-11 08:51:47','add'),(116,'2015-06-11 08:51:47','2015-06-11 08:51:47','environment'),(117,'2015-06-11 08:51:47','2015-06-11 08:51:47','info'),(118,'2015-06-11 08:51:47','2015-06-11 08:51:47','debug'),(119,'2015-06-11 08:51:47','2015-06-11 08:51:47','logging'),(120,'2015-06-11 08:51:47','2015-06-11 08:51:47','proxy'),(121,'2015-06-11 08:51:47','2015-06-11 08:51:47','entities'),(122,'2015-06-11 08:51:47','2015-06-11 08:51:47','backup'),(123,'2015-06-11 08:51:47','2015-06-11 08:51:47','backup'),(124,'2015-06-11 08:51:47','2015-06-11 08:51:47','update'),(125,'2015-06-11 08:51:48','2015-06-11 08:51:48','welcome'),(126,'2015-06-11 08:51:48','2015-06-11 08:51:48','home'),(127,'2015-06-11 08:51:50','2015-06-11 08:51:50','!drafts'),(128,'2015-06-11 08:51:50','2015-06-11 08:51:50','!trash'),(129,'2015-06-11 08:51:50','2015-06-11 08:51:50','!stacks'),(130,'2015-06-11 08:51:50','2015-06-11 08:51:51','login'),(131,'2015-06-11 08:51:51','2015-06-11 08:51:51','register'),(132,'2015-06-11 08:51:51','2015-06-11 08:51:51','account'),(133,'2015-06-11 08:51:51','2015-06-11 08:51:51','edit_profile'),(134,'2015-06-11 08:51:51','2015-06-11 08:51:51','avatar'),(135,'2015-06-11 08:51:51','2015-06-11 08:51:51','messages'),(136,'2015-06-11 08:51:51','2015-06-11 08:51:51','inbox'),(137,'2015-06-11 08:51:51','2015-06-11 08:51:51','members'),(138,'2015-06-11 08:51:51','2015-06-11 08:51:51','profile'),(139,'2015-06-11 08:51:51','2015-06-11 08:51:51','directory'),(140,'2015-06-11 08:51:51','2015-06-11 08:51:51','page_not_found'),(141,'2015-06-11 08:51:51','2015-06-11 08:51:51','page_forbidden'),(142,'2015-06-11 08:51:51','2015-06-11 08:51:51','download_file'),(143,'2015-06-11 08:51:53','2015-06-11 08:51:53',NULL),(144,'2015-06-11 08:52:12','2015-06-11 08:52:12','header-site-title'),(145,'2015-06-11 08:52:12','2015-06-11 10:03:04','header-navigation'),(146,'2015-06-11 08:52:12','2015-06-11 08:52:12','footer-legal'),(147,'2015-06-11 08:52:12','2015-06-11 08:52:12','footer-navigation'),(148,'2015-06-11 08:52:12','2015-07-21 13:21:36','footer-contact'),(149,'2015-06-11 08:52:48','2015-08-31 16:06:49','connection'),(150,'2015-06-11 08:52:48','2015-06-11 08:52:48','footer-content'),(151,'2015-06-11 08:52:48','2015-07-09 12:29:41','footer-map'),(152,'2015-06-12 08:25:17','2015-06-12 08:26:03',''),(153,'2015-06-12 08:26:59','2015-07-08 21:05:55',''),(154,'2015-06-12 08:27:38','2015-06-12 08:27:55',''),(155,'2015-06-12 08:28:00','2015-06-12 08:28:32',''),(156,'2015-06-12 08:29:40','2015-07-08 20:57:36',''),(157,'2015-08-31 16:19:06','2015-09-01 16:29:15','phone'),(158,'2015-08-31 16:19:06','2015-09-01 16:27:09','location'),(159,'2015-08-31 16:19:06','2015-09-01 16:41:57','email'),(160,'2015-09-03 10:04:37','2015-09-03 10:04:37','copy'),(161,'2015-09-03 16:42:48','2015-09-03 16:50:00','map'),(162,'2015-09-03 16:42:48','2015-09-03 16:51:05','social');
/*!40000 ALTER TABLE `Collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Config`
--

DROP TABLE IF EXISTS `Config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Config` (
  `configNamespace` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `configGroup` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `configItem` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `configValue` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`configNamespace`,`configGroup`,`configItem`),
  KEY `configGroup` (`configGroup`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Config`
--

LOCK TABLES `Config` WRITE;
/*!40000 ALTER TABLE `Config` DISABLE KEYS */;
INSERT INTO `Config` VALUES ('','concrete','security.token.encryption','UlGUtzZlzhTckBlniaVEx5VHB9lnFsCRQ5xk7H7V067I6UOEeSpZ6z35mFoV2HyA'),('','concrete','security.token.jobs','rGL05loOBfaDLjNmOP7hqzgDKH2HWKwbR2Ws1S9fX4U03Jwr3fkBf7nuUm4rEFIq'),('','concrete','security.token.validation','PD7Nvjp6HNSZWmQ8NytoAYTVL2KxnWuut3c47nNW1fhE0tqwLJSIvBrtaojFQJK4'),('ec_recaptcha','captcha','language','auto'),('ec_recaptcha','captcha','secret_key','6LfdNQgTAAAAAFo_0ESeFz8BV8t9_1YFkcmbKjFH'),('ec_recaptcha','captcha','site_key','6LfdNQgTAAAAABGF6_FwrGzpDkahDHKNqbbPtN67'),('ec_recaptcha','captcha','theme','dark');
/*!40000 ALTER TABLE `Config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ConfigStore`
--

DROP TABLE IF EXISTS `ConfigStore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ConfigStore` (
  `cfKey` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `cfValue` longtext COLLATE utf8_unicode_ci,
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cfKey`,`uID`),
  KEY `uID` (`uID`,`cfKey`),
  KEY `pkgID` (`pkgID`,`cfKey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ConfigStore`
--

LOCK TABLES `ConfigStore` WRITE;
/*!40000 ALTER TABLE `ConfigStore` DISABLE KEYS */;
INSERT INTO `ConfigStore` VALUES ('FILE_LIST_DEFAULT_COLUMNS','2015-07-09 17:00:52','O:45:\"Concrete\\Core\\File\\Search\\ColumnSet\\ColumnSet\":3:{s:17:\"\0*\0attributeClass\";s:16:\"FileAttributeKey\";s:10:\"\0*\0columns\";a:6:{i:0;O:34:\"Concrete\\Core\\Search\\Column\\Column\":5:{s:9:\"columnKey\";s:9:\"fv.fvType\";s:10:\"columnName\";s:4:\"Type\";s:10:\"isSortable\";b:0;s:8:\"callback\";s:7:\"getType\";s:20:\"defaultSortDirection\";s:3:\"asc\";}i:1;O:34:\"Concrete\\Core\\Search\\Column\\Column\":5:{s:9:\"columnKey\";s:10:\"fv.fvTitle\";s:10:\"columnName\";s:5:\"Title\";s:10:\"isSortable\";b:1;s:8:\"callback\";s:8:\"getTitle\";s:20:\"defaultSortDirection\";s:3:\"asc\";}i:2;O:34:\"Concrete\\Core\\Search\\Column\\Column\":5:{s:9:\"columnKey\";s:12:\"f.fDateAdded\";s:10:\"columnName\";s:5:\"Added\";s:10:\"isSortable\";b:1;s:8:\"callback\";a:2:{i:0;s:47:\"\\Concrete\\Core\\File\\Search\\ColumnSet\\DefaultSet\";i:1;s:16:\"getFileDateAdded\";}s:20:\"defaultSortDirection\";s:4:\"desc\";}i:3;O:34:\"Concrete\\Core\\Search\\Column\\Column\":5:{s:9:\"columnKey\";s:14:\"fv.fvDateAdded\";s:10:\"columnName\";s:6:\"Active\";s:10:\"isSortable\";b:1;s:8:\"callback\";a:2:{i:0;s:47:\"\\Concrete\\Core\\File\\Search\\ColumnSet\\DefaultSet\";i:1;s:20:\"getFileDateActivated\";}s:20:\"defaultSortDirection\";s:3:\"asc\";}i:4;O:34:\"Concrete\\Core\\Search\\Column\\Column\":5:{s:9:\"columnKey\";s:9:\"fv.fvSize\";s:10:\"columnName\";s:4:\"Size\";s:10:\"isSortable\";b:1;s:8:\"callback\";s:7:\"getSize\";s:20:\"defaultSortDirection\";s:3:\"asc\";}i:5;O:46:\"Concrete\\Core\\Search\\Column\\AttributeKeyColumn\":6:{s:15:\"\0*\0attributeKey\";O:35:\"Concrete\\Core\\Attribute\\Key\\FileKey\":15:{s:29:\"\0*\0searchIndexFieldDefinition\";a:2:{s:7:\"columns\";a:1:{i:0;a:3:{s:4:\"name\";s:3:\"fID\";s:4:\"type\";s:7:\"integer\";s:7:\"options\";a:3:{s:8:\"unsigned\";b:1;s:7:\"default\";i:0;s:7:\"notnull\";b:1;}}}s:7:\"primary\";a:1:{i:0;s:3:\"fID\";}}s:5:\"error\";s:0:\"\";s:4:\"akID\";s:2:\"25\";s:8:\"akHandle\";s:7:\"service\";s:6:\"akName\";s:13:\"Document Date\";s:12:\"akCategoryID\";s:1:\"3\";s:12:\"akIsInternal\";s:1:\"0\";s:12:\"akIsEditable\";s:1:\"1\";s:14:\"akIsSearchable\";s:1:\"1\";s:21:\"akIsSearchableIndexed\";s:1:\"0\";s:15:\"akIsAutoCreated\";s:1:\"0\";s:16:\"akIsColumnHeader\";s:1:\"0\";s:4:\"atID\";s:1:\"4\";s:8:\"atHandle\";s:9:\"date_time\";s:5:\"pkgID\";s:1:\"0\";}s:9:\"columnKey\";s:10:\"ak_service\";s:10:\"columnName\";s:13:\"Document Date\";s:10:\"isSortable\";b:1;s:8:\"callback\";b:0;s:20:\"defaultSortDirection\";s:3:\"asc\";}}s:20:\"\0*\0defaultSortColumn\";r:16;}',1,0),('MAIN_HELP_LAST_VIEWED','2015-06-11 12:52:12','1434027132',1,0),('MAIN_HELP_LAST_VIEWED','2015-07-09 00:26:00','1436401560',3,0),('MAIN_HELP_LAST_VIEWED','2015-07-09 12:47:31','1436446051',4,0),('NEWSFLOW_LAST_VIEWED','2015-06-11 12:51:54','1441289032',1,0),('NEWSFLOW_LAST_VIEWED','2015-07-09 00:26:02','1436401562',3,0),('USER_LIST_DEFAULT_COLUMNS','2015-06-11 15:13:44','O:45:\"Concrete\\Core\\User\\Search\\ColumnSet\\ColumnSet\":3:{s:17:\"\0*\0attributeClass\";s:16:\"UserAttributeKey\";s:10:\"\0*\0columns\";a:5:{i:0;O:46:\"Concrete\\Core\\Search\\Column\\AttributeKeyColumn\":6:{s:15:\"\0*\0attributeKey\";O:35:\"Concrete\\Core\\Attribute\\Key\\UserKey\":23:{s:29:\"\0*\0searchIndexFieldDefinition\";a:2:{s:7:\"columns\";a:1:{i:0;a:3:{s:4:\"name\";s:3:\"uID\";s:4:\"type\";s:7:\"integer\";s:7:\"options\";a:3:{s:8:\"unsigned\";b:1;s:7:\"default\";i:0;s:7:\"notnull\";b:1;}}}s:7:\"primary\";a:1:{i:0;s:3:\"uID\";}}s:5:\"error\";s:0:\"\";s:4:\"akID\";s:2:\"18\";s:8:\"akHandle\";s:9:\"real_name\";s:6:\"akName\";s:4:\"Name\";s:12:\"akCategoryID\";s:1:\"2\";s:12:\"akIsInternal\";s:1:\"0\";s:12:\"akIsEditable\";s:1:\"1\";s:14:\"akIsSearchable\";s:1:\"1\";s:21:\"akIsSearchableIndexed\";s:1:\"1\";s:15:\"akIsAutoCreated\";s:1:\"0\";s:16:\"akIsColumnHeader\";s:1:\"0\";s:4:\"atID\";s:1:\"1\";s:8:\"atHandle\";s:4:\"text\";s:5:\"pkgID\";s:1:\"0\";s:17:\"uakProfileDisplay\";s:1:\"1\";s:20:\"uakMemberListDisplay\";s:1:\"1\";s:12:\"displayOrder\";s:1:\"0\";s:14:\"uakProfileEdit\";s:1:\"1\";s:22:\"uakProfileEditRequired\";s:1:\"1\";s:15:\"uakRegisterEdit\";s:1:\"1\";s:23:\"uakRegisterEditRequired\";s:1:\"1\";s:11:\"uakIsActive\";s:1:\"1\";}s:9:\"columnKey\";s:12:\"ak_real_name\";s:10:\"columnName\";s:4:\"Name\";s:10:\"isSortable\";b:1;s:8:\"callback\";b:0;s:20:\"defaultSortDirection\";s:3:\"asc\";}i:1;O:34:\"Concrete\\Core\\Search\\Column\\Column\":5:{s:9:\"columnKey\";s:7:\"u.uName\";s:10:\"columnName\";s:8:\"Username\";s:10:\"isSortable\";b:1;s:8:\"callback\";a:2:{i:0;s:46:\"Concrete\\Core\\User\\Search\\ColumnSet\\DefaultSet\";i:1;s:11:\"getUserName\";}s:20:\"defaultSortDirection\";s:3:\"asc\";}i:2;O:34:\"Concrete\\Core\\Search\\Column\\Column\":5:{s:9:\"columnKey\";s:8:\"u.uEmail\";s:10:\"columnName\";s:5:\"Email\";s:10:\"isSortable\";b:1;s:8:\"callback\";a:2:{i:0;s:46:\"Concrete\\Core\\User\\Search\\ColumnSet\\DefaultSet\";i:1;s:12:\"getUserEmail\";}s:20:\"defaultSortDirection\";s:3:\"asc\";}i:3;O:34:\"Concrete\\Core\\Search\\Column\\Column\":5:{s:9:\"columnKey\";s:12:\"u.uDateAdded\";s:10:\"columnName\";s:11:\"Signup Date\";s:10:\"isSortable\";b:1;s:8:\"callback\";a:2:{i:0;s:46:\"Concrete\\Core\\User\\Search\\ColumnSet\\DefaultSet\";i:1;s:16:\"getUserDateAdded\";}s:20:\"defaultSortDirection\";s:4:\"desc\";}i:4;O:34:\"Concrete\\Core\\Search\\Column\\Column\":5:{s:9:\"columnKey\";s:12:\"u.uNumLogins\";s:10:\"columnName\";s:8:\"# Logins\";s:10:\"isSortable\";b:1;s:8:\"callback\";s:12:\"getNumLogins\";s:20:\"defaultSortDirection\";s:3:\"asc\";}}s:20:\"\0*\0defaultSortColumn\";r:60;}',1,0);
/*!40000 ALTER TABLE `ConfigStore` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ConversationDiscussions`
--

DROP TABLE IF EXISTS `ConversationDiscussions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ConversationDiscussions` (
  `cnvDiscussionID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cnvDiscussionDateCreated` datetime NOT NULL,
  `cID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`cnvDiscussionID`),
  KEY `cID` (`cID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ConversationDiscussions`
--

LOCK TABLES `ConversationDiscussions` WRITE;
/*!40000 ALTER TABLE `ConversationDiscussions` DISABLE KEYS */;
/*!40000 ALTER TABLE `ConversationDiscussions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ConversationEditors`
--

DROP TABLE IF EXISTS `ConversationEditors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ConversationEditors` (
  `cnvEditorID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cnvEditorHandle` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cnvEditorName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cnvEditorIsActive` tinyint(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cnvEditorID`),
  KEY `pkgID` (`pkgID`,`cnvEditorHandle`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ConversationEditors`
--

LOCK TABLES `ConversationEditors` WRITE;
/*!40000 ALTER TABLE `ConversationEditors` DISABLE KEYS */;
INSERT INTO `ConversationEditors` VALUES (1,'plain_text','Plain Text',1,0),(2,'markdown','Markdown',0,0),(3,'redactor','Redactor',0,0);
/*!40000 ALTER TABLE `ConversationEditors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ConversationFeatureDetailAssignments`
--

DROP TABLE IF EXISTS `ConversationFeatureDetailAssignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ConversationFeatureDetailAssignments` (
  `faID` int(10) unsigned NOT NULL DEFAULT '0',
  `cnvID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`faID`),
  KEY `cnvID` (`cnvID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ConversationFeatureDetailAssignments`
--

LOCK TABLES `ConversationFeatureDetailAssignments` WRITE;
/*!40000 ALTER TABLE `ConversationFeatureDetailAssignments` DISABLE KEYS */;
/*!40000 ALTER TABLE `ConversationFeatureDetailAssignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ConversationFlaggedMessageTypes`
--

DROP TABLE IF EXISTS `ConversationFlaggedMessageTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ConversationFlaggedMessageTypes` (
  `cnvMessageFlagTypeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cnvMessageFlagTypeHandle` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`cnvMessageFlagTypeID`),
  UNIQUE KEY `cnvMessageFlagTypeHandle` (`cnvMessageFlagTypeHandle`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ConversationFlaggedMessageTypes`
--

LOCK TABLES `ConversationFlaggedMessageTypes` WRITE;
/*!40000 ALTER TABLE `ConversationFlaggedMessageTypes` DISABLE KEYS */;
INSERT INTO `ConversationFlaggedMessageTypes` VALUES (1,'spam');
/*!40000 ALTER TABLE `ConversationFlaggedMessageTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ConversationFlaggedMessages`
--

DROP TABLE IF EXISTS `ConversationFlaggedMessages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ConversationFlaggedMessages` (
  `cnvMessageID` int(10) unsigned NOT NULL,
  `cnvMessageFlagTypeID` int(11) DEFAULT NULL,
  PRIMARY KEY (`cnvMessageID`),
  KEY `cnvMessageFlagTypeID` (`cnvMessageFlagTypeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ConversationFlaggedMessages`
--

LOCK TABLES `ConversationFlaggedMessages` WRITE;
/*!40000 ALTER TABLE `ConversationFlaggedMessages` DISABLE KEYS */;
/*!40000 ALTER TABLE `ConversationFlaggedMessages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ConversationMessageAttachments`
--

DROP TABLE IF EXISTS `ConversationMessageAttachments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ConversationMessageAttachments` (
  `cnvMessageAttachmentID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cnvMessageID` int(11) DEFAULT NULL,
  `fID` int(11) DEFAULT NULL,
  PRIMARY KEY (`cnvMessageAttachmentID`),
  KEY `cnvMessageID` (`cnvMessageID`),
  KEY `fID` (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ConversationMessageAttachments`
--

LOCK TABLES `ConversationMessageAttachments` WRITE;
/*!40000 ALTER TABLE `ConversationMessageAttachments` DISABLE KEYS */;
/*!40000 ALTER TABLE `ConversationMessageAttachments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ConversationMessageRatings`
--

DROP TABLE IF EXISTS `ConversationMessageRatings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ConversationMessageRatings` (
  `cnvMessageRatingID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cnvMessageID` int(10) unsigned DEFAULT NULL,
  `cnvRatingTypeID` int(10) unsigned NOT NULL DEFAULT '0',
  `cnvMessageRatingIP` tinyblob,
  `timestamp` datetime DEFAULT NULL,
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cnvMessageRatingID`),
  KEY `cnvMessageID` (`cnvMessageID`,`cnvRatingTypeID`),
  KEY `cnvRatingTypeID` (`cnvRatingTypeID`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ConversationMessageRatings`
--

LOCK TABLES `ConversationMessageRatings` WRITE;
/*!40000 ALTER TABLE `ConversationMessageRatings` DISABLE KEYS */;
/*!40000 ALTER TABLE `ConversationMessageRatings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ConversationMessages`
--

DROP TABLE IF EXISTS `ConversationMessages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ConversationMessages` (
  `cnvMessageID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cnvID` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `cnvEditorID` int(10) unsigned NOT NULL DEFAULT '0',
  `cnvMessageAuthorName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cnvMessageAuthorEmail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cnvMessageAuthorWebsite` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cnvMessageSubmitIP` tinyblob,
  `cnvMessageSubmitUserAgent` longtext COLLATE utf8_unicode_ci,
  `cnvMessageLevel` int(10) unsigned NOT NULL DEFAULT '0',
  `cnvMessageParentID` int(10) unsigned NOT NULL DEFAULT '0',
  `cnvMessageDateCreated` datetime DEFAULT NULL,
  `cnvMessageSubject` text COLLATE utf8_unicode_ci,
  `cnvMessageBody` text COLLATE utf8_unicode_ci,
  `cnvIsMessageDeleted` tinyint(1) NOT NULL DEFAULT '0',
  `cnvIsMessageApproved` tinyint(1) NOT NULL DEFAULT '0',
  `cnvMessageTotalRatingScore` bigint(20) DEFAULT '0',
  PRIMARY KEY (`cnvMessageID`),
  KEY `cnvID` (`cnvID`),
  KEY `cnvMessageParentID` (`cnvMessageParentID`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ConversationMessages`
--

LOCK TABLES `ConversationMessages` WRITE;
/*!40000 ALTER TABLE `ConversationMessages` DISABLE KEYS */;
/*!40000 ALTER TABLE `ConversationMessages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ConversationPermissionAddMessageAccessList`
--

DROP TABLE IF EXISTS `ConversationPermissionAddMessageAccessList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ConversationPermissionAddMessageAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'A',
  PRIMARY KEY (`paID`,`peID`),
  KEY `peID` (`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ConversationPermissionAddMessageAccessList`
--

LOCK TABLES `ConversationPermissionAddMessageAccessList` WRITE;
/*!40000 ALTER TABLE `ConversationPermissionAddMessageAccessList` DISABLE KEYS */;
/*!40000 ALTER TABLE `ConversationPermissionAddMessageAccessList` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ConversationPermissionAssignments`
--

DROP TABLE IF EXISTS `ConversationPermissionAssignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ConversationPermissionAssignments` (
  `cnvID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cnvID`,`pkID`,`paID`),
  KEY `paID` (`paID`),
  KEY `pkID` (`pkID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ConversationPermissionAssignments`
--

LOCK TABLES `ConversationPermissionAssignments` WRITE;
/*!40000 ALTER TABLE `ConversationPermissionAssignments` DISABLE KEYS */;
INSERT INTO `ConversationPermissionAssignments` VALUES (0,66,89),(0,67,90),(0,70,91),(0,69,92),(0,71,93),(0,68,94),(0,72,95),(0,73,96);
/*!40000 ALTER TABLE `ConversationPermissionAssignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ConversationRatingTypes`
--

DROP TABLE IF EXISTS `ConversationRatingTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ConversationRatingTypes` (
  `cnvRatingTypeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cnvRatingTypeHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cnvRatingTypeName` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cnvRatingTypeCommunityPoints` int(11) DEFAULT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cnvRatingTypeID`),
  UNIQUE KEY `cnvRatingTypeHandle` (`cnvRatingTypeHandle`),
  KEY `pkgID` (`pkgID`,`cnvRatingTypeHandle`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ConversationRatingTypes`
--

LOCK TABLES `ConversationRatingTypes` WRITE;
/*!40000 ALTER TABLE `ConversationRatingTypes` DISABLE KEYS */;
INSERT INTO `ConversationRatingTypes` VALUES (1,'up_vote','Up Vote',1,0),(2,'down_vote','Down Vote',0,0);
/*!40000 ALTER TABLE `ConversationRatingTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ConversationSubscriptions`
--

DROP TABLE IF EXISTS `ConversationSubscriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ConversationSubscriptions` (
  `cnvID` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `type` varchar(1) COLLATE utf8_unicode_ci DEFAULT 'S',
  PRIMARY KEY (`cnvID`,`uID`),
  KEY `cnvID` (`cnvID`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ConversationSubscriptions`
--

LOCK TABLES `ConversationSubscriptions` WRITE;
/*!40000 ALTER TABLE `ConversationSubscriptions` DISABLE KEYS */;
INSERT INTO `ConversationSubscriptions` VALUES (0,1,'S');
/*!40000 ALTER TABLE `ConversationSubscriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Conversations`
--

DROP TABLE IF EXISTS `Conversations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Conversations` (
  `cnvID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cID` int(10) unsigned DEFAULT '0',
  `cnvDateCreated` datetime NOT NULL,
  `cnvDateLastMessage` datetime DEFAULT NULL,
  `cnvParentMessageID` int(10) unsigned DEFAULT '0',
  `cnvAttachmentsEnabled` tinyint(1) NOT NULL DEFAULT '1',
  `cnvMessagesTotal` int(10) unsigned DEFAULT '0',
  `cnvOverrideGlobalPermissions` tinyint(1) DEFAULT '0',
  `cnvAttachmentOverridesEnabled` tinyint(1) NOT NULL DEFAULT '0',
  `cnvMaxFilesGuest` int(11) DEFAULT '0',
  `cnvMaxFilesRegistered` int(11) DEFAULT '0',
  `cnvMaxFileSizeGuest` int(11) DEFAULT '0',
  `cnvMaxFileSizeRegistered` int(11) DEFAULT '0',
  `cnvFileExtensions` text COLLATE utf8_unicode_ci,
  `cnvNotificationOverridesEnabled` tinyint(1) NOT NULL DEFAULT '0',
  `cnvEnableSubscription` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`cnvID`),
  KEY `cID` (`cID`),
  KEY `cnvParentMessageID` (`cnvParentMessageID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Conversations`
--

LOCK TABLES `Conversations` WRITE;
/*!40000 ALTER TABLE `Conversations` DISABLE KEYS */;
/*!40000 ALTER TABLE `Conversations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DownloadStatistics`
--

DROP TABLE IF EXISTS `DownloadStatistics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DownloadStatistics` (
  `dsID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fID` int(10) unsigned NOT NULL,
  `fvID` int(10) unsigned NOT NULL,
  `uID` int(10) unsigned NOT NULL,
  `rcID` int(10) unsigned NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`dsID`),
  KEY `fID` (`fID`,`timestamp`),
  KEY `fvID` (`fID`,`fvID`),
  KEY `uID` (`uID`),
  KEY `rcID` (`rcID`),
  KEY `timestamp` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DownloadStatistics`
--

LOCK TABLES `DownloadStatistics` WRITE;
/*!40000 ALTER TABLE `DownloadStatistics` DISABLE KEYS */;
/*!40000 ALTER TABLE `DownloadStatistics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FeatureAssignments`
--

DROP TABLE IF EXISTS `FeatureAssignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FeatureAssignments` (
  `faID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `feID` int(10) unsigned DEFAULT NULL,
  `fcID` int(10) unsigned DEFAULT NULL,
  `fdObject` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`faID`),
  KEY `feID` (`feID`),
  KEY `fcID` (`fcID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FeatureAssignments`
--

LOCK TABLES `FeatureAssignments` WRITE;
/*!40000 ALTER TABLE `FeatureAssignments` DISABLE KEYS */;
/*!40000 ALTER TABLE `FeatureAssignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FeatureCategories`
--

DROP TABLE IF EXISTS `FeatureCategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FeatureCategories` (
  `fcID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fcHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`fcID`),
  UNIQUE KEY `fcHandle` (`fcHandle`),
  KEY `pkgID` (`pkgID`,`fcID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FeatureCategories`
--

LOCK TABLES `FeatureCategories` WRITE;
/*!40000 ALTER TABLE `FeatureCategories` DISABLE KEYS */;
INSERT INTO `FeatureCategories` VALUES (1,'collection_version',0),(2,'gathering_item',0);
/*!40000 ALTER TABLE `FeatureCategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Features`
--

DROP TABLE IF EXISTS `Features`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Features` (
  `feID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `feHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `feScore` int(11) NOT NULL DEFAULT '1',
  `feHasCustomClass` tinyint(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`feID`),
  UNIQUE KEY `feHandle` (`feHandle`),
  KEY `pkgID` (`pkgID`,`feID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Features`
--

LOCK TABLES `Features` WRITE;
/*!40000 ALTER TABLE `Features` DISABLE KEYS */;
INSERT INTO `Features` VALUES (1,'title',1,0,0),(2,'link',1,0,0),(3,'author',1,0,0),(4,'date_time',1,0,0),(5,'image',500,1,0),(6,'conversation',10,1,0),(7,'description',1,0,0),(8,'featured',1000,0,0);
/*!40000 ALTER TABLE `Features` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FileAttributeValues`
--

DROP TABLE IF EXISTS `FileAttributeValues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FileAttributeValues` (
  `fID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `avID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`fID`,`fvID`,`akID`),
  KEY `akID` (`akID`),
  KEY `avID` (`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FileAttributeValues`
--

LOCK TABLES `FileAttributeValues` WRITE;
/*!40000 ALTER TABLE `FileAttributeValues` DISABLE KEYS */;
INSERT INTO `FileAttributeValues` VALUES (1,1,14,113),(1,1,15,114),(2,1,14,115),(2,1,15,116),(3,1,14,127),(3,1,15,128),(4,1,14,137),(4,1,15,138),(6,1,25,142),(5,1,25,143),(7,1,25,144),(8,1,25,145),(7,2,25,146),(9,1,14,147),(9,1,15,148),(10,1,25,149),(11,1,25,150),(12,1,25,151);
/*!40000 ALTER TABLE `FileAttributeValues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FileImageThumbnailTypes`
--

DROP TABLE IF EXISTS `FileImageThumbnailTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FileImageThumbnailTypes` (
  `ftTypeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ftTypeHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ftTypeName` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ftTypeWidth` int(11) NOT NULL DEFAULT '0',
  `ftTypeHeight` int(11) DEFAULT NULL,
  `ftTypeIsRequired` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ftTypeID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FileImageThumbnailTypes`
--

LOCK TABLES `FileImageThumbnailTypes` WRITE;
/*!40000 ALTER TABLE `FileImageThumbnailTypes` DISABLE KEYS */;
INSERT INTO `FileImageThumbnailTypes` VALUES (1,'file_manager_listing','File Manager Thumbnails',60,60,1),(2,'file_manager_detail','File Manager Detail Thumbnails',400,NULL,1);
/*!40000 ALTER TABLE `FileImageThumbnailTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FilePermissionAssignments`
--

DROP TABLE IF EXISTS `FilePermissionAssignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FilePermissionAssignments` (
  `fID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fID`,`pkID`,`paID`),
  KEY `pkID` (`pkID`),
  KEY `paID` (`paID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FilePermissionAssignments`
--

LOCK TABLES `FilePermissionAssignments` WRITE;
/*!40000 ALTER TABLE `FilePermissionAssignments` DISABLE KEYS */;
/*!40000 ALTER TABLE `FilePermissionAssignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FilePermissionFileTypes`
--

DROP TABLE IF EXISTS `FilePermissionFileTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FilePermissionFileTypes` (
  `extension` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `fsID` int(10) unsigned NOT NULL DEFAULT '0',
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fsID`,`gID`,`uID`,`extension`),
  KEY `gID` (`gID`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FilePermissionFileTypes`
--

LOCK TABLES `FilePermissionFileTypes` WRITE;
/*!40000 ALTER TABLE `FilePermissionFileTypes` DISABLE KEYS */;
/*!40000 ALTER TABLE `FilePermissionFileTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FileSearchIndexAttributes`
--

DROP TABLE IF EXISTS `FileSearchIndexAttributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FileSearchIndexAttributes` (
  `fID` int(10) unsigned NOT NULL DEFAULT '0',
  `ak_width` decimal(14,4) DEFAULT '0.0000',
  `ak_height` decimal(14,4) DEFAULT '0.0000',
  `ak_duration` decimal(14,4) DEFAULT '0.0000',
  `ak_service` datetime DEFAULT NULL,
  PRIMARY KEY (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FileSearchIndexAttributes`
--

LOCK TABLES `FileSearchIndexAttributes` WRITE;
/*!40000 ALTER TABLE `FileSearchIndexAttributes` DISABLE KEYS */;
INSERT INTO `FileSearchIndexAttributes` VALUES (1,1935.0000,1452.0000,0.0000,NULL),(2,1600.0000,817.0000,0.0000,NULL),(3,239.0000,288.0000,0.0000,NULL),(4,2448.0000,3264.0000,0.0000,NULL),(5,0.0000,0.0000,0.0000,'2015-06-14 00:00:00'),(6,0.0000,0.0000,0.0000,'2015-05-31 00:00:00'),(7,0.0000,0.0000,0.0000,'2015-06-07 00:00:00'),(8,0.0000,0.0000,0.0000,'2015-06-21 00:00:00'),(9,26.0000,26.0000,0.0000,NULL),(10,0.0000,0.0000,0.0000,'2015-07-12 00:00:00'),(11,0.0000,0.0000,0.0000,'2015-07-05 00:00:00'),(12,0.0000,0.0000,0.0000,'2015-06-28 00:00:00');
/*!40000 ALTER TABLE `FileSearchIndexAttributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FileSetFiles`
--

DROP TABLE IF EXISTS `FileSetFiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FileSetFiles` (
  `fsfID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fID` int(10) unsigned NOT NULL,
  `fsID` int(10) unsigned NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fsDisplayOrder` int(10) unsigned NOT NULL,
  PRIMARY KEY (`fsfID`),
  KEY `fID` (`fID`),
  KEY `fsID` (`fsID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FileSetFiles`
--

LOCK TABLES `FileSetFiles` WRITE;
/*!40000 ALTER TABLE `FileSetFiles` DISABLE KEYS */;
INSERT INTO `FileSetFiles` VALUES (1,4,1,'2015-06-11 18:44:54',0),(2,5,2,'2015-06-12 14:02:37',0),(5,6,2,'2015-06-12 14:02:53',1),(8,7,2,'2015-06-18 14:25:06',2),(9,8,2,'2015-06-18 14:25:06',3),(14,10,2,'2015-07-09 16:58:53',4),(17,11,2,'2015-07-09 17:00:00',5),(20,12,2,'2015-07-09 17:01:34',6);
/*!40000 ALTER TABLE `FileSetFiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FileSetPermissionAssignments`
--

DROP TABLE IF EXISTS `FileSetPermissionAssignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FileSetPermissionAssignments` (
  `fsID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fsID`,`pkID`,`paID`),
  KEY `paID` (`paID`),
  KEY `pkID` (`pkID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FileSetPermissionAssignments`
--

LOCK TABLES `FileSetPermissionAssignments` WRITE;
/*!40000 ALTER TABLE `FileSetPermissionAssignments` DISABLE KEYS */;
INSERT INTO `FileSetPermissionAssignments` VALUES (0,39,32),(0,40,107),(0,41,107),(0,42,107),(0,43,107),(0,46,107),(0,47,107),(0,44,108),(0,45,108);
/*!40000 ALTER TABLE `FileSetPermissionAssignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FileSetPermissionFileTypeAccessList`
--

DROP TABLE IF EXISTS `FileSetPermissionFileTypeAccessList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FileSetPermissionFileTypeAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`),
  KEY `peID` (`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FileSetPermissionFileTypeAccessList`
--

LOCK TABLES `FileSetPermissionFileTypeAccessList` WRITE;
/*!40000 ALTER TABLE `FileSetPermissionFileTypeAccessList` DISABLE KEYS */;
/*!40000 ALTER TABLE `FileSetPermissionFileTypeAccessList` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FileSetPermissionFileTypeAccessListCustom`
--

DROP TABLE IF EXISTS `FileSetPermissionFileTypeAccessListCustom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FileSetPermissionFileTypeAccessListCustom` (
  `extension` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`extension`),
  KEY `peID` (`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FileSetPermissionFileTypeAccessListCustom`
--

LOCK TABLES `FileSetPermissionFileTypeAccessListCustom` WRITE;
/*!40000 ALTER TABLE `FileSetPermissionFileTypeAccessListCustom` DISABLE KEYS */;
/*!40000 ALTER TABLE `FileSetPermissionFileTypeAccessListCustom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FileSetSavedSearches`
--

DROP TABLE IF EXISTS `FileSetSavedSearches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FileSetSavedSearches` (
  `fsID` int(10) unsigned NOT NULL DEFAULT '0',
  `fsSearchRequest` text COLLATE utf8_unicode_ci,
  `fsResultColumns` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`fsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FileSetSavedSearches`
--

LOCK TABLES `FileSetSavedSearches` WRITE;
/*!40000 ALTER TABLE `FileSetSavedSearches` DISABLE KEYS */;
/*!40000 ALTER TABLE `FileSetSavedSearches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FileSets`
--

DROP TABLE IF EXISTS `FileSets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FileSets` (
  `fsID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fsName` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `fsType` smallint(6) NOT NULL,
  `fsOverrideGlobalPermissions` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`fsID`),
  KEY `uID` (`uID`,`fsType`,`fsName`),
  KEY `fsName` (`fsName`),
  KEY `fsType` (`fsType`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FileSets`
--

LOCK TABLES `FileSets` WRITE;
/*!40000 ALTER TABLE `FileSets` DISABLE KEYS */;
INSERT INTO `FileSets` VALUES (1,'Staff Photos',1,0,0),(2,'Bulletins',0,1,0),(3,'Newsletters',0,1,0);
/*!40000 ALTER TABLE `FileSets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FileStorageLocationTypes`
--

DROP TABLE IF EXISTS `FileStorageLocationTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FileStorageLocationTypes` (
  `fslTypeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fslTypeHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fslTypeName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fslTypeID`),
  UNIQUE KEY `fslTypeHandle` (`fslTypeHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FileStorageLocationTypes`
--

LOCK TABLES `FileStorageLocationTypes` WRITE;
/*!40000 ALTER TABLE `FileStorageLocationTypes` DISABLE KEYS */;
INSERT INTO `FileStorageLocationTypes` VALUES (1,'default','Default',0),(2,'local','Local',0);
/*!40000 ALTER TABLE `FileStorageLocationTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FileStorageLocations`
--

DROP TABLE IF EXISTS `FileStorageLocations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FileStorageLocations` (
  `fslID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fslName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fslConfiguration` longtext COLLATE utf8_unicode_ci NOT NULL,
  `fslIsDefault` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`fslID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FileStorageLocations`
--

LOCK TABLES `FileStorageLocations` WRITE;
/*!40000 ALTER TABLE `FileStorageLocations` DISABLE KEYS */;
INSERT INTO `FileStorageLocations` VALUES (1,'Default','O:69:\"Concrete\\Core\\File\\StorageLocation\\Configuration\\DefaultConfiguration\":1:{s:10:\"\0*\0default\";b:1;}',1);
/*!40000 ALTER TABLE `FileStorageLocations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FileVersionLog`
--

DROP TABLE IF EXISTS `FileVersionLog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FileVersionLog` (
  `fvlID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvUpdateTypeID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `fvUpdateTypeAttributeID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fvlID`),
  KEY `fvID` (`fID`,`fvID`,`fvlID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FileVersionLog`
--

LOCK TABLES `FileVersionLog` WRITE;
/*!40000 ALTER TABLE `FileVersionLog` DISABLE KEYS */;
INSERT INTO `FileVersionLog` VALUES (1,1,1,5,14),(2,1,1,5,15),(3,2,1,5,14),(4,2,1,5,15),(5,3,1,5,14),(6,3,1,5,15),(7,4,1,5,14),(8,4,1,5,15),(9,6,1,5,25),(10,5,1,5,25),(11,7,1,5,25),(12,8,1,5,25),(13,8,1,5,25),(14,8,1,5,25),(15,7,2,5,25),(16,9,1,5,14),(17,9,1,5,15),(18,10,1,5,25),(19,11,1,5,25),(20,12,1,5,25);
/*!40000 ALTER TABLE `FileVersionLog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FileVersions`
--

DROP TABLE IF EXISTS `FileVersions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FileVersions` (
  `fID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvFilename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fvPrefix` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fvGenericType` smallint(5) unsigned NOT NULL DEFAULT '0',
  `fvSize` int(10) unsigned NOT NULL DEFAULT '0',
  `fvTitle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fvDescription` text COLLATE utf8_unicode_ci,
  `fvTags` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fvIsApproved` int(10) unsigned NOT NULL DEFAULT '1',
  `fvDateAdded` datetime DEFAULT NULL,
  `fvApproverUID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvAuthorUID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvActivateDatetime` datetime DEFAULT NULL,
  `fvHasListingThumbnail` tinyint(1) NOT NULL DEFAULT '0',
  `fvHasDetailThumbnail` tinyint(1) NOT NULL DEFAULT '0',
  `fvExtension` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fvType` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fID`,`fvID`),
  KEY `fvExtension` (`fvExtension`),
  KEY `fvType` (`fvType`),
  KEY `fvFilename` (`fvFilename`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FileVersions`
--

LOCK TABLES `FileVersions` WRITE;
/*!40000 ALTER TABLE `FileVersions` DISABLE KEYS */;
INSERT INTO `FileVersions` VALUES (1,1,'clear-creek-park-107925.jpg','801434031424',0,2405561,'clear-creek-park-107925.jpg','','',1,'2015-06-11 10:03:44',1,1,'2015-06-11 10:03:44',1,1,'jpg',1),(2,1,'unnamed.png','231434031443',0,414987,'unnamed.png','','',1,'2015-06-11 10:04:03',1,1,'2015-06-11 10:04:03',1,1,'png',1),(3,1,'matt.png','881434045445',0,157304,'matt.png','','',1,'2015-06-11 13:57:25',1,1,'2015-06-11 13:57:25',1,0,'png',1),(4,1,'chris.JPG','151434048272',0,3972507,'chris.JPG','','',1,'2015-06-11 14:44:32',1,1,'2015-06-11 14:44:32',1,1,'JPG',1),(5,1,'bulletin_6-14-15.pdf','291434117736',0,1161554,'bulletin 6-14-15.pdf','','',1,'2015-06-12 10:02:16',1,1,'2015-06-12 10:02:16',0,0,'pdf',5),(6,1,'bulletin_5-31-15.pdf','421434117767',0,1403268,'bulletin 5-31-15.pdf','','',1,'2015-06-12 10:02:48',1,1,'2015-06-12 10:02:48',0,0,'pdf',5),(7,1,'bulletin_6-7-15.pdf','901434637499',0,1315407,'bulletin 6-7-15.pdf','','',0,'2015-06-18 10:24:59',1,1,'2015-06-18 10:24:59',0,0,'pdf',5),(7,2,'bulletin_6-7-15.pdf','901434637499',0,1315407,'bulletin 6-7-15.pdf','','',1,'2015-06-18 10:32:42',1,1,'2015-06-18 10:24:59',0,0,'pdf',5),(8,1,'bulletin_6-21-15.pdf','381434637499',0,1178899,'bulletin 6-21-15.pdf','','',1,'2015-06-18 10:24:59',1,1,'2015-06-18 10:24:59',0,0,'pdf',5),(9,1,'church.png','901436459211',0,1205,'church.png','','',1,'2015-07-09 12:26:51',1,1,'2015-07-09 12:26:51',0,0,'png',1),(10,1,'bulletin_7-12-15.pdf','581436461122',0,1214806,'bulletin 7-12-15.pdf','','',1,'2015-07-09 12:58:42',1,1,'2015-07-09 12:58:42',0,0,'pdf',5),(11,1,'bulletin_7-5-15.pdf','981436461195',0,1334534,'bulletin 7-5-15.pdf','','',1,'2015-07-09 12:59:55',1,1,'2015-07-09 12:59:55',0,0,'pdf',5),(12,1,'bulletin_6-28-15.pdf','451436461216',0,1165715,'bulletin 6-28-15.pdf','','',1,'2015-07-09 13:00:16',1,1,'2015-07-09 13:00:16',0,0,'pdf',5);
/*!40000 ALTER TABLE `FileVersions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Files`
--

DROP TABLE IF EXISTS `Files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Files` (
  `fID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fDateAdded` datetime DEFAULT NULL,
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `fslID` int(10) unsigned NOT NULL DEFAULT '0',
  `ocID` int(10) unsigned NOT NULL DEFAULT '0',
  `fOverrideSetPermissions` tinyint(1) NOT NULL DEFAULT '0',
  `fPassword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`fID`,`uID`,`fslID`),
  KEY `uID` (`uID`),
  KEY `fslID` (`fslID`),
  KEY `ocID` (`ocID`),
  KEY `fOverrideSetPermissions` (`fOverrideSetPermissions`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Files`
--

LOCK TABLES `Files` WRITE;
/*!40000 ALTER TABLE `Files` DISABLE KEYS */;
INSERT INTO `Files` VALUES (1,'2015-06-11 10:03:44',1,1,0,0,NULL),(2,'2015-06-11 10:04:03',1,1,0,0,NULL),(3,'2015-06-11 13:57:25',1,1,0,0,NULL),(4,'2015-06-11 14:44:32',1,1,0,0,NULL),(5,'2015-06-12 10:02:16',1,1,0,0,NULL),(6,'2015-06-12 10:02:48',1,1,0,0,NULL),(7,'2015-06-18 10:24:59',1,1,0,0,NULL),(8,'2015-06-18 10:24:59',1,1,0,0,NULL),(9,'2015-07-09 12:26:51',1,1,0,0,NULL),(10,'2015-07-09 12:58:42',1,1,0,0,NULL),(11,'2015-07-09 12:59:55',1,1,0,0,NULL),(12,'2015-07-09 13:00:16',1,1,0,0,NULL);
/*!40000 ALTER TABLE `Files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GatheringConfiguredDataSources`
--

DROP TABLE IF EXISTS `GatheringConfiguredDataSources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GatheringConfiguredDataSources` (
  `gcsID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gaID` int(10) unsigned DEFAULT NULL,
  `gasID` int(10) unsigned DEFAULT NULL,
  `gcdObject` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`gcsID`),
  KEY `gaID` (`gaID`),
  KEY `gasID` (`gasID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GatheringConfiguredDataSources`
--

LOCK TABLES `GatheringConfiguredDataSources` WRITE;
/*!40000 ALTER TABLE `GatheringConfiguredDataSources` DISABLE KEYS */;
/*!40000 ALTER TABLE `GatheringConfiguredDataSources` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GatheringDataSources`
--

DROP TABLE IF EXISTS `GatheringDataSources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GatheringDataSources` (
  `gasID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gasName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gasHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `gasDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`gasID`),
  UNIQUE KEY `gasHandle` (`gasHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GatheringDataSources`
--

LOCK TABLES `GatheringDataSources` WRITE;
/*!40000 ALTER TABLE `GatheringDataSources` DISABLE KEYS */;
INSERT INTO `GatheringDataSources` VALUES (1,'Site Page','page',0,0),(2,'RSS Feed','rss_feed',0,1),(3,'Flickr Feed','flickr_feed',0,2),(4,'Twitter','twitter',0,3);
/*!40000 ALTER TABLE `GatheringDataSources` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GatheringItemFeatureAssignments`
--

DROP TABLE IF EXISTS `GatheringItemFeatureAssignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GatheringItemFeatureAssignments` (
  `gafaID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gaiID` int(10) unsigned DEFAULT NULL,
  `faID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`gafaID`),
  KEY `gaiID` (`gaiID`,`faID`),
  KEY `faID` (`faID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GatheringItemFeatureAssignments`
--

LOCK TABLES `GatheringItemFeatureAssignments` WRITE;
/*!40000 ALTER TABLE `GatheringItemFeatureAssignments` DISABLE KEYS */;
/*!40000 ALTER TABLE `GatheringItemFeatureAssignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GatheringItemSelectedTemplates`
--

DROP TABLE IF EXISTS `GatheringItemSelectedTemplates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GatheringItemSelectedTemplates` (
  `gaiID` int(10) unsigned NOT NULL DEFAULT '0',
  `gatID` int(10) unsigned NOT NULL DEFAULT '0',
  `gatTypeID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`gaiID`,`gatID`),
  UNIQUE KEY `gatUniqueKey` (`gaiID`,`gatTypeID`),
  KEY `gatTypeID` (`gatTypeID`),
  KEY `gatID` (`gatID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GatheringItemSelectedTemplates`
--

LOCK TABLES `GatheringItemSelectedTemplates` WRITE;
/*!40000 ALTER TABLE `GatheringItemSelectedTemplates` DISABLE KEYS */;
/*!40000 ALTER TABLE `GatheringItemSelectedTemplates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GatheringItemTemplateFeatures`
--

DROP TABLE IF EXISTS `GatheringItemTemplateFeatures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GatheringItemTemplateFeatures` (
  `gfeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gatID` int(10) unsigned DEFAULT NULL,
  `feID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`gfeID`),
  KEY `gatID` (`gatID`),
  KEY `feID` (`feID`,`gatID`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GatheringItemTemplateFeatures`
--

LOCK TABLES `GatheringItemTemplateFeatures` WRITE;
/*!40000 ALTER TABLE `GatheringItemTemplateFeatures` DISABLE KEYS */;
INSERT INTO `GatheringItemTemplateFeatures` VALUES (4,1,1),(10,2,1),(13,3,1),(16,4,1),(19,5,1),(23,7,1),(29,11,1),(33,12,1),(37,13,1),(42,14,1),(47,15,1),(53,17,1),(56,18,1),(63,21,1),(64,22,1),(3,1,2),(9,2,2),(12,3,2),(15,4,2),(18,5,2),(21,6,2),(25,8,2),(27,9,2),(41,13,3),(46,14,3),(51,16,3),(55,17,3),(62,20,3),(66,22,3),(2,1,4),(8,2,4),(14,4,4),(17,5,4),(31,11,4),(35,12,4),(39,13,4),(44,14,4),(61,20,4),(5,1,5),(22,6,5),(24,8,5),(26,9,5),(28,10,5),(32,11,5),(36,12,5),(40,13,5),(45,14,5),(49,15,5),(50,16,5),(59,19,5),(65,22,5),(20,5,6),(1,1,7),(7,2,7),(11,3,7),(30,11,7),(34,12,7),(38,13,7),(43,14,7),(48,15,7),(52,16,7),(54,17,7),(57,18,7),(58,19,7),(60,20,7),(6,1,8);
/*!40000 ALTER TABLE `GatheringItemTemplateFeatures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GatheringItemTemplateTypes`
--

DROP TABLE IF EXISTS `GatheringItemTemplateTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GatheringItemTemplateTypes` (
  `gatTypeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gatTypeHandle` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`gatTypeID`),
  UNIQUE KEY `gatTypeHandle` (`gatTypeHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GatheringItemTemplateTypes`
--

LOCK TABLES `GatheringItemTemplateTypes` WRITE;
/*!40000 ALTER TABLE `GatheringItemTemplateTypes` DISABLE KEYS */;
INSERT INTO `GatheringItemTemplateTypes` VALUES (1,'tile',0),(2,'detail',0);
/*!40000 ALTER TABLE `GatheringItemTemplateTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GatheringItemTemplates`
--

DROP TABLE IF EXISTS `GatheringItemTemplates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GatheringItemTemplates` (
  `gatID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gatHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gatName` text COLLATE utf8_unicode_ci,
  `gatHasCustomClass` tinyint(1) NOT NULL DEFAULT '0',
  `gatFixedSlotWidth` int(10) unsigned DEFAULT '0',
  `gatFixedSlotHeight` int(10) unsigned DEFAULT '0',
  `gatForceDefault` int(10) unsigned DEFAULT '0',
  `pkgID` int(10) unsigned DEFAULT NULL,
  `gatTypeID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`gatID`),
  UNIQUE KEY `gatHandle` (`gatHandle`,`gatTypeID`),
  KEY `gatTypeID` (`gatTypeID`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GatheringItemTemplates`
--

LOCK TABLES `GatheringItemTemplates` WRITE;
/*!40000 ALTER TABLE `GatheringItemTemplates` DISABLE KEYS */;
INSERT INTO `GatheringItemTemplates` VALUES (1,'featured','Featured Item',0,6,2,1,0,1),(2,'title_date_description','Title Date & Description',0,0,0,0,0,1),(3,'title_description','Title & Description',0,0,0,0,0,1),(4,'title_date','Title & Date',0,0,0,0,0,1),(5,'title_date_comments','Title, Date & Comments',1,0,0,0,0,1),(6,'thumbnail','Thumbnail',0,0,0,0,0,1),(7,'basic','Basic',0,0,0,0,0,2),(8,'image_sharing_link','Image Sharing Link',0,0,0,0,0,2),(9,'image_conversation','Image Conversation',0,0,0,0,0,2),(10,'image','Large Image',0,0,0,0,0,2),(11,'masthead_image_left','Masthead Image Left',0,0,0,0,0,1),(12,'masthead_image_right','Masthead Image Right',0,0,0,0,0,1),(13,'masthead_image_byline_right','Masthead Image Byline Right',0,0,0,0,0,1),(14,'masthead_image_byline_left','Masthead Image Byline Left',0,0,0,0,0,1),(15,'image_masthead_description_center','Image Masthead Description Center',0,0,0,0,0,1),(16,'image_byline_description_center','Image Byline Description Center',0,0,0,0,0,1),(17,'masthead_byline_description','Masthead Byline Description',0,0,0,0,0,1),(18,'masthead_description','Masthead Description',0,0,0,0,0,1),(19,'thumbnail_description_center','Thumbnail & Description Center',0,0,0,0,0,1),(20,'tweet','Tweet',0,0,0,0,0,1),(21,'vimeo','Vimeo',0,0,0,0,0,1),(22,'image_overlay_headline','Image Overlay Headline',0,0,0,0,0,1);
/*!40000 ALTER TABLE `GatheringItemTemplates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GatheringItems`
--

DROP TABLE IF EXISTS `GatheringItems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GatheringItems` (
  `gaiID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gaID` int(10) unsigned DEFAULT NULL,
  `gasID` int(10) unsigned DEFAULT NULL,
  `gaiDateTimeCreated` datetime NOT NULL,
  `gaiPublicDateTime` datetime NOT NULL,
  `gaiTitle` text COLLATE utf8_unicode_ci,
  `gaiSlotWidth` int(10) unsigned DEFAULT '1',
  `gaiSlotHeight` int(10) unsigned DEFAULT '1',
  `gaiKey` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gaiBatchDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  `gaiBatchTimestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `gaiIsDeleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`gaiID`),
  UNIQUE KEY `gaiUniqueKey` (`gaiKey`,`gasID`,`gaID`),
  KEY `gaID` (`gaID`,`gaiBatchTimestamp`),
  KEY `gasID` (`gasID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GatheringItems`
--

LOCK TABLES `GatheringItems` WRITE;
/*!40000 ALTER TABLE `GatheringItems` DISABLE KEYS */;
/*!40000 ALTER TABLE `GatheringItems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GatheringPermissionAssignments`
--

DROP TABLE IF EXISTS `GatheringPermissionAssignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GatheringPermissionAssignments` (
  `gaID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`gaID`,`pkID`,`paID`),
  KEY `pkID` (`pkID`),
  KEY `paID` (`paID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GatheringPermissionAssignments`
--

LOCK TABLES `GatheringPermissionAssignments` WRITE;
/*!40000 ALTER TABLE `GatheringPermissionAssignments` DISABLE KEYS */;
/*!40000 ALTER TABLE `GatheringPermissionAssignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Gatherings`
--

DROP TABLE IF EXISTS `Gatherings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Gatherings` (
  `gaID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gaDateCreated` datetime NOT NULL,
  `gaDateLastUpdated` datetime NOT NULL,
  PRIMARY KEY (`gaID`),
  KEY `gaDateLastUpdated` (`gaDateLastUpdated`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Gatherings`
--

LOCK TABLES `Gatherings` WRITE;
/*!40000 ALTER TABLE `Gatherings` DISABLE KEYS */;
/*!40000 ALTER TABLE `Gatherings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GroupSetGroups`
--

DROP TABLE IF EXISTS `GroupSetGroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GroupSetGroups` (
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  `gsID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`gID`,`gsID`),
  KEY `gsID` (`gsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GroupSetGroups`
--

LOCK TABLES `GroupSetGroups` WRITE;
/*!40000 ALTER TABLE `GroupSetGroups` DISABLE KEYS */;
INSERT INTO `GroupSetGroups` VALUES (3,1),(6,1),(7,1);
/*!40000 ALTER TABLE `GroupSetGroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GroupSets`
--

DROP TABLE IF EXISTS `GroupSets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GroupSets` (
  `gsID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gsName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`gsID`),
  KEY `gsName` (`gsName`),
  KEY `pkgID` (`pkgID`,`gsID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GroupSets`
--

LOCK TABLES `GroupSets` WRITE;
/*!40000 ALTER TABLE `GroupSets` DISABLE KEYS */;
INSERT INTO `GroupSets` VALUES (1,'Admins',0);
/*!40000 ALTER TABLE `GroupSets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Groups`
--

DROP TABLE IF EXISTS `Groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Groups` (
  `gID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gName` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `gDescription` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gUserExpirationIsEnabled` tinyint(1) NOT NULL DEFAULT '0',
  `gUserExpirationMethod` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gUserExpirationSetDateTime` datetime DEFAULT NULL,
  `gUserExpirationInterval` int(10) unsigned NOT NULL DEFAULT '0',
  `gUserExpirationAction` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gIsBadge` tinyint(1) NOT NULL DEFAULT '0',
  `gBadgeFID` int(10) unsigned NOT NULL DEFAULT '0',
  `gBadgeDescription` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gBadgeCommunityPointValue` int(11) NOT NULL DEFAULT '0',
  `gIsAutomated` tinyint(1) NOT NULL DEFAULT '0',
  `gCheckAutomationOnRegister` tinyint(1) NOT NULL DEFAULT '0',
  `gCheckAutomationOnLogin` tinyint(1) NOT NULL DEFAULT '0',
  `gCheckAutomationOnJobRun` tinyint(1) NOT NULL DEFAULT '0',
  `gPath` text COLLATE utf8_unicode_ci,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`gID`),
  KEY `gName` (`gName`),
  KEY `gBadgeFID` (`gBadgeFID`),
  KEY `pkgID` (`pkgID`),
  KEY `gPath` (`gPath`(255))
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Groups`
--

LOCK TABLES `Groups` WRITE;
/*!40000 ALTER TABLE `Groups` DISABLE KEYS */;
INSERT INTO `Groups` VALUES (1,'Guest','The guest group represents unregistered visitors to your site.',0,NULL,NULL,0,NULL,0,0,NULL,0,0,0,0,0,'/Guest',0),(2,'Registered Users','The registered users group represents all user accounts.',0,NULL,NULL,0,NULL,0,0,NULL,0,0,0,0,0,'/Registered Users',0),(3,'Administrators','',0,NULL,NULL,0,NULL,0,0,NULL,0,0,0,0,0,'/Administrators',0),(4,'Website','',0,NULL,NULL,0,NULL,0,0,NULL,0,0,0,0,0,'/Website',0),(5,'Church','',0,NULL,NULL,0,NULL,0,0,NULL,0,0,0,0,0,'/Church',0),(6,'Employee','Church employees',0,NULL,NULL,0,NULL,0,0,NULL,0,0,0,0,0,'/Church/Employee',0),(7,'Admin','website admin',0,NULL,NULL,0,NULL,0,0,NULL,0,0,0,0,0,'/Website/Admin',0),(8,'Editor','',0,NULL,NULL,0,NULL,0,0,NULL,0,0,0,0,0,'/Website/Editor',0),(9,'Member','',0,NULL,NULL,0,NULL,0,0,NULL,0,0,0,0,0,'/Church/Member',0),(10,'Volunteer','',0,NULL,NULL,0,NULL,0,0,NULL,0,0,0,0,0,'/Church/Volunteer',0),(11,'Files','',0,NULL,NULL,0,NULL,0,0,NULL,0,0,0,0,0,'/Website/Files',0);
/*!40000 ALTER TABLE `Groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `JobSetJobs`
--

DROP TABLE IF EXISTS `JobSetJobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `JobSetJobs` (
  `jsID` int(10) unsigned NOT NULL DEFAULT '0',
  `jID` int(10) unsigned NOT NULL DEFAULT '0',
  `jRunOrder` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`jsID`,`jID`),
  KEY `jID` (`jID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `JobSetJobs`
--

LOCK TABLES `JobSetJobs` WRITE;
/*!40000 ALTER TABLE `JobSetJobs` DISABLE KEYS */;
INSERT INTO `JobSetJobs` VALUES (1,1,0),(1,4,0),(1,5,0),(1,6,0),(1,7,0);
/*!40000 ALTER TABLE `JobSetJobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `JobSets`
--

DROP TABLE IF EXISTS `JobSets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `JobSets` (
  `jsID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `jsName` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `jDateLastRun` datetime DEFAULT NULL,
  `isScheduled` smallint(6) NOT NULL DEFAULT '0',
  `scheduledInterval` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'days',
  `scheduledValue` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`jsID`),
  KEY `pkgID` (`pkgID`),
  KEY `jsName` (`jsName`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `JobSets`
--

LOCK TABLES `JobSets` WRITE;
/*!40000 ALTER TABLE `JobSets` DISABLE KEYS */;
INSERT INTO `JobSets` VALUES (1,'Default',0,NULL,0,'days',0);
/*!40000 ALTER TABLE `JobSets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Jobs`
--

DROP TABLE IF EXISTS `Jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Jobs` (
  `jID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `jName` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `jDescription` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `jDateInstalled` datetime DEFAULT NULL,
  `jDateLastRun` datetime DEFAULT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `jLastStatusText` longtext COLLATE utf8_unicode_ci,
  `jLastStatusCode` smallint(6) NOT NULL DEFAULT '0',
  `jStatus` varchar(14) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'ENABLED',
  `jHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `jNotUninstallable` smallint(6) NOT NULL DEFAULT '0',
  `isScheduled` smallint(6) NOT NULL DEFAULT '0',
  `scheduledInterval` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'days',
  `scheduledValue` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`jID`),
  UNIQUE KEY `jHandle` (`jHandle`),
  KEY `pkgID` (`pkgID`),
  KEY `isScheduled` (`isScheduled`,`jDateLastRun`,`jID`),
  KEY `jDateLastRun` (`jDateLastRun`,`jID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Jobs`
--

LOCK TABLES `Jobs` WRITE;
/*!40000 ALTER TABLE `Jobs` DISABLE KEYS */;
INSERT INTO `Jobs` VALUES (1,'Index Search Engine - Updates','Index the site to allow searching to work quickly and accurately. Only reindexes pages that have changed since last indexing.','2015-06-11 08:51:43',NULL,0,NULL,0,'ENABLED','index_search',1,0,'days',0),(2,'Index Search Engine - All','Empties the page search index and reindexes all pages.','2015-06-11 08:51:43',NULL,0,NULL,0,'ENABLED','index_search_all',1,0,'days',0),(3,'Check Automated Groups','Automatically add users to groups and assign badges.','2015-06-11 08:51:43',NULL,0,NULL,0,'ENABLED','check_automated_groups',0,0,'days',0),(4,'Generate the sitemap.xml file','Generate the sitemap.xml file that search engines use to crawl your site.','2015-06-11 08:51:43',NULL,0,NULL,0,'ENABLED','generate_sitemap',0,0,'days',0),(5,'Process Email Posts','Polls an email account and grabs private messages/postings that are sent there..','2015-06-11 08:51:43',NULL,0,NULL,0,'ENABLED','process_email',0,0,'days',0),(6,'Remove Old Page Versions','Removes all except the 10 most recent page versions for each page.','2015-06-11 08:51:43',NULL,0,NULL,0,'ENABLED','remove_old_page_versions',0,0,'days',0),(7,'Update Gatherings','Loads new items into gatherings.','2015-06-11 08:51:43',NULL,0,NULL,0,'ENABLED','update_gatherings',0,0,'days',0);
/*!40000 ALTER TABLE `Jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `JobsLog`
--

DROP TABLE IF EXISTS `JobsLog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `JobsLog` (
  `jlID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `jID` int(10) unsigned NOT NULL,
  `jlMessage` longtext COLLATE utf8_unicode_ci NOT NULL,
  `jlTimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `jlError` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`jlID`),
  KEY `jID` (`jID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `JobsLog`
--

LOCK TABLES `JobsLog` WRITE;
/*!40000 ALTER TABLE `JobsLog` DISABLE KEYS */;
/*!40000 ALTER TABLE `JobsLog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Logs`
--

DROP TABLE IF EXISTS `Logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Logs` (
  `logID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `channel` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `time` int(10) unsigned NOT NULL,
  `message` longtext COLLATE utf8_unicode_ci,
  `uID` int(10) unsigned DEFAULT NULL,
  `level` int(11) NOT NULL,
  PRIMARY KEY (`logID`),
  KEY `channel` (`channel`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Logs`
--

LOCK TABLES `Logs` WRITE;
/*!40000 ALTER TABLE `Logs` DISABLE KEYS */;
INSERT INTO `Logs` VALUES (1,'exceptions',1434034246,'Exception Occurred: /home/hbc/web/site/themes/hbc/elements/navigation.php:24 Call to undefined method Concrete\\Core\\User\\User::getUserDisplayName() (1)\n',2,600),(2,'exceptions',1434117849,'Exception Occurred: /home/hbc/web/site/public_html/application/blocks/filesets/controller.php:69 syntax error, unexpected \'\'D\'\' (T_CONSTANT_ENCAPSED_STRING) (4)\n',1,600),(3,'exceptions',1434117853,'Exception Occurred: /home/hbc/web/site/public_html/application/blocks/filesets/controller.php:69 syntax error, unexpected \'\'D\'\' (T_CONSTANT_ENCAPSED_STRING) (4)\n',1,600),(4,'exceptions',1434117855,'Exception Occurred: /home/hbc/web/site/public_html/application/blocks/filesets/controller.php:69 syntax error, unexpected \'\'D\'\' (T_CONSTANT_ENCAPSED_STRING) (4)\n',1,600),(5,'exceptions',1434117869,'Exception Occurred: /home/hbc/web/site/public_html/application/blocks/filesets/controller.php:69 syntax error, unexpected \'\'D\'\' (T_CONSTANT_ENCAPSED_STRING) (4)\n',1,600),(6,'exceptions',1434117871,'Exception Occurred: /home/hbc/web/site/public_html/application/blocks/filesets/controller.php:69 syntax error, unexpected \'\'D\'\' (T_CONSTANT_ENCAPSED_STRING) (4)\n',1,600),(7,'exceptions',1434117927,'Exception Occurred: /home/hbc/web/site/public_html/application/blocks/filesets/controller.php:69 syntax error, unexpected \'\"D\"\' (T_CONSTANT_ENCAPSED_STRING) (4)\n',1,600),(8,'exceptions',1436401210,'Exception Occurred: /home/hbc/web/site/public_html/concrete/elements/header_required.php:63 Call to a member function getCollectionAttributeValue() on a non-object (1)\n',0,600),(9,'exceptions',1441052439,'Exception Occurred: /home/hbc/web/site/public_html/concrete/src/Block/BlockType/BlockTypeList.php:95 Class \'\\Application\\Block\\Feature\\Controller\' not found (1)\n',1,600),(10,'application',1441137033,'1',1,100),(11,'application',1441137241,'Array',1,100),(12,'application',1441137353,'Link Type: 3 Value: 15026333516',1,100);
/*!40000 ALTER TABLE `Logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MailImporters`
--

DROP TABLE IF EXISTS `MailImporters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MailImporters` (
  `miID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `miHandle` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `miServer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `miUsername` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `miPassword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `miEncryption` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `miIsEnabled` tinyint(1) NOT NULL DEFAULT '0',
  `miEmail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `miPort` int(10) unsigned NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned DEFAULT NULL,
  `miConnectionMethod` varchar(8) COLLATE utf8_unicode_ci DEFAULT 'POP',
  PRIMARY KEY (`miID`),
  UNIQUE KEY `miHandle` (`miHandle`),
  KEY `pkgID` (`pkgID`,`miID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MailImporters`
--

LOCK TABLES `MailImporters` WRITE;
/*!40000 ALTER TABLE `MailImporters` DISABLE KEYS */;
INSERT INTO `MailImporters` VALUES (1,'private_message','',NULL,NULL,NULL,0,'',0,0,'POP');
/*!40000 ALTER TABLE `MailImporters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MailValidationHashes`
--

DROP TABLE IF EXISTS `MailValidationHashes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MailValidationHashes` (
  `mvhID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `miID` int(10) unsigned NOT NULL DEFAULT '0',
  `email` varchar(254) COLLATE utf8_unicode_ci NOT NULL,
  `mHash` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `mDateGenerated` int(10) unsigned NOT NULL DEFAULT '0',
  `mDateRedeemed` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`mvhID`),
  UNIQUE KEY `mHash` (`mHash`),
  KEY `miID` (`miID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MailValidationHashes`
--

LOCK TABLES `MailValidationHashes` WRITE;
/*!40000 ALTER TABLE `MailValidationHashes` DISABLE KEYS */;
/*!40000 ALTER TABLE `MailValidationHashes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MultilingualPageRelations`
--

DROP TABLE IF EXISTS `MultilingualPageRelations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MultilingualPageRelations` (
  `mpRelationID` int(10) unsigned NOT NULL DEFAULT '0',
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `mpLanguage` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `mpLocale` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`mpRelationID`,`cID`,`mpLocale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MultilingualPageRelations`
--

LOCK TABLES `MultilingualPageRelations` WRITE;
/*!40000 ALTER TABLE `MultilingualPageRelations` DISABLE KEYS */;
/*!40000 ALTER TABLE `MultilingualPageRelations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MultilingualSections`
--

DROP TABLE IF EXISTS `MultilingualSections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MultilingualSections` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `msLanguage` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `msCountry` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `msNumPlurals` int(11) NOT NULL DEFAULT '2',
  `msPluralRule` varchar(400) COLLATE utf8_unicode_ci NOT NULL DEFAULT '(n != 1)',
  `msPluralCases` varchar(1000) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'one@1\nother@0, 2~16, 100, 1000, 10000, 100000, 1000000, …',
  PRIMARY KEY (`cID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MultilingualSections`
--

LOCK TABLES `MultilingualSections` WRITE;
/*!40000 ALTER TABLE `MultilingualSections` DISABLE KEYS */;
/*!40000 ALTER TABLE `MultilingualSections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MultilingualTranslations`
--

DROP TABLE IF EXISTS `MultilingualTranslations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MultilingualTranslations` (
  `mtID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `mtSectionID` int(10) unsigned NOT NULL DEFAULT '0',
  `msgid` text COLLATE utf8_unicode_ci NOT NULL,
  `msgidPlural` text COLLATE utf8_unicode_ci,
  `msgstr` text COLLATE utf8_unicode_ci,
  `msgstrPlurals` text COLLATE utf8_unicode_ci,
  `context` text COLLATE utf8_unicode_ci,
  `comments` text COLLATE utf8_unicode_ci,
  `reference` text COLLATE utf8_unicode_ci,
  `flags` text COLLATE utf8_unicode_ci,
  `updated` datetime DEFAULT NULL,
  PRIMARY KEY (`mtID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MultilingualTranslations`
--

LOCK TABLES `MultilingualTranslations` WRITE;
/*!40000 ALTER TABLE `MultilingualTranslations` DISABLE KEYS */;
/*!40000 ALTER TABLE `MultilingualTranslations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OauthUserMap`
--

DROP TABLE IF EXISTS `OauthUserMap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `OauthUserMap` (
  `user_id` int(10) unsigned NOT NULL,
  `namespace` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `binding` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`user_id`,`namespace`),
  UNIQUE KEY `oauth_binding` (`binding`,`namespace`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OauthUserMap`
--

LOCK TABLES `OauthUserMap` WRITE;
/*!40000 ALTER TABLE `OauthUserMap` DISABLE KEYS */;
INSERT INTO `OauthUserMap` VALUES (5,'google','112121687577732846451'),(1,'google','115279990968451949014');
/*!40000 ALTER TABLE `OauthUserMap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Packages`
--

DROP TABLE IF EXISTS `Packages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Packages` (
  `pkgID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pkgName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkgHandle` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `pkgDescription` text COLLATE utf8_unicode_ci,
  `pkgDateInstalled` datetime NOT NULL,
  `pkgIsInstalled` tinyint(1) NOT NULL DEFAULT '1',
  `pkgVersion` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pkgAvailableVersion` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`pkgID`),
  UNIQUE KEY `pkgHandle` (`pkgHandle`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Packages`
--

LOCK TABLES `Packages` WRITE;
/*!40000 ALTER TABLE `Packages` DISABLE KEYS */;
INSERT INTO `Packages` VALUES (1,'Bootstrap Section Framework','bootstrap_section','Bootstrap grid framework with section class added to row','2015-06-11 09:53:13',1,'0.0.1',NULL),(2,'ExchangeCore reCAPTCHA','ec_recaptcha','Provides a Google reCAPTCHA powered captcha field.','2015-06-11 09:53:15',1,'0.9.0',NULL);
/*!40000 ALTER TABLE `Packages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PageFeeds`
--

DROP TABLE IF EXISTS `PageFeeds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PageFeeds` (
  `pfID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cParentID` int(10) unsigned NOT NULL DEFAULT '1',
  `pfTitle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pfHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pfDescription` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pfIncludeAllDescendents` tinyint(1) NOT NULL DEFAULT '0',
  `pfContentToDisplay` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'S',
  `pfAreaHandleToDisplay` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pfDisplayAliases` tinyint(1) NOT NULL DEFAULT '0',
  `ptID` smallint(5) unsigned DEFAULT NULL,
  `pfDisplayFeaturedOnly` tinyint(1) DEFAULT '0',
  `customTopicAttributeKeyHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customTopicTreeNodeID` int(10) unsigned NOT NULL DEFAULT '0',
  `iconFID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pfID`),
  UNIQUE KEY `pfHandle` (`pfHandle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PageFeeds`
--

LOCK TABLES `PageFeeds` WRITE;
/*!40000 ALTER TABLE `PageFeeds` DISABLE KEYS */;
/*!40000 ALTER TABLE `PageFeeds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PagePaths`
--

DROP TABLE IF EXISTS `PagePaths`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PagePaths` (
  `ppID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cID` int(10) unsigned DEFAULT '0',
  `cPath` text COLLATE utf8_unicode_ci NOT NULL,
  `ppIsCanonical` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `ppGeneratedFromURLSlugs` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ppID`),
  KEY `cID` (`cID`),
  KEY `ppIsCanonical` (`ppIsCanonical`),
  KEY `cPath` (`cPath`(255))
) ENGINE=InnoDB AUTO_INCREMENT=161 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PagePaths`
--

LOCK TABLES `PagePaths` WRITE;
/*!40000 ALTER TABLE `PagePaths` DISABLE KEYS */;
INSERT INTO `PagePaths` VALUES (1,2,'/dashboard','1',1),(2,3,'/dashboard/sitemap','1',1),(3,4,'/dashboard/sitemap/full','1',1),(4,5,'/dashboard/sitemap/explore','1',1),(5,6,'/dashboard/sitemap/search','1',1),(6,7,'/dashboard/files','1',1),(7,8,'/dashboard/files/search','1',1),(8,9,'/dashboard/files/attributes','1',1),(9,10,'/dashboard/files/sets','1',1),(10,11,'/dashboard/files/add_set','1',1),(11,12,'/dashboard/users','1',1),(12,13,'/dashboard/users/search','1',1),(13,14,'/dashboard/users/groups','1',1),(14,15,'/dashboard/users/attributes','1',1),(15,16,'/dashboard/users/add','1',1),(16,17,'/dashboard/users/add_group','1',1),(17,18,'/dashboard/users/groups/bulkupdate','1',1),(18,19,'/dashboard/users/group_sets','1',1),(19,20,'/dashboard/users/points','1',1),(20,21,'/dashboard/users/points/assign','1',1),(21,22,'/dashboard/users/points/actions','1',1),(22,23,'/dashboard/reports','1',1),(23,24,'/dashboard/reports/forms','1',1),(24,25,'/dashboard/reports/surveys','1',1),(25,26,'/dashboard/reports/logs','1',1),(26,27,'/dashboard/pages','1',1),(27,28,'/dashboard/pages/themes','1',1),(28,29,'/dashboard/pages/themes/inspect','1',1),(29,30,'/dashboard/pages/types','1',1),(30,31,'/dashboard/pages/types/organize','1',1),(31,32,'/dashboard/pages/types/add','1',1),(32,33,'/dashboard/pages/types/form','1',1),(33,34,'/dashboard/pages/types/output','1',1),(34,35,'/dashboard/pages/types/attributes','1',1),(35,36,'/dashboard/pages/types/permissions','1',1),(36,37,'/dashboard/pages/templates','1',1),(37,38,'/dashboard/pages/templates/add','1',1),(38,39,'/dashboard/pages/attributes','1',1),(39,40,'/dashboard/pages/single','1',1),(40,41,'/dashboard/pages/feeds','1',1),(41,42,'/dashboard/conversations','1',1),(42,43,'/dashboard/conversations/messages','1',1),(43,44,'/dashboard/workflow','1',1),(44,45,'/dashboard/workflow/workflows','1',1),(45,46,'/dashboard/workflow/me','1',1),(46,47,'/dashboard/blocks','1',1),(47,48,'/dashboard/blocks/stacks','1',1),(48,49,'/dashboard/blocks/permissions','1',1),(49,50,'/dashboard/blocks/stacks/list','1',1),(50,51,'/dashboard/blocks/types','1',1),(51,52,'/dashboard/extend','1',1),(52,53,'/dashboard/news','1',1),(53,54,'/dashboard/extend/install','1',1),(54,55,'/dashboard/extend/update','1',1),(55,56,'/dashboard/extend/connect','1',1),(56,57,'/dashboard/extend/themes','1',1),(57,58,'/dashboard/extend/addons','1',1),(58,59,'/dashboard/system','1',1),(59,60,'/dashboard/system/basics','1',1),(60,61,'/dashboard/system/basics/name','1',1),(61,62,'/dashboard/system/basics/accessibility','1',1),(62,63,'/dashboard/system/basics/social','1',1),(63,64,'/dashboard/system/basics/icons','1',1),(64,65,'/dashboard/system/basics/editor','1',1),(65,66,'/dashboard/system/basics/multilingual','1',1),(66,67,'/dashboard/system/basics/timezone','1',1),(67,68,'/dashboard/system/multilingual','1',1),(68,69,'/dashboard/system/multilingual/setup','1',1),(69,70,'/dashboard/system/multilingual/page_report','1',1),(70,71,'/dashboard/system/multilingual/translate_interface','1',1),(71,72,'/dashboard/system/seo','1',1),(72,73,'/dashboard/system/seo/urls','1',1),(73,74,'/dashboard/system/seo/bulk','1',1),(74,75,'/dashboard/system/seo/codes','1',1),(75,76,'/dashboard/system/seo/excluded','1',1),(76,77,'/dashboard/system/seo/searchindex','1',1),(77,78,'/dashboard/system/files','1',1),(78,79,'/dashboard/system/files/permissions','1',1),(79,80,'/dashboard/system/files/filetypes','1',1),(80,81,'/dashboard/system/files/thumbnails','1',1),(81,82,'/dashboard/system/files/storage','1',1),(82,83,'/dashboard/system/optimization','1',1),(83,84,'/dashboard/system/optimization/cache','1',1),(84,85,'/dashboard/system/optimization/clearcache','1',1),(85,86,'/dashboard/system/optimization/jobs','1',1),(86,87,'/dashboard/system/optimization/query_log','1',1),(87,88,'/dashboard/system/permissions','1',1),(88,89,'/dashboard/system/permissions/site','1',1),(89,90,'/dashboard/system/permissions/tasks','1',1),(90,91,'/dashboard/system/permissions/users','1',1),(91,92,'/dashboard/system/permissions/advanced','1',1),(92,93,'/dashboard/system/permissions/blacklist','1',1),(93,94,'/dashboard/system/permissions/captcha','1',1),(94,95,'/dashboard/system/permissions/antispam','1',1),(95,96,'/dashboard/system/permissions/maintenance','1',1),(96,97,'/dashboard/system/registration','1',1),(97,98,'/dashboard/system/registration/postlogin','1',1),(98,99,'/dashboard/system/registration/profiles','1',1),(99,100,'/dashboard/system/registration/open','1',1),(100,101,'/dashboard/system/registration/authentication','1',1),(101,102,'/dashboard/system/mail','1',1),(102,103,'/dashboard/system/mail/method','1',1),(103,104,'/dashboard/system/mail/method/test','1',1),(104,105,'/dashboard/system/mail/importers','1',1),(105,106,'/dashboard/system/conversations','1',1),(106,107,'/dashboard/system/conversations/settings','1',1),(107,108,'/dashboard/system/conversations/points','1',1),(108,109,'/dashboard/system/conversations/bannedwords','1',1),(109,110,'/dashboard/system/conversations/permissions','1',1),(110,111,'/dashboard/system/attributes','1',1),(111,112,'/dashboard/system/attributes/sets','1',1),(112,113,'/dashboard/system/attributes/types','1',1),(113,114,'/dashboard/system/attributes/topics','1',1),(114,115,'/dashboard/system/attributes/topics/add','1',1),(115,116,'/dashboard/system/environment','1',1),(116,117,'/dashboard/system/environment/info','1',1),(117,118,'/dashboard/system/environment/debug','1',1),(118,119,'/dashboard/system/environment/logging','1',1),(119,120,'/dashboard/system/environment/proxy','1',1),(120,121,'/dashboard/system/environment/entities','1',1),(121,122,'/dashboard/system/backup','1',1),(122,123,'/dashboard/system/backup/backup','1',1),(123,124,'/dashboard/system/backup/update','1',1),(124,125,'/dashboard/welcome','1',1),(125,126,'/dashboard/home','1',1),(126,127,'/!drafts','1',1),(127,128,'/!trash','1',1),(128,129,'/!stacks','1',1),(129,130,'/login','1',1),(130,131,'/register','1',1),(131,132,'/account','1',1),(132,133,'/account/edit_profile','1',1),(133,134,'/account/avatar','1',1),(134,135,'/account/messages','1',1),(135,136,'/account/messages/inbox','1',1),(136,137,'/members','1',1),(137,138,'/members/profile','1',1),(138,139,'/members/directory','1',1),(139,140,'/page_not_found','1',1),(140,141,'/page_forbidden','1',1),(141,142,'/download_file','1',1),(142,144,'/!stacks/header-site-title','1',1),(143,145,'/!stacks/header-navigation','1',1),(144,146,'/!stacks/footer-legal','1',1),(145,147,'/!stacks/footer-navigation','1',1),(146,148,'/!stacks/footer-contact','1',1),(147,149,'/!stacks/connection','1',1),(148,150,'/!stacks/footer-content','1',1),(149,151,'/!stacks/footer-map','1',1),(150,152,'/worship','1',1),(151,153,'/grow','1',1),(152,154,'/serve','1',1),(153,155,'/share','1',1),(154,156,'/im-new','1',1),(155,157,'/!stacks/phone','1',1),(156,158,'/!stacks/location','1',1),(157,159,'/!stacks/email','1',1),(158,160,'/dashboard/system/multilingual/copy','1',1),(159,161,'/!stacks/map','1',1),(160,162,'/!stacks/social','1',1);
/*!40000 ALTER TABLE `PagePaths` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PagePermissionAssignments`
--

DROP TABLE IF EXISTS `PagePermissionAssignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PagePermissionAssignments` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`pkID`,`paID`),
  KEY `paID` (`paID`,`pkID`),
  KEY `pkID` (`pkID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PagePermissionAssignments`
--

LOCK TABLES `PagePermissionAssignments` WRITE;
/*!40000 ALTER TABLE `PagePermissionAssignments` DISABLE KEYS */;
INSERT INTO `PagePermissionAssignments` VALUES (1,1,41),(2,1,128),(3,1,120),(12,1,129),(23,1,122),(27,1,125),(42,1,130),(44,1,131),(47,1,132),(52,1,133),(59,1,134),(126,1,135),(127,1,61),(130,1,58),(131,1,59),(143,1,113),(1,2,116),(127,2,77),(143,2,114),(1,3,116),(127,3,63),(143,3,114),(1,4,116),(127,4,64),(143,4,114),(1,5,116),(127,5,78),(143,5,114),(1,6,116),(127,6,79),(143,6,114),(1,7,115),(127,7,67),(143,7,114),(1,8,49),(127,8,68),(143,8,9),(1,9,50),(127,9,80),(143,9,9),(143,10,9),(1,11,51),(127,11,70),(143,11,9),(1,12,52),(127,12,81),(143,12,111),(1,13,115),(127,13,82),(143,13,111),(1,14,115),(127,14,83),(143,14,111),(1,15,55),(127,15,74),(143,15,9),(1,16,115),(127,16,75),(143,16,111),(1,17,57),(127,17,76),(143,17,9),(1,18,48),(143,18,111);
/*!40000 ALTER TABLE `PagePermissionAssignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PagePermissionPageTypeAccessList`
--

DROP TABLE IF EXISTS `PagePermissionPageTypeAccessList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PagePermissionPageTypeAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `externalLink` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`),
  KEY `peID` (`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PagePermissionPageTypeAccessList`
--

LOCK TABLES `PagePermissionPageTypeAccessList` WRITE;
/*!40000 ALTER TABLE `PagePermissionPageTypeAccessList` DISABLE KEYS */;
/*!40000 ALTER TABLE `PagePermissionPageTypeAccessList` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PagePermissionPageTypeAccessListCustom`
--

DROP TABLE IF EXISTS `PagePermissionPageTypeAccessListCustom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PagePermissionPageTypeAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `ptID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`ptID`),
  KEY `peID` (`peID`),
  KEY `ptID` (`ptID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PagePermissionPageTypeAccessListCustom`
--

LOCK TABLES `PagePermissionPageTypeAccessListCustom` WRITE;
/*!40000 ALTER TABLE `PagePermissionPageTypeAccessListCustom` DISABLE KEYS */;
/*!40000 ALTER TABLE `PagePermissionPageTypeAccessListCustom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PagePermissionPropertyAccessList`
--

DROP TABLE IF EXISTS `PagePermissionPropertyAccessList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PagePermissionPropertyAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `name` tinyint(1) DEFAULT '0',
  `publicDateTime` tinyint(1) DEFAULT '0',
  `uID` tinyint(1) DEFAULT '0',
  `description` tinyint(1) DEFAULT '0',
  `paths` tinyint(1) DEFAULT '0',
  `attributePermission` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`),
  KEY `peID` (`peID`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PagePermissionPropertyAccessList`
--

LOCK TABLES `PagePermissionPropertyAccessList` WRITE;
/*!40000 ALTER TABLE `PagePermissionPropertyAccessList` DISABLE KEYS */;
/*!40000 ALTER TABLE `PagePermissionPropertyAccessList` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PagePermissionPropertyAttributeAccessListCustom`
--

DROP TABLE IF EXISTS `PagePermissionPropertyAttributeAccessListCustom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PagePermissionPropertyAttributeAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`akID`),
  KEY `peID` (`peID`),
  KEY `akID` (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PagePermissionPropertyAttributeAccessListCustom`
--

LOCK TABLES `PagePermissionPropertyAttributeAccessListCustom` WRITE;
/*!40000 ALTER TABLE `PagePermissionPropertyAttributeAccessListCustom` DISABLE KEYS */;
/*!40000 ALTER TABLE `PagePermissionPropertyAttributeAccessListCustom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PagePermissionThemeAccessList`
--

DROP TABLE IF EXISTS `PagePermissionThemeAccessList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PagePermissionThemeAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`),
  KEY `peID` (`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PagePermissionThemeAccessList`
--

LOCK TABLES `PagePermissionThemeAccessList` WRITE;
/*!40000 ALTER TABLE `PagePermissionThemeAccessList` DISABLE KEYS */;
/*!40000 ALTER TABLE `PagePermissionThemeAccessList` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PagePermissionThemeAccessListCustom`
--

DROP TABLE IF EXISTS `PagePermissionThemeAccessListCustom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PagePermissionThemeAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `pThemeID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`pThemeID`),
  KEY `peID` (`peID`),
  KEY `pThemeID` (`pThemeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PagePermissionThemeAccessListCustom`
--

LOCK TABLES `PagePermissionThemeAccessListCustom` WRITE;
/*!40000 ALTER TABLE `PagePermissionThemeAccessListCustom` DISABLE KEYS */;
/*!40000 ALTER TABLE `PagePermissionThemeAccessListCustom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PageSearchIndex`
--

DROP TABLE IF EXISTS `PageSearchIndex`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PageSearchIndex` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `content` longtext COLLATE utf8_unicode_ci,
  `cName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cDescription` text COLLATE utf8_unicode_ci,
  `cPath` text COLLATE utf8_unicode_ci,
  `cDatePublic` datetime DEFAULT NULL,
  `cDateLastIndexed` datetime DEFAULT NULL,
  `cDateLastSitemapped` datetime DEFAULT NULL,
  `cRequiresReindex` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`cID`),
  KEY `cDateLastIndexed` (`cDateLastIndexed`),
  KEY `cDateLastSitemapped` (`cDateLastSitemapped`),
  KEY `cRequiresReindex` (`cRequiresReindex`),
  FULLTEXT KEY `cName` (`cName`),
  FULLTEXT KEY `cDescription` (`cDescription`),
  FULLTEXT KEY `content` (`content`),
  FULLTEXT KEY `content2` (`cName`,`cDescription`,`content`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PageSearchIndex`
--

LOCK TABLES `PageSearchIndex` WRITE;
/*!40000 ALTER TABLE `PageSearchIndex` DISABLE KEYS */;
INSERT INTO `PageSearchIndex` VALUES (2,'','Dashboard','','/dashboard','2015-06-11 08:51:44','2015-06-11 08:51:48',NULL,0),(3,'','Sitemap','Whole world at a glance.','/dashboard/sitemap','2015-06-11 08:51:44','2015-06-11 08:51:48',NULL,0),(4,'','Full Sitemap','','/dashboard/sitemap/full','2015-06-11 08:51:44','2015-06-11 08:51:48',NULL,0),(5,'','Flat View','','/dashboard/sitemap/explore','2015-06-11 08:51:44','2015-06-11 08:51:48',NULL,0),(6,'','Page Search','','/dashboard/sitemap/search','2015-06-11 08:51:44','2015-06-11 08:51:48',NULL,0),(8,'','File Manager','','/dashboard/files/search','2015-06-11 08:51:44','2015-06-11 08:51:48',NULL,0),(9,'','Attributes','','/dashboard/files/attributes','2015-06-11 08:51:44','2015-06-11 08:51:48',NULL,0),(10,'','File Sets','','/dashboard/files/sets','2015-06-11 08:51:44','2015-06-11 08:51:48',NULL,0),(11,'','Add File Set','','/dashboard/files/add_set','2015-06-11 08:51:44','2015-06-11 08:51:48',NULL,0),(12,'','Members','Add and manage the user accounts and groups on your website.','/dashboard/users','2015-06-11 08:51:44','2015-06-11 08:51:48',NULL,0),(13,'','Search Users','','/dashboard/users/search','2015-06-11 08:51:44','2015-06-11 08:51:48',NULL,0),(14,'','User Groups','','/dashboard/users/groups','2015-06-11 08:51:44','2015-06-11 08:51:48',NULL,0),(15,'','Attributes','','/dashboard/users/attributes','2015-06-11 08:51:44','2015-06-11 08:51:48',NULL,0),(16,'','Add User','','/dashboard/users/add','2015-06-11 08:51:44','2015-06-11 08:51:48',NULL,0),(17,'','Add Group','','/dashboard/users/add_group','2015-06-11 08:51:44','2015-06-11 08:51:48',NULL,0),(19,'','Group Sets','','/dashboard/users/group_sets','2015-06-11 08:51:44','2015-06-11 08:51:48',NULL,0),(20,'','Community Points',NULL,'/dashboard/users/points','2015-06-11 08:51:44','2015-06-11 08:51:48',NULL,0),(22,'','Actions',NULL,'/dashboard/users/points/actions','2015-06-11 08:51:44','2015-06-11 08:51:48',NULL,0),(23,'','Reports','Get data from forms and logs.','/dashboard/reports','2015-06-11 08:51:44','2015-06-11 08:51:48',NULL,0),(24,'','Form Results','Get submission data.','/dashboard/reports/forms','2015-06-11 08:51:44','2015-06-11 08:51:48',NULL,0),(25,'','Surveys','','/dashboard/reports/surveys','2015-06-11 08:51:44','2015-06-11 08:51:48',NULL,0),(26,'','Logs','','/dashboard/reports/logs','2015-06-11 08:51:44','2015-06-11 08:51:48',NULL,0),(28,'','Themes','Reskin your site.','/dashboard/pages/themes','2015-06-11 08:51:44','2015-06-11 08:51:48',NULL,0),(29,'','Inspect','','/dashboard/pages/themes/inspect','2015-06-11 08:51:45','2015-06-11 08:51:48',NULL,0),(31,'','Organize Page Type Order','','/dashboard/pages/types/organize','2015-06-11 08:51:45','2015-06-11 08:51:48',NULL,0),(32,'','Add Page Type','','/dashboard/pages/types/add','2015-06-11 08:51:45','2015-06-11 08:51:48',NULL,0),(33,'','Compose Form','','/dashboard/pages/types/form','2015-06-11 08:51:45','2015-06-11 08:51:48',NULL,0),(34,'','Defaults and Output','','/dashboard/pages/types/output','2015-06-11 08:51:45','2015-06-11 08:51:48',NULL,0),(35,'','Page Type Attributes','','/dashboard/pages/types/attributes','2015-06-11 08:51:45','2015-06-11 08:51:48',NULL,0),(36,'','Page Type Permissions','','/dashboard/pages/types/permissions','2015-06-11 08:51:45','2015-06-11 08:51:48',NULL,0),(38,'','Add Page Template','Add page templates to your site.','/dashboard/pages/templates/add','2015-06-11 08:51:45','2015-06-11 08:51:49',NULL,0),(39,'','Attributes','','/dashboard/pages/attributes','2015-06-11 08:51:45','2015-06-11 08:51:49',NULL,0),(40,'','Single Pages','','/dashboard/pages/single','2015-06-11 08:51:45','2015-06-11 08:51:49',NULL,0),(41,'','RSS Feeds','','/dashboard/pages/feeds','2015-06-11 08:51:45','2015-06-11 08:51:49',NULL,0),(43,'','Messages','','/dashboard/conversations/messages','2015-06-11 08:51:45','2015-06-11 08:51:49',NULL,0),(44,'','Workflow','','/dashboard/workflow','2015-06-11 08:51:45','2015-06-11 08:51:49',NULL,0),(48,'','Stacks','Share content across your site.','/dashboard/blocks/stacks','2015-06-11 08:51:45','2015-06-11 08:51:49',NULL,0),(50,'','Stack List','','/dashboard/blocks/stacks/list','2015-06-11 08:51:45','2015-06-11 08:51:49',NULL,0),(51,'','Block Types','Manage the installed block types in your site.','/dashboard/blocks/types','2015-06-11 08:51:45','2015-06-11 08:51:49',NULL,0),(52,'','Extend concrete5','','/dashboard/extend','2015-06-11 08:51:45','2015-06-11 08:51:49',NULL,0),(53,'','Dashboard','','/dashboard/news','2015-06-11 08:51:45','2015-06-11 08:51:49',NULL,0),(54,'','Add Functionality','Install add-ons & themes.','/dashboard/extend/install','2015-06-11 08:51:45','2015-06-11 08:51:49',NULL,0),(55,'','Update Add-Ons','Update your installed packages.','/dashboard/extend/update','2015-06-11 08:51:45','2015-06-11 08:51:49',NULL,0),(56,'','Connect to the Community','Connect to the concrete5 community.','/dashboard/extend/connect','2015-06-11 08:51:45','2015-06-11 08:51:49',NULL,0),(57,'','Get More Themes','Download themes from concrete5.org.','/dashboard/extend/themes','2015-06-11 08:51:45','2015-06-11 08:51:49',NULL,0),(58,'','Get More Add-Ons','Download add-ons from concrete5.org.','/dashboard/extend/addons','2015-06-11 08:51:45','2015-06-11 08:51:49',NULL,0),(59,'','System & Settings','Secure and setup your site.','/dashboard/system','2015-06-11 08:51:45','2015-06-11 08:51:49',NULL,0),(61,'','Site Name','','/dashboard/system/basics/name','2015-06-11 08:51:46','2015-06-11 08:51:49',NULL,0),(62,'','Accessibility','','/dashboard/system/basics/accessibility','2015-06-11 08:51:46','2015-06-11 08:51:49',NULL,0),(63,'','Social Links','','/dashboard/system/basics/social','2015-06-11 08:51:46','2015-06-11 08:51:49',NULL,0),(64,'','Bookmark Icons','Bookmark icon and mobile home screen icon setup.','/dashboard/system/basics/icons','2015-06-11 08:51:46','2015-06-11 08:51:49',NULL,0),(65,'','Rich Text Editor','','/dashboard/system/basics/editor','2015-06-11 08:51:46','2015-06-11 08:51:49',NULL,0),(66,'','Languages','','/dashboard/system/basics/multilingual','2015-06-11 08:51:46','2015-06-11 08:51:49',NULL,0),(67,'','Time Zone','','/dashboard/system/basics/timezone','2015-06-11 08:51:46','2015-06-11 08:51:49',NULL,0),(68,'','Multilingual','Run your site in multiple languages.','/dashboard/system/multilingual','2015-06-11 08:51:46','2015-06-11 08:51:49',NULL,0),(73,'','URLs and Redirection','','/dashboard/system/seo/urls','2015-06-11 08:51:46','2015-06-11 08:51:49',NULL,0),(74,'','Bulk SEO Updater','','/dashboard/system/seo/bulk','2015-06-11 08:51:46','2015-06-11 08:51:49',NULL,0),(75,'','Tracking Codes','','/dashboard/system/seo/codes','2015-06-11 08:51:46','2015-06-11 08:51:49',NULL,0),(76,'','Excluded URL Word List','','/dashboard/system/seo/excluded','2015-06-11 08:51:46','2015-06-11 08:51:49',NULL,0),(77,'','Search Index','','/dashboard/system/seo/searchindex','2015-06-11 08:51:46','2015-06-11 08:51:49',NULL,0),(79,'','File Manager Permissions','','/dashboard/system/files/permissions','2015-06-11 08:51:46','2015-06-11 08:51:49',NULL,0),(80,'','Allowed File Types','','/dashboard/system/files/filetypes','2015-06-11 08:51:46','2015-06-11 08:51:49',NULL,0),(81,'','Thumbnails','','/dashboard/system/files/thumbnails','2015-06-11 08:51:46','2015-06-11 08:51:49',NULL,0),(82,'','File Storage Locations','','/dashboard/system/files/storage','2015-06-11 08:51:46','2015-06-11 08:51:49',NULL,0),(84,'','Cache & Speed Settings','','/dashboard/system/optimization/cache','2015-06-11 08:51:46','2015-06-11 08:51:49',NULL,0),(85,'','Clear Cache','','/dashboard/system/optimization/clearcache','2015-06-11 08:51:46','2015-06-11 08:51:49',NULL,0),(86,'','Automated Jobs','','/dashboard/system/optimization/jobs','2015-06-11 08:51:46','2015-06-11 08:51:49',NULL,0),(87,'','Database Query Log','','/dashboard/system/optimization/query_log','2015-06-11 08:51:46','2015-06-11 08:51:49',NULL,0),(89,'','Site Access','','/dashboard/system/permissions/site','2015-06-11 08:51:46','2015-06-11 08:51:49',NULL,0),(90,'','Task Permissions','','/dashboard/system/permissions/tasks','2015-06-11 08:51:46','2015-06-11 08:51:49',NULL,0),(93,'','IP Blacklist','','/dashboard/system/permissions/blacklist','2015-06-11 08:51:47','2015-06-11 08:51:49',NULL,0),(94,'','Captcha Setup','','/dashboard/system/permissions/captcha','2015-06-11 08:51:47','2015-06-11 08:51:49',NULL,0),(95,'','Spam Control','','/dashboard/system/permissions/antispam','2015-06-11 08:51:47','2015-06-11 08:51:49',NULL,0),(96,'','Maintenance Mode','','/dashboard/system/permissions/maintenance','2015-06-11 08:51:47','2015-06-11 08:51:49',NULL,0),(98,'','Login Destination','','/dashboard/system/registration/postlogin','2015-06-11 08:51:47','2015-06-11 08:51:49',NULL,0),(99,'','Public Profiles','','/dashboard/system/registration/profiles','2015-06-11 08:51:47','2015-06-11 08:51:49',NULL,0),(100,'','Public Registration','','/dashboard/system/registration/open','2015-06-11 08:51:47','2015-06-11 08:51:49',NULL,0),(101,'','Authentication Types','','/dashboard/system/registration/authentication','2015-06-11 08:51:47','2015-06-11 08:51:49',NULL,0),(102,'','Email','Control how your site send and processes mail.','/dashboard/system/mail','2015-06-11 08:51:47','2015-06-11 08:51:49',NULL,0),(103,'','SMTP Method','','/dashboard/system/mail/method','2015-06-11 08:51:47','2015-06-11 08:51:49',NULL,0),(104,'','Test Mail Settings','','/dashboard/system/mail/method/test','2015-06-11 08:51:47','2015-06-11 08:51:49',NULL,0),(105,'','Email Importers','','/dashboard/system/mail/importers','2015-06-11 08:51:47','2015-06-11 08:51:49',NULL,0),(106,'','Conversations','Manage your conversations settings','/dashboard/system/conversations','2015-06-11 08:51:47','2015-06-11 08:51:49',NULL,0),(107,'','Settings','','/dashboard/system/conversations/settings','2015-06-11 08:51:47','2015-06-11 08:51:49',NULL,0),(108,'','Community Points','','/dashboard/system/conversations/points','2015-06-11 08:51:47','2015-06-11 08:51:49',NULL,0),(109,'','Banned Words','','/dashboard/system/conversations/bannedwords','2015-06-11 08:51:47','2015-06-11 08:51:49',NULL,0),(111,'','Attributes','Setup attributes for pages, users, files and more.','/dashboard/system/attributes','2015-06-11 08:51:47','2015-06-11 08:51:49',NULL,0),(112,'','Sets','Group attributes into sets for easier organization','/dashboard/system/attributes/sets','2015-06-11 08:51:47','2015-06-11 08:51:49',NULL,0),(113,'','Types','Choose which attribute types are available for different items.','/dashboard/system/attributes/types','2015-06-11 08:51:47','2015-06-11 08:51:49',NULL,0),(114,'','Topics','','/dashboard/system/attributes/topics','2015-06-11 08:51:47','2015-06-11 08:51:50',NULL,0),(116,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(117,'','Environment Information','','/dashboard/system/environment/info','2015-06-11 08:51:47','2015-06-11 08:51:50',NULL,0),(118,'','Debug Settings','','/dashboard/system/environment/debug','2015-06-11 08:51:47','2015-06-11 08:51:50',NULL,0),(119,'','Logging Settings','','/dashboard/system/environment/logging','2015-06-11 08:51:47','2015-06-11 08:51:50',NULL,0),(120,'','Proxy Server','','/dashboard/system/environment/proxy','2015-06-11 08:51:47','2015-06-11 08:51:50',NULL,0),(121,'','Database Entities','','/dashboard/system/environment/entities','2015-06-11 08:51:47','2015-06-11 08:51:50',NULL,0),(122,'','Backup & Restore','Backup or restore your website.','/dashboard/system/backup','2015-06-11 08:51:47','2015-06-11 08:51:50',NULL,0),(124,'','Update concrete5','','/dashboard/system/backup/update','2015-06-11 08:51:47','2015-06-11 08:51:50',NULL,0),(125,'                                        ','Welcome to concrete5','Learn about how to use concrete5, how to develop for concrete5, and get general help.','/dashboard/welcome','2015-06-11 08:51:48','2015-06-11 08:51:50',NULL,0),(126,'','Customize Dashboard Home','','/dashboard/home','2015-06-11 08:51:48','2015-06-11 08:51:50',NULL,0),(127,'','Drafts','','/!drafts','2015-06-11 08:51:50','2015-06-11 08:51:51',NULL,0),(128,'','Trash','','/!trash','2015-06-11 08:51:50','2015-06-11 08:51:51',NULL,0),(129,'','Stacks','','/!stacks','2015-06-11 08:51:50','2015-06-11 08:51:51',NULL,0),(132,'','My Account','','/account','2015-06-11 08:51:51','2015-06-11 08:51:51',NULL,0),(1,'Sermon Series Events ','Home','',NULL,'2015-06-11 08:51:00','2015-09-03 16:51:07',NULL,0),(149,'','Connection',NULL,'/!stacks/connection','2015-06-11 08:52:48','2015-08-31 16:06:56',NULL,0),(145,'','Header Navigation',NULL,'/!stacks/header-navigation','2015-06-11 08:52:12','2015-06-11 10:04:16',NULL,0),(152,'','Worship','','/worship','2015-06-12 08:25:17','2015-06-12 08:27:01',NULL,0),(153,'Small Groups ','Grow','','/grow','2015-06-12 08:26:59','2015-07-08 21:05:59',NULL,0),(154,'','Serve','','/serve','2015-06-12 08:27:38','2015-06-12 08:28:02',NULL,0),(155,'','Share','','/share','2015-06-12 08:28:00','2015-06-12 08:28:33',NULL,0),(156,'About Us Frequently Asked Questions What should I wear? Some who attend are comfortable in casual attire (in the summer, you’ll see lots of shorts) while others are more comfortable with more traditional clothing (coats and ties or dresses). Please feel free to come “as you are.” I have children do you have childcare during services? Children younger than age 3 will receive care during the Sunday School hour in our Nursery and Toddler room. Nursery and Toddler care is also provided during our 10:30AM Worship service. Parents who utilize the Nursery/Toddler care service are provided a pager so that nursery workers can contact them if a need arises with their child. How can I join? People are received for membership in the Highland Baptist Church as follows: Upon profession of faith in Jesus Christ, for baptism;By transfer of membership from some other Baptist congregation;By statement:From a Baptist church where membership records are lost.From a church of another denomination, if the person had previously been a member of a Baptist church.From a church of another denomination where they had been baptized by immersion following their profession of faith.Upon reaffirmation of faith in Jesus Christ coming for baptism from a church of another denomination where they had not been baptized by  Our Beliefs  We believe the Scriptures reveal only one living and true God, having three personal identities as Father, Son and Holy Spirit.  Isaiah 44:6; 46:9; I Corinthians 8:6; Ephesians 4... more  We believe the Scriptures of the Old and New Testaments are given by inspiration of God and thereby become the written Word of God. II Timothy 3:16; II Peter 1:21; Deuteronomy 4:2; ... more  We believe the Scriptures teach that man was created in holiness under the law of creation by His Maker, but by voluntary transgression he fell from that holy and happy state, the consequence of which all mankind became sinners under just condemnation to eternal punishment apart from experiencing forgiveness through Jesus Christ. Genesis 1:26-27; 2:7; Ecclesiastes 7:20; Romans 3... more  We believe the Scriptures teach that salvation of sinners is wholly by grace through faith in Jesus as the Son of God. Ephesians 2:8; Galatians 2:16; I Timothy 2:5; II ... more  We believe the Scriptures teach that justification includes the pardon of sin and the promise of eternal life on principles of the righteousness of God. I John 1:7-9; Romans 3:25-26; II Peter 1:1; II Co... more  We believe the Scriptures teach that all true saints shall be kept by the power of God through faith unto salvation. I Peter 1:3-5; John 5:24; II Timothy 1:12; John 1... more  We believe the scriptures teach that a visible church is a congregation of baptized believers associated in the faith and fellowship of the Gospel. Acts 16:5; 2:41-47; 20:28; I Corinthians 12:12-14... more  We believe the Scriptures teach that Christian Baptism is the immersion of the believer in water in the name of the Father, the Son, and the Holy Spirit. Matthew 3:16; 28:19; Acts 8:35-39; 10:47-48; Roma... more  We believe the Scriptures authorize, by the example of the New Testament church, the observance of the first day of the week, the Lord’s day, as the Christian Sabbath. Acts 20:7; Genesis 2:2-3; Matthew 28:1, 5-6; John... more  We believe the Scriptures teach that there will be a bodily resurrection, both of the righteous and the unrighteous, and a final judgment. John 5:28-29; Romans 8:10-11; Matthew 13:30, 36-4... more  We believe the Bible teaches that the great commission for the church and every born again child of God is to endeavor to make disciples of all nations. Matthew 9:37-38; 10:5-15; 13:18-30, 37-43; 28:18-... more  Statement on Marriage and Sexuality We believe that term “marriage” has only one meani... more We believe that God intends sexual intimacy to onl... more We believe that any form of sexual immorality, suc... more We believe that God offers redemption and restorat... more We believe that every person must be afforded comp... more  The mission of Highland Baptist Church is to engage the community for Christ.The purpose of this congregation is to give visible evidence to that faith and fellowship to which God has called His people. We acknowledge ourselves to be a local manifestation of the Church by which Jesus continues to minister to the world through the Holy Spirit. We shall seek to fulfill this calling through corporate worship, a program of Christian nurture, the proclamation of the Gospel by word and deed, and ministering to human needs in the name of Christ. To fulfill Jesus’ Great Commission, Highland Baptist Church will seek to be a fellowship of disciples of Jesus sacrificially investing our lives and resources to make disciples of Jesus who: + WORSHIP + GROW + SERVE + SHARE  HBC is…   A gathering of ordinary people who have encountered the extraordinary love of Jesus Christ and the transforming power of His gospel. We are still stunned by the good news that His mercy, forgiveness, joy, hope, wisdom, power, forever life and more have been freely given to us—and are available for everyone!      Jesus and His gospel are at the core of everything we are and everything we do. It’s steadily transforming our lives. None of us have this thing figured out, but we’re committed to helping people of every life stage grow as disciples of Jesus and live life as God designed it.      Jesus and His gospel bind a very diverse group of people into a loving faith-family. We are old and young, single and married, rich and poor, new parents, empty-nesters and grandparents, blue-collar and white-collar, employed and unemployed, long-time Christians and not-quite-sure faith-explorers, Cards & Kats fans, a little bit county , a little bit rock… and even a teensy slice of rap. In other words, there’s somebody here like you!      Jesus and His gospel propels us to love all people in our world and serve their everyday needs. We’re jumping into the stuff of life in our neighborhoods, schools, ball fields, golf courses and workplaces. At the same time, we’re also going where Jesus goes among the poor and broken of our community, and where people don’t yet know Him among the nations of the world.            Service Times   Our Worship Service starts at 10:30 AM.      Bible Study groups take place at 9:30 AM.    On Sunday evenings service begins at 6:00 PM with a variety of Sunday evening worship, discipleship, fellowship, and growth events for all ages. For children we offer Metro Kidmin and for students we offer our Reach worship services.    mid-week @ Highland on Wednesday at 7:00 PM, children and student activities are also available.      Affiliations This church is to carry out the total ministry for which Christ has made His church responsible. We shall voluntarily cooperate with and be a member of the Shelby Baptist Association, the Kentucky Baptist State Convention, the Southern Baptist Convention and cooperate with the Baptist World Alliance.  ','I\'m New','','/im-new','2015-06-12 08:29:40','2015-07-08 20:57:41',NULL,0),(151,'','Footer Map',NULL,'/!stacks/footer-map','2015-06-11 08:52:48','2015-07-09 12:29:42',NULL,0),(148,'','Footer Contact',NULL,'/!stacks/footer-contact','2015-06-11 08:52:12','2015-07-21 13:21:36',NULL,0),(157,'502-633-3516  ','Phone',NULL,'/!stacks/phone','2015-08-31 16:19:06','2015-09-01 16:39:31',NULL,0),(158,'511 Mount Eden Road Shelbyville KY 40066-0104  ','Location',NULL,'/!stacks/location','2015-08-31 16:19:06','2015-09-01 16:27:49',NULL,0),(159,'info@hbc-ky.com  ','Email',NULL,'/!stacks/email','2015-08-31 16:19:06','2015-09-03 10:03:52',NULL,0),(161,'','Map',NULL,'/!stacks/map','2015-09-03 16:42:48','2015-09-03 16:50:00',NULL,0),(162,'','Social',NULL,'/!stacks/social','2015-09-03 16:42:48','2015-09-03 16:51:05',NULL,0);
/*!40000 ALTER TABLE `PageSearchIndex` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PageTemplates`
--

DROP TABLE IF EXISTS `PageTemplates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PageTemplates` (
  `pTemplateID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pTemplateHandle` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `pTemplateIcon` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pTemplateName` varchar(90) COLLATE utf8_unicode_ci NOT NULL,
  `pTemplateIsInternal` tinyint(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pTemplateID`),
  UNIQUE KEY `pTemplateHandle` (`pTemplateHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PageTemplates`
--

LOCK TABLES `PageTemplates` WRITE;
/*!40000 ALTER TABLE `PageTemplates` DISABLE KEYS */;
INSERT INTO `PageTemplates` VALUES (1,'core_stack','','Stack',1,0),(2,'dashboard_primary_five','','Dashboard Primary + Five',1,0),(3,'dashboard_header_four_col','','Dashboard Header + Four Column',1,0),(4,'dashboard_full','','Dashboard Full',1,0),(5,'full','full.png','Full',0,0),(6,'left_sidebar','left_sidebar.png','Left Sidebar',0,0),(7,'right_sidebar','right_sidebar.png','Right Sidebar',0,0);
/*!40000 ALTER TABLE `PageTemplates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PageThemeCustomStyles`
--

DROP TABLE IF EXISTS `PageThemeCustomStyles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PageThemeCustomStyles` (
  `pThemeID` int(10) unsigned NOT NULL DEFAULT '0',
  `scvlID` int(10) unsigned DEFAULT '0',
  `preset` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sccRecordID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`pThemeID`),
  KEY `scvlID` (`scvlID`),
  KEY `sccRecordID` (`sccRecordID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PageThemeCustomStyles`
--

LOCK TABLES `PageThemeCustomStyles` WRITE;
/*!40000 ALTER TABLE `PageThemeCustomStyles` DISABLE KEYS */;
/*!40000 ALTER TABLE `PageThemeCustomStyles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PageThemes`
--

DROP TABLE IF EXISTS `PageThemes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PageThemes` (
  `pThemeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pThemeHandle` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `pThemeName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pThemeDescription` text COLLATE utf8_unicode_ci,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `pThemeHasCustomClass` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pThemeID`),
  UNIQUE KEY `ptHandle` (`pThemeHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PageThemes`
--

LOCK TABLES `PageThemes` WRITE;
/*!40000 ALTER TABLE `PageThemes` DISABLE KEYS */;
INSERT INTO `PageThemes` VALUES (1,'elemental','Elemental','Elegant, spacious theme with support for blogs, portfolios, layouts and more.',0,1),(2,'hbc','FlatMate','Bootstrap 3 template in a Flat Material Design',0,1);
/*!40000 ALTER TABLE `PageThemes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PageTypeComposerControlTypes`
--

DROP TABLE IF EXISTS `PageTypeComposerControlTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PageTypeComposerControlTypes` (
  `ptComposerControlTypeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ptComposerControlTypeHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ptComposerControlTypeName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ptComposerControlTypeID`),
  UNIQUE KEY `ptComposerControlTypeHandle` (`ptComposerControlTypeHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PageTypeComposerControlTypes`
--

LOCK TABLES `PageTypeComposerControlTypes` WRITE;
/*!40000 ALTER TABLE `PageTypeComposerControlTypes` DISABLE KEYS */;
INSERT INTO `PageTypeComposerControlTypes` VALUES (1,'core_page_property','Built-In Properties',0),(2,'collection_attribute','Custom Attributes',0),(3,'block','Block',0);
/*!40000 ALTER TABLE `PageTypeComposerControlTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PageTypeComposerFormLayoutSetControls`
--

DROP TABLE IF EXISTS `PageTypeComposerFormLayoutSetControls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PageTypeComposerFormLayoutSetControls` (
  `ptComposerFormLayoutSetControlID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ptComposerFormLayoutSetID` int(10) unsigned DEFAULT '0',
  `ptComposerControlTypeID` int(10) unsigned DEFAULT '0',
  `ptComposerControlObject` longtext COLLATE utf8_unicode_ci,
  `ptComposerFormLayoutSetControlDisplayOrder` int(10) unsigned DEFAULT '0',
  `ptComposerFormLayoutSetControlCustomLabel` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ptComposerFormLayoutSetControlCustomTemplate` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ptComposerFormLayoutSetControlDescription` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ptComposerFormLayoutSetControlRequired` int(11) DEFAULT '0',
  PRIMARY KEY (`ptComposerFormLayoutSetControlID`),
  KEY `ptComposerControlTypeID` (`ptComposerControlTypeID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PageTypeComposerFormLayoutSetControls`
--

LOCK TABLES `PageTypeComposerFormLayoutSetControls` WRITE;
/*!40000 ALTER TABLE `PageTypeComposerFormLayoutSetControls` DISABLE KEYS */;
INSERT INTO `PageTypeComposerFormLayoutSetControls` VALUES (1,1,1,'O:78:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\NameCorePageProperty\":9:{s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:1;s:17:\"\0*\0propertyHandle\";s:4:\"name\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:4:\"name\";s:24:\"\0*\0ptComposerControlName\";s:9:\"Page Name\";s:27:\"\0*\0ptComposerControlIconSRC\";s:34:\"/concrete/attributes/text/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:5:\"error\";s:0:\"\";}',0,'Page Name',NULL,NULL,1),(2,1,1,'O:85:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\DescriptionCorePageProperty\":9:{s:17:\"\0*\0propertyHandle\";s:11:\"description\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:11:\"description\";s:24:\"\0*\0ptComposerControlName\";s:11:\"Description\";s:27:\"\0*\0ptComposerControlIconSRC\";s:38:\"/concrete/attributes/textarea/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:5:\"error\";s:0:\"\";}',1,NULL,NULL,NULL,0),(3,1,1,'O:81:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\UrlSlugCorePageProperty\":9:{s:17:\"\0*\0propertyHandle\";s:8:\"url_slug\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:8:\"url_slug\";s:24:\"\0*\0ptComposerControlName\";s:8:\"URL Slug\";s:27:\"\0*\0ptComposerControlIconSRC\";s:34:\"/concrete/attributes/text/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:5:\"error\";s:0:\"\";}',2,NULL,NULL,NULL,0),(4,1,1,'O:86:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\PageTemplateCorePageProperty\":9:{s:17:\"\0*\0propertyHandle\";s:13:\"page_template\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:13:\"page_template\";s:24:\"\0*\0ptComposerControlName\";s:13:\"Page Template\";s:27:\"\0*\0ptComposerControlIconSRC\";s:36:\"/concrete/attributes/select/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:5:\"error\";s:0:\"\";}',3,NULL,NULL,NULL,0),(5,1,1,'O:87:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\PublishTargetCorePageProperty\":9:{s:17:\"\0*\0propertyHandle\";s:14:\"publish_target\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:14:\"publish_target\";s:24:\"\0*\0ptComposerControlName\";s:13:\"Page Location\";s:27:\"\0*\0ptComposerControlIconSRC\";s:40:\"/concrete/attributes/image_file/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:5:\"error\";s:0:\"\";}',4,NULL,NULL,NULL,0),(6,2,3,'O:53:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\BlockControl\":12:{s:7:\"\0*\0btID\";i:12;s:30:\"\0*\0ptComposerControlTypeHandle\";s:5:\"block\";s:5:\"\0*\0bt\";b:0;s:4:\"\0*\0b\";b:0;s:13:\"\0*\0controller\";N;s:30:\"\0*\0ptComposerControlIdentifier\";i:12;s:24:\"\0*\0ptComposerControlName\";s:7:\"Content\";s:27:\"\0*\0ptComposerControlIconSRC\";s:33:\"/concrete/blocks/content/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:5:\"error\";s:0:\"\";}',0,'Body',NULL,NULL,0);
/*!40000 ALTER TABLE `PageTypeComposerFormLayoutSetControls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PageTypeComposerFormLayoutSets`
--

DROP TABLE IF EXISTS `PageTypeComposerFormLayoutSets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PageTypeComposerFormLayoutSets` (
  `ptComposerFormLayoutSetID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ptID` int(10) unsigned DEFAULT '0',
  `ptComposerFormLayoutSetName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ptComposerFormLayoutSetDescription` text COLLATE utf8_unicode_ci,
  `ptComposerFormLayoutSetDisplayOrder` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`ptComposerFormLayoutSetID`),
  KEY `ptID` (`ptID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PageTypeComposerFormLayoutSets`
--

LOCK TABLES `PageTypeComposerFormLayoutSets` WRITE;
/*!40000 ALTER TABLE `PageTypeComposerFormLayoutSets` DISABLE KEYS */;
INSERT INTO `PageTypeComposerFormLayoutSets` VALUES (1,5,'Basics','',0),(2,5,'Content','',1);
/*!40000 ALTER TABLE `PageTypeComposerFormLayoutSets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PageTypeComposerOutputBlocks`
--

DROP TABLE IF EXISTS `PageTypeComposerOutputBlocks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PageTypeComposerOutputBlocks` (
  `ptComposerOutputBlockID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cbDisplayOrder` int(10) unsigned DEFAULT '0',
  `ptComposerFormLayoutSetControlID` int(10) unsigned NOT NULL DEFAULT '0',
  `bID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`ptComposerOutputBlockID`),
  KEY `cID` (`cID`),
  KEY `bID` (`bID`,`cID`),
  KEY `ptComposerFormLayoutSetControlID` (`ptComposerFormLayoutSetControlID`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PageTypeComposerOutputBlocks`
--

LOCK TABLES `PageTypeComposerOutputBlocks` WRITE;
/*!40000 ALTER TABLE `PageTypeComposerOutputBlocks` DISABLE KEYS */;
INSERT INTO `PageTypeComposerOutputBlocks` VALUES (6,152,'Main',0,6,24),(9,153,'Main',0,6,27),(13,154,'Main',0,6,31),(19,155,'Main',0,6,37),(23,156,'Main',0,6,41);
/*!40000 ALTER TABLE `PageTypeComposerOutputBlocks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PageTypeComposerOutputControls`
--

DROP TABLE IF EXISTS `PageTypeComposerOutputControls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PageTypeComposerOutputControls` (
  `ptComposerOutputControlID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pTemplateID` int(10) unsigned DEFAULT '0',
  `ptID` int(10) unsigned DEFAULT '0',
  `ptComposerFormLayoutSetControlID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`ptComposerOutputControlID`),
  KEY `pTemplateID` (`pTemplateID`,`ptComposerFormLayoutSetControlID`),
  KEY `ptID` (`ptID`),
  KEY `ptComposerFormLayoutSetControlID` (`ptComposerFormLayoutSetControlID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PageTypeComposerOutputControls`
--

LOCK TABLES `PageTypeComposerOutputControls` WRITE;
/*!40000 ALTER TABLE `PageTypeComposerOutputControls` DISABLE KEYS */;
INSERT INTO `PageTypeComposerOutputControls` VALUES (1,5,5,6),(2,6,5,6),(3,7,5,6);
/*!40000 ALTER TABLE `PageTypeComposerOutputControls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PageTypePageTemplateDefaultPages`
--

DROP TABLE IF EXISTS `PageTypePageTemplateDefaultPages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PageTypePageTemplateDefaultPages` (
  `pTemplateID` int(10) unsigned NOT NULL DEFAULT '0',
  `ptID` int(10) unsigned NOT NULL DEFAULT '0',
  `cID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`pTemplateID`,`ptID`),
  KEY `ptID` (`ptID`),
  KEY `cID` (`cID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PageTypePageTemplateDefaultPages`
--

LOCK TABLES `PageTypePageTemplateDefaultPages` WRITE;
/*!40000 ALTER TABLE `PageTypePageTemplateDefaultPages` DISABLE KEYS */;
INSERT INTO `PageTypePageTemplateDefaultPages` VALUES (5,5,143);
/*!40000 ALTER TABLE `PageTypePageTemplateDefaultPages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PageTypePageTemplates`
--

DROP TABLE IF EXISTS `PageTypePageTemplates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PageTypePageTemplates` (
  `ptID` int(10) unsigned NOT NULL DEFAULT '0',
  `pTemplateID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ptID`,`pTemplateID`),
  KEY `pTemplateID` (`pTemplateID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PageTypePageTemplates`
--

LOCK TABLES `PageTypePageTemplates` WRITE;
/*!40000 ALTER TABLE `PageTypePageTemplates` DISABLE KEYS */;
/*!40000 ALTER TABLE `PageTypePageTemplates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PageTypePermissionAssignments`
--

DROP TABLE IF EXISTS `PageTypePermissionAssignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PageTypePermissionAssignments` (
  `ptID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ptID`,`pkID`,`paID`),
  KEY `pkID` (`pkID`),
  KEY `ptID` (`ptID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PageTypePermissionAssignments`
--

LOCK TABLES `PageTypePermissionAssignments` WRITE;
/*!40000 ALTER TABLE `PageTypePermissionAssignments` DISABLE KEYS */;
INSERT INTO `PageTypePermissionAssignments` VALUES (1,59,9),(2,59,9),(3,59,9),(4,59,9),(5,59,111),(6,59,9),(1,60,9),(2,60,9),(3,60,9),(4,60,9),(5,60,112),(6,60,9),(1,61,9),(2,61,9),(3,61,9),(4,61,9),(5,61,111),(6,61,9),(1,62,9),(2,62,9),(3,62,9),(4,62,9),(5,62,9),(6,62,9),(1,63,26),(2,63,27),(3,63,28),(4,63,29),(5,63,30),(6,63,136);
/*!40000 ALTER TABLE `PageTypePermissionAssignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PageTypePublishTargetTypes`
--

DROP TABLE IF EXISTS `PageTypePublishTargetTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PageTypePublishTargetTypes` (
  `ptPublishTargetTypeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ptPublishTargetTypeHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ptPublishTargetTypeName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ptPublishTargetTypeID`),
  KEY `ptPublishTargetTypeHandle` (`ptPublishTargetTypeHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PageTypePublishTargetTypes`
--

LOCK TABLES `PageTypePublishTargetTypes` WRITE;
/*!40000 ALTER TABLE `PageTypePublishTargetTypes` DISABLE KEYS */;
INSERT INTO `PageTypePublishTargetTypes` VALUES (1,'parent_page','Always publish below a certain page',0),(2,'page_type','Choose from pages of a certain type',0),(3,'all','Choose from all pages when publishing',0);
/*!40000 ALTER TABLE `PageTypePublishTargetTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PageTypes`
--

DROP TABLE IF EXISTS `PageTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PageTypes` (
  `ptID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ptName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ptHandle` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `ptPublishTargetTypeID` int(10) unsigned DEFAULT NULL,
  `ptDefaultPageTemplateID` int(10) unsigned DEFAULT NULL,
  `ptAllowedPageTemplates` varchar(1) COLLATE utf8_unicode_ci DEFAULT 'A',
  `ptIsInternal` tinyint(1) NOT NULL DEFAULT '0',
  `ptIsFrequentlyAdded` tinyint(1) NOT NULL DEFAULT '1',
  `ptDisplayOrder` int(10) unsigned DEFAULT NULL,
  `ptLaunchInComposer` tinyint(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `ptPublishTargetObject` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`ptID`),
  UNIQUE KEY `ptHandle` (`ptHandle`),
  KEY `pkgID` (`pkgID`,`ptID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PageTypes`
--

LOCK TABLES `PageTypes` WRITE;
/*!40000 ALTER TABLE `PageTypes` DISABLE KEYS */;
INSERT INTO `PageTypes` VALUES (1,'Stack','core_stack',3,0,'A',1,0,0,0,0,'O:68:\"Concrete\\Core\\Page\\Type\\PublishTarget\\Configuration\\AllConfiguration\":4:{s:5:\"error\";s:0:\"\";s:21:\"ptPublishTargetTypeID\";s:1:\"3\";s:25:\"ptPublishTargetTypeHandle\";s:3:\"all\";s:9:\"pkgHandle\";b:0;}'),(2,'Dashboard Primary + Five','dashboard_primary_five',3,0,'A',1,0,1,0,0,'O:68:\"Concrete\\Core\\Page\\Type\\PublishTarget\\Configuration\\AllConfiguration\":4:{s:5:\"error\";s:0:\"\";s:21:\"ptPublishTargetTypeID\";s:1:\"3\";s:25:\"ptPublishTargetTypeHandle\";s:3:\"all\";s:9:\"pkgHandle\";b:0;}'),(3,'Dashboard Header + Four Column','dashboard_header_four_col',3,0,'A',1,0,2,0,0,'O:68:\"Concrete\\Core\\Page\\Type\\PublishTarget\\Configuration\\AllConfiguration\":4:{s:5:\"error\";s:0:\"\";s:21:\"ptPublishTargetTypeID\";s:1:\"3\";s:25:\"ptPublishTargetTypeHandle\";s:3:\"all\";s:9:\"pkgHandle\";b:0;}'),(4,'Dashboard Full','dashboard_full',3,0,'A',1,0,3,0,0,'O:68:\"Concrete\\Core\\Page\\Type\\PublishTarget\\Configuration\\AllConfiguration\":4:{s:5:\"error\";s:0:\"\";s:21:\"ptPublishTargetTypeID\";s:1:\"3\";s:25:\"ptPublishTargetTypeHandle\";s:3:\"all\";s:9:\"pkgHandle\";b:0;}'),(5,'Page','page',3,5,'A',0,1,0,0,0,'O:68:\"Concrete\\Core\\Page\\Type\\PublishTarget\\Configuration\\AllConfiguration\":4:{s:5:\"error\";s:0:\"\";s:21:\"ptPublishTargetTypeID\";s:1:\"3\";s:25:\"ptPublishTargetTypeHandle\";s:3:\"all\";s:9:\"pkgHandle\";b:0;}'),(6,'Stack Category','core_stack_category',3,0,'A',1,0,4,0,0,'O:68:\"Concrete\\Core\\Page\\Type\\PublishTarget\\Configuration\\AllConfiguration\":4:{s:5:\"error\";s:0:\"\";s:21:\"ptPublishTargetTypeID\";s:1:\"3\";s:25:\"ptPublishTargetTypeHandle\";s:3:\"all\";s:9:\"pkgHandle\";b:0;}');
/*!40000 ALTER TABLE `PageTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PageWorkflowProgress`
--

DROP TABLE IF EXISTS `PageWorkflowProgress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PageWorkflowProgress` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `wpID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`wpID`),
  KEY `wpID` (`wpID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PageWorkflowProgress`
--

LOCK TABLES `PageWorkflowProgress` WRITE;
/*!40000 ALTER TABLE `PageWorkflowProgress` DISABLE KEYS */;
/*!40000 ALTER TABLE `PageWorkflowProgress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Pages`
--

DROP TABLE IF EXISTS `Pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Pages` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `ptID` int(10) unsigned NOT NULL DEFAULT '0',
  `cIsTemplate` tinyint(1) NOT NULL DEFAULT '0',
  `uID` int(10) unsigned DEFAULT NULL,
  `cIsCheckedOut` tinyint(1) NOT NULL DEFAULT '0',
  `cCheckedOutUID` int(10) unsigned DEFAULT NULL,
  `cCheckedOutDatetime` datetime DEFAULT NULL,
  `cCheckedOutDatetimeLastEdit` datetime DEFAULT NULL,
  `cOverrideTemplatePermissions` tinyint(1) NOT NULL DEFAULT '1',
  `cInheritPermissionsFromCID` int(10) unsigned NOT NULL DEFAULT '0',
  `cInheritPermissionsFrom` varchar(8) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'PARENT',
  `cFilename` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cPointerID` int(10) unsigned NOT NULL DEFAULT '0',
  `cPointerExternalLink` longtext COLLATE utf8_unicode_ci,
  `cPointerExternalLinkNewWindow` tinyint(1) NOT NULL DEFAULT '0',
  `cIsActive` tinyint(1) NOT NULL DEFAULT '1',
  `cChildren` int(10) unsigned NOT NULL DEFAULT '0',
  `cDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  `cParentID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `cDraftTargetParentPageID` int(10) unsigned NOT NULL DEFAULT '0',
  `cCacheFullPageContent` smallint(6) NOT NULL DEFAULT '-1',
  `cCacheFullPageContentOverrideLifetime` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `cCacheFullPageContentLifetimeCustom` int(10) unsigned NOT NULL DEFAULT '0',
  `cIsSystemPage` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`ptID`),
  KEY `cParentID` (`cParentID`),
  KEY `cIsActive` (`cID`,`cIsActive`),
  KEY `cCheckedOutUID` (`cCheckedOutUID`),
  KEY `uID` (`uID`,`cPointerID`),
  KEY `cPointerID` (`cPointerID`,`cDisplayOrder`),
  KEY `cIsTemplate` (`cID`,`cIsTemplate`),
  KEY `cIsSystemPage` (`cID`,`cIsSystemPage`),
  KEY `pkgID` (`pkgID`),
  KEY `cParentMaxDisplay` (`cParentID`,`cDisplayOrder`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Pages`
--

LOCK TABLES `Pages` WRITE;
/*!40000 ALTER TABLE `Pages` DISABLE KEYS */;
INSERT INTO `Pages` VALUES (1,0,0,1,0,NULL,NULL,NULL,1,1,'OVERRIDE',NULL,0,NULL,0,1,16,0,0,0,0,-1,'0',0,0),(2,0,0,1,0,NULL,NULL,NULL,1,2,'OVERRIDE','/dashboard/view.php',0,NULL,0,1,13,0,0,0,0,-1,'0',0,1),(3,0,0,1,0,NULL,NULL,NULL,1,3,'OVERRIDE','/dashboard/sitemap/view.php',0,NULL,0,1,3,0,2,0,0,-1,'0',0,1),(4,0,0,1,0,NULL,NULL,NULL,1,3,'PARENT','/dashboard/sitemap/full.php',0,NULL,0,1,0,0,3,0,0,-1,'0',0,1),(5,0,0,1,0,NULL,NULL,NULL,1,3,'PARENT','/dashboard/sitemap/explore.php',0,NULL,0,1,0,1,3,0,0,-1,'0',0,1),(6,0,0,1,0,NULL,NULL,NULL,1,3,'PARENT','/dashboard/sitemap/search.php',0,NULL,0,1,0,2,3,0,0,-1,'0',0,1),(7,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/files/view.php',0,NULL,0,1,4,1,2,0,0,-1,'0',0,1),(8,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/files/search.php',0,NULL,0,1,0,0,7,0,0,-1,'0',0,1),(9,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/files/attributes.php',0,NULL,0,1,0,1,7,0,0,-1,'0',0,1),(10,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/files/sets.php',0,NULL,0,1,0,2,7,0,0,-1,'0',0,1),(11,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/files/add_set.php',0,NULL,0,1,0,3,7,0,0,-1,'0',0,1),(12,0,0,1,0,NULL,NULL,NULL,1,12,'OVERRIDE','/dashboard/users/view.php',0,NULL,0,1,7,2,2,0,0,-1,'0',0,1),(13,0,0,1,0,NULL,NULL,NULL,1,12,'PARENT','/dashboard/users/search.php',0,NULL,0,1,0,0,12,0,0,-1,'0',0,1),(14,0,0,1,0,NULL,NULL,NULL,1,12,'PARENT','/dashboard/users/groups.php',0,NULL,0,1,1,1,12,0,0,-1,'0',0,1),(15,0,0,1,0,NULL,NULL,NULL,1,12,'PARENT','/dashboard/users/attributes.php',0,NULL,0,1,0,2,12,0,0,-1,'0',0,1),(16,0,0,1,0,NULL,NULL,NULL,1,12,'PARENT','/dashboard/users/add.php',0,NULL,0,1,0,3,12,0,0,-1,'0',0,1),(17,0,0,1,0,NULL,NULL,NULL,1,12,'PARENT','/dashboard/users/add_group.php',0,NULL,0,1,0,4,12,0,0,-1,'0',0,1),(18,0,0,1,0,NULL,NULL,NULL,1,12,'PARENT','/dashboard/users/groups/bulkupdate.php',0,NULL,0,1,0,0,14,0,0,-1,'0',0,1),(19,0,0,1,0,NULL,NULL,NULL,1,12,'PARENT','/dashboard/users/group_sets.php',0,NULL,0,1,0,5,12,0,0,-1,'0',0,1),(20,0,0,1,0,NULL,NULL,NULL,1,12,'PARENT','/dashboard/users/points/view.php',0,NULL,0,1,2,6,12,0,0,-1,'0',0,1),(21,0,0,1,0,NULL,NULL,NULL,1,12,'PARENT','/dashboard/users/points/assign.php',0,NULL,0,1,0,0,20,0,0,-1,'0',0,1),(22,0,0,1,0,NULL,NULL,NULL,1,12,'PARENT','/dashboard/users/points/actions.php',0,NULL,0,1,0,1,20,0,0,-1,'0',0,1),(23,0,0,1,0,NULL,NULL,NULL,1,23,'OVERRIDE','/dashboard/reports.php',0,NULL,0,1,3,3,2,0,0,-1,'0',0,1),(24,0,0,1,0,NULL,NULL,NULL,1,23,'PARENT','/dashboard/reports/forms.php',0,NULL,0,1,0,0,23,0,0,-1,'0',0,1),(25,0,0,1,0,NULL,NULL,NULL,1,23,'PARENT','/dashboard/reports/surveys.php',0,NULL,0,1,0,1,23,0,0,-1,'0',0,1),(26,0,0,1,0,NULL,NULL,NULL,1,23,'PARENT','/dashboard/reports/logs.php',0,NULL,0,1,0,2,23,0,0,-1,'0',0,1),(27,0,0,1,0,NULL,NULL,NULL,1,27,'OVERRIDE','/dashboard/pages/view.php',0,NULL,0,1,6,4,2,0,0,-1,'0',0,1),(28,0,0,1,0,NULL,NULL,NULL,1,27,'PARENT','/dashboard/pages/themes/view.php',0,NULL,0,1,1,0,27,0,0,-1,'0',0,1),(29,0,0,1,0,NULL,NULL,NULL,1,27,'PARENT','/dashboard/pages/themes/inspect.php',0,NULL,0,1,0,0,28,0,0,-1,'0',0,1),(30,0,0,1,0,NULL,NULL,NULL,1,27,'PARENT','/dashboard/pages/types/view.php',0,NULL,0,1,6,1,27,0,0,-1,'0',0,1),(31,0,0,1,0,NULL,NULL,NULL,1,27,'PARENT','/dashboard/pages/types/organize.php',0,NULL,0,1,0,0,30,0,0,-1,'0',0,1),(32,0,0,1,0,NULL,NULL,NULL,1,27,'PARENT','/dashboard/pages/types/add.php',0,NULL,0,1,0,1,30,0,0,-1,'0',0,1),(33,0,0,1,0,NULL,NULL,NULL,1,27,'PARENT','/dashboard/pages/types/form.php',0,NULL,0,1,0,2,30,0,0,-1,'0',0,1),(34,0,0,1,0,NULL,NULL,NULL,1,27,'PARENT','/dashboard/pages/types/output.php',0,NULL,0,1,0,3,30,0,0,-1,'0',0,1),(35,0,0,1,0,NULL,NULL,NULL,1,27,'PARENT','/dashboard/pages/types/attributes.php',0,NULL,0,1,0,4,30,0,0,-1,'0',0,1),(36,0,0,1,0,NULL,NULL,NULL,1,27,'PARENT','/dashboard/pages/types/permissions.php',0,NULL,0,1,0,5,30,0,0,-1,'0',0,1),(37,0,0,1,0,NULL,NULL,NULL,1,27,'PARENT','/dashboard/pages/templates/view.php',0,NULL,0,1,1,2,27,0,0,-1,'0',0,1),(38,0,0,1,0,NULL,NULL,NULL,1,27,'PARENT','/dashboard/pages/templates/add.php',0,NULL,0,1,0,0,37,0,0,-1,'0',0,1),(39,0,0,1,0,NULL,NULL,NULL,1,27,'PARENT','/dashboard/pages/attributes.php',0,NULL,0,1,0,3,27,0,0,-1,'0',0,1),(40,0,0,1,0,NULL,NULL,NULL,1,27,'PARENT','/dashboard/pages/single.php',0,NULL,0,1,0,4,27,0,0,-1,'0',0,1),(41,0,0,1,0,NULL,NULL,NULL,1,27,'PARENT','/dashboard/pages/feeds.php',0,NULL,0,1,0,5,27,0,0,-1,'0',0,1),(42,0,0,1,0,NULL,NULL,NULL,1,42,'OVERRIDE','/dashboard/conversations/view.php',0,NULL,0,1,1,5,2,0,0,-1,'0',0,1),(43,0,0,1,0,NULL,NULL,NULL,1,42,'PARENT','/dashboard/conversations/messages.php',0,NULL,0,1,0,0,42,0,0,-1,'0',0,1),(44,0,0,1,0,NULL,NULL,NULL,0,44,'OVERRIDE','/dashboard/workflow/view.php',0,NULL,0,1,2,6,2,0,0,-1,'0',0,1),(45,0,0,1,0,NULL,NULL,NULL,1,44,'PARENT','/dashboard/workflow/workflows.php',0,NULL,0,1,0,0,44,0,0,-1,'0',0,1),(46,0,0,1,0,NULL,NULL,NULL,1,44,'PARENT','/dashboard/workflow/me.php',0,NULL,0,1,0,1,44,0,0,-1,'0',0,1),(47,0,0,1,0,NULL,NULL,NULL,1,47,'OVERRIDE','/dashboard/blocks/view.php',0,NULL,0,1,3,7,2,0,0,-1,'0',0,1),(48,0,0,1,0,NULL,NULL,NULL,1,47,'PARENT','/dashboard/blocks/stacks/view.php',0,NULL,0,1,1,0,47,0,0,-1,'0',0,1),(49,0,0,1,0,NULL,NULL,NULL,1,47,'PARENT','/dashboard/blocks/permissions.php',0,NULL,0,1,0,1,47,0,0,-1,'0',0,1),(50,0,0,1,0,NULL,NULL,NULL,1,47,'PARENT','/dashboard/blocks/stacks/list/view.php',0,NULL,0,1,0,0,48,0,0,-1,'0',0,1),(51,0,0,1,0,NULL,NULL,NULL,1,47,'PARENT','/dashboard/blocks/types/view.php',0,NULL,0,1,0,2,47,0,0,-1,'0',0,1),(52,0,0,1,0,NULL,NULL,NULL,1,52,'OVERRIDE','/dashboard/extend/view.php',0,NULL,0,1,5,8,2,0,0,-1,'0',0,1),(53,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/news.php',0,NULL,0,1,0,9,2,0,0,-1,'0',0,1),(54,0,0,1,0,NULL,NULL,NULL,1,52,'PARENT','/dashboard/extend/install.php',0,NULL,0,1,0,0,52,0,0,-1,'0',0,1),(55,0,0,1,0,NULL,NULL,NULL,1,52,'PARENT','/dashboard/extend/update.php',0,NULL,0,1,0,1,52,0,0,-1,'0',0,1),(56,0,0,1,0,NULL,NULL,NULL,1,52,'PARENT','/dashboard/extend/connect.php',0,NULL,0,1,0,2,52,0,0,-1,'0',0,1),(57,0,0,1,0,NULL,NULL,NULL,1,52,'PARENT','/dashboard/extend/themes.php',0,NULL,0,1,0,3,52,0,0,-1,'0',0,1),(58,0,0,1,0,NULL,NULL,NULL,1,52,'PARENT','/dashboard/extend/addons.php',0,NULL,0,1,0,4,52,0,0,-1,'0',0,1),(59,0,0,1,0,NULL,NULL,NULL,1,59,'OVERRIDE','/dashboard/system/view.php',0,NULL,0,1,12,10,2,0,0,-1,'0',0,1),(60,0,0,1,0,NULL,NULL,NULL,1,59,'PARENT','/dashboard/system/basics/view.php',0,NULL,0,1,7,0,59,0,0,-1,'0',0,1),(61,0,0,1,0,NULL,NULL,NULL,1,59,'PARENT','/dashboard/system/basics/name.php',0,NULL,0,1,0,0,60,0,0,-1,'0',0,1),(62,0,0,1,0,NULL,NULL,NULL,1,59,'PARENT','/dashboard/system/basics/accessibility.php',0,NULL,0,1,0,1,60,0,0,-1,'0',0,1),(63,0,0,1,0,NULL,NULL,NULL,1,59,'PARENT','/dashboard/system/basics/social.php',0,NULL,0,1,0,2,60,0,0,-1,'0',0,1),(64,0,0,1,0,NULL,NULL,NULL,1,59,'PARENT','/dashboard/system/basics/icons.php',0,NULL,0,1,0,3,60,0,0,-1,'0',0,1),(65,0,0,1,0,NULL,NULL,NULL,1,59,'PARENT','/dashboard/system/basics/editor.php',0,NULL,0,1,0,4,60,0,0,-1,'0',0,1),(66,0,0,1,0,NULL,NULL,NULL,1,59,'PARENT','/dashboard/system/basics/multilingual/view.php',0,NULL,0,1,0,5,60,0,0,-1,'0',0,1),(67,0,0,1,0,NULL,NULL,NULL,1,59,'PARENT','/dashboard/system/basics/timezone.php',0,NULL,0,1,0,6,60,0,0,-1,'0',0,1),(68,0,0,1,0,NULL,NULL,NULL,1,59,'PARENT','/dashboard/system/multilingual/view.php',0,NULL,0,1,4,1,59,0,0,-1,'0',0,1),(69,0,0,1,0,NULL,NULL,NULL,1,59,'PARENT','/dashboard/system/multilingual/setup.php',0,NULL,0,1,0,0,68,0,0,-1,'0',0,1),(70,0,0,1,0,NULL,NULL,NULL,1,59,'PARENT','/dashboard/system/multilingual/page_report.php',0,NULL,0,1,0,1,68,0,0,-1,'0',0,1),(71,0,0,1,0,NULL,NULL,NULL,1,59,'PARENT','/dashboard/system/multilingual/translate_interface.php',0,NULL,0,1,0,2,68,0,0,-1,'0',0,1),(72,0,0,1,0,NULL,NULL,NULL,1,59,'PARENT','/dashboard/system/seo/view.php',0,NULL,0,1,5,2,59,0,0,-1,'0',0,1),(73,0,0,1,0,NULL,NULL,NULL,1,59,'PARENT','/dashboard/system/seo/urls.php',0,NULL,0,1,0,0,72,0,0,-1,'0',0,1),(74,0,0,1,0,NULL,NULL,NULL,1,59,'PARENT','/dashboard/system/seo/bulk.php',0,NULL,0,1,0,1,72,0,0,-1,'0',0,1),(75,0,0,1,0,NULL,NULL,NULL,1,59,'PARENT','/dashboard/system/seo/codes.php',0,NULL,0,1,0,2,72,0,0,-1,'0',0,1),(76,0,0,1,0,NULL,NULL,NULL,1,59,'PARENT','/dashboard/system/seo/excluded.php',0,NULL,0,1,0,3,72,0,0,-1,'0',0,1),(77,0,0,1,0,NULL,NULL,NULL,1,59,'PARENT','/dashboard/system/seo/searchindex.php',0,NULL,0,1,0,4,72,0,0,-1,'0',0,1),(78,0,0,1,0,NULL,NULL,NULL,1,59,'PARENT','/dashboard/system/files/view.php',0,NULL,0,1,4,3,59,0,0,-1,'0',0,1),(79,0,0,1,0,NULL,NULL,NULL,1,59,'PARENT','/dashboard/system/files/permissions.php',0,NULL,0,1,0,0,78,0,0,-1,'0',0,1),(80,0,0,1,0,NULL,NULL,NULL,1,59,'PARENT','/dashboard/system/files/filetypes.php',0,NULL,0,1,0,1,78,0,0,-1,'0',0,1),(81,0,0,1,0,NULL,NULL,NULL,1,59,'PARENT','/dashboard/system/files/thumbnails.php',0,NULL,0,1,0,2,78,0,0,-1,'0',0,1),(82,0,0,1,0,NULL,NULL,NULL,1,59,'PARENT','/dashboard/system/files/storage.php',0,NULL,0,1,0,3,78,0,0,-1,'0',0,1),(83,0,0,1,0,NULL,NULL,NULL,1,59,'PARENT','/dashboard/system/optimization/view.php',0,NULL,0,1,4,4,59,0,0,-1,'0',0,1),(84,0,0,1,0,NULL,NULL,NULL,1,59,'PARENT','/dashboard/system/optimization/cache.php',0,NULL,0,1,0,0,83,0,0,-1,'0',0,1),(85,0,0,1,0,NULL,NULL,NULL,1,59,'PARENT','/dashboard/system/optimization/clearcache.php',0,NULL,0,1,0,1,83,0,0,-1,'0',0,1),(86,0,0,1,0,NULL,NULL,NULL,1,59,'PARENT','/dashboard/system/optimization/jobs.php',0,NULL,0,1,0,2,83,0,0,-1,'0',0,1),(87,0,0,1,0,NULL,NULL,NULL,1,59,'PARENT','/dashboard/system/optimization/query_log.php',0,NULL,0,1,0,3,83,0,0,-1,'0',0,1),(88,0,0,1,0,NULL,NULL,NULL,1,59,'PARENT','/dashboard/system/permissions/view.php',0,NULL,0,1,8,5,59,0,0,-1,'0',0,1),(89,0,0,1,0,NULL,NULL,NULL,1,59,'PARENT','/dashboard/system/permissions/site.php',0,NULL,0,1,0,0,88,0,0,-1,'0',0,1),(90,0,0,1,0,NULL,NULL,NULL,1,59,'PARENT','/dashboard/system/permissions/tasks.php',0,NULL,0,1,0,1,88,0,0,-1,'0',0,1),(91,0,0,1,0,NULL,NULL,NULL,1,59,'PARENT','/dashboard/system/permissions/users.php',0,NULL,0,1,0,2,88,0,0,-1,'0',0,1),(92,0,0,1,0,NULL,NULL,NULL,1,59,'PARENT','/dashboard/system/permissions/advanced.php',0,NULL,0,1,0,3,88,0,0,-1,'0',0,1),(93,0,0,1,0,NULL,NULL,NULL,1,59,'PARENT','/dashboard/system/permissions/blacklist.php',0,NULL,0,1,0,4,88,0,0,-1,'0',0,1),(94,0,0,1,0,NULL,NULL,NULL,1,59,'PARENT','/dashboard/system/permissions/captcha.php',0,NULL,0,1,0,5,88,0,0,-1,'0',0,1),(95,0,0,1,0,NULL,NULL,NULL,1,59,'PARENT','/dashboard/system/permissions/antispam.php',0,NULL,0,1,0,6,88,0,0,-1,'0',0,1),(96,0,0,1,0,NULL,NULL,NULL,1,59,'PARENT','/dashboard/system/permissions/maintenance.php',0,NULL,0,1,0,7,88,0,0,-1,'0',0,1),(97,0,0,1,0,NULL,NULL,NULL,1,59,'PARENT','/dashboard/system/registration/view.php',0,NULL,0,1,4,6,59,0,0,-1,'0',0,1),(98,0,0,1,0,NULL,NULL,NULL,1,59,'PARENT','/dashboard/system/registration/postlogin.php',0,NULL,0,1,0,0,97,0,0,-1,'0',0,1),(99,0,0,1,0,NULL,NULL,NULL,1,59,'PARENT','/dashboard/system/registration/profiles.php',0,NULL,0,1,0,1,97,0,0,-1,'0',0,1),(100,0,0,1,0,NULL,NULL,NULL,1,59,'PARENT','/dashboard/system/registration/open.php',0,NULL,0,1,0,2,97,0,0,-1,'0',0,1),(101,0,0,1,0,NULL,NULL,NULL,1,59,'PARENT','/dashboard/system/registration/authentication.php',0,NULL,0,1,0,3,97,0,0,-1,'0',0,1),(102,0,0,1,0,NULL,NULL,NULL,1,59,'PARENT','/dashboard/system/mail/view.php',0,NULL,0,1,2,7,59,0,0,-1,'0',0,1),(103,0,0,1,0,NULL,NULL,NULL,1,59,'PARENT','/dashboard/system/mail/method.php',0,NULL,0,1,1,0,102,0,0,-1,'0',0,1),(104,0,0,1,0,NULL,NULL,NULL,1,59,'PARENT','/dashboard/system/mail/method/test.php',0,NULL,0,1,0,0,103,0,0,-1,'0',0,1),(105,0,0,1,0,NULL,NULL,NULL,1,59,'PARENT','/dashboard/system/mail/importers.php',0,NULL,0,1,0,1,102,0,0,-1,'0',0,1),(106,0,0,1,0,NULL,NULL,NULL,1,59,'PARENT','/dashboard/system/conversations/view.php',0,NULL,0,1,4,8,59,0,0,-1,'0',0,1),(107,0,0,1,0,NULL,NULL,NULL,1,59,'PARENT','/dashboard/system/conversations/settings.php',0,NULL,0,1,0,0,106,0,0,-1,'0',0,1),(108,0,0,1,0,NULL,NULL,NULL,1,59,'PARENT','/dashboard/system/conversations/points.php',0,NULL,0,1,0,1,106,0,0,-1,'0',0,1),(109,0,0,1,0,NULL,NULL,NULL,1,59,'PARENT','/dashboard/system/conversations/bannedwords.php',0,NULL,0,1,0,2,106,0,0,-1,'0',0,1),(110,0,0,1,0,NULL,NULL,NULL,1,59,'PARENT','/dashboard/system/conversations/permissions.php',0,NULL,0,1,0,3,106,0,0,-1,'0',0,1),(111,0,0,1,0,NULL,NULL,NULL,1,59,'PARENT','/dashboard/system/attributes/view.php',0,NULL,0,1,3,9,59,0,0,-1,'0',0,1),(112,0,0,1,0,NULL,NULL,NULL,1,59,'PARENT','/dashboard/system/attributes/sets.php',0,NULL,0,1,0,0,111,0,0,-1,'0',0,1),(113,0,0,1,0,NULL,NULL,NULL,1,59,'PARENT','/dashboard/system/attributes/types.php',0,NULL,0,1,0,1,111,0,0,-1,'0',0,1),(114,0,0,1,0,NULL,NULL,NULL,1,59,'PARENT','/dashboard/system/attributes/topics/view.php',0,NULL,0,1,1,2,111,0,0,-1,'0',0,1),(115,0,0,1,0,NULL,NULL,NULL,1,59,'PARENT','/dashboard/system/attributes/topics/add.php',0,NULL,0,1,0,0,114,0,0,-1,'0',0,1),(116,0,0,1,0,NULL,NULL,NULL,1,59,'PARENT','/dashboard/system/environment/view.php',0,NULL,0,1,5,10,59,0,0,-1,'0',0,1),(117,0,0,1,0,NULL,NULL,NULL,1,59,'PARENT','/dashboard/system/environment/info.php',0,NULL,0,1,0,0,116,0,0,-1,'0',0,1),(118,0,0,1,0,NULL,NULL,NULL,1,59,'PARENT','/dashboard/system/environment/debug.php',0,NULL,0,1,0,1,116,0,0,-1,'0',0,1),(119,0,0,1,0,NULL,NULL,NULL,1,59,'PARENT','/dashboard/system/environment/logging.php',0,NULL,0,1,0,2,116,0,0,-1,'0',0,1),(120,0,0,1,0,NULL,NULL,NULL,1,59,'PARENT','/dashboard/system/environment/proxy.php',0,NULL,0,1,0,3,116,0,0,-1,'0',0,1),(121,0,0,1,0,NULL,NULL,NULL,1,59,'PARENT','/dashboard/system/environment/entities.php',0,NULL,0,1,0,4,116,0,0,-1,'0',0,1),(122,0,0,1,0,NULL,NULL,NULL,1,59,'PARENT','/dashboard/system/backup/view.php',0,NULL,0,1,2,11,59,0,0,-1,'0',0,1),(123,0,0,1,0,NULL,NULL,NULL,1,59,'PARENT','/dashboard/system/backup/backup.php',0,NULL,0,1,0,0,122,0,0,-1,'0',0,1),(124,0,0,1,0,NULL,NULL,NULL,1,59,'PARENT','/dashboard/system/backup/update.php',0,NULL,0,1,0,1,122,0,0,-1,'0',0,1),(125,0,0,1,0,NULL,NULL,NULL,1,2,'PARENT',NULL,0,NULL,0,1,0,11,2,0,0,-1,'0',0,1),(126,0,0,1,0,NULL,NULL,NULL,1,126,'OVERRIDE',NULL,0,NULL,0,1,0,12,2,0,0,-1,'0',0,1),(127,0,0,1,0,NULL,NULL,NULL,1,127,'OVERRIDE','/!drafts/view.php',0,NULL,0,1,0,0,0,0,0,-1,'0',0,1),(128,0,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/!trash/view.php',0,NULL,0,1,0,0,0,0,0,-1,'0',0,1),(129,0,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/!stacks/view.php',0,NULL,0,1,13,0,0,0,0,-1,'0',0,1),(130,0,0,1,0,NULL,NULL,NULL,1,130,'OVERRIDE','/login.php',0,NULL,0,1,0,0,0,0,0,-1,'0',0,1),(131,0,0,1,0,NULL,NULL,NULL,1,131,'OVERRIDE','/register.php',0,NULL,0,1,0,0,0,0,0,-1,'0',0,1),(132,0,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/account/view.php',0,NULL,0,1,3,0,0,0,0,-1,'0',0,1),(133,0,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/account/edit_profile.php',0,NULL,0,1,0,0,132,0,0,-1,'0',0,1),(134,0,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/account/avatar.php',0,NULL,0,1,0,1,132,0,0,-1,'0',0,1),(135,0,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/account/messages/view.php',0,NULL,0,1,1,2,132,0,0,-1,'0',0,1),(136,0,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/account/messages/inbox.php',0,NULL,0,1,0,0,135,0,0,-1,'0',0,1),(137,0,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/members/view.php',0,NULL,0,1,2,0,1,0,0,-1,'0',0,1),(138,0,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/members/profile.php',0,NULL,0,1,0,0,137,0,0,-1,'0',0,1),(139,0,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/members/directory.php',0,NULL,0,1,0,1,137,0,0,-1,'0',0,1),(140,0,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/page_not_found.php',0,NULL,0,1,0,1,0,0,0,-1,'0',0,1),(141,0,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/page_forbidden.php',0,NULL,0,1,0,1,0,0,0,-1,'0',0,1),(142,0,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/download_file.php',0,NULL,0,1,0,1,1,0,0,-1,'0',0,1),(143,5,1,NULL,0,NULL,NULL,NULL,1,143,'OVERRIDE',NULL,0,NULL,0,1,0,0,0,0,0,-1,'0',0,0),(144,1,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,0,129,0,0,-1,'0',0,1),(145,1,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,1,129,0,0,-1,'0',0,1),(146,1,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,2,129,0,0,-1,'0',0,1),(147,1,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,3,129,0,0,-1,'0',0,1),(148,1,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,4,129,0,0,-1,'0',0,1),(149,1,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,5,129,0,0,-1,'0',0,1),(150,1,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,6,129,0,0,-1,'0',0,1),(151,1,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,7,129,0,0,-1,'0',0,1),(152,5,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,1,1,0,1,-1,'0',0,0),(153,5,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,2,1,0,1,-1,'0',0,0),(154,5,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,3,1,0,1,-1,'0',0,0),(155,5,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,4,1,0,1,-1,'0',0,0),(156,5,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,0,1,0,1,-1,'0',0,0),(157,1,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,8,129,0,0,-1,'0',0,1),(158,1,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,9,129,0,0,-1,'0',0,1),(159,1,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,10,129,0,0,-1,'0',0,1),(160,0,0,1,0,NULL,NULL,NULL,1,59,'PARENT','/dashboard/system/multilingual/copy.php',0,NULL,0,1,0,3,68,0,0,-1,'0',0,1),(161,1,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,11,129,0,0,-1,'0',0,1),(162,1,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,12,129,0,0,-1,'0',0,1);
/*!40000 ALTER TABLE `Pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PermissionAccess`
--

DROP TABLE IF EXISTS `PermissionAccess`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PermissionAccess` (
  `paID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `paIsInUse` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionAccess`
--

LOCK TABLES `PermissionAccess` WRITE;
/*!40000 ALTER TABLE `PermissionAccess` DISABLE KEYS */;
INSERT INTO `PermissionAccess` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(6,1),(7,1),(8,1),(9,1),(10,1),(11,1),(12,1),(13,1),(14,1),(15,1),(16,1),(17,1),(18,1),(19,1),(20,1),(21,1),(22,1),(23,1),(24,1),(25,1),(26,1),(27,1),(28,1),(29,1),(30,1),(31,1),(32,1),(33,1),(34,1),(35,1),(36,1),(37,1),(38,1),(39,1),(40,1),(41,1),(42,1),(43,1),(44,1),(45,1),(46,1),(47,1),(48,1),(49,1),(50,1),(51,1),(52,1),(53,1),(54,1),(55,1),(56,1),(57,1),(58,1),(59,1),(60,1),(61,1),(62,1),(63,1),(64,1),(65,1),(66,1),(67,1),(68,1),(69,1),(70,1),(71,1),(72,1),(73,1),(74,1),(75,1),(76,1),(77,1),(78,1),(79,1),(80,1),(81,1),(82,1),(83,1),(84,1),(85,1),(86,1),(87,1),(88,1),(89,1),(90,1),(91,1),(92,1),(93,1),(94,1),(95,1),(96,1),(97,0),(98,0),(99,0),(100,0),(101,0),(102,0),(103,0),(104,1),(105,0),(106,1),(107,1),(108,1),(109,1),(110,1),(111,1),(112,1),(113,1),(114,1),(115,1),(116,1),(117,0),(118,1),(119,1),(120,1),(121,1),(122,1),(123,1),(124,1),(125,1),(126,1),(127,0),(128,1),(129,1),(130,1),(131,1),(132,1),(133,1),(134,1),(135,1),(136,1);
/*!40000 ALTER TABLE `PermissionAccess` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PermissionAccessEntities`
--

DROP TABLE IF EXISTS `PermissionAccessEntities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PermissionAccessEntities` (
  `peID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `petID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`peID`),
  KEY `petID` (`petID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionAccessEntities`
--

LOCK TABLES `PermissionAccessEntities` WRITE;
/*!40000 ALTER TABLE `PermissionAccessEntities` DISABLE KEYS */;
INSERT INTO `PermissionAccessEntities` VALUES (1,1),(3,1),(5,1),(8,1),(9,1),(10,1),(11,1),(7,3),(2,5),(6,6),(4,7);
/*!40000 ALTER TABLE `PermissionAccessEntities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PermissionAccessEntityGroupSets`
--

DROP TABLE IF EXISTS `PermissionAccessEntityGroupSets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PermissionAccessEntityGroupSets` (
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `gsID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`peID`,`gsID`),
  KEY `gsID` (`gsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionAccessEntityGroupSets`
--

LOCK TABLES `PermissionAccessEntityGroupSets` WRITE;
/*!40000 ALTER TABLE `PermissionAccessEntityGroupSets` DISABLE KEYS */;
INSERT INTO `PermissionAccessEntityGroupSets` VALUES (7,1);
/*!40000 ALTER TABLE `PermissionAccessEntityGroupSets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PermissionAccessEntityGroups`
--

DROP TABLE IF EXISTS `PermissionAccessEntityGroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PermissionAccessEntityGroups` (
  `pegID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pegID`),
  KEY `peID` (`peID`),
  KEY `gID` (`gID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionAccessEntityGroups`
--

LOCK TABLES `PermissionAccessEntityGroups` WRITE;
/*!40000 ALTER TABLE `PermissionAccessEntityGroups` DISABLE KEYS */;
INSERT INTO `PermissionAccessEntityGroups` VALUES (1,1,3),(2,3,1),(3,5,2),(4,8,8),(5,9,11),(6,10,7),(7,11,6);
/*!40000 ALTER TABLE `PermissionAccessEntityGroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PermissionAccessEntityTypeCategories`
--

DROP TABLE IF EXISTS `PermissionAccessEntityTypeCategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PermissionAccessEntityTypeCategories` (
  `petID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkCategoryID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`petID`,`pkCategoryID`),
  KEY `pkCategoryID` (`pkCategoryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionAccessEntityTypeCategories`
--

LOCK TABLES `PermissionAccessEntityTypeCategories` WRITE;
/*!40000 ALTER TABLE `PermissionAccessEntityTypeCategories` DISABLE KEYS */;
INSERT INTO `PermissionAccessEntityTypeCategories` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(1,4),(2,4),(3,4),(4,4),(1,5),(2,5),(3,5),(4,5),(6,5),(1,6),(2,6),(3,6),(4,6),(6,6),(1,7),(2,7),(3,7),(4,7),(1,8),(2,8),(3,8),(4,8),(1,9),(2,9),(3,9),(4,9),(1,10),(2,10),(3,10),(4,10),(1,11),(2,11),(3,11),(4,11),(1,12),(2,12),(3,12),(4,12),(1,13),(2,13),(3,13),(4,13),(1,14),(2,14),(3,14),(4,14),(5,14),(1,15),(2,15),(3,15),(4,15),(1,16),(2,16),(3,16),(4,16),(1,17),(2,17),(3,17),(4,17),(1,18),(2,18),(3,18),(4,18),(1,19),(2,19),(3,19),(4,19),(7,19),(1,20),(2,20),(3,20),(4,20),(7,20),(1,21),(2,21),(4,21);
/*!40000 ALTER TABLE `PermissionAccessEntityTypeCategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PermissionAccessEntityTypes`
--

DROP TABLE IF EXISTS `PermissionAccessEntityTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PermissionAccessEntityTypes` (
  `petID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `petHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `petName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`petID`),
  UNIQUE KEY `petHandle` (`petHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionAccessEntityTypes`
--

LOCK TABLES `PermissionAccessEntityTypes` WRITE;
/*!40000 ALTER TABLE `PermissionAccessEntityTypes` DISABLE KEYS */;
INSERT INTO `PermissionAccessEntityTypes` VALUES (1,'group','Group',0),(2,'user','User',0),(3,'group_set','Group Set',0),(4,'group_combination','Group Combination',0),(5,'page_owner','Page Owner',0),(6,'file_uploader','File Uploader',0),(7,'conversation_message_author','Message Author',0);
/*!40000 ALTER TABLE `PermissionAccessEntityTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PermissionAccessEntityUsers`
--

DROP TABLE IF EXISTS `PermissionAccessEntityUsers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PermissionAccessEntityUsers` (
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`peID`,`uID`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionAccessEntityUsers`
--

LOCK TABLES `PermissionAccessEntityUsers` WRITE;
/*!40000 ALTER TABLE `PermissionAccessEntityUsers` DISABLE KEYS */;
/*!40000 ALTER TABLE `PermissionAccessEntityUsers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PermissionAccessList`
--

DROP TABLE IF EXISTS `PermissionAccessList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PermissionAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `pdID` int(10) unsigned NOT NULL DEFAULT '0',
  `accessType` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`),
  KEY `accessType` (`accessType`),
  KEY `peID` (`peID`),
  KEY `peID_accessType` (`peID`,`accessType`),
  KEY `pdID` (`pdID`),
  KEY `permissionAccessDuration` (`paID`,`pdID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionAccessList`
--

LOCK TABLES `PermissionAccessList` WRITE;
/*!40000 ALTER TABLE `PermissionAccessList` DISABLE KEYS */;
INSERT INTO `PermissionAccessList` VALUES (1,1,0,10),(2,1,0,10),(3,1,0,10),(4,1,0,10),(5,1,0,10),(6,1,0,10),(7,1,0,10),(8,1,0,10),(9,1,0,10),(10,1,0,10),(11,1,0,10),(12,1,0,10),(13,1,0,10),(14,1,0,10),(15,1,0,10),(16,1,0,10),(17,1,0,10),(18,1,0,10),(19,1,0,10),(20,1,0,10),(21,1,0,10),(22,1,0,10),(23,1,0,10),(24,1,0,10),(25,1,0,10),(26,2,0,10),(27,2,0,10),(28,2,0,10),(29,2,0,10),(30,2,0,10),(31,3,0,10),(32,1,0,10),(32,3,0,10),(33,1,0,10),(34,1,0,10),(35,1,0,10),(36,1,0,10),(37,1,0,10),(38,1,0,10),(39,1,0,10),(40,1,0,10),(41,3,0,10),(42,1,0,10),(43,1,0,10),(44,1,0,10),(45,1,0,10),(46,1,0,10),(47,1,0,10),(48,1,0,10),(49,1,0,10),(50,1,0,10),(51,1,0,10),(52,1,0,10),(53,1,0,10),(54,1,0,10),(55,1,0,10),(56,1,0,10),(57,1,0,10),(58,3,0,10),(59,3,0,10),(60,1,0,10),(61,3,0,10),(62,1,0,10),(63,1,0,10),(64,1,0,10),(65,1,0,10),(66,1,0,10),(67,1,0,10),(68,1,0,10),(69,1,0,10),(70,1,0,10),(71,1,0,10),(72,1,0,10),(73,1,0,10),(74,1,0,10),(75,1,0,10),(76,1,0,10),(77,1,0,10),(77,2,0,10),(78,1,0,10),(78,2,0,10),(79,1,0,10),(79,2,0,10),(80,1,0,10),(80,2,0,10),(81,1,0,10),(81,2,0,10),(82,1,0,10),(82,2,0,10),(83,1,0,10),(83,2,0,10),(84,1,0,10),(85,1,0,10),(86,1,0,10),(87,1,0,10),(88,1,0,10),(89,3,0,10),(90,3,0,10),(91,1,0,10),(91,4,0,10),(92,1,0,10),(92,4,0,10),(93,1,0,10),(93,5,0,10),(94,1,0,10),(95,1,0,10),(96,1,0,10),(97,1,0,10),(97,7,0,10),(98,1,0,10),(98,7,0,10),(99,1,0,10),(99,7,0,10),(100,1,0,10),(100,7,0,10),(101,1,0,10),(101,7,0,10),(102,1,0,10),(103,1,0,10),(103,7,0,10),(104,1,0,10),(104,7,0,10),(105,1,0,10),(105,7,0,10),(106,1,0,10),(106,7,0,10),(106,8,0,10),(107,1,0,10),(107,7,0,10),(107,9,0,10),(108,1,0,10),(108,7,0,10),(109,1,0,10),(110,1,0,10),(110,8,0,10),(110,10,0,10),(111,1,0,10),(111,10,0,10),(112,1,0,10),(112,8,0,10),(112,10,0,10),(113,3,0,10),(114,1,0,10),(114,8,0,10),(114,10,0,10),(115,1,0,10),(115,10,0,10),(116,1,0,10),(116,8,0,10),(116,10,0,10),(117,1,0,10),(117,10,0,10),(118,1,0,10),(118,10,0,10),(119,1,0,10),(119,8,0,10),(119,9,0,10),(119,10,0,10),(119,11,0,10),(120,1,0,10),(120,8,0,10),(120,10,0,10),(120,11,0,10),(121,1,0,10),(121,8,0,10),(121,10,0,10),(121,11,0,10),(122,1,0,10),(122,10,0,10),(122,11,0,10),(123,1,0,10),(124,1,0,10),(124,10,0,10),(125,1,0,10),(125,10,0,10),(126,1,0,10),(127,1,0,10),(128,1,0,10),(128,8,0,10),(128,9,0,10),(128,10,0,10),(129,1,0,10),(129,10,0,10),(129,11,0,10),(130,1,0,10),(130,10,0,10),(130,11,0,10),(131,1,0,10),(131,10,0,10),(132,1,0,10),(133,1,0,10),(134,1,0,10),(136,2,0,10);
/*!40000 ALTER TABLE `PermissionAccessList` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PermissionAccessWorkflows`
--

DROP TABLE IF EXISTS `PermissionAccessWorkflows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PermissionAccessWorkflows` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `wfID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`wfID`),
  KEY `wfID` (`wfID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionAccessWorkflows`
--

LOCK TABLES `PermissionAccessWorkflows` WRITE;
/*!40000 ALTER TABLE `PermissionAccessWorkflows` DISABLE KEYS */;
/*!40000 ALTER TABLE `PermissionAccessWorkflows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PermissionAssignments`
--

DROP TABLE IF EXISTS `PermissionAssignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PermissionAssignments` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`pkID`),
  KEY `pkID` (`pkID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionAssignments`
--

LOCK TABLES `PermissionAssignments` WRITE;
/*!40000 ALTER TABLE `PermissionAssignments` DISABLE KEYS */;
INSERT INTO `PermissionAssignments` VALUES (1,19),(2,20),(118,74),(118,75),(118,76),(7,77),(6,78),(118,79),(118,80),(9,86),(110,87),(110,89),(12,90),(13,91),(14,92),(15,93),(16,94),(17,95),(18,96),(20,97),(20,98),(21,99),(22,100),(118,101),(24,102),(25,103);
/*!40000 ALTER TABLE `PermissionAssignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PermissionDurationObjects`
--

DROP TABLE IF EXISTS `PermissionDurationObjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PermissionDurationObjects` (
  `pdID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pdObject` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`pdID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionDurationObjects`
--

LOCK TABLES `PermissionDurationObjects` WRITE;
/*!40000 ALTER TABLE `PermissionDurationObjects` DISABLE KEYS */;
/*!40000 ALTER TABLE `PermissionDurationObjects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PermissionKeyCategories`
--

DROP TABLE IF EXISTS `PermissionKeyCategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PermissionKeyCategories` (
  `pkCategoryID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pkCategoryHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`pkCategoryID`),
  UNIQUE KEY `pkCategoryHandle` (`pkCategoryHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionKeyCategories`
--

LOCK TABLES `PermissionKeyCategories` WRITE;
/*!40000 ALTER TABLE `PermissionKeyCategories` DISABLE KEYS */;
INSERT INTO `PermissionKeyCategories` VALUES (1,'page',NULL),(2,'single_page',NULL),(3,'stack',NULL),(4,'user',NULL),(5,'file_set',NULL),(6,'file',NULL),(7,'area',NULL),(8,'block_type',NULL),(9,'block',NULL),(10,'admin',NULL),(11,'sitemap',NULL),(12,'marketplace_newsflow',NULL),(13,'basic_workflow',NULL),(14,'page_type',NULL),(15,'gathering',NULL),(16,'group_tree_node',NULL),(17,'topic_category_tree_node',NULL),(18,'topic_tree_node',NULL),(19,'conversation',NULL),(20,'conversation_message',NULL),(21,'multilingual_section',NULL);
/*!40000 ALTER TABLE `PermissionKeyCategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PermissionKeys`
--

DROP TABLE IF EXISTS `PermissionKeys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PermissionKeys` (
  `pkID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pkHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkCanTriggerWorkflow` tinyint(1) NOT NULL DEFAULT '0',
  `pkHasCustomClass` tinyint(1) NOT NULL DEFAULT '0',
  `pkDescription` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pkCategoryID` int(10) unsigned DEFAULT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`pkID`),
  UNIQUE KEY `akHandle` (`pkHandle`),
  KEY `pkCategoryID` (`pkCategoryID`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionKeys`
--

LOCK TABLES `PermissionKeys` WRITE;
/*!40000 ALTER TABLE `PermissionKeys` DISABLE KEYS */;
INSERT INTO `PermissionKeys` VALUES (1,'view_page','View',0,0,'Can see a page exists and read its content.',1,0),(2,'view_page_versions','View Versions',0,0,'Can view the page versions dialog and read past versions of a page.',1,0),(3,'view_page_in_sitemap','View Page in Sitemap',0,0,'Controls whether a user can see a page in the sitemap or intelligent search.',1,0),(4,'preview_page_as_user','Preview Page As User',0,0,'Ability to see what this page will look like at a specific time in the future as a specific user.',1,0),(5,'edit_page_properties','Edit Properties',0,1,'Ability to change anything in the Page Properties menu.',1,0),(6,'edit_page_contents','Edit Contents',0,0,'Ability to make edits to at least some of the content in the page. You can lock down different block areas and specific blocks by clicking Permissions on them as well. ',1,0),(7,'edit_page_speed_settings','Edit Speed Settings',0,0,'Ability to change caching settings.',1,0),(8,'edit_page_theme','Change Theme',0,1,'Ability to change just the theme for this page.',1,0),(9,'edit_page_template','Change Page Template',0,0,'Ability to change just the page template for this page.',1,0),(10,'edit_page_page_type','Edit Page Type',0,0,'Change the type of an existing page.',1,0),(11,'edit_page_permissions','Edit Permissions',1,0,'Ability to change permissions for this page. Warning: by granting this a user could give themselves more access.',1,0),(12,'delete_page','Delete',1,0,'Ability to move this page to the site\'s Trash.',1,0),(13,'delete_page_versions','Delete Versions',1,0,'Ability to remove old versions of this page.',1,0),(14,'approve_page_versions','Approve Changes',1,0,'Can publish an unapproved version of the page.',1,0),(15,'add_subpage','Add Sub-Page',0,1,'Can add a page beneath the current page.',1,0),(16,'move_or_copy_page','Move or Copy Page',1,0,'Can move or copy this page to another location.',1,0),(17,'schedule_page_contents_guest_access','Schedule Guest Access',0,0,'Can control scheduled guest access to this page.',1,0),(18,'edit_page_multilingual_settings','Edit Multilingual Settings',0,0,'Controls whether a user can see the multilingual settings menu, re-map a page or set a page as ignored in multilingual settings.',1,0),(19,'add_block','Add Block',0,1,'Can add a block to any area on the site. If someone is added here they can add blocks to any area (unless that area has permissions that override these global permissions.)',8,0),(20,'add_stack','Add Stack',0,0,'Can add a stack or block from a stack to any area on the site. If someone is added here they can add stacks to any area (unless that area has permissions that override these global permissions.)',8,0),(21,'view_area','View Area',0,0,'Can view the area and its contents.',7,0),(22,'edit_area_contents','Edit Area Contents',0,0,'Can edit blocks within this area.',7,0),(23,'add_block_to_area','Add Block to Area',0,1,'Can add blocks to this area. This setting overrides the global Add Block permission for this area.',7,0),(24,'add_stack_to_area','Add Stack to Area',0,0,'Can add stacks to this area. This setting overrides the global Add Stack permission for this area.',7,0),(25,'add_layout_to_area','Add Layouts to Area',0,0,'Controls whether users get the ability to add layouts to a particular area.',7,0),(26,'edit_area_design','Edit Area Design',0,0,'Controls whether users see design controls and can modify an area\'s custom CSS.',7,0),(27,'edit_area_permissions','Edit Area Permissions',0,0,'Controls whether users can access the permissions on an area. Custom area permissions could override those of the page.',7,0),(28,'delete_area_contents','Delete Area Contents',0,0,'Controls whether users can delete blocks from this area.',7,0),(29,'schedule_area_contents_guest_access','Schedule Guest Access',0,0,'Controls whether users can schedule guest access permissions on blocks in this area. Guest Access is a shortcut for granting permissions just to the Guest Group.',7,0),(30,'view_block','View Block',0,0,'Controls whether users can view this block in the page.',9,0),(31,'edit_block','Edit Block',0,0,'Controls whether users can edit this block. This overrides any area or page permissions.',9,0),(32,'edit_block_custom_template','Change Custom Template',0,0,'Controls whether users can change the custom template on this block. This overrides any area or page permissions.',9,0),(33,'edit_block_cache_settings','Edit Cache Settings',0,0,'Controls whether users can change the block cache settings for this block instance.',9,0),(34,'edit_block_name','Edit Name',0,0,'Controls whether users can change the block\'s name (rarely used.)',9,0),(35,'delete_block','Delete Block',0,0,'Controls whether users can delete this block. This overrides any area or page permissions.',9,0),(36,'edit_block_design','Edit Design',0,0,'Controls whether users can set custom design properties or CSS on this block.',9,0),(37,'edit_block_permissions','Edit Permissions',0,0,'Controls whether users can change permissions on this block, potentially granting themselves or others greater access.',9,0),(38,'schedule_guest_access','Schedule Guest Access',0,0,'Controls whether users can schedule guest access permissions on this block. Guest Access is a shortcut for granting permissions just to the Guest Group.',9,0),(39,'view_file_set_file','View Files',0,0,'Can view and download files in the site.',5,0),(40,'search_file_set','Search Files in File Manager',0,0,'Can access the file manager',5,0),(41,'edit_file_set_file_properties','Edit File Properties',0,0,'Can edit a file\'s properties.',5,0),(42,'edit_file_set_file_contents','Edit File Contents',0,0,'Can edit or replace files in set.',5,0),(43,'copy_file_set_files','Copy File',0,0,'Can copy files in file set.',5,0),(44,'edit_file_set_permissions','Edit File Access',0,0,'Can edit access to file sets.',5,0),(45,'delete_file_set','Delete File Set',0,0,'Can delete file set.',5,0),(46,'delete_file_set_files','Delete File',0,0,'Can delete files in set.',5,0),(47,'add_file','Add File',0,1,'Can add files to set.',5,0),(48,'view_file','View Files',0,0,'Can view and download files.',6,0),(49,'view_file_in_file_manager','View File in File Manager',0,0,'Can access the File Manager.',6,0),(50,'edit_file_properties','Edit File Properties',0,0,'Can edit a file\'s properties.',6,0),(51,'edit_file_contents','Edit File Contents',0,0,'Can edit or replace files.',6,0),(52,'copy_file','Copy File',0,0,'Can copy file.',6,0),(53,'edit_file_permissions','Edit File Access',0,0,'Can edit access to file.',6,0),(54,'delete_file','Delete File',0,0,'Can delete file.',6,0),(55,'approve_basic_workflow_action','Approve or Deny',0,0,'Grant ability to approve workflow.',13,0),(56,'notify_on_basic_workflow_entry','Notify on Entry',0,0,'Notify approvers that a change has entered the workflow.',13,0),(57,'notify_on_basic_workflow_approve','Notify on Approve',0,0,'Notify approvers that a change has been approved.',13,0),(58,'notify_on_basic_workflow_deny','Notify on Deny',0,0,'Notify approvers that a change has been denied.',13,0),(59,'add_page_type','Add Pages of This Type',0,0,'',14,0),(60,'edit_page_type','Edit Page Type',0,0,'',14,0),(61,'delete_page_type','Delete Page Type',0,0,'',14,0),(62,'edit_page_type_permissions','Edit Page Type Permissions',0,0,'',14,0),(63,'edit_page_type_drafts','Edit Page Type Drafts',0,0,'',14,0),(64,'view_topic_tree_node','View Topic Tree Node',0,0,'',18,0),(65,'view_topic_category_tree_node','View Topic Category Tree Node',0,0,'',17,0),(66,'add_conversation_message','Add Message to Conversation',0,1,'',19,0),(67,'add_conversation_message_attachments','Add Message Attachments',0,0,'',19,0),(68,'edit_conversation_permissions','Edit Conversation Permissions',0,0,'',19,0),(69,'delete_conversation_message','Delete Message',0,0,'',19,0),(70,'edit_conversation_message','Edit Message',0,0,'',19,0),(71,'rate_conversation_message','Rate Message',0,0,'',19,0),(72,'flag_conversation_message','Flag Message',0,0,'',19,0),(73,'approve_conversation_message','Approve Message',0,0,'',19,0),(74,'edit_user_properties','Edit User Details',0,1,NULL,4,0),(75,'view_user_attributes','View User Attributes',0,1,NULL,4,0),(76,'activate_user','Activate/Deactivate User',0,0,NULL,4,0),(77,'sudo','Sign in as User',0,0,NULL,4,0),(78,'upgrade','Upgrade concrete5',0,0,NULL,10,0),(79,'access_group_search','Access Group Search',0,0,NULL,4,0),(80,'delete_user','Delete User',0,0,NULL,4,0),(81,'search_users_in_group','Search User Group',0,0,NULL,16,0),(82,'edit_group','Edit Group',0,0,NULL,16,0),(83,'assign_group','Assign Group',0,0,NULL,16,0),(84,'add_sub_group','Add Child Group',0,0,NULL,16,0),(85,'edit_group_permissions','Edit Group Permissions',0,0,NULL,16,0),(86,'access_page_type_permissions','Access Page Type Permissions',0,0,NULL,10,0),(87,'backup','Perform Backups',0,0,NULL,10,0),(88,'access_task_permissions','Access Task Permissions',0,0,NULL,10,0),(89,'access_sitemap','Access Sitemap',0,0,NULL,11,0),(90,'access_page_defaults','Access Page Type Defaults',0,0,NULL,10,0),(91,'customize_themes','Customize Themes',0,0,NULL,10,0),(92,'manage_layout_presets','Manage Layout Presets',0,0,NULL,10,0),(93,'empty_trash','Empty Trash',0,0,NULL,10,0),(94,'add_topic_tree','Add Topic Tree',0,0,NULL,10,0),(95,'remove_topic_tree','Remove Topic Tree',0,0,NULL,10,0),(96,'view_in_maintenance_mode','View Site in Maintenance Mode',0,0,'Ability to see and use the website when concrete5 is in maintenance mode.',10,0),(97,'uninstall_packages','Uninstall Packages',0,0,NULL,12,0),(98,'install_packages','Install Packages',0,0,NULL,12,0),(99,'view_newsflow','View Newsflow',0,0,NULL,12,0),(100,'access_user_search_export','Export Site Users',0,0,'Controls whether a user can export site users or not',4,0),(101,'access_user_search','Access User Search',0,0,'Controls whether a user can view the search user interface.',4,0),(102,'edit_gatherings','Edit Gatherings',0,0,'Can edit the footprint and items in all gatherings.',10,0),(103,'edit_gathering_items','Edit Gathering Items',0,0,'',15,0);
/*!40000 ALTER TABLE `PermissionKeys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PileContents`
--

DROP TABLE IF EXISTS `PileContents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PileContents` (
  `pcID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pID` int(10) unsigned NOT NULL DEFAULT '0',
  `itemID` int(10) unsigned NOT NULL DEFAULT '0',
  `itemType` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `quantity` int(10) unsigned NOT NULL DEFAULT '1',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `displayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pcID`),
  KEY `pID` (`pID`,`displayOrder`),
  KEY `itemID` (`itemID`),
  KEY `itemType` (`itemType`,`itemID`,`pID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PileContents`
--

LOCK TABLES `PileContents` WRITE;
/*!40000 ALTER TABLE `PileContents` DISABLE KEYS */;
/*!40000 ALTER TABLE `PileContents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Piles`
--

DROP TABLE IF EXISTS `Piles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Piles` (
  `pID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uID` int(10) unsigned DEFAULT NULL,
  `isDefault` tinyint(1) NOT NULL DEFAULT '0',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`pID`),
  KEY `uID` (`uID`,`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Piles`
--

LOCK TABLES `Piles` WRITE;
/*!40000 ALTER TABLE `Piles` DISABLE KEYS */;
INSERT INTO `Piles` VALUES (1,1,1,'2015-06-11 12:52:59',NULL,'READY'),(2,3,1,'2015-07-09 00:28:48',NULL,'READY');
/*!40000 ALTER TABLE `Piles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QueueMessages`
--

DROP TABLE IF EXISTS `QueueMessages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QueueMessages` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `queue_id` int(10) unsigned NOT NULL,
  `handle` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` longtext COLLATE utf8_unicode_ci NOT NULL,
  `md5` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `timeout` decimal(14,0) DEFAULT NULL,
  `created` int(10) unsigned NOT NULL,
  PRIMARY KEY (`message_id`),
  UNIQUE KEY `message_handle` (`handle`),
  KEY `message_queueid` (`queue_id`),
  CONSTRAINT `QueueMessages_ibfk_1` FOREIGN KEY (`queue_id`) REFERENCES `Queues` (`queue_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QueueMessages`
--

LOCK TABLES `QueueMessages` WRITE;
/*!40000 ALTER TABLE `QueueMessages` DISABLE KEYS */;
/*!40000 ALTER TABLE `QueueMessages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QueuePageDuplicationRelations`
--

DROP TABLE IF EXISTS `QueuePageDuplicationRelations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QueuePageDuplicationRelations` (
  `queue_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `originalCID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`originalCID`),
  KEY `originalCID` (`originalCID`,`queue_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QueuePageDuplicationRelations`
--

LOCK TABLES `QueuePageDuplicationRelations` WRITE;
/*!40000 ALTER TABLE `QueuePageDuplicationRelations` DISABLE KEYS */;
/*!40000 ALTER TABLE `QueuePageDuplicationRelations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Queues`
--

DROP TABLE IF EXISTS `Queues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Queues` (
  `queue_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `queue_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `timeout` int(10) unsigned NOT NULL DEFAULT '30',
  PRIMARY KEY (`queue_id`),
  KEY `queue_name` (`queue_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Queues`
--

LOCK TABLES `Queues` WRITE;
/*!40000 ALTER TABLE `Queues` DISABLE KEYS */;
/*!40000 ALTER TABLE `Queues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Sessions`
--

DROP TABLE IF EXISTS `Sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Sessions` (
  `sessionID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sessionValue` text COLLATE utf8_unicode_ci NOT NULL,
  `sessionTime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`sessionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Sessions`
--

LOCK TABLES `Sessions` WRITE;
/*!40000 ALTER TABLE `Sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `Sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SignupRequests`
--

DROP TABLE IF EXISTS `SignupRequests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SignupRequests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ipFrom` tinyblob,
  `date_access` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `ipFrom` (`ipFrom`(32))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SignupRequests`
--

LOCK TABLES `SignupRequests` WRITE;
/*!40000 ALTER TABLE `SignupRequests` DISABLE KEYS */;
/*!40000 ALTER TABLE `SignupRequests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SocialLinks`
--

DROP TABLE IF EXISTS `SocialLinks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SocialLinks` (
  `slID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ssHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`slID`),
  UNIQUE KEY `ssHandle` (`ssHandle`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SocialLinks`
--

LOCK TABLES `SocialLinks` WRITE;
/*!40000 ALTER TABLE `SocialLinks` DISABLE KEYS */;
INSERT INTO `SocialLinks` VALUES (1,'facebook','http://www.facebook.com/highlandky'),(2,'twitter','http://www.twitter.com/highlandbc_ky'),(3,'instagram','https://instagram.com/hbc_ky/');
/*!40000 ALTER TABLE `SocialLinks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Stacks`
--

DROP TABLE IF EXISTS `Stacks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Stacks` (
  `stID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `stName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `stType` int(10) unsigned NOT NULL DEFAULT '0',
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `stMultilingualSection` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`stID`),
  KEY `stType` (`stType`),
  KEY `stName` (`stName`),
  KEY `cID` (`cID`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Stacks`
--

LOCK TABLES `Stacks` WRITE;
/*!40000 ALTER TABLE `Stacks` DISABLE KEYS */;
INSERT INTO `Stacks` VALUES (1,'Header Site Title',20,144,0),(2,'Header Navigation',20,145,0),(3,'Footer Legal',20,146,0),(4,'Footer Navigation',20,147,0),(5,'Footer Contact',20,148,0),(6,'Connection',20,149,0),(7,'Footer Content',20,150,0),(8,'Footer Map',20,151,0),(9,'Phone',20,157,0),(10,'Location',20,158,0),(11,'Email',20,159,0),(12,'Map',20,161,0),(13,'Social',20,162,0);
/*!40000 ALTER TABLE `Stacks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `StyleCustomizerCustomCssRecords`
--

DROP TABLE IF EXISTS `StyleCustomizerCustomCssRecords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `StyleCustomizerCustomCssRecords` (
  `sccRecordID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`sccRecordID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `StyleCustomizerCustomCssRecords`
--

LOCK TABLES `StyleCustomizerCustomCssRecords` WRITE;
/*!40000 ALTER TABLE `StyleCustomizerCustomCssRecords` DISABLE KEYS */;
/*!40000 ALTER TABLE `StyleCustomizerCustomCssRecords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `StyleCustomizerInlineStylePresets`
--

DROP TABLE IF EXISTS `StyleCustomizerInlineStylePresets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `StyleCustomizerInlineStylePresets` (
  `pssPresetID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pssPresetName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `issID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pssPresetID`),
  KEY `issID` (`issID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `StyleCustomizerInlineStylePresets`
--

LOCK TABLES `StyleCustomizerInlineStylePresets` WRITE;
/*!40000 ALTER TABLE `StyleCustomizerInlineStylePresets` DISABLE KEYS */;
/*!40000 ALTER TABLE `StyleCustomizerInlineStylePresets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `StyleCustomizerInlineStyleSets`
--

DROP TABLE IF EXISTS `StyleCustomizerInlineStyleSets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `StyleCustomizerInlineStyleSets` (
  `issID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `backgroundColor` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `backgroundImageFileID` int(11) DEFAULT NULL,
  `backgroundRepeat` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `borderWidth` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `borderColor` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `borderStyle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `borderRadius` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `baseFontSize` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alignment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `textColor` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `linkColor` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paddingTop` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paddingBottom` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paddingLeft` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paddingRight` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `marginTop` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `marginBottom` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `marginLeft` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `marginRight` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rotate` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `boxShadowHorizontal` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `boxShadowVertical` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `boxShadowBlur` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `boxShadowSpread` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `boxShadowColor` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customClass` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hideOnExtraSmallDevice` tinyint(1) DEFAULT NULL,
  `hideOnSmallDevice` tinyint(1) DEFAULT NULL,
  `hideOnMediumDevice` tinyint(1) DEFAULT NULL,
  `hideOnLargeDevice` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`issID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `StyleCustomizerInlineStyleSets`
--

LOCK TABLES `StyleCustomizerInlineStyleSets` WRITE;
/*!40000 ALTER TABLE `StyleCustomizerInlineStyleSets` DISABLE KEYS */;
INSERT INTO `StyleCustomizerInlineStyleSets` VALUES (1,NULL,0,'no-repeat',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'25px',NULL,'25px',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `StyleCustomizerInlineStyleSets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `StyleCustomizerValueLists`
--

DROP TABLE IF EXISTS `StyleCustomizerValueLists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `StyleCustomizerValueLists` (
  `scvlID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`scvlID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `StyleCustomizerValueLists`
--

LOCK TABLES `StyleCustomizerValueLists` WRITE;
/*!40000 ALTER TABLE `StyleCustomizerValueLists` DISABLE KEYS */;
/*!40000 ALTER TABLE `StyleCustomizerValueLists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `StyleCustomizerValues`
--

DROP TABLE IF EXISTS `StyleCustomizerValues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `StyleCustomizerValues` (
  `scvID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `scvlID` int(10) unsigned DEFAULT NULL,
  `value` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`scvID`),
  KEY `scvlID` (`scvlID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `StyleCustomizerValues`
--

LOCK TABLES `StyleCustomizerValues` WRITE;
/*!40000 ALTER TABLE `StyleCustomizerValues` DISABLE KEYS */;
/*!40000 ALTER TABLE `StyleCustomizerValues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SystemAntispamLibraries`
--

DROP TABLE IF EXISTS `SystemAntispamLibraries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SystemAntispamLibraries` (
  `saslHandle` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `saslName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `saslIsActive` tinyint(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`saslHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SystemAntispamLibraries`
--

LOCK TABLES `SystemAntispamLibraries` WRITE;
/*!40000 ALTER TABLE `SystemAntispamLibraries` DISABLE KEYS */;
/*!40000 ALTER TABLE `SystemAntispamLibraries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SystemCaptchaLibraries`
--

DROP TABLE IF EXISTS `SystemCaptchaLibraries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SystemCaptchaLibraries` (
  `sclHandle` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `sclName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sclIsActive` tinyint(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`sclHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SystemCaptchaLibraries`
--

LOCK TABLES `SystemCaptchaLibraries` WRITE;
/*!40000 ALTER TABLE `SystemCaptchaLibraries` DISABLE KEYS */;
INSERT INTO `SystemCaptchaLibraries` VALUES ('recaptcha','reCAPTCHA',1,2),('securimage','SecurImage (Default)',0,0);
/*!40000 ALTER TABLE `SystemCaptchaLibraries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SystemContentEditorSnippets`
--

DROP TABLE IF EXISTS `SystemContentEditorSnippets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SystemContentEditorSnippets` (
  `scsHandle` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `scsName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `scsIsActive` tinyint(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`scsHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SystemContentEditorSnippets`
--

LOCK TABLES `SystemContentEditorSnippets` WRITE;
/*!40000 ALTER TABLE `SystemContentEditorSnippets` DISABLE KEYS */;
INSERT INTO `SystemContentEditorSnippets` VALUES ('page_name','Page Name',1,0),('user_name','User Name',1,0);
/*!40000 ALTER TABLE `SystemContentEditorSnippets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SystemDatabaseMigrations`
--

DROP TABLE IF EXISTS `SystemDatabaseMigrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SystemDatabaseMigrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SystemDatabaseMigrations`
--

LOCK TABLES `SystemDatabaseMigrations` WRITE;
/*!40000 ALTER TABLE `SystemDatabaseMigrations` DISABLE KEYS */;
INSERT INTO `SystemDatabaseMigrations` VALUES ('20140919000000'),('20140930000000'),('20141017000000'),('20141024000000'),('20141113000000'),('20141219000000'),('20150109000000'),('20150504000000'),('20150515000000'),('20150610000000'),('20150612000000'),('20150615000000'),('20150616000000'),('20150619000000'),('20150622000000'),('20150623000000'),('20150713000000');
/*!40000 ALTER TABLE `SystemDatabaseMigrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SystemDatabaseQueryLog`
--

DROP TABLE IF EXISTS `SystemDatabaseQueryLog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SystemDatabaseQueryLog` (
  `query` text COLLATE utf8_unicode_ci,
  `params` text COLLATE utf8_unicode_ci,
  `executionMS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SystemDatabaseQueryLog`
--

LOCK TABLES `SystemDatabaseQueryLog` WRITE;
/*!40000 ALTER TABLE `SystemDatabaseQueryLog` DISABLE KEYS */;
/*!40000 ALTER TABLE `SystemDatabaseQueryLog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SystemImageEditorComponents`
--

DROP TABLE IF EXISTS `SystemImageEditorComponents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SystemImageEditorComponents` (
  `scsID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `scsHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `scsName` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `scsDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`scsID`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SystemImageEditorComponents`
--

LOCK TABLES `SystemImageEditorComponents` WRITE;
/*!40000 ALTER TABLE `SystemImageEditorComponents` DISABLE KEYS */;
/*!40000 ALTER TABLE `SystemImageEditorComponents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SystemImageEditorControlSets`
--

DROP TABLE IF EXISTS `SystemImageEditorControlSets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SystemImageEditorControlSets` (
  `scsID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `scsHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `scsName` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `scsDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`scsID`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SystemImageEditorControlSets`
--

LOCK TABLES `SystemImageEditorControlSets` WRITE;
/*!40000 ALTER TABLE `SystemImageEditorControlSets` DISABLE KEYS */;
INSERT INTO `SystemImageEditorControlSets` VALUES (1,'position','Position',0,0),(2,'filter','Filter',0,0);
/*!40000 ALTER TABLE `SystemImageEditorControlSets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SystemImageEditorFilters`
--

DROP TABLE IF EXISTS `SystemImageEditorFilters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SystemImageEditorFilters` (
  `scsID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `scsHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `scsName` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `scsDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`scsID`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SystemImageEditorFilters`
--

LOCK TABLES `SystemImageEditorFilters` WRITE;
/*!40000 ALTER TABLE `SystemImageEditorFilters` DISABLE KEYS */;
INSERT INTO `SystemImageEditorFilters` VALUES (1,'none','None',0,0),(2,'grayscale','Grayscale',0,0),(3,'sepia','Sepia',0,0),(4,'gaussian_blur','Blur',0,0),(5,'vignette','Vignette',0,0);
/*!40000 ALTER TABLE `SystemImageEditorFilters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SystemImageEditorShapes`
--

DROP TABLE IF EXISTS `SystemImageEditorShapes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SystemImageEditorShapes` (
  `scsID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `scsHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `scsName` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `scsDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`scsID`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SystemImageEditorShapes`
--

LOCK TABLES `SystemImageEditorShapes` WRITE;
/*!40000 ALTER TABLE `SystemImageEditorShapes` DISABLE KEYS */;
/*!40000 ALTER TABLE `SystemImageEditorShapes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TopicTrees`
--

DROP TABLE IF EXISTS `TopicTrees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TopicTrees` (
  `treeID` int(10) unsigned NOT NULL DEFAULT '0',
  `topicTreeName` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  PRIMARY KEY (`treeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TopicTrees`
--

LOCK TABLES `TopicTrees` WRITE;
/*!40000 ALTER TABLE `TopicTrees` DISABLE KEYS */;
/*!40000 ALTER TABLE `TopicTrees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TreeCategoryNodes`
--

DROP TABLE IF EXISTS `TreeCategoryNodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TreeCategoryNodes` (
  `treeNodeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `treeNodeCategoryName` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  PRIMARY KEY (`treeNodeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TreeCategoryNodes`
--

LOCK TABLES `TreeCategoryNodes` WRITE;
/*!40000 ALTER TABLE `TreeCategoryNodes` DISABLE KEYS */;
/*!40000 ALTER TABLE `TreeCategoryNodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TreeGroupNodes`
--

DROP TABLE IF EXISTS `TreeGroupNodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TreeGroupNodes` (
  `treeNodeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`treeNodeID`),
  KEY `gID` (`gID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TreeGroupNodes`
--

LOCK TABLES `TreeGroupNodes` WRITE;
/*!40000 ALTER TABLE `TreeGroupNodes` DISABLE KEYS */;
INSERT INTO `TreeGroupNodes` VALUES (2,1),(3,2),(4,3),(5,4),(6,5),(7,6),(8,7),(9,8),(10,9),(11,10),(12,11);
/*!40000 ALTER TABLE `TreeGroupNodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TreeNodePermissionAssignments`
--

DROP TABLE IF EXISTS `TreeNodePermissionAssignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TreeNodePermissionAssignments` (
  `treeNodeID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`treeNodeID`,`pkID`,`paID`),
  KEY `pkID` (`pkID`),
  KEY `paID` (`paID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TreeNodePermissionAssignments`
--

LOCK TABLES `TreeNodePermissionAssignments` WRITE;
/*!40000 ALTER TABLE `TreeNodePermissionAssignments` DISABLE KEYS */;
INSERT INTO `TreeNodePermissionAssignments` VALUES (1,81,84),(1,82,85),(1,83,86),(1,84,87),(1,85,88);
/*!40000 ALTER TABLE `TreeNodePermissionAssignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TreeNodeTypes`
--

DROP TABLE IF EXISTS `TreeNodeTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TreeNodeTypes` (
  `treeNodeTypeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `treeNodeTypeHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `pkgID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`treeNodeTypeID`),
  UNIQUE KEY `treeNodeTypeHandle` (`treeNodeTypeHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TreeNodeTypes`
--

LOCK TABLES `TreeNodeTypes` WRITE;
/*!40000 ALTER TABLE `TreeNodeTypes` DISABLE KEYS */;
INSERT INTO `TreeNodeTypes` VALUES (1,'group',0),(2,'topic_category',0),(3,'topic',0);
/*!40000 ALTER TABLE `TreeNodeTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TreeNodes`
--

DROP TABLE IF EXISTS `TreeNodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TreeNodes` (
  `treeNodeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `treeNodeTypeID` int(10) unsigned DEFAULT '0',
  `treeID` int(10) unsigned DEFAULT '0',
  `treeNodeParentID` int(10) unsigned DEFAULT '0',
  `treeNodeDisplayOrder` int(10) unsigned DEFAULT '0',
  `treeNodeOverridePermissions` tinyint(1) DEFAULT '0',
  `inheritPermissionsFromTreeNodeID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`treeNodeID`),
  KEY `treeNodeParentID` (`treeNodeParentID`),
  KEY `treeNodeTypeID` (`treeNodeTypeID`),
  KEY `treeID` (`treeID`),
  KEY `inheritPermissionsFromTreeNodeID` (`inheritPermissionsFromTreeNodeID`,`treeNodeID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TreeNodes`
--

LOCK TABLES `TreeNodes` WRITE;
/*!40000 ALTER TABLE `TreeNodes` DISABLE KEYS */;
INSERT INTO `TreeNodes` VALUES (1,1,1,0,0,1,1),(2,1,1,1,0,0,1),(3,1,1,1,1,0,1),(4,1,1,1,2,0,1),(5,1,1,1,3,0,1),(6,1,1,1,4,0,1),(7,1,1,6,0,0,1),(8,1,1,5,0,0,1),(9,1,1,5,1,0,1),(10,1,1,6,1,0,1),(11,1,1,6,2,0,1),(12,1,1,5,2,0,1);
/*!40000 ALTER TABLE `TreeNodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TreeTopicNodes`
--

DROP TABLE IF EXISTS `TreeTopicNodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TreeTopicNodes` (
  `treeNodeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `treeNodeTopicName` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  PRIMARY KEY (`treeNodeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TreeTopicNodes`
--

LOCK TABLES `TreeTopicNodes` WRITE;
/*!40000 ALTER TABLE `TreeTopicNodes` DISABLE KEYS */;
/*!40000 ALTER TABLE `TreeTopicNodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TreeTypes`
--

DROP TABLE IF EXISTS `TreeTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TreeTypes` (
  `treeTypeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `treeTypeHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `pkgID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`treeTypeID`),
  UNIQUE KEY `treeTypeHandle` (`treeTypeHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TreeTypes`
--

LOCK TABLES `TreeTypes` WRITE;
/*!40000 ALTER TABLE `TreeTypes` DISABLE KEYS */;
INSERT INTO `TreeTypes` VALUES (1,'group',0),(2,'topic',0);
/*!40000 ALTER TABLE `TreeTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Trees`
--

DROP TABLE IF EXISTS `Trees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Trees` (
  `treeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `treeTypeID` int(10) unsigned DEFAULT '0',
  `treeDateAdded` datetime DEFAULT NULL,
  `rootTreeNodeID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`treeID`),
  KEY `treeTypeID` (`treeTypeID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Trees`
--

LOCK TABLES `Trees` WRITE;
/*!40000 ALTER TABLE `Trees` DISABLE KEYS */;
INSERT INTO `Trees` VALUES (1,1,'2015-06-11 08:51:39',1);
/*!40000 ALTER TABLE `Trees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserAttributeKeys`
--

DROP TABLE IF EXISTS `UserAttributeKeys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserAttributeKeys` (
  `akID` int(10) unsigned NOT NULL,
  `uakProfileDisplay` tinyint(1) NOT NULL DEFAULT '0',
  `uakMemberListDisplay` tinyint(1) NOT NULL DEFAULT '0',
  `uakProfileEdit` tinyint(1) NOT NULL DEFAULT '1',
  `uakProfileEditRequired` tinyint(1) NOT NULL DEFAULT '0',
  `uakRegisterEdit` tinyint(1) NOT NULL DEFAULT '0',
  `uakRegisterEditRequired` tinyint(1) NOT NULL DEFAULT '0',
  `displayOrder` int(10) unsigned DEFAULT '0',
  `uakIsActive` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserAttributeKeys`
--

LOCK TABLES `UserAttributeKeys` WRITE;
/*!40000 ALTER TABLE `UserAttributeKeys` DISABLE KEYS */;
INSERT INTO `UserAttributeKeys` VALUES (12,0,0,1,0,1,0,6,1),(13,0,0,1,0,1,0,7,1),(16,0,0,0,0,0,0,8,1),(18,1,1,1,1,1,1,0,1),(19,0,0,1,1,1,1,5,1),(20,0,0,1,1,0,0,4,1),(21,0,0,1,0,0,0,3,1),(23,0,0,1,0,0,0,2,1),(24,0,0,1,0,0,0,1,1);
/*!40000 ALTER TABLE `UserAttributeKeys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserAttributeValues`
--

DROP TABLE IF EXISTS `UserAttributeValues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserAttributeValues` (
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `avID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`uID`,`akID`),
  KEY `akID` (`akID`),
  KEY `avID` (`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserAttributeValues`
--

LOCK TABLES `UserAttributeValues` WRITE;
/*!40000 ALTER TABLE `UserAttributeValues` DISABLE KEYS */;
INSERT INTO `UserAttributeValues` VALUES (1,18,117),(1,19,118),(1,12,119),(1,13,120),(3,18,121),(3,19,122),(3,12,123),(3,13,124),(3,20,125),(3,23,126),(3,21,129),(3,24,130),(4,18,131),(4,19,132),(4,12,133),(4,13,134),(4,24,135),(4,23,136),(4,21,139),(4,20,140);
/*!40000 ALTER TABLE `UserAttributeValues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserBannedIPs`
--

DROP TABLE IF EXISTS `UserBannedIPs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserBannedIPs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ipFrom` tinyblob,
  `ipTo` tinyblob,
  `banCode` tinyint(1) NOT NULL DEFAULT '1',
  `expires` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `isManual` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ipFrom` (`ipFrom`(32),`ipTo`(32))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserBannedIPs`
--

LOCK TABLES `UserBannedIPs` WRITE;
/*!40000 ALTER TABLE `UserBannedIPs` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserBannedIPs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserGroups`
--

DROP TABLE IF EXISTS `UserGroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserGroups` (
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  `ugEntered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`uID`,`gID`),
  KEY `uID` (`uID`),
  KEY `gID` (`gID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserGroups`
--

LOCK TABLES `UserGroups` WRITE;
/*!40000 ALTER TABLE `UserGroups` DISABLE KEYS */;
INSERT INTO `UserGroups` VALUES (1,3,'2015-06-11 11:15:05'),(3,3,'2015-07-08 20:25:02'),(3,6,'2015-06-11 13:36:26'),(3,7,'2015-06-11 13:36:26'),(4,6,'2015-06-11 14:43:43'),(4,11,'2015-07-09 09:52:04');
/*!40000 ALTER TABLE `UserGroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserPermissionEditPropertyAccessList`
--

DROP TABLE IF EXISTS `UserPermissionEditPropertyAccessList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserPermissionEditPropertyAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `uName` tinyint(1) DEFAULT '0',
  `uEmail` tinyint(1) DEFAULT '0',
  `uPassword` tinyint(1) DEFAULT '0',
  `uAvatar` tinyint(1) DEFAULT '0',
  `uTimezone` tinyint(1) DEFAULT '0',
  `uDefaultLanguage` tinyint(1) DEFAULT '0',
  `attributePermission` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserPermissionEditPropertyAccessList`
--

LOCK TABLES `UserPermissionEditPropertyAccessList` WRITE;
/*!40000 ALTER TABLE `UserPermissionEditPropertyAccessList` DISABLE KEYS */;
INSERT INTO `UserPermissionEditPropertyAccessList` VALUES (97,1,1,1,1,1,1,1,'A'),(97,7,1,1,1,1,1,1,'A'),(118,1,1,1,1,1,1,1,'A'),(118,10,1,1,1,1,1,1,'A');
/*!40000 ALTER TABLE `UserPermissionEditPropertyAccessList` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserPermissionEditPropertyAttributeAccessListCustom`
--

DROP TABLE IF EXISTS `UserPermissionEditPropertyAttributeAccessListCustom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserPermissionEditPropertyAttributeAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`akID`),
  KEY `peID` (`peID`),
  KEY `akID` (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserPermissionEditPropertyAttributeAccessListCustom`
--

LOCK TABLES `UserPermissionEditPropertyAttributeAccessListCustom` WRITE;
/*!40000 ALTER TABLE `UserPermissionEditPropertyAttributeAccessListCustom` DISABLE KEYS */;
INSERT INTO `UserPermissionEditPropertyAttributeAccessListCustom` VALUES (97,1,12),(97,1,13),(97,1,16),(118,1,12),(118,1,13),(118,1,16),(118,1,18),(118,1,19),(118,1,20),(118,1,21),(118,1,23),(118,1,24),(97,7,12),(97,7,13),(97,7,16),(118,10,12),(118,10,13),(118,10,16),(118,10,18),(118,10,19),(118,10,20),(118,10,21),(118,10,23),(118,10,24);
/*!40000 ALTER TABLE `UserPermissionEditPropertyAttributeAccessListCustom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserPermissionViewAttributeAccessList`
--

DROP TABLE IF EXISTS `UserPermissionViewAttributeAccessList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserPermissionViewAttributeAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`),
  KEY `peID` (`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserPermissionViewAttributeAccessList`
--

LOCK TABLES `UserPermissionViewAttributeAccessList` WRITE;
/*!40000 ALTER TABLE `UserPermissionViewAttributeAccessList` DISABLE KEYS */;
INSERT INTO `UserPermissionViewAttributeAccessList` VALUES (103,1,'A'),(103,7,'A');
/*!40000 ALTER TABLE `UserPermissionViewAttributeAccessList` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserPermissionViewAttributeAccessListCustom`
--

DROP TABLE IF EXISTS `UserPermissionViewAttributeAccessListCustom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserPermissionViewAttributeAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`akID`),
  KEY `peID` (`peID`),
  KEY `akID` (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserPermissionViewAttributeAccessListCustom`
--

LOCK TABLES `UserPermissionViewAttributeAccessListCustom` WRITE;
/*!40000 ALTER TABLE `UserPermissionViewAttributeAccessListCustom` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserPermissionViewAttributeAccessListCustom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserPointActions`
--

DROP TABLE IF EXISTS `UserPointActions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserPointActions` (
  `upaID` int(11) NOT NULL AUTO_INCREMENT,
  `upaHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `upaName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `upaDefaultPoints` int(11) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `upaHasCustomClass` tinyint(1) NOT NULL DEFAULT '0',
  `upaIsActive` tinyint(1) NOT NULL DEFAULT '1',
  `gBadgeID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`upaID`),
  UNIQUE KEY `upaHandle` (`upaHandle`),
  KEY `pkgID` (`pkgID`),
  KEY `gBBadgeID` (`gBadgeID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserPointActions`
--

LOCK TABLES `UserPointActions` WRITE;
/*!40000 ALTER TABLE `UserPointActions` DISABLE KEYS */;
INSERT INTO `UserPointActions` VALUES (1,'won_badge','Won a Badge',5,0,1,1,0);
/*!40000 ALTER TABLE `UserPointActions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserPointHistory`
--

DROP TABLE IF EXISTS `UserPointHistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserPointHistory` (
  `upID` int(11) NOT NULL AUTO_INCREMENT,
  `upuID` int(11) NOT NULL DEFAULT '0',
  `upaID` int(11) DEFAULT '0',
  `upPoints` int(11) DEFAULT '0',
  `object` longtext COLLATE utf8_unicode_ci,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`upID`),
  KEY `upuID` (`upuID`),
  KEY `upaID` (`upaID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserPointHistory`
--

LOCK TABLES `UserPointHistory` WRITE;
/*!40000 ALTER TABLE `UserPointHistory` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserPointHistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserPrivateMessages`
--

DROP TABLE IF EXISTS `UserPrivateMessages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserPrivateMessages` (
  `msgID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uAuthorID` int(10) unsigned NOT NULL DEFAULT '0',
  `msgDateCreated` datetime NOT NULL,
  `msgSubject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `msgBody` text COLLATE utf8_unicode_ci,
  `uToID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`msgID`),
  KEY `uAuthorID` (`uAuthorID`,`msgDateCreated`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserPrivateMessages`
--

LOCK TABLES `UserPrivateMessages` WRITE;
/*!40000 ALTER TABLE `UserPrivateMessages` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserPrivateMessages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserPrivateMessagesTo`
--

DROP TABLE IF EXISTS `UserPrivateMessagesTo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserPrivateMessagesTo` (
  `msgID` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `uAuthorID` int(10) unsigned NOT NULL DEFAULT '0',
  `msgMailboxID` int(11) NOT NULL,
  `msgIsNew` tinyint(1) NOT NULL DEFAULT '0',
  `msgIsUnread` tinyint(1) NOT NULL DEFAULT '0',
  `msgIsReplied` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`msgID`,`uID`,`uAuthorID`,`msgMailboxID`),
  KEY `uID` (`uID`),
  KEY `uAuthorID` (`uAuthorID`),
  KEY `msgFolderID` (`msgMailboxID`),
  KEY `msgIsNew` (`msgIsNew`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserPrivateMessagesTo`
--

LOCK TABLES `UserPrivateMessagesTo` WRITE;
/*!40000 ALTER TABLE `UserPrivateMessagesTo` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserPrivateMessagesTo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserSearchIndexAttributes`
--

DROP TABLE IF EXISTS `UserSearchIndexAttributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserSearchIndexAttributes` (
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `ak_profile_private_messages_enabled` tinyint(1) DEFAULT '0',
  `ak_profile_private_messages_notification_enabled` tinyint(1) DEFAULT '0',
  `ak_real_name` longtext COLLATE utf8_unicode_ci,
  `ak_address_address1` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `ak_address_address2` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `ak_address_city` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `ak_address_state_province` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `ak_address_country` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `ak_address_postal_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `ak_sort_order` decimal(14,4) DEFAULT '0.0000',
  `ak_profile_image` int(11) DEFAULT '0',
  `ak_details` longtext COLLATE utf8_unicode_ci,
  `ak_title` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserSearchIndexAttributes`
--

LOCK TABLES `UserSearchIndexAttributes` WRITE;
/*!40000 ALTER TABLE `UserSearchIndexAttributes` DISABLE KEYS */;
INSERT INTO `UserSearchIndexAttributes` VALUES (1,1,1,'Mark Dazey','3000 Barlows Brook Road','','Shelbyville','KY','US','40065',0.0000,0,NULL,NULL),(3,1,1,'Matt Johnson','511 Mt Eden Road','','Shelbyville','KY','US','40065',1.0000,3,'<p>Details about matt</p>','Minister to the Next Generation'),(4,1,1,'Chris Platt','511 Mt Eden Rd','','Shelbyville','KY','US','40065',1.0000,4,'<p>Details About Chris</p>','Lead Pastor');
/*!40000 ALTER TABLE `UserSearchIndexAttributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserValidationHashes`
--

DROP TABLE IF EXISTS `UserValidationHashes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserValidationHashes` (
  `uvhID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uID` int(10) unsigned DEFAULT NULL,
  `uHash` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `type` smallint(5) unsigned NOT NULL DEFAULT '0',
  `uDateGenerated` int(10) unsigned NOT NULL DEFAULT '0',
  `uDateRedeemed` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uvhID`),
  KEY `uID` (`uID`,`type`),
  KEY `uHash` (`uHash`,`type`),
  KEY `uDateGenerated` (`uDateGenerated`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserValidationHashes`
--

LOCK TABLES `UserValidationHashes` WRITE;
/*!40000 ALTER TABLE `UserValidationHashes` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserValidationHashes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Users`
--

DROP TABLE IF EXISTS `Users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Users` (
  `uID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uName` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `uEmail` varchar(254) COLLATE utf8_unicode_ci NOT NULL,
  `uPassword` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `uIsActive` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `uIsValidated` tinyint(1) NOT NULL DEFAULT '-1',
  `uIsFullRecord` tinyint(1) NOT NULL DEFAULT '1',
  `uDateAdded` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `uLastPasswordChange` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `uHasAvatar` tinyint(1) NOT NULL DEFAULT '0',
  `uLastOnline` int(10) unsigned NOT NULL DEFAULT '0',
  `uLastLogin` int(10) unsigned NOT NULL DEFAULT '0',
  `uLastIP` tinyblob,
  `uPreviousLogin` int(10) unsigned DEFAULT '0',
  `uNumLogins` int(10) unsigned NOT NULL DEFAULT '0',
  `uLastAuthTypeID` int(10) unsigned NOT NULL DEFAULT '0',
  `uTimezone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uDefaultLanguage` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uID`),
  UNIQUE KEY `uName` (`uName`),
  KEY `uEmail` (`uEmail`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Users`
--

LOCK TABLES `Users` WRITE;
/*!40000 ALTER TABLE `Users` DISABLE KEYS */;
INSERT INTO `Users` VALUES (1,'admin','mark@dazeysolutions.com','$2a$12$t0XqO.8EFlVwfoOXwXuDbeELoDT5kaWPadmbXFSfFRWGzU0WRfSu6','1',-1,1,'2015-06-11 08:51:39','2015-06-11 08:51:39',1,1441313442,1441313442,'ade22942',1441307381,38,1,NULL,NULL),(3,'mjohnson','mjohnson@hbc-ky.com','$2a$12$nsYZ9oPqF5d7mIYnwF8ZguSeDoLi0eDWwkvicrtpN5hpSkAwdlo/e','1',-1,1,'2015-06-11 13:36:25','2015-07-08 20:22:25',1,1436404782,1436401560,'4a8fe422',1436401497,3,1,NULL,'en_US'),(4,'cplatt','cplatt@hbc-ky.com','$2a$12$ACnTeUHY49C2w7bH3USk9e1NFheIN9m8fLfVXmlhTiTTxwizRUSPO','1',-1,1,'2015-06-11 14:43:43','2015-07-09 08:32:50',1,1436450424,1436450424,'ade22942',1436449928,6,1,NULL,'en_US');
/*!40000 ALTER TABLE `Users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WorkflowProgress`
--

DROP TABLE IF EXISTS `WorkflowProgress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WorkflowProgress` (
  `wpID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wpCategoryID` int(10) unsigned DEFAULT NULL,
  `wfID` int(10) unsigned NOT NULL DEFAULT '0',
  `wpApproved` tinyint(1) NOT NULL DEFAULT '0',
  `wpDateAdded` datetime DEFAULT NULL,
  `wpDateLastAction` datetime DEFAULT NULL,
  `wpCurrentStatus` int(11) NOT NULL DEFAULT '0',
  `wrID` int(11) NOT NULL DEFAULT '0',
  `wpIsCompleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`wpID`),
  KEY `wpCategoryID` (`wpCategoryID`),
  KEY `wfID` (`wfID`),
  KEY `wrID` (`wrID`,`wpID`,`wpIsCompleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WorkflowProgress`
--

LOCK TABLES `WorkflowProgress` WRITE;
/*!40000 ALTER TABLE `WorkflowProgress` DISABLE KEYS */;
/*!40000 ALTER TABLE `WorkflowProgress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WorkflowProgressCategories`
--

DROP TABLE IF EXISTS `WorkflowProgressCategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WorkflowProgressCategories` (
  `wpCategoryID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wpCategoryHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`wpCategoryID`),
  UNIQUE KEY `wpCategoryHandle` (`wpCategoryHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WorkflowProgressCategories`
--

LOCK TABLES `WorkflowProgressCategories` WRITE;
/*!40000 ALTER TABLE `WorkflowProgressCategories` DISABLE KEYS */;
INSERT INTO `WorkflowProgressCategories` VALUES (1,'page',NULL),(2,'file',NULL),(3,'user',NULL);
/*!40000 ALTER TABLE `WorkflowProgressCategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WorkflowProgressHistory`
--

DROP TABLE IF EXISTS `WorkflowProgressHistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WorkflowProgressHistory` (
  `wphID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wpID` int(10) unsigned NOT NULL DEFAULT '0',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `object` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`wphID`),
  KEY `wpID` (`wpID`,`timestamp`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WorkflowProgressHistory`
--

LOCK TABLES `WorkflowProgressHistory` WRITE;
/*!40000 ALTER TABLE `WorkflowProgressHistory` DISABLE KEYS */;
INSERT INTO `WorkflowProgressHistory` VALUES (1,1,'2015-06-11 13:31:12','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:1:\"1\";}'),(2,2,'2015-06-11 13:56:48','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:1:\"3\";s:4:\"wrID\";s:1:\"2\";}'),(3,3,'2015-06-11 14:03:04','O:50:\"Concrete\\Core\\Workflow\\Request\\ApproveStackRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"145\";s:4:\"cvID\";s:1:\"4\";s:4:\"wrID\";s:1:\"3\";}'),(4,4,'2015-06-11 14:04:14','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:1:\"4\";s:4:\"wrID\";s:1:\"4\";}'),(5,5,'2015-06-12 12:26:03','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"152\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:1:\"5\";}'),(6,6,'2015-06-12 12:26:03','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"152\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:1:\"6\";}'),(7,7,'2015-06-12 12:27:14','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"153\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:1:\"7\";}'),(8,8,'2015-06-12 12:27:55','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"154\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:1:\"8\";}'),(9,9,'2015-06-12 12:28:32','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"155\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:1:\"9\";}'),(10,10,'2015-06-12 12:30:01','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"156\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:2:\"10\";}'),(11,11,'2015-06-12 12:33:43','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:1:\"5\";s:4:\"wrID\";s:2:\"11\";}'),(12,12,'2015-06-12 12:40:48','O:70:\"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsInheritanceRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:3:\"156\";s:11:\"inheritance\";s:8:\"OVERRIDE\";s:4:\"wrID\";s:2:\"12\";}'),(13,13,'2015-06-12 12:41:16','O:59:\"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:3:\"156\";s:13:\"permissionSet\";O:28:\"Concrete\\Core\\Permission\\Set\":2:{s:14:\"\0*\0permissions\";a:18:{i:1;s:3:\"109\";i:2;s:2:\"42\";i:3;s:2:\"43\";i:4;s:2:\"44\";i:5;s:2:\"45\";i:6;s:2:\"46\";i:7;s:2:\"47\";i:8;s:2:\"49\";i:9;s:2:\"50\";i:10;s:1:\"0\";i:11;s:2:\"51\";i:12;s:2:\"52\";i:13;s:2:\"53\";i:14;s:2:\"54\";i:15;s:2:\"55\";i:16;s:2:\"56\";i:17;s:2:\"57\";i:18;s:2:\"48\";}s:19:\"\0*\0pkCategoryHandle\";s:4:\"page\";}s:4:\"wrID\";s:2:\"13\";}'),(14,14,'2015-06-12 12:42:20','O:70:\"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsInheritanceRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:3:\"156\";s:11:\"inheritance\";s:6:\"PARENT\";s:4:\"wrID\";s:2:\"14\";}'),(15,15,'2015-06-12 14:06:41','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:1:\"6\";s:4:\"wrID\";s:2:\"15\";}'),(16,16,'2015-06-12 14:25:33','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:1:\"7\";s:4:\"wrID\";s:2:\"16\";}'),(17,17,'2015-06-15 18:43:59','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:1:\"8\";s:4:\"wrID\";s:2:\"17\";}'),(18,18,'2015-06-15 18:45:27','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:1:\"9\";s:4:\"wrID\";s:2:\"18\";}'),(19,19,'2015-06-19 15:40:15','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"10\";s:4:\"wrID\";s:2:\"19\";}'),(20,20,'2015-07-09 00:49:33','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"3\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"156\";s:4:\"cvID\";s:1:\"3\";s:4:\"wrID\";s:2:\"20\";}'),(21,21,'2015-07-09 00:57:36','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"3\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"156\";s:4:\"cvID\";s:1:\"5\";s:4:\"wrID\";s:2:\"21\";}'),(22,22,'2015-07-09 01:03:39','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"3\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"153\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:2:\"22\";}'),(23,23,'2015-07-09 01:05:55','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"3\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"153\";s:4:\"cvID\";s:1:\"3\";s:4:\"wrID\";s:2:\"23\";}'),(24,24,'2015-07-09 12:39:18','O:70:\"Concrete\\Core\\Workflow\\Request\\ChangeSubpageDefaultsInheritanceRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:1:\"1\";s:11:\"inheritance\";s:1:\"0\";s:4:\"wrID\";s:2:\"24\";}'),(25,25,'2015-07-09 12:39:21','O:70:\"Concrete\\Core\\Workflow\\Request\\ChangeSubpageDefaultsInheritanceRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:1:\"1\";s:11:\"inheritance\";s:1:\"1\";s:4:\"wrID\";s:2:\"25\";}'),(26,26,'2015-07-09 12:40:45','O:59:\"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:1:\"1\";s:13:\"permissionSet\";O:28:\"Concrete\\Core\\Permission\\Set\":2:{s:14:\"\0*\0permissions\";a:18:{i:1;s:2:\"41\";i:2;s:3:\"116\";i:3;s:3:\"116\";i:4;s:3:\"116\";i:5;s:3:\"116\";i:6;s:3:\"116\";i:7;s:3:\"115\";i:8;s:2:\"49\";i:9;s:2:\"50\";i:10;s:1:\"0\";i:11;s:2:\"51\";i:12;s:2:\"52\";i:13;s:3:\"115\";i:14;s:3:\"115\";i:15;s:2:\"55\";i:16;s:3:\"115\";i:17;s:2:\"57\";i:18;s:2:\"48\";}s:19:\"\0*\0pkCategoryHandle\";s:4:\"page\";}s:4:\"wrID\";s:2:\"26\";}'),(27,27,'2015-07-09 12:51:25','O:59:\"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:1:\"2\";s:13:\"permissionSet\";O:28:\"Concrete\\Core\\Permission\\Set\":2:{s:14:\"\0*\0permissions\";a:18:{i:1;s:3:\"119\";i:2;s:1:\"0\";i:3;s:1:\"0\";i:4;s:1:\"0\";i:5;s:1:\"0\";i:6;s:1:\"0\";i:7;s:1:\"0\";i:8;s:1:\"0\";i:9;s:1:\"0\";i:10;s:1:\"0\";i:11;s:1:\"0\";i:12;s:1:\"0\";i:13;s:1:\"0\";i:14;s:1:\"0\";i:15;s:1:\"0\";i:16;s:1:\"0\";i:17;s:1:\"0\";i:18;s:1:\"0\";}s:19:\"\0*\0pkCategoryHandle\";s:4:\"page\";}s:4:\"wrID\";s:2:\"27\";}'),(28,28,'2015-07-09 12:51:56','O:70:\"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsInheritanceRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:1:\"3\";s:11:\"inheritance\";s:8:\"OVERRIDE\";s:4:\"wrID\";s:2:\"28\";}'),(29,29,'2015-07-09 12:52:09','O:59:\"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:1:\"3\";s:13:\"permissionSet\";O:28:\"Concrete\\Core\\Permission\\Set\":2:{s:14:\"\0*\0permissions\";a:18:{i:1;s:3:\"120\";i:2;s:1:\"0\";i:3;s:1:\"0\";i:4;s:1:\"0\";i:5;s:1:\"0\";i:6;s:1:\"0\";i:7;s:1:\"0\";i:8;s:1:\"0\";i:9;s:1:\"0\";i:10;s:1:\"0\";i:11;s:1:\"0\";i:12;s:1:\"0\";i:13;s:1:\"0\";i:14;s:1:\"0\";i:15;s:1:\"0\";i:16;s:1:\"0\";i:17;s:1:\"0\";i:18;s:1:\"0\";}s:19:\"\0*\0pkCategoryHandle\";s:4:\"page\";}s:4:\"wrID\";s:2:\"29\";}'),(30,30,'2015-07-09 12:52:19','O:70:\"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsInheritanceRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:2:\"12\";s:11:\"inheritance\";s:8:\"OVERRIDE\";s:4:\"wrID\";s:2:\"30\";}'),(31,31,'2015-07-09 12:52:36','O:59:\"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:2:\"12\";s:13:\"permissionSet\";O:28:\"Concrete\\Core\\Permission\\Set\":2:{s:14:\"\0*\0permissions\";a:18:{i:1;s:3:\"121\";i:2;s:1:\"0\";i:3;s:1:\"0\";i:4;s:1:\"0\";i:5;s:1:\"0\";i:6;s:1:\"0\";i:7;s:1:\"0\";i:8;s:1:\"0\";i:9;s:1:\"0\";i:10;s:1:\"0\";i:11;s:1:\"0\";i:12;s:1:\"0\";i:13;s:1:\"0\";i:14;s:1:\"0\";i:15;s:1:\"0\";i:16;s:1:\"0\";i:17;s:1:\"0\";i:18;s:1:\"0\";}s:19:\"\0*\0pkCategoryHandle\";s:4:\"page\";}s:4:\"wrID\";s:2:\"31\";}'),(32,32,'2015-07-09 12:54:04','O:70:\"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsInheritanceRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:2:\"23\";s:11:\"inheritance\";s:8:\"OVERRIDE\";s:4:\"wrID\";s:2:\"32\";}'),(33,33,'2015-07-09 12:54:24','O:59:\"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:2:\"23\";s:13:\"permissionSet\";O:28:\"Concrete\\Core\\Permission\\Set\":2:{s:14:\"\0*\0permissions\";a:18:{i:1;s:3:\"122\";i:2;s:1:\"0\";i:3;s:1:\"0\";i:4;s:1:\"0\";i:5;s:1:\"0\";i:6;s:1:\"0\";i:7;s:1:\"0\";i:8;s:1:\"0\";i:9;s:1:\"0\";i:10;s:1:\"0\";i:11;s:1:\"0\";i:12;s:1:\"0\";i:13;s:1:\"0\";i:14;s:1:\"0\";i:15;s:1:\"0\";i:16;s:1:\"0\";i:17;s:1:\"0\";i:18;s:1:\"0\";}s:19:\"\0*\0pkCategoryHandle\";s:4:\"page\";}s:4:\"wrID\";s:2:\"33\";}'),(34,34,'2015-07-09 12:54:36','O:70:\"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsInheritanceRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:2:\"27\";s:11:\"inheritance\";s:8:\"OVERRIDE\";s:4:\"wrID\";s:2:\"34\";}'),(35,35,'2015-07-09 12:55:01','O:59:\"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:2:\"27\";s:13:\"permissionSet\";O:28:\"Concrete\\Core\\Permission\\Set\":2:{s:14:\"\0*\0permissions\";a:18:{i:1;s:3:\"123\";i:2;s:1:\"0\";i:3;s:1:\"0\";i:4;s:1:\"0\";i:5;s:1:\"0\";i:6;s:1:\"0\";i:7;s:1:\"0\";i:8;s:1:\"0\";i:9;s:1:\"0\";i:10;s:1:\"0\";i:11;s:1:\"0\";i:12;s:1:\"0\";i:13;s:1:\"0\";i:14;s:1:\"0\";i:15;s:1:\"0\";i:16;s:1:\"0\";i:17;s:1:\"0\";i:18;s:1:\"0\";}s:19:\"\0*\0pkCategoryHandle\";s:4:\"page\";}s:4:\"wrID\";s:2:\"35\";}'),(36,36,'2015-07-09 12:55:35','O:59:\"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:2:\"27\";s:13:\"permissionSet\";O:28:\"Concrete\\Core\\Permission\\Set\":2:{s:14:\"\0*\0permissions\";a:18:{i:1;s:3:\"124\";i:2;s:1:\"0\";i:3;s:1:\"0\";i:4;s:1:\"0\";i:5;s:1:\"0\";i:6;s:1:\"0\";i:7;s:1:\"0\";i:8;s:1:\"0\";i:9;s:1:\"0\";i:10;s:1:\"0\";i:11;s:1:\"0\";i:12;s:1:\"0\";i:13;s:1:\"0\";i:14;s:1:\"0\";i:15;s:1:\"0\";i:16;s:1:\"0\";i:17;s:1:\"0\";i:18;s:1:\"0\";}s:19:\"\0*\0pkCategoryHandle\";s:4:\"page\";}s:4:\"wrID\";s:2:\"36\";}'),(37,37,'2015-07-09 12:55:35','O:59:\"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:1:\"2\";s:13:\"permissionSet\";O:28:\"Concrete\\Core\\Permission\\Set\":2:{s:14:\"\0*\0permissions\";a:18:{i:1;s:3:\"119\";i:2;s:1:\"0\";i:3;s:1:\"0\";i:4;s:1:\"0\";i:5;s:1:\"0\";i:6;s:1:\"0\";i:7;s:1:\"0\";i:8;s:1:\"0\";i:9;s:1:\"0\";i:10;s:1:\"0\";i:11;s:1:\"0\";i:12;s:1:\"0\";i:13;s:1:\"0\";i:14;s:1:\"0\";i:15;s:1:\"0\";i:16;s:1:\"0\";i:17;s:1:\"0\";i:18;s:1:\"0\";}s:19:\"\0*\0pkCategoryHandle\";s:4:\"page\";}s:4:\"wrID\";s:2:\"37\";}'),(38,38,'2015-07-09 12:56:01','O:59:\"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:2:\"27\";s:13:\"permissionSet\";O:28:\"Concrete\\Core\\Permission\\Set\":2:{s:14:\"\0*\0permissions\";a:18:{i:1;s:3:\"125\";i:2;s:1:\"0\";i:3;s:1:\"0\";i:4;s:1:\"0\";i:5;s:1:\"0\";i:6;s:1:\"0\";i:7;s:1:\"0\";i:8;s:1:\"0\";i:9;s:1:\"0\";i:10;s:1:\"0\";i:11;s:1:\"0\";i:12;s:1:\"0\";i:13;s:1:\"0\";i:14;s:1:\"0\";i:15;s:1:\"0\";i:16;s:1:\"0\";i:17;s:1:\"0\";i:18;s:1:\"0\";}s:19:\"\0*\0pkCategoryHandle\";s:4:\"page\";}s:4:\"wrID\";s:2:\"38\";}'),(39,39,'2015-07-09 12:56:01','O:59:\"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:1:\"2\";s:13:\"permissionSet\";O:28:\"Concrete\\Core\\Permission\\Set\":2:{s:14:\"\0*\0permissions\";a:18:{i:1;s:3:\"119\";i:2;s:1:\"0\";i:3;s:1:\"0\";i:4;s:1:\"0\";i:5;s:1:\"0\";i:6;s:1:\"0\";i:7;s:1:\"0\";i:8;s:1:\"0\";i:9;s:1:\"0\";i:10;s:1:\"0\";i:11;s:1:\"0\";i:12;s:1:\"0\";i:13;s:1:\"0\";i:14;s:1:\"0\";i:15;s:1:\"0\";i:16;s:1:\"0\";i:17;s:1:\"0\";i:18;s:1:\"0\";}s:19:\"\0*\0pkCategoryHandle\";s:4:\"page\";}s:4:\"wrID\";s:2:\"39\";}'),(40,40,'2015-07-09 12:56:25','O:59:\"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:1:\"2\";s:13:\"permissionSet\";O:28:\"Concrete\\Core\\Permission\\Set\":2:{s:14:\"\0*\0permissions\";a:18:{i:1;s:3:\"126\";i:2;s:1:\"0\";i:3;s:1:\"0\";i:4;s:1:\"0\";i:5;s:1:\"0\";i:6;s:1:\"0\";i:7;s:1:\"0\";i:8;s:1:\"0\";i:9;s:1:\"0\";i:10;s:1:\"0\";i:11;s:1:\"0\";i:12;s:1:\"0\";i:13;s:1:\"0\";i:14;s:1:\"0\";i:15;s:1:\"0\";i:16;s:1:\"0\";i:17;s:1:\"0\";i:18;s:1:\"0\";}s:19:\"\0*\0pkCategoryHandle\";s:4:\"page\";}s:4:\"wrID\";s:2:\"40\";}'),(41,41,'2015-07-09 13:54:31','O:59:\"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:1:\"2\";s:13:\"permissionSet\";O:28:\"Concrete\\Core\\Permission\\Set\":2:{s:14:\"\0*\0permissions\";a:18:{i:1;s:3:\"128\";i:2;s:1:\"0\";i:3;s:1:\"0\";i:4;s:1:\"0\";i:5;s:1:\"0\";i:6;s:1:\"0\";i:7;s:1:\"0\";i:8;s:1:\"0\";i:9;s:1:\"0\";i:10;s:1:\"0\";i:11;s:1:\"0\";i:12;s:1:\"0\";i:13;s:1:\"0\";i:14;s:1:\"0\";i:15;s:1:\"0\";i:16;s:1:\"0\";i:17;s:1:\"0\";i:18;s:1:\"0\";}s:19:\"\0*\0pkCategoryHandle\";s:4:\"page\";}s:4:\"wrID\";s:2:\"41\";}'),(42,42,'2015-07-09 13:54:59','O:59:\"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:2:\"12\";s:13:\"permissionSet\";O:28:\"Concrete\\Core\\Permission\\Set\":2:{s:14:\"\0*\0permissions\";a:18:{i:1;s:3:\"129\";i:2;s:1:\"0\";i:3;s:1:\"0\";i:4;s:1:\"0\";i:5;s:1:\"0\";i:6;s:1:\"0\";i:7;s:1:\"0\";i:8;s:1:\"0\";i:9;s:1:\"0\";i:10;s:1:\"0\";i:11;s:1:\"0\";i:12;s:1:\"0\";i:13;s:1:\"0\";i:14;s:1:\"0\";i:15;s:1:\"0\";i:16;s:1:\"0\";i:17;s:1:\"0\";i:18;s:1:\"0\";}s:19:\"\0*\0pkCategoryHandle\";s:4:\"page\";}s:4:\"wrID\";s:2:\"42\";}'),(43,43,'2015-07-09 13:55:08','O:59:\"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:2:\"23\";s:13:\"permissionSet\";O:28:\"Concrete\\Core\\Permission\\Set\":2:{s:14:\"\0*\0permissions\";a:18:{i:1;s:3:\"122\";i:2;s:1:\"0\";i:3;s:1:\"0\";i:4;s:1:\"0\";i:5;s:1:\"0\";i:6;s:1:\"0\";i:7;s:1:\"0\";i:8;s:1:\"0\";i:9;s:1:\"0\";i:10;s:1:\"0\";i:11;s:1:\"0\";i:12;s:1:\"0\";i:13;s:1:\"0\";i:14;s:1:\"0\";i:15;s:1:\"0\";i:16;s:1:\"0\";i:17;s:1:\"0\";i:18;s:1:\"0\";}s:19:\"\0*\0pkCategoryHandle\";s:4:\"page\";}s:4:\"wrID\";s:2:\"43\";}'),(44,44,'2015-07-09 13:55:16','O:59:\"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:2:\"27\";s:13:\"permissionSet\";O:28:\"Concrete\\Core\\Permission\\Set\":2:{s:14:\"\0*\0permissions\";a:18:{i:1;s:3:\"125\";i:2;s:1:\"0\";i:3;s:1:\"0\";i:4;s:1:\"0\";i:5;s:1:\"0\";i:6;s:1:\"0\";i:7;s:1:\"0\";i:8;s:1:\"0\";i:9;s:1:\"0\";i:10;s:1:\"0\";i:11;s:1:\"0\";i:12;s:1:\"0\";i:13;s:1:\"0\";i:14;s:1:\"0\";i:15;s:1:\"0\";i:16;s:1:\"0\";i:17;s:1:\"0\";i:18;s:1:\"0\";}s:19:\"\0*\0pkCategoryHandle\";s:4:\"page\";}s:4:\"wrID\";s:2:\"44\";}'),(45,45,'2015-07-09 13:55:31','O:70:\"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsInheritanceRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:2:\"42\";s:11:\"inheritance\";s:8:\"OVERRIDE\";s:4:\"wrID\";s:2:\"45\";}'),(46,46,'2015-07-09 13:55:55','O:59:\"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:2:\"42\";s:13:\"permissionSet\";O:28:\"Concrete\\Core\\Permission\\Set\":2:{s:14:\"\0*\0permissions\";a:18:{i:1;s:3:\"130\";i:2;s:1:\"0\";i:3;s:1:\"0\";i:4;s:1:\"0\";i:5;s:1:\"0\";i:6;s:1:\"0\";i:7;s:1:\"0\";i:8;s:1:\"0\";i:9;s:1:\"0\";i:10;s:1:\"0\";i:11;s:1:\"0\";i:12;s:1:\"0\";i:13;s:1:\"0\";i:14;s:1:\"0\";i:15;s:1:\"0\";i:16;s:1:\"0\";i:17;s:1:\"0\";i:18;s:1:\"0\";}s:19:\"\0*\0pkCategoryHandle\";s:4:\"page\";}s:4:\"wrID\";s:2:\"46\";}'),(47,47,'2015-07-09 13:56:05','O:70:\"Concrete\\Core\\Workflow\\Request\\ChangeSubpageDefaultsInheritanceRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:2:\"44\";s:11:\"inheritance\";s:1:\"0\";s:4:\"wrID\";s:2:\"47\";}'),(48,48,'2015-07-09 13:56:08','O:70:\"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsInheritanceRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:2:\"44\";s:11:\"inheritance\";s:8:\"OVERRIDE\";s:4:\"wrID\";s:2:\"48\";}'),(49,49,'2015-07-09 13:56:25','O:59:\"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:2:\"44\";s:13:\"permissionSet\";O:28:\"Concrete\\Core\\Permission\\Set\":2:{s:14:\"\0*\0permissions\";a:18:{i:1;s:3:\"131\";i:2;s:1:\"0\";i:3;s:1:\"0\";i:4;s:1:\"0\";i:5;s:1:\"0\";i:6;s:1:\"0\";i:7;s:1:\"0\";i:8;s:1:\"0\";i:9;s:1:\"0\";i:10;s:1:\"0\";i:11;s:1:\"0\";i:12;s:1:\"0\";i:13;s:1:\"0\";i:14;s:1:\"0\";i:15;s:1:\"0\";i:16;s:1:\"0\";i:17;s:1:\"0\";i:18;s:1:\"0\";}s:19:\"\0*\0pkCategoryHandle\";s:4:\"page\";}s:4:\"wrID\";s:2:\"49\";}'),(50,50,'2015-07-09 13:57:22','O:70:\"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsInheritanceRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:2:\"47\";s:11:\"inheritance\";s:8:\"OVERRIDE\";s:4:\"wrID\";s:2:\"50\";}'),(51,51,'2015-07-09 13:57:36','O:59:\"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:2:\"47\";s:13:\"permissionSet\";O:28:\"Concrete\\Core\\Permission\\Set\":2:{s:14:\"\0*\0permissions\";a:18:{i:1;s:3:\"132\";i:2;s:1:\"0\";i:3;s:1:\"0\";i:4;s:1:\"0\";i:5;s:1:\"0\";i:6;s:1:\"0\";i:7;s:1:\"0\";i:8;s:1:\"0\";i:9;s:1:\"0\";i:10;s:1:\"0\";i:11;s:1:\"0\";i:12;s:1:\"0\";i:13;s:1:\"0\";i:14;s:1:\"0\";i:15;s:1:\"0\";i:16;s:1:\"0\";i:17;s:1:\"0\";i:18;s:1:\"0\";}s:19:\"\0*\0pkCategoryHandle\";s:4:\"page\";}s:4:\"wrID\";s:2:\"51\";}'),(52,52,'2015-07-09 13:57:43','O:70:\"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsInheritanceRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:2:\"52\";s:11:\"inheritance\";s:8:\"OVERRIDE\";s:4:\"wrID\";s:2:\"52\";}'),(53,53,'2015-07-09 13:57:55','O:59:\"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:2:\"52\";s:13:\"permissionSet\";O:28:\"Concrete\\Core\\Permission\\Set\":2:{s:14:\"\0*\0permissions\";a:18:{i:1;s:3:\"133\";i:2;s:1:\"0\";i:3;s:1:\"0\";i:4;s:1:\"0\";i:5;s:1:\"0\";i:6;s:1:\"0\";i:7;s:1:\"0\";i:8;s:1:\"0\";i:9;s:1:\"0\";i:10;s:1:\"0\";i:11;s:1:\"0\";i:12;s:1:\"0\";i:13;s:1:\"0\";i:14;s:1:\"0\";i:15;s:1:\"0\";i:16;s:1:\"0\";i:17;s:1:\"0\";i:18;s:1:\"0\";}s:19:\"\0*\0pkCategoryHandle\";s:4:\"page\";}s:4:\"wrID\";s:2:\"53\";}'),(54,54,'2015-07-09 13:58:24','O:70:\"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsInheritanceRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:2:\"59\";s:11:\"inheritance\";s:8:\"OVERRIDE\";s:4:\"wrID\";s:2:\"54\";}'),(55,55,'2015-07-09 13:58:39','O:59:\"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:2:\"59\";s:13:\"permissionSet\";O:28:\"Concrete\\Core\\Permission\\Set\":2:{s:14:\"\0*\0permissions\";a:18:{i:1;s:3:\"134\";i:2;s:1:\"0\";i:3;s:1:\"0\";i:4;s:1:\"0\";i:5;s:1:\"0\";i:6;s:1:\"0\";i:7;s:1:\"0\";i:8;s:1:\"0\";i:9;s:1:\"0\";i:10;s:1:\"0\";i:11;s:1:\"0\";i:12;s:1:\"0\";i:13;s:1:\"0\";i:14;s:1:\"0\";i:15;s:1:\"0\";i:16;s:1:\"0\";i:17;s:1:\"0\";i:18;s:1:\"0\";}s:19:\"\0*\0pkCategoryHandle\";s:4:\"page\";}s:4:\"wrID\";s:2:\"55\";}'),(56,56,'2015-07-09 13:59:52','O:70:\"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsInheritanceRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:3:\"126\";s:11:\"inheritance\";s:8:\"OVERRIDE\";s:4:\"wrID\";s:2:\"56\";}'),(57,57,'2015-07-09 14:00:05','O:59:\"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:3:\"126\";s:13:\"permissionSet\";O:28:\"Concrete\\Core\\Permission\\Set\":2:{s:14:\"\0*\0permissions\";a:18:{i:1;s:3:\"135\";i:2;s:1:\"0\";i:3;s:1:\"0\";i:4;s:1:\"0\";i:5;s:1:\"0\";i:6;s:1:\"0\";i:7;s:1:\"0\";i:8;s:1:\"0\";i:9;s:1:\"0\";i:10;s:1:\"0\";i:11;s:1:\"0\";i:12;s:1:\"0\";i:13;s:1:\"0\";i:14;s:1:\"0\";i:15;s:1:\"0\";i:16;s:1:\"0\";i:17;s:1:\"0\";i:18;s:1:\"0\";}s:19:\"\0*\0pkCategoryHandle\";s:4:\"page\";}s:4:\"wrID\";s:2:\"57\";}'),(58,58,'2015-07-09 16:29:41','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"11\";s:4:\"wrID\";s:2:\"58\";}'),(59,59,'2015-07-21 17:21:36','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"12\";s:4:\"wrID\";s:2:\"59\";}'),(60,60,'2015-08-10 14:14:50','O:50:\"Concrete\\Core\\Workflow\\Request\\ApproveStackRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"149\";s:4:\"cvID\";s:1:\"5\";s:4:\"wrID\";s:2:\"60\";}'),(61,61,'2015-08-31 20:06:49','O:50:\"Concrete\\Core\\Workflow\\Request\\ApproveStackRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"149\";s:4:\"cvID\";s:2:\"11\";s:4:\"wrID\";s:2:\"61\";}'),(62,62,'2015-08-31 20:22:47','O:50:\"Concrete\\Core\\Workflow\\Request\\ApproveStackRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"157\";s:4:\"cvID\";s:1:\"3\";s:4:\"wrID\";s:2:\"62\";}'),(63,63,'2015-09-01 19:36:32','O:50:\"Concrete\\Core\\Workflow\\Request\\ApproveStackRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"157\";s:4:\"cvID\";s:1:\"6\";s:4:\"wrID\";s:2:\"63\";}'),(64,64,'2015-09-01 19:39:03','O:50:\"Concrete\\Core\\Workflow\\Request\\ApproveStackRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"157\";s:4:\"cvID\";s:1:\"7\";s:4:\"wrID\";s:2:\"64\";}'),(65,65,'2015-09-01 19:55:57','O:50:\"Concrete\\Core\\Workflow\\Request\\ApproveStackRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"157\";s:4:\"cvID\";s:2:\"12\";s:4:\"wrID\";s:2:\"65\";}'),(66,66,'2015-09-01 20:04:18','O:50:\"Concrete\\Core\\Workflow\\Request\\ApproveStackRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"157\";s:4:\"cvID\";s:2:\"13\";s:4:\"wrID\";s:2:\"66\";}'),(67,67,'2015-09-01 20:22:26','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"13\";s:4:\"wrID\";s:2:\"67\";}'),(68,68,'2015-09-01 20:27:09','O:50:\"Concrete\\Core\\Workflow\\Request\\ApproveStackRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"158\";s:4:\"cvID\";s:1:\"3\";s:4:\"wrID\";s:2:\"68\";}'),(69,69,'2015-09-01 20:29:15','O:50:\"Concrete\\Core\\Workflow\\Request\\ApproveStackRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"157\";s:4:\"cvID\";s:2:\"14\";s:4:\"wrID\";s:2:\"69\";}'),(70,70,'2015-09-01 20:41:57','O:50:\"Concrete\\Core\\Workflow\\Request\\ApproveStackRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"159\";s:4:\"cvID\";s:1:\"3\";s:4:\"wrID\";s:2:\"70\";}'),(71,71,'2015-09-03 19:18:03','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"14\";s:4:\"wrID\";s:2:\"71\";}'),(72,72,'2015-09-03 19:19:06','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"15\";s:4:\"wrID\";s:2:\"72\";}'),(73,73,'2015-09-03 20:45:11','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"16\";s:4:\"wrID\";s:2:\"73\";}'),(74,74,'2015-09-03 20:46:35','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"17\";s:4:\"wrID\";s:2:\"74\";}'),(75,75,'2015-09-03 20:50:00','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"18\";s:4:\"wrID\";s:2:\"75\";}'),(76,76,'2015-09-03 20:51:05','O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"19\";s:4:\"wrID\";s:2:\"76\";}');
/*!40000 ALTER TABLE `WorkflowProgressHistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WorkflowRequestObjects`
--

DROP TABLE IF EXISTS `WorkflowRequestObjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WorkflowRequestObjects` (
  `wrID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wrObject` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`wrID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WorkflowRequestObjects`
--

LOCK TABLES `WorkflowRequestObjects` WRITE;
/*!40000 ALTER TABLE `WorkflowRequestObjects` DISABLE KEYS */;
/*!40000 ALTER TABLE `WorkflowRequestObjects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WorkflowTypes`
--

DROP TABLE IF EXISTS `WorkflowTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WorkflowTypes` (
  `wftID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wftHandle` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `wftName` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`wftID`),
  UNIQUE KEY `wftHandle` (`wftHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WorkflowTypes`
--

LOCK TABLES `WorkflowTypes` WRITE;
/*!40000 ALTER TABLE `WorkflowTypes` DISABLE KEYS */;
INSERT INTO `WorkflowTypes` VALUES (1,'basic','Basic Workflow',0);
/*!40000 ALTER TABLE `WorkflowTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Workflows`
--

DROP TABLE IF EXISTS `Workflows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Workflows` (
  `wfID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wfName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `wftID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`wfID`),
  UNIQUE KEY `wfName` (`wfName`),
  KEY `wftID` (`wftID`,`wfID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Workflows`
--

LOCK TABLES `Workflows` WRITE;
/*!40000 ALTER TABLE `Workflows` DISABLE KEYS */;
/*!40000 ALTER TABLE `Workflows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atAddress`
--

DROP TABLE IF EXISTS `atAddress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atAddress` (
  `avID` int(10) unsigned NOT NULL DEFAULT '0',
  `address1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state_province` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postal_code` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atAddress`
--

LOCK TABLES `atAddress` WRITE;
/*!40000 ALTER TABLE `atAddress` DISABLE KEYS */;
INSERT INTO `atAddress` VALUES (118,'3000 Barlows Brook Road','','Shelbyville','KY','US','40065'),(122,'511 Mt Eden Road','','Shelbyville','KY','US','40065'),(132,'511 Mt Eden Rd','','Shelbyville','KY','US','40065');
/*!40000 ALTER TABLE `atAddress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atAddressCustomCountries`
--

DROP TABLE IF EXISTS `atAddressCustomCountries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atAddressCustomCountries` (
  `atAddressCustomCountryID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `country` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`atAddressCustomCountryID`),
  KEY `akID` (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atAddressCustomCountries`
--

LOCK TABLES `atAddressCustomCountries` WRITE;
/*!40000 ALTER TABLE `atAddressCustomCountries` DISABLE KEYS */;
/*!40000 ALTER TABLE `atAddressCustomCountries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atAddressSettings`
--

DROP TABLE IF EXISTS `atAddressSettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atAddressSettings` (
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `akHasCustomCountries` tinyint(1) NOT NULL DEFAULT '0',
  `akDefaultCountry` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atAddressSettings`
--

LOCK TABLES `atAddressSettings` WRITE;
/*!40000 ALTER TABLE `atAddressSettings` DISABLE KEYS */;
INSERT INTO `atAddressSettings` VALUES (19,0,'US');
/*!40000 ALTER TABLE `atAddressSettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atBoolean`
--

DROP TABLE IF EXISTS `atBoolean`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atBoolean` (
  `avID` int(10) unsigned NOT NULL,
  `value` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atBoolean`
--

LOCK TABLES `atBoolean` WRITE;
/*!40000 ALTER TABLE `atBoolean` DISABLE KEYS */;
INSERT INTO `atBoolean` VALUES (9,1),(16,1),(18,1),(28,1),(29,1),(30,1),(31,1),(32,1),(33,1),(34,1),(35,1),(42,1),(43,1),(47,1),(51,1),(98,1),(106,1),(107,1),(108,1),(119,1),(120,1),(123,1),(124,1),(133,1),(134,1),(141,1);
/*!40000 ALTER TABLE `atBoolean` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atBooleanSettings`
--

DROP TABLE IF EXISTS `atBooleanSettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atBooleanSettings` (
  `akID` int(10) unsigned NOT NULL,
  `akCheckedByDefault` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atBooleanSettings`
--

LOCK TABLES `atBooleanSettings` WRITE;
/*!40000 ALTER TABLE `atBooleanSettings` DISABLE KEYS */;
INSERT INTO `atBooleanSettings` VALUES (5,0),(6,0),(9,0),(10,0),(11,0),(12,1),(13,1);
/*!40000 ALTER TABLE `atBooleanSettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atDateTime`
--

DROP TABLE IF EXISTS `atDateTime`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atDateTime` (
  `avID` int(10) unsigned NOT NULL,
  `value` datetime DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atDateTime`
--

LOCK TABLES `atDateTime` WRITE;
/*!40000 ALTER TABLE `atDateTime` DISABLE KEYS */;
INSERT INTO `atDateTime` VALUES (142,'2015-05-31 00:00:00'),(143,'2015-06-14 00:00:00'),(144,'2015-06-07 00:00:00'),(145,'2015-06-21 00:00:00'),(146,'2015-06-07 00:00:00'),(149,'2015-07-12 00:00:00'),(150,'2015-07-05 00:00:00'),(151,'2015-06-28 00:00:00');
/*!40000 ALTER TABLE `atDateTime` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atDateTimeSettings`
--

DROP TABLE IF EXISTS `atDateTimeSettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atDateTimeSettings` (
  `akID` int(10) unsigned NOT NULL,
  `akDateDisplayMode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atDateTimeSettings`
--

LOCK TABLES `atDateTimeSettings` WRITE;
/*!40000 ALTER TABLE `atDateTimeSettings` DISABLE KEYS */;
INSERT INTO `atDateTimeSettings` VALUES (25,'date');
/*!40000 ALTER TABLE `atDateTimeSettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atDefault`
--

DROP TABLE IF EXISTS `atDefault`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atDefault` (
  `avID` int(10) unsigned NOT NULL,
  `value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atDefault`
--

LOCK TABLES `atDefault` WRITE;
/*!40000 ALTER TABLE `atDefault` DISABLE KEYS */;
INSERT INTO `atDefault` VALUES (1,'fa fa-th-large'),(2,'pages, add page, delete page, copy, move, alias'),(3,'pages, add page, delete page, copy, move, alias'),(4,'pages, add page, delete page, copy, move, alias, bulk'),(5,'find page, search page, search, find, pages, sitemap'),(6,'add file, delete file, copy, move, alias, resize, crop, rename, images, title, attribute'),(7,'file, file attributes, title, attribute, description, rename'),(8,'files, category, categories'),(10,'new file set'),(11,'users, groups, people, find, delete user, remove user, change password, password'),(12,'find, search, people, delete user, remove user, change password, password'),(13,'user, group, people, permissions, expire, badges'),(14,'user attributes, user data, gather data, registration data'),(15,'new user, create'),(17,'new user group, new group, group, create'),(19,'group set'),(20,'community, points, karma'),(21,'action, community actions'),(22,'forms, log, error, email, mysql, exception, survey'),(23,'forms, questions, response, data'),(24,'questions, quiz, response'),(25,'forms, log, error, email, mysql, exception, survey, history'),(26,'new theme, theme, active theme, change theme, template, css'),(27,'page types'),(36,'page attributes, custom'),(37,'single, page, custom, application'),(38,'atom, rss, feed, syndication'),(39,'icon-bullhorn'),(40,'add workflow, remove workflow'),(41,'stacks, reusable content, scrapbook, copy, paste, paste block, copy block, site name, logo'),(44,'edit stacks, view stacks, all stacks'),(45,'block, refresh, custom'),(46,'add-on, addon, add on, package, app, ecommerce, discussions, forums, themes, templates, blocks'),(48,'add-on, addon, ecommerce, install, discussions, forums, themes, templates, blocks'),(49,'update, upgrade'),(50,'concrete5.org, my account, marketplace'),(52,'buy theme, new theme, marketplace, template'),(53,'buy addon, buy add on, buy add-on, purchase addon, purchase add on, purchase add-on, find addon, new addon, marketplace'),(54,'dashboard, configuration'),(55,'website name, title'),(56,'accessibility, easy mode'),(57,'sharing, facebook, twitter'),(58,'logo, favicon, iphone, icon, bookmark'),(59,'tinymce, content block, fonts, editor, content, overlay'),(60,'translate, translation, internationalization, multilingual'),(61,'timezone, profile, locale'),(62,'multilingual, localization, internationalization, i18n'),(63,'vanity, pretty url, redirection, hostname, canonical, seo, pageview, view'),(64,'bulk, seo, change keywords, engine, optimization, search'),(65,'traffic, statistics, google analytics, quant, pageviews, hits'),(66,'pretty, slug'),(67,'configure search, site search, search option'),(68,'file options, file manager, upload, modify'),(69,'security, files, media, extension, manager, upload'),(70,'images, picture, responsive, retina'),(71,'security, alternate storage, hide files'),(72,'cache option, change cache, override, turn on cache, turn off cache, no cache, page cache, caching'),(73,'cache option, turn off cache, no cache, page cache, caching'),(74,'index search, reindex search, build sitemap, sitemap.xml, clear old versions, page versions, remove old'),(75,'queries, database, mysql'),(76,'editors, hide site, offline, private, public, access'),(77,'security, actions, administrator, admin, package, marketplace, search'),(78,'security, lock ip, lock out, block ip, address, restrict, access'),(79,'security, registration'),(80,'antispam, block spam, security'),(81,'lock site, under construction, hide, hidden'),(82,'profile, login, redirect, specific, dashboard, administrators'),(83,'member profile, member page, community, forums, social, avatar'),(84,'signup, new user, community, public registration, public, registration'),(85,'auth, authentication, types, oauth, facebook, login, registration'),(86,'smtp, mail settings'),(87,'email server, mail settings, mail configuration, external, internal'),(88,'test smtp, test mail'),(89,'email server, mail settings, mail configuration, private message, message system, import, email, message'),(90,'conversations'),(91,'conversations'),(92,'conversations ratings, ratings, community, community points'),(93,'conversations bad words, banned words, banned, bad words, bad, words, list'),(94,'attribute configuration'),(95,'attributes, sets'),(96,'attributes, types'),(97,'topics, tags, taxonomy'),(99,'overrides, system info, debug, support, help'),(100,'errors, exceptions, develop, support, help'),(101,'email, logging, logs, smtp, pop, errors, mysql, log'),(102,'network, proxy server'),(103,'database, entities, doctrine, orm'),(104,'export, backup, database, sql, mysql, encryption, restore'),(105,'upgrade, new version, update'),(109,'fa fa-edit'),(110,'fa fa-trash-o'),(111,'fa fa-th'),(112,'fa fa-briefcase'),(117,'Mark Dazey'),(121,'Matt Johnson'),(126,'<p>Details about matt</p>'),(130,'Minister to the Next Generation'),(131,'Chris Platt'),(135,'Lead Pastor'),(136,'<p>Details About Chris</p>');
/*!40000 ALTER TABLE `atDefault` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atFile`
--

DROP TABLE IF EXISTS `atFile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atFile` (
  `avID` int(10) unsigned NOT NULL,
  `fID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`avID`),
  KEY `fID` (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atFile`
--

LOCK TABLES `atFile` WRITE;
/*!40000 ALTER TABLE `atFile` DISABLE KEYS */;
INSERT INTO `atFile` VALUES (129,3),(139,4);
/*!40000 ALTER TABLE `atFile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atNumber`
--

DROP TABLE IF EXISTS `atNumber`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atNumber` (
  `avID` int(10) unsigned NOT NULL,
  `value` decimal(14,4) DEFAULT '0.0000',
  PRIMARY KEY (`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atNumber`
--

LOCK TABLES `atNumber` WRITE;
/*!40000 ALTER TABLE `atNumber` DISABLE KEYS */;
INSERT INTO `atNumber` VALUES (113,1935.0000),(114,1452.0000),(115,1600.0000),(116,817.0000),(125,1.0000),(127,239.0000),(128,288.0000),(137,2448.0000),(138,3264.0000),(140,1.0000),(147,26.0000),(148,26.0000);
/*!40000 ALTER TABLE `atNumber` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atSelectOptions`
--

DROP TABLE IF EXISTS `atSelectOptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atSelectOptions` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `akID` int(10) unsigned DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `displayOrder` int(10) unsigned DEFAULT NULL,
  `isEndUserAdded` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `akID` (`akID`,`displayOrder`),
  KEY `value` (`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atSelectOptions`
--

LOCK TABLES `atSelectOptions` WRITE;
/*!40000 ALTER TABLE `atSelectOptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `atSelectOptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atSelectOptionsSelected`
--

DROP TABLE IF EXISTS `atSelectOptionsSelected`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atSelectOptionsSelected` (
  `avID` int(10) unsigned NOT NULL,
  `atSelectOptionID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`avID`,`atSelectOptionID`),
  KEY `atSelectOptionID` (`atSelectOptionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atSelectOptionsSelected`
--

LOCK TABLES `atSelectOptionsSelected` WRITE;
/*!40000 ALTER TABLE `atSelectOptionsSelected` DISABLE KEYS */;
/*!40000 ALTER TABLE `atSelectOptionsSelected` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atSelectSettings`
--

DROP TABLE IF EXISTS `atSelectSettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atSelectSettings` (
  `akID` int(10) unsigned NOT NULL,
  `akSelectAllowMultipleValues` tinyint(1) NOT NULL DEFAULT '0',
  `akSelectOptionDisplayOrder` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'display_asc',
  `akSelectAllowOtherValues` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atSelectSettings`
--

LOCK TABLES `atSelectSettings` WRITE;
/*!40000 ALTER TABLE `atSelectSettings` DISABLE KEYS */;
INSERT INTO `atSelectSettings` VALUES (8,1,'display_asc',1);
/*!40000 ALTER TABLE `atSelectSettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atSelectedTopics`
--

DROP TABLE IF EXISTS `atSelectedTopics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atSelectedTopics` (
  `avID` int(10) unsigned NOT NULL,
  `TopicNodeID` int(11) NOT NULL,
  PRIMARY KEY (`avID`,`TopicNodeID`),
  KEY `TopicNodeID` (`TopicNodeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atSelectedTopics`
--

LOCK TABLES `atSelectedTopics` WRITE;
/*!40000 ALTER TABLE `atSelectedTopics` DISABLE KEYS */;
/*!40000 ALTER TABLE `atSelectedTopics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atSocialLinks`
--

DROP TABLE IF EXISTS `atSocialLinks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atSocialLinks` (
  `avsID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `avID` int(10) unsigned NOT NULL DEFAULT '0',
  `service` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `serviceInfo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`avsID`),
  KEY `avID` (`avID`,`avsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atSocialLinks`
--

LOCK TABLES `atSocialLinks` WRITE;
/*!40000 ALTER TABLE `atSocialLinks` DISABLE KEYS */;
/*!40000 ALTER TABLE `atSocialLinks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atTextareaSettings`
--

DROP TABLE IF EXISTS `atTextareaSettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atTextareaSettings` (
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `akTextareaDisplayMode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `akTextareaDisplayModeCustomOptions` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atTextareaSettings`
--

LOCK TABLES `atTextareaSettings` WRITE;
/*!40000 ALTER TABLE `atTextareaSettings` DISABLE KEYS */;
INSERT INTO `atTextareaSettings` VALUES (2,'',''),(3,'',''),(4,'',''),(7,'',''),(23,'rich_text','');
/*!40000 ALTER TABLE `atTextareaSettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atTopicSettings`
--

DROP TABLE IF EXISTS `atTopicSettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atTopicSettings` (
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `akTopicParentNodeID` int(11) DEFAULT NULL,
  `akTopicTreeID` int(11) DEFAULT NULL,
  PRIMARY KEY (`akID`),
  KEY `akTopicTreeID` (`akTopicTreeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atTopicSettings`
--

LOCK TABLES `atTopicSettings` WRITE;
/*!40000 ALTER TABLE `atTopicSettings` DISABLE KEYS */;
/*!40000 ALTER TABLE `atTopicSettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authTypeConcreteCookieMap`
--

DROP TABLE IF EXISTS `authTypeConcreteCookieMap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `authTypeConcreteCookieMap` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uID` int(11) DEFAULT NULL,
  `validThrough` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `token` (`token`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authTypeConcreteCookieMap`
--

LOCK TABLES `authTypeConcreteCookieMap` WRITE;
/*!40000 ALTER TABLE `authTypeConcreteCookieMap` DISABLE KEYS */;
/*!40000 ALTER TABLE `authTypeConcreteCookieMap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btContentFile`
--

DROP TABLE IF EXISTS `btContentFile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btContentFile` (
  `bID` int(10) unsigned NOT NULL,
  `fID` int(10) unsigned DEFAULT NULL,
  `fileLinkText` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `filePassword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `forceDownload` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`bID`),
  KEY `fID` (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btContentFile`
--

LOCK TABLES `btContentFile` WRITE;
/*!40000 ALTER TABLE `btContentFile` DISABLE KEYS */;
/*!40000 ALTER TABLE `btContentFile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btContentImage`
--

DROP TABLE IF EXISTS `btContentImage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btContentImage` (
  `bID` int(10) unsigned NOT NULL,
  `fID` int(10) unsigned DEFAULT '0',
  `fOnstateID` int(10) unsigned DEFAULT '0',
  `maxWidth` int(10) unsigned DEFAULT '0',
  `maxHeight` int(10) unsigned DEFAULT '0',
  `externalLink` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `internalLinkCID` int(10) unsigned DEFAULT '0',
  `altText` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`bID`),
  KEY `fID` (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btContentImage`
--

LOCK TABLES `btContentImage` WRITE;
/*!40000 ALTER TABLE `btContentImage` DISABLE KEYS */;
/*!40000 ALTER TABLE `btContentImage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btContentLocal`
--

DROP TABLE IF EXISTS `btContentLocal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btContentLocal` (
  `bID` int(10) unsigned NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btContentLocal`
--

LOCK TABLES `btContentLocal` WRITE;
/*!40000 ALTER TABLE `btContentLocal` DISABLE KEYS */;
INSERT INTO `btContentLocal` VALUES (1,'<div style=\"padding: 40px; text-align: center\"> <iframe width=\"853\" height=\"480\" src=\"//www.youtube.com/embed/VB-R71zk06U\" frameborder=\"0\" allowfullscreen></iframe>                                     </div>'),(24,''),(27,''),(31,''),(37,''),(41,''),(52,'<h3>Highland Baptist Church is…</h3>  <p><span class=\"dark-blue\"><strong>A gathering of ordinary people who have encountered the extraordinary love of Jesus Christ and the transforming power of His gospel.</strong> </span>We are still stunned by the good news that His mercy, forgiveness, joy, hope, wisdom, power, forever life and more have been freely given to us—and are available for everyone!  </p>  <p><span class=\"dark-blue\"><strong>Jesus and His gospel are at the core of everything we are and everything we do. It’s steadily transforming our lives.</strong> </span>None of us have this thing figured out, but we’re committed to helping people of every life stage grow as disciples of Jesus and live life as God designed it.  </p>  <p><span class=\"dark-blue\"><strong>Jesus and His gospel bind a very diverse group of people into a loving faith-family.</strong> </span>We are old and young, single and married, rich and poor, new parents, empty-nesters and grandparents, blue-collar and white-collar, employed and unemployed, long-time Christians and not-quite-sure faith-explorers, Cards &amp; Kats fans, a little bit county , a little bit rock… and even a teensy slice of rap. In other words, there’s somebody here like you!  </p>  <p><span class=\"dark-blue\"><strong>Jesus and His gospel propels us to love all people in our world and serve their everyday needs.</strong> </span>We’re jumping into the stuff of life in our neighborhoods, schools, ball fields, golf courses and workplaces. At the same time, we’re also going where Jesus goes among the poor and broken of our community, and where people don’t yet know Him among the nations of the world.  </p>  <p><br>  </p>  <h3>Service Times</h3>  <p>Our Worship Service starts a 10:30 AM.  </p>  <p>Bible Study groups take place at 9:30 AM. Find a class <a title=\"Sunday School\" href=\"http://hbc-ky.com/home/grow-together/sunday-school/\">here.</a>  </p>  <p>On Sunday evenings service begins at 6:00 PM with a variety of Sunday evening worship, discipleship, fellowship, and growth events for all ages.<br>For children we offer our <a href=\"http://hbc-ky.com/home/grow-together/hbcm/\">HBCM </a>worship and for students we offer our <a href=\"http://hbc-ky.com/home/grow-together/reach-student-ministries/\">Reach </a>worship services at this time.  </p>  <p>mid-week @ Highland on Wednesday at 7:00 PM, children and student activites are also available.  </p>'),(54,'<h3>The mission of Highland Baptist Church is to engage the community for Christ.</h3><h3>HBC is…</h3>  <p><span class=\"dark-blue\"><strong>A gathering of ordinary people who have encountered the extraordinary love of Jesus Christ and the transforming power of His gospel.</strong> </span>We are still stunned by the good news that His mercy, forgiveness, joy, hope, wisdom, power, forever life and more have been freely given to us—and are available for everyone!  </p>  <p><span class=\"dark-blue\"><strong>Jesus and His gospel are at the core of everything we are and everything we do. It’s steadily transforming our lives.</strong> </span>None of us have this thing figured out, but we’re committed to helping people of every life stage grow as disciples of Jesus and live life as God designed it.  </p>  <p><span class=\"dark-blue\"><strong>Jesus and His gospel bind a very diverse group of people into a loving faith-family.</strong> </span>We are old and young, single and married, rich and poor, new parents, empty-nesters and grandparents, blue-collar and white-collar, employed and unemployed, long-time Christians and not-quite-sure faith-explorers, Cards &amp; Kats fans, a little bit county , a little bit rock… and even a teensy slice of rap. In other words, there’s somebody here like you!  </p>  <p><span class=\"dark-blue\"><strong>Jesus and His gospel propels us to love all people in our world and serve their everyday needs.</strong> </span>We’re jumping into the stuff of life in our neighborhoods, schools, ball fields, golf courses and workplaces. At the same time, we’re also going where Jesus goes among the poor and broken of our community, and where people don’t yet know Him among the nations of the world.  </p>  <p><br>  </p>  <h3>Service Times</h3>  <p>Our Worship Service starts a 10:30 AM.  </p>  <p>Bible Study groups take place at 9:30 AM. Find a class <a title=\"Sunday School\" href=\"http://hbc-ky.com/home/grow-together/sunday-school/\">here.</a>  </p>  <p>On Sunday evenings service begins at 6:00 PM with a variety of Sunday evening worship, discipleship, fellowship, and growth events for all ages.<br>For children we offer our <a href=\"http://hbc-ky.com/home/grow-together/hbcm/\">HBCM </a>worship and for students we offer our <a href=\"http://hbc-ky.com/home/grow-together/reach-student-ministries/\">Reach </a>worship services at this time.  </p>  <p>mid-week @ Highland on Wednesday at 7:00 PM, children and student activities are also available.  </p><p><br></p><h3>Affiliations</h3><p>This church is to carry out the total ministry for which Christ has made His church responsible. We shall voluntarily cooperate with and be a member of the Shelby Baptist Association, the Kentucky Baptist State Convention, the Southern Baptist Convention and cooperate with the Baptist World Alliance.</p>'),(56,'<h3>What should I wear?</h3><p>Some who attend are comfortable in casual attire (in the summer, you’ll see lots of shorts) while others are more comfortable with more traditional clothing (coats and ties or dresses). Please feel free to come “as you are.”</p><h3>I have children do you have childcare during services?</h3><p>Children younger than age 3 will receive care during the Sunday School hour in our Nursery and Toddler room. Nursery and Toddler care is also provided during our 10:30AM Worship service. Parents who utilize the Nursery/Toddler care service are provided a pager so that nursery workers can contact them if a need arises with their child.</p><h3>How can I join?</h3><p>People are received for membership in the Highland Baptist Church as follows:</p><ol><li>Upon profession of faith in Jesus Christ, for baptism;</li><li>By transfer of membership from some other Baptist congregation;</li><li>By statement:<ol><li>From a Baptist church where membership records are lost.</li><li>From a church of another denomination, if the person had previously been a member of a Baptist church.</li><li>From a church of another denomination where they had been baptized by immersion following their profession of faith.</li><li>Upon reaffirmation of faith in Jesus Christ coming for baptism from a church of another denomination where they had not been baptized by </li></ol></li></ol>'),(59,'<p>We believe the Scriptures reveal only one living and true God, having three personal identities as Father, Son and Holy Spirit.<br></p><p style=\"margin-left: 40px;\">Isaiah 44:6; 46:9; I Corinthians 8:6; Ephesians 4... more</p><p>We believe the Scriptures of the Old and New Testaments are given by inspiration of God and thereby become the written Word of God.</p><p style=\"margin-left: 40px;\">II Timothy 3:16; II Peter 1:21; Deuteronomy 4:2; ... more</p><p>We believe the Scriptures teach that man was created in holiness under the law of creation by His Maker, but by voluntary transgression he fell from that holy and happy state, the consequence of which all mankind became sinners under just condemnation to eternal punishment apart from experiencing forgiveness through Jesus Christ.</p><p style=\"margin-left: 40px;\">Genesis 1:26-27; 2:7; Ecclesiastes 7:20; Romans 3... more</p><p>We believe the Scriptures teach that salvation of sinners is wholly by grace through faith in Jesus as the Son of God.</p><p style=\"margin-left: 40px;\">Ephesians 2:8; Galatians 2:16; I Timothy 2:5; II ... more</p><p>We believe the Scriptures teach that justification includes the pardon of sin and the promise of eternal life on principles of the righteousness of God.</p><p style=\"margin-left: 40px;\">I John 1:7-9; Romans 3:25-26; II Peter 1:1; II Co... more</p><p>We believe the Scriptures teach that all true saints shall be kept by the power of God through faith unto salvation.</p><p style=\"margin-left: 40px;\">I Peter 1:3-5; John 5:24; II Timothy 1:12; John 1... more</p><p>We believe the scriptures teach that a visible church is a congregation of baptized believers associated in the faith and fellowship of the Gospel.</p><p style=\"margin-left: 40px;\">Acts 16:5; 2:41-47; 20:28; I Corinthians 12:12-14... more</p><p>We believe the Scriptures teach that Christian Baptism is the immersion of the believer in water in the name of the Father, the Son, and the Holy Spirit.</p><p style=\"margin-left: 40px;\">Matthew 3:16; 28:19; Acts 8:35-39; 10:47-48; Roma... more</p><p>We believe the Scriptures authorize, by the example of the New Testament church, the observance of the first day of the week, the Lord’s day, as the Christian Sabbath.</p><p style=\"margin-left: 40px;\">Acts 20:7; Genesis 2:2-3; Matthew 28:1, 5-6; John... more</p><p>We believe the Scriptures teach that there will be a bodily resurrection, both of the righteous and the unrighteous, and a final judgment.</p><p style=\"margin-left: 40px;\">John 5:28-29; Romans 8:10-11; Matthew 13:30, 36-4... more</p><p>We believe the Bible teaches that the great commission for the church and every born again child of God is to endeavor to make disciples of all nations.</p><p style=\"margin-left: 40px;\">Matthew 9:37-38; 10:5-15; 13:18-30, 37-43; 28:18-... more</p><p>Statement on Marriage and Sexuality</p><p style=\"margin-left: 40px;\">We believe that term “marriage” has only one meani... more</p><p style=\"margin-left: 40px;\">We believe that God intends sexual intimacy to onl... more</p><p style=\"margin-left: 40px;\">We believe that any form of sexual immorality, suc... more</p><p style=\"margin-left: 40px;\">We believe that God offers redemption and restorat... more</p><p style=\"margin-left: 40px;\">We believe that every person must be afforded comp... more</p>'),(60,'<h3>The mission of Highland Baptist Church is to engage the community for Christ.</h3><p style=\"margin-left: 40px;\">The purpose of this congregation is to give visible evidence to that faith and fellowship to which God has called His people. We acknowledge ourselves to be a local manifestation of the Church by which Jesus continues to minister to the world through the Holy Spirit. We shall seek to fulfill this calling through corporate worship, a program of Christian nurture, the proclamation of the Gospel by word and deed, and ministering to human needs in the name of Christ.</p><p style=\"margin-left: 40px;\">To fulfill Jesus’ Great Commission, Highland Baptist Church will seek to be a fellowship of disciples of Jesus sacrificially investing our lives and resources to make disciples of Jesus who:<br><strong>+ WORSHIP</strong></p><p style=\"margin-left: 40px;\"><strong></strong><strong>+ GROW</strong></p><p style=\"margin-left: 40px;\"><strong></strong><strong>+ <a title=\"Grow Together\" href=\"http://hbc-ky.com/grow-together\">S</a>ERVE</strong></p><p style=\"margin-left: 40px;\"><strong></strong><strong>+ <a title=\"Serve The World\" href=\"http://hbc-ky.com/serve-the-world\">S</a>HARE </strong></p><h3>HBC is…</h3>  <p><span class=\"dark-blue\"><strong>A gathering of ordinary people who have encountered the extraordinary love of Jesus Christ and the transforming power of His gospel.</strong> </span>We are still stunned by the good news that His mercy, forgiveness, joy, hope, wisdom, power, forever life and more have been freely given to us—and are available for everyone!  </p>  <p><span class=\"dark-blue\"><strong>Jesus and His gospel are at the core of everything we are and everything we do. It’s steadily transforming our lives.</strong> </span>None of us have this thing figured out, but we’re committed to helping people of every life stage grow as disciples of Jesus and live life as God designed it.  </p>  <p><span class=\"dark-blue\"><strong>Jesus and His gospel bind a very diverse group of people into a loving faith-family.</strong> </span>We are old and young, single and married, rich and poor, new parents, empty-nesters and grandparents, blue-collar and white-collar, employed and unemployed, long-time Christians and not-quite-sure faith-explorers, Cards &amp; Kats fans, a little bit county , a little bit rock… and even a teensy slice of rap. In other words, there’s somebody here like you!  </p>  <p><span class=\"dark-blue\"><strong>Jesus and His gospel propels us to love all people in our world and serve their everyday needs.</strong> </span>We’re jumping into the stuff of life in our neighborhoods, schools, ball fields, golf courses and workplaces. At the same time, we’re also going where Jesus goes among the poor and broken of our community, and where people don’t yet know Him among the nations of the world.  </p>  <p><br>  </p>  <h3>Service Times</h3>  <p>Our Worship Service starts a 10:30 AM.  </p>  <p>Bible Study groups take place at 9:30 AM. Find a class <a title=\"Sunday School\" href=\"http://hbc-ky.com/home/grow-together/sunday-school/\">here.</a>  </p>  <p>On Sunday evenings service begins at 6:00 PM with a variety of Sunday evening worship, discipleship, fellowship, and growth events for all ages.<br>For children we offer our <a href=\"http://hbc-ky.com/home/grow-together/hbcm/\">HBCM </a>worship and for students we offer our <a href=\"http://hbc-ky.com/home/grow-together/reach-student-ministries/\">Reach </a>worship services at this time.  </p>  <p>mid-week @ Highland on Wednesday at 7:00 PM, children and student activities are also available.  </p><p><br></p><h3>Affiliations</h3><p>This church is to carry out the total ministry for which Christ has made His church responsible. We shall voluntarily cooperate with and be a member of the Shelby Baptist Association, the Kentucky Baptist State Convention, the Southern Baptist Convention and cooperate with the Baptist World Alliance.</p>'),(61,'<h3>The mission of Highland Baptist Church is to engage the community for Christ.</h3><p style=\"margin-left: 40px;\">The purpose of this congregation is to give visible evidence to that faith and fellowship to which God has called His people. We acknowledge ourselves to be a local manifestation of the Church by which Jesus continues to minister to the world through the Holy Spirit. We shall seek to fulfill this calling through corporate worship, a program of Christian nurture, the proclamation of the Gospel by word and deed, and ministering to human needs in the name of Christ.</p><p style=\"margin-left: 40px;\">To fulfill Jesus’ Great Commission, Highland Baptist Church will seek to be a fellowship of disciples of Jesus sacrificially investing our lives and resources to make disciples of Jesus who:<br><strong>+ WORSHIP</strong></p><p style=\"margin-left: 40px;\"><strong></strong><strong>+ GROW</strong></p><p style=\"margin-left: 40px;\"><strong></strong><strong>+ <a title=\"Grow Together\" href=\"http://hbc-ky.com/grow-together\">S</a>ERVE</strong></p><p style=\"margin-left: 40px;\"><strong></strong><strong>+ <a title=\"Serve The World\" href=\"http://hbc-ky.com/serve-the-world\">S</a>HARE </strong></p><h3>HBC is…</h3>  <p><span class=\"dark-blue\"><strong>A gathering of ordinary people who have encountered the extraordinary love of Jesus Christ and the transforming power of His gospel.</strong> </span>We are still stunned by the good news that His mercy, forgiveness, joy, hope, wisdom, power, forever life and more have been freely given to us—and are available for everyone!  </p>  <p><span class=\"dark-blue\"><strong>Jesus and His gospel are at the core of everything we are and everything we do. It’s steadily transforming our lives.</strong> </span>None of us have this thing figured out, but we’re committed to helping people of every life stage grow as disciples of Jesus and live life as God designed it.  </p>  <p><span class=\"dark-blue\"><strong>Jesus and His gospel bind a very diverse group of people into a loving faith-family.</strong> </span>We are old and young, single and married, rich and poor, new parents, empty-nesters and grandparents, blue-collar and white-collar, employed and unemployed, long-time Christians and not-quite-sure faith-explorers, Cards &amp; Kats fans, a little bit county , a little bit rock… and even a teensy slice of rap. In other words, there’s somebody here like you!  </p>  <p><span class=\"dark-blue\"><strong>Jesus and His gospel propels us to love all people in our world and serve their everyday needs.</strong> </span>We’re jumping into the stuff of life in our neighborhoods, schools, ball fields, golf courses and workplaces. At the same time, we’re also going where Jesus goes among the poor and broken of our community, and where people don’t yet know Him among the nations of the world.  </p>  <p><br>  </p>  <h3>Service Times</h3>  <p>Our Worship Service starts at 10:30 AM.  </p>  <p>Bible Study groups take place at 9:30 AM.</p>  <p>On Sunday evenings service begins at 6:00 PM with a variety of Sunday evening worship, discipleship, fellowship, and growth events for all ages.<br>For children we offer Metro Kidmin and for students we offer our <a href=\"http://hbc-ky.com/home/grow-together/reach-student-ministries/\">Reach </a>worship services.</p>  <p>mid-week @ Highland on Wednesday at 7:00 PM, children and student activities are also available.  </p><p><br></p><h3>Affiliations</h3><p>This church is to carry out the total ministry for which Christ has made His church responsible. We shall voluntarily cooperate with and be a member of the Shelby Baptist Association, the Kentucky Baptist State Convention, the Southern Baptist Convention and cooperate with the Baptist World Alliance.</p>'),(70,'<p>We believe the Scriptures reveal only one living and true God, having three personal identities as Father, Son and Holy Spirit.<br>  </p>  <p style=\"margin-left: 40px;\">Isaiah 44:6; 46:9; I Corinthians 8:6; Ephesians 4... more  </p>  <p>We believe the Scriptures of the Old and New Testaments are given by inspiration of God and thereby become the written Word of God.  </p>  <p style=\"margin-left: 40px;\">II Timothy 3:16; II Peter 1:21; Deuteronomy 4:2; ... more  </p>  <p>We believe the Scriptures teach that man was created in holiness under the law of creation by His Maker, but by voluntary transgression he fell from that holy and happy state, the consequence of which all mankind became sinners under just condemnation to eternal punishment apart from experiencing forgiveness through Jesus Christ.  </p>  <p style=\"margin-left: 40px;\">Genesis 1:26-27; 2:7; Ecclesiastes 7:20; Romans 3... more  </p>  <p>We believe the Scriptures teach that salvation of sinners is wholly by grace through faith in Jesus as the Son of God.  </p>  <p style=\"margin-left: 40px;\">Ephesians 2:8; Galatians 2:16; I Timothy 2:5; II ... more  </p>  <p>We believe the Scriptures teach that justification includes the pardon of sin and the promise of eternal life on principles of the righteousness of God.  </p>  <p style=\"margin-left: 40px;\">I John 1:7-9; Romans 3:25-26; II Peter 1:1; II Co... more  </p>  <p>We believe the Scriptures teach that all true saints shall be kept by the power of God through faith unto salvation.  </p>  <p style=\"margin-left: 40px;\">I Peter 1:3-5; John 5:24; II Timothy 1:12; John 1... more  </p>  <p>We believe the scriptures teach that a visible church is a congregation of baptized believers associated in the faith and fellowship of the Gospel.  </p>  <p style=\"margin-left: 40px;\">Acts 16:5; 2:41-47; 20:28; I Corinthians 12:12-14... more  </p>  <p>We believe the Scriptures teach that Christian Baptism is the immersion of the believer in water in the name of the Father, the Son, and the Holy Spirit.  </p>  <p style=\"margin-left: 40px;\">Matthew 3:16; 28:19; Acts 8:35-39; 10:47-48; Roma... more  </p>  <p>We believe the Scriptures authorize, by the example of the New Testament church, the observance of the first day of the week, the Lord’s day, as the Christian Sabbath.  </p>  <p style=\"margin-left: 40px;\">Acts 20:7; Genesis 2:2-3; Matthew 28:1, 5-6; John... more  </p>  <p>We believe the Scriptures teach that there will be a bodily resurrection, both of the righteous and the unrighteous, and a final judgment.  </p>  <p style=\"margin-left: 40px;\">John 5:28-29; Romans 8:10-11; Matthew 13:30, 36-4... more  </p>  <p>We believe the Bible teaches that the great commission for the church and every born again child of God is to endeavor to make disciples of all nations.  </p>  <p style=\"margin-left: 40px;\">Matthew 9:37-38; 10:5-15; 13:18-30, 37-43; 28:18-... more  </p>  <p>Statement on Marriage and Sexuality  </p>  <p style=\"margin-left: 40px;\">We believe that term “marriage” has only one meani... more  </p>  <p style=\"margin-left: 40px;\">We believe that God intends sexual intimacy to onl... more  </p>  <p style=\"margin-left: 40px;\">We believe that any form of sexual immorality, suc... more  </p>  <p style=\"margin-left: 40px;\">We believe that God offers redemption and restorat... more  </p>  <p style=\"margin-left: 40px;\">We believe that every person must be afforded comp... more  </p>'),(72,'<h3>The mission of Highland Baptist Church is to engage the community for Christ.</h3><p style=\"margin-left: 40px;\">The purpose of this congregation is to give visible evidence to that faith and fellowship to which God has called His people. We acknowledge ourselves to be a local manifestation of the Church by which Jesus continues to minister to the world through the Holy Spirit. We shall seek to fulfill this calling through corporate worship, a program of Christian nurture, the proclamation of the Gospel by word and deed, and ministering to human needs in the name of Christ.</p><p style=\"margin-left: 40px;\">To fulfill Jesus’ Great Commission, Highland Baptist Church will seek to be a fellowship of disciples of Jesus sacrificially investing our lives and resources to make disciples of Jesus who:<br><strong>+ WORSHIP</strong></p><p style=\"margin-left: 40px;\"><strong></strong><strong>+ GROW</strong></p><p style=\"margin-left: 40px;\"><strong></strong><strong>+ <a title=\"Grow Together\" href=\"http://hbc-ky.com/grow-together\">S</a>ERVE</strong></p><p style=\"margin-left: 40px;\"><strong></strong><strong>+ <a title=\"Serve The World\" href=\"http://hbc-ky.com/serve-the-world\">S</a>HARE </strong></p><h3>HBC is…</h3>  <p><span class=\"dark-blue\"><strong>A gathering of ordinary people who have encountered the extraordinary love of Jesus Christ and the transforming power of His gospel.</strong> </span>We are still stunned by the good news that His mercy, forgiveness, joy, hope, wisdom, power, forever life and more have been freely given to us—and are available for everyone!  </p>  <p><span class=\"dark-blue\"><strong>Jesus and His gospel are at the core of everything we are and everything we do. It’s steadily transforming our lives.</strong> </span>None of us have this thing figured out, but we’re committed to helping people of every life stage grow as disciples of Jesus and live life as God designed it.  </p>  <p><span class=\"dark-blue\"><strong>Jesus and His gospel bind a very diverse group of people into a loving faith-family.</strong> </span>We are old and young, single and married, rich and poor, new parents, empty-nesters and grandparents, blue-collar and white-collar, employed and unemployed, long-time Christians and not-quite-sure faith-explorers, Cards &amp; Kats fans, a little bit county , a little bit rock… and even a teensy slice of rap. In other words, there’s somebody here like you!  </p>  <p><span class=\"dark-blue\"><strong>Jesus and His gospel propels us to love all people in our world and serve their everyday needs.</strong> </span>We’re jumping into the stuff of life in our neighborhoods, schools, ball fields, golf courses and workplaces. At the same time, we’re also going where Jesus goes among the poor and broken of our community, and where people don’t yet know Him among the nations of the world.  </p>  <p><br>  </p>  <h3>Service Times</h3>  <p>Our Worship Service starts at 10:30 AM.  </p>  <p>Bible Study groups take place at 9:30 AM.</p>  <p>On Sunday evenings service begins at 6:00 PM with a variety of Sunday evening worship, discipleship, fellowship, and growth events for all ages.<br>For children we offer Metro Kidmin and for students we offer our <a href=\"http://hbc-ky.com/home/grow-together/reach-student-ministries/\">Reach </a>worship services.</p>  <p>mid-week @ Highland on Wednesday at 7:00 PM, children and student activities are also available.  </p><p><br></p><h3>Affiliations</h3><p>This church is to carry out the total ministry for which Christ has made His church responsible. We shall voluntarily cooperate with and be a member of the Shelby Baptist Association, the Kentucky Baptist State Convention, the Southern Baptist Convention and cooperate with the Baptist World Alliance.</p>'),(75,'<div></div>  '),(76,'<p class=\"row\">    	hi  </p>'),(77,''),(78,'<div class=\"col-xs-12 col-md-4 text-center\">  	<h1> HI </h1>  </div><div class=\"col-xs-12 col-md-4 text-center\"><h1> HI </h1></div><div class=\"col-xs-12 col-md-4 text-center\">  	<h1> HI </h1>  </div>');
/*!40000 ALTER TABLE `btContentLocal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btCoreAreaLayout`
--

DROP TABLE IF EXISTS `btCoreAreaLayout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btCoreAreaLayout` (
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `arLayoutID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`bID`),
  KEY `arLayoutID` (`arLayoutID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btCoreAreaLayout`
--

LOCK TABLES `btCoreAreaLayout` WRITE;
/*!40000 ALTER TABLE `btCoreAreaLayout` DISABLE KEYS */;
INSERT INTO `btCoreAreaLayout` VALUES (11,1),(12,2),(14,4),(45,5),(50,6),(53,7),(57,8),(62,9),(64,10),(92,12);
/*!40000 ALTER TABLE `btCoreAreaLayout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btCoreConversation`
--

DROP TABLE IF EXISTS `btCoreConversation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btCoreConversation` (
  `bID` int(10) unsigned NOT NULL,
  `cnvID` int(11) DEFAULT NULL,
  `enablePosting` int(11) DEFAULT '1',
  `paginate` tinyint(1) NOT NULL DEFAULT '1',
  `itemsPerPage` smallint(5) unsigned NOT NULL DEFAULT '50',
  `displayMode` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'threaded',
  `orderBy` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'date_desc',
  `enableOrdering` tinyint(1) NOT NULL DEFAULT '1',
  `enableCommentRating` tinyint(1) NOT NULL DEFAULT '1',
  `displayPostingForm` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'top',
  `addMessageLabel` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `dateFormat` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'default',
  `customDateFormat` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`bID`),
  KEY `cnvID` (`cnvID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btCoreConversation`
--

LOCK TABLES `btCoreConversation` WRITE;
/*!40000 ALTER TABLE `btCoreConversation` DISABLE KEYS */;
/*!40000 ALTER TABLE `btCoreConversation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btCorePageTypeComposerControlOutput`
--

DROP TABLE IF EXISTS `btCorePageTypeComposerControlOutput`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btCorePageTypeComposerControlOutput` (
  `bID` int(10) unsigned NOT NULL,
  `ptComposerOutputControlID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`bID`),
  KEY `ptComposerOutputControlID` (`ptComposerOutputControlID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btCorePageTypeComposerControlOutput`
--

LOCK TABLES `btCorePageTypeComposerControlOutput` WRITE;
/*!40000 ALTER TABLE `btCorePageTypeComposerControlOutput` DISABLE KEYS */;
INSERT INTO `btCorePageTypeComposerControlOutput` VALUES (9,1);
/*!40000 ALTER TABLE `btCorePageTypeComposerControlOutput` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btCoreScrapbookDisplay`
--

DROP TABLE IF EXISTS `btCoreScrapbookDisplay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btCoreScrapbookDisplay` (
  `bID` int(10) unsigned NOT NULL,
  `bOriginalID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`bID`),
  KEY `bOriginalID` (`bOriginalID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btCoreScrapbookDisplay`
--

LOCK TABLES `btCoreScrapbookDisplay` WRITE;
/*!40000 ALTER TABLE `btCoreScrapbookDisplay` DISABLE KEYS */;
/*!40000 ALTER TABLE `btCoreScrapbookDisplay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btCoreStackDisplay`
--

DROP TABLE IF EXISTS `btCoreStackDisplay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btCoreStackDisplay` (
  `bID` int(10) unsigned NOT NULL,
  `stID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`bID`),
  KEY `stID` (`stID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btCoreStackDisplay`
--

LOCK TABLES `btCoreStackDisplay` WRITE;
/*!40000 ALTER TABLE `btCoreStackDisplay` DISABLE KEYS */;
/*!40000 ALTER TABLE `btCoreStackDisplay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btDashboardNewsflowLatest`
--

DROP TABLE IF EXISTS `btDashboardNewsflowLatest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btDashboardNewsflowLatest` (
  `bID` int(10) unsigned NOT NULL,
  `slot` varchar(1) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btDashboardNewsflowLatest`
--

LOCK TABLES `btDashboardNewsflowLatest` WRITE;
/*!40000 ALTER TABLE `btDashboardNewsflowLatest` DISABLE KEYS */;
INSERT INTO `btDashboardNewsflowLatest` VALUES (4,'A'),(5,'B'),(8,'C');
/*!40000 ALTER TABLE `btDashboardNewsflowLatest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btDateNavigation`
--

DROP TABLE IF EXISTS `btDateNavigation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btDateNavigation` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `filterByParent` tinyint(1) DEFAULT '0',
  `redirectToResults` tinyint(1) DEFAULT '0',
  `cParentID` int(10) unsigned NOT NULL DEFAULT '0',
  `cTargetID` int(10) unsigned NOT NULL DEFAULT '0',
  `ptID` smallint(5) unsigned DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btDateNavigation`
--

LOCK TABLES `btDateNavigation` WRITE;
/*!40000 ALTER TABLE `btDateNavigation` DISABLE KEYS */;
/*!40000 ALTER TABLE `btDateNavigation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btEvents`
--

DROP TABLE IF EXISTS `btEvents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btEvents` (
  `bID` int(10) unsigned NOT NULL,
  `eventURL` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btEvents`
--

LOCK TABLES `btEvents` WRITE;
/*!40000 ALTER TABLE `btEvents` DISABLE KEYS */;
INSERT INTO `btEvents` VALUES (49,'http://events.hbc-ky.com');
/*!40000 ALTER TABLE `btEvents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btExternalForm`
--

DROP TABLE IF EXISTS `btExternalForm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btExternalForm` (
  `bID` int(10) unsigned NOT NULL,
  `filename` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btExternalForm`
--

LOCK TABLES `btExternalForm` WRITE;
/*!40000 ALTER TABLE `btExternalForm` DISABLE KEYS */;
/*!40000 ALTER TABLE `btExternalForm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btFaq`
--

DROP TABLE IF EXISTS `btFaq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btFaq` (
  `bID` int(10) unsigned NOT NULL,
  `blockTitle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btFaq`
--

LOCK TABLES `btFaq` WRITE;
/*!40000 ALTER TABLE `btFaq` DISABLE KEYS */;
/*!40000 ALTER TABLE `btFaq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btFaqEntries`
--

DROP TABLE IF EXISTS `btFaqEntries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btFaqEntries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(10) unsigned DEFAULT NULL,
  `linkTitle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sortOrder` int(11) DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `bID` (`bID`,`sortOrder`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btFaqEntries`
--

LOCK TABLES `btFaqEntries` WRITE;
/*!40000 ALTER TABLE `btFaqEntries` DISABLE KEYS */;
/*!40000 ALTER TABLE `btFaqEntries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btFeature`
--

DROP TABLE IF EXISTS `btFeature`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btFeature` (
  `bID` int(10) unsigned NOT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paragraph` text COLLATE utf8_unicode_ci,
  `externalLink` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phoneNumber` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `internalLinkCID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btFeature`
--

LOCK TABLES `btFeature` WRITE;
/*!40000 ALTER TABLE `btFeature` DISABLE KEYS */;
INSERT INTO `btFeature` VALUES (89,'phone','502-633-3516','','','','15026333516',0),(90,'map-marker','511 Mount Eden Road Shelbyville KY 40066-0104','','http://maps.google.com/maps?daddr=511 Mount Eden Road, Shelbyville, KY, United States&ll=','','',0),(91,'envelope','info@hbc-ky.com','','','info@hbc-ky.com','',0);
/*!40000 ALTER TABLE `btFeature` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btFeatureArea`
--

DROP TABLE IF EXISTS `btFeatureArea`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btFeatureArea` (
  `bID` int(10) unsigned NOT NULL,
  `areaName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btFeatureArea`
--

LOCK TABLES `btFeatureArea` WRITE;
/*!40000 ALTER TABLE `btFeatureArea` DISABLE KEYS */;
/*!40000 ALTER TABLE `btFeatureArea` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btFilesets`
--

DROP TABLE IF EXISTS `btFilesets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btFilesets` (
  `bID` int(10) unsigned NOT NULL,
  `sortType` tinyint(1) DEFAULT NULL,
  `fileSetName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btFilesets`
--

LOCK TABLES `btFilesets` WRITE;
/*!40000 ALTER TABLE `btFilesets` DISABLE KEYS */;
INSERT INTO `btFilesets` VALUES (42,0,'Bulletins','Bulletins');
/*!40000 ALTER TABLE `btFilesets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btForm`
--

DROP TABLE IF EXISTS `btForm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btForm` (
  `bID` int(10) unsigned NOT NULL,
  `questionSetId` int(10) unsigned DEFAULT '0',
  `surveyName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `submitText` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'Submit',
  `thankyouMsg` text COLLATE utf8_unicode_ci,
  `notifyMeOnSubmission` tinyint(1) NOT NULL DEFAULT '0',
  `recipientEmail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `displayCaptcha` int(11) DEFAULT '1',
  `redirectCID` int(11) DEFAULT '0',
  `addFilesToSet` int(11) DEFAULT '0',
  PRIMARY KEY (`bID`),
  KEY `questionSetIdForeign` (`questionSetId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btForm`
--

LOCK TABLES `btForm` WRITE;
/*!40000 ALTER TABLE `btForm` DISABLE KEYS */;
INSERT INTO `btForm` VALUES (71,1437499107,'Footer Contact','Send','Thanks, someone will contact you shortly!',1,'info@hbc-ky.com',1,0,0);
/*!40000 ALTER TABLE `btForm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btFormAnswerSet`
--

DROP TABLE IF EXISTS `btFormAnswerSet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btFormAnswerSet` (
  `asID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `questionSetId` int(10) unsigned DEFAULT '0',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `uID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`asID`),
  KEY `questionSetId` (`questionSetId`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btFormAnswerSet`
--

LOCK TABLES `btFormAnswerSet` WRITE;
/*!40000 ALTER TABLE `btFormAnswerSet` DISABLE KEYS */;
/*!40000 ALTER TABLE `btFormAnswerSet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btFormAnswers`
--

DROP TABLE IF EXISTS `btFormAnswers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btFormAnswers` (
  `aID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asID` int(10) unsigned DEFAULT '0',
  `msqID` int(10) unsigned DEFAULT '0',
  `answer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `answerLong` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`aID`),
  KEY `asID` (`asID`),
  KEY `msqID` (`msqID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btFormAnswers`
--

LOCK TABLES `btFormAnswers` WRITE;
/*!40000 ALTER TABLE `btFormAnswers` DISABLE KEYS */;
/*!40000 ALTER TABLE `btFormAnswers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btFormQuestions`
--

DROP TABLE IF EXISTS `btFormQuestions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btFormQuestions` (
  `qID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `msqID` int(10) unsigned DEFAULT '0',
  `bID` int(10) unsigned DEFAULT '0',
  `questionSetId` int(10) unsigned DEFAULT '0',
  `question` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `inputType` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8_unicode_ci,
  `position` int(10) unsigned DEFAULT '1000',
  `width` int(10) unsigned DEFAULT '50',
  `height` int(10) unsigned DEFAULT '3',
  `defaultDate` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `required` int(11) DEFAULT '0',
  PRIMARY KEY (`qID`),
  KEY `questionSetId` (`questionSetId`),
  KEY `msqID` (`msqID`),
  KEY `bID` (`bID`,`questionSetId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btFormQuestions`
--

LOCK TABLES `btFormQuestions` WRITE;
/*!40000 ALTER TABLE `btFormQuestions` DISABLE KEYS */;
INSERT INTO `btFormQuestions` VALUES (1,1,71,1437499107,'Name','field','',0,50,3,'',1),(2,2,71,1437499107,'Email','email','a:1:{s:22:\"send_notification_from\";i:1;}',0,50,3,'',1),(3,3,71,1437499107,'Phone','telephone','',0,0,0,'',1),(4,4,71,1437499107,'Comments','text','',0,50,10,'',1);
/*!40000 ALTER TABLE `btFormQuestions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btGoogleMap`
--

DROP TABLE IF EXISTS `btGoogleMap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btGoogleMap` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `zoom` smallint(6) DEFAULT NULL,
  `width` varchar(8) COLLATE utf8_unicode_ci DEFAULT '100%',
  `height` varchar(8) COLLATE utf8_unicode_ci DEFAULT '400px',
  `scrollwheel` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btGoogleMap`
--

LOCK TABLES `btGoogleMap` WRITE;
/*!40000 ALTER TABLE `btGoogleMap` DISABLE KEYS */;
/*!40000 ALTER TABLE `btGoogleMap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btGroupDisplay`
--

DROP TABLE IF EXISTS `btGroupDisplay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btGroupDisplay` (
  `bID` int(10) unsigned NOT NULL,
  `groupName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btGroupDisplay`
--

LOCK TABLES `btGroupDisplay` WRITE;
/*!40000 ALTER TABLE `btGroupDisplay` DISABLE KEYS */;
INSERT INTO `btGroupDisplay` VALUES (18,'Employee','Staff');
/*!40000 ALTER TABLE `btGroupDisplay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btImageSlider`
--

DROP TABLE IF EXISTS `btImageSlider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btImageSlider` (
  `bID` int(10) unsigned NOT NULL,
  `navigationType` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btImageSlider`
--

LOCK TABLES `btImageSlider` WRITE;
/*!40000 ALTER TABLE `btImageSlider` DISABLE KEYS */;
INSERT INTO `btImageSlider` VALUES (17,0);
/*!40000 ALTER TABLE `btImageSlider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btImageSliderEntries`
--

DROP TABLE IF EXISTS `btImageSliderEntries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btImageSliderEntries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(10) unsigned DEFAULT NULL,
  `cID` int(10) unsigned DEFAULT '0',
  `fID` int(10) unsigned DEFAULT '0',
  `linkURL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `internalLinkCID` int(10) unsigned DEFAULT '0',
  `title` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `sortOrder` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btImageSliderEntries`
--

LOCK TABLES `btImageSliderEntries` WRITE;
/*!40000 ALTER TABLE `btImageSliderEntries` DISABLE KEYS */;
INSERT INTO `btImageSliderEntries` VALUES (1,17,0,1,'',0,'','',0),(2,17,0,2,'',0,'','',1);
/*!40000 ALTER TABLE `btImageSliderEntries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btMap`
--

DROP TABLE IF EXISTS `btMap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btMap` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `zoom` smallint(6) DEFAULT NULL,
  `width` varchar(8) COLLATE utf8_unicode_ci DEFAULT '100%',
  `height` varchar(8) COLLATE utf8_unicode_ci DEFAULT '400px',
  `scrollwheel` tinyint(1) NOT NULL DEFAULT '1',
  `draggable` tinyint(1) NOT NULL DEFAULT '1',
  `defaultui` tinyint(1) NOT NULL DEFAULT '0',
  `customstyle` tinyint(1) NOT NULL DEFAULT '0',
  `fMarkerID` int(10) unsigned DEFAULT '0',
  `styles` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btMap`
--

LOCK TABLES `btMap` WRITE;
/*!40000 ALTER TABLE `btMap` DISABLE KEYS */;
INSERT INTO `btMap` VALUES (66,'','511 Mount Eden Road, Shelbyville, KY, United States',38.2030193,-85.2036655,14,'100%','400px',0,0,1,1,9,''),(67,'','511 Mount Eden Road, Shelbyville, KY, United States',38.2030193,-85.2036655,14,'100%','400px',0,0,1,1,9,'[{\"featureType\":\"landscape\",\"stylers\":[{\"saturation\":-100},{\"lightness\":65},{\"visibility\":\"on\"}]},{\"featureType\":\"poi\",\"stylers\":[{\"saturation\":-100},{\"lightness\":51},{\"visibility\":\"simplified\"}]},{\"featureType\":\"road.highway\",\"stylers\":[{\"saturation\":-100},{\"visibility\":\"simplified\"}]},{\"featureType\":\"road.arterial\",\"stylers\":[{\"saturation\":-100},{\"lightness\":30},{\"visibility\":\"on\"}]},{\"featureType\":\"road.local\",\"stylers\":[{\"saturation\":-100},{\"lightness\":40},{\"visibility\":\"on\"}]},{\"featureType\":\"transit\",\"stylers\":[{\"saturation\":-100},{\"visibility\":\"simplified\"}]},{\"featureType\":\"administrative.province\",\"stylers\":[{\"visibility\":\"off\"}]},{\"featureType\":\"water\",\"elementType\":\"labels\",\"stylers\":[{\"visibility\":\"on\"},{\"lightness\":-25},{\"saturation\":-100}]},{\"featureType\":\"water\",\"elementType\":\"geometry\",\"stylers\":[{\"hue\":\"#ffff00\"},{\"lightness\":-25},{\"saturation\":-97}]}]'),(95,'','511 Mount Eden Road, Shelbyville, KY, United States',38.2030193,-85.2036655,14,'100%','400px',0,0,0,1,9,'[{\"featureType\":\"all\",\"elementType\":\"all\",\"stylers\":[{\"saturation\":-100},{\"gamma\":0.5}]}]'),(96,'','511 Mount Eden Road, Shelbyville, KY, United States',38.2030193,-85.2036655,14,'100%','400px',0,0,1,1,9,'[{\"featureType\":\"all\",\"elementType\":\"all\",\"stylers\":[{\"saturation\":-100},{\"gamma\":0.5}]}]');
/*!40000 ALTER TABLE `btMap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btNavigation`
--

DROP TABLE IF EXISTS `btNavigation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btNavigation` (
  `bID` int(10) unsigned NOT NULL,
  `orderBy` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'alpha_asc',
  `displayPages` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'top',
  `displayPagesCID` int(10) unsigned NOT NULL DEFAULT '1',
  `displayPagesIncludeSelf` tinyint(1) NOT NULL DEFAULT '0',
  `displaySubPages` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'none',
  `displaySubPageLevels` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'none',
  `displaySubPageLevelsNum` smallint(5) unsigned NOT NULL DEFAULT '0',
  `displayUnavailablePages` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btNavigation`
--

LOCK TABLES `btNavigation` WRITE;
/*!40000 ALTER TABLE `btNavigation` DISABLE KEYS */;
INSERT INTO `btNavigation` VALUES (15,'display_asc','top',0,0,'none','enough',0,1),(16,'display_asc','top',0,0,'none','enough',0,1);
/*!40000 ALTER TABLE `btNavigation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btNextPrevious`
--

DROP TABLE IF EXISTS `btNextPrevious`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btNextPrevious` (
  `bID` int(10) unsigned NOT NULL,
  `nextLabel` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `previousLabel` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parentLabel` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `loopSequence` int(11) DEFAULT '1',
  `excludeSystemPages` int(11) DEFAULT '1',
  `orderBy` varchar(20) COLLATE utf8_unicode_ci DEFAULT 'display_asc',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btNextPrevious`
--

LOCK TABLES `btNextPrevious` WRITE;
/*!40000 ALTER TABLE `btNextPrevious` DISABLE KEYS */;
/*!40000 ALTER TABLE `btNextPrevious` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btPageAttributeDisplay`
--

DROP TABLE IF EXISTS `btPageAttributeDisplay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btPageAttributeDisplay` (
  `bID` int(10) unsigned NOT NULL,
  `attributeHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attributeTitleText` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `displayTag` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateFormat` varchar(100) COLLATE utf8_unicode_ci DEFAULT 'div',
  `thumbnailHeight` int(10) unsigned DEFAULT NULL,
  `thumbnailWidth` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btPageAttributeDisplay`
--

LOCK TABLES `btPageAttributeDisplay` WRITE;
/*!40000 ALTER TABLE `btPageAttributeDisplay` DISABLE KEYS */;
/*!40000 ALTER TABLE `btPageAttributeDisplay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btPageList`
--

DROP TABLE IF EXISTS `btPageList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btPageList` (
  `bID` int(10) unsigned NOT NULL,
  `num` smallint(5) unsigned NOT NULL,
  `orderBy` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cParentID` int(10) unsigned NOT NULL DEFAULT '1',
  `cThis` tinyint(1) NOT NULL DEFAULT '0',
  `useButtonForLink` tinyint(1) NOT NULL DEFAULT '0',
  `buttonLinkText` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pageListTitle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `filterByRelated` tinyint(1) NOT NULL DEFAULT '0',
  `filterByCustomTopic` tinyint(1) NOT NULL DEFAULT '0',
  `relatedTopicAttributeKeyHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customTopicAttributeKeyHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customTopicTreeNodeID` int(10) unsigned NOT NULL DEFAULT '0',
  `includeName` tinyint(1) NOT NULL DEFAULT '1',
  `includeDescription` tinyint(1) NOT NULL DEFAULT '1',
  `includeDate` tinyint(1) NOT NULL DEFAULT '0',
  `includeAllDescendents` tinyint(1) NOT NULL DEFAULT '0',
  `paginate` tinyint(1) NOT NULL DEFAULT '0',
  `displayAliases` tinyint(1) NOT NULL DEFAULT '1',
  `enableExternalFiltering` tinyint(1) NOT NULL DEFAULT '0',
  `ptID` smallint(5) unsigned DEFAULT NULL,
  `pfID` int(11) DEFAULT '0',
  `truncateSummaries` int(11) DEFAULT '0',
  `displayFeaturedOnly` tinyint(1) DEFAULT '0',
  `noResultsMessage` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `displayThumbnail` tinyint(1) DEFAULT '0',
  `truncateChars` int(11) DEFAULT '128',
  PRIMARY KEY (`bID`),
  KEY `ptID` (`ptID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btPageList`
--

LOCK TABLES `btPageList` WRITE;
/*!40000 ALTER TABLE `btPageList` DISABLE KEYS */;
/*!40000 ALTER TABLE `btPageList` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btPageTitle`
--

DROP TABLE IF EXISTS `btPageTitle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btPageTitle` (
  `bID` int(10) unsigned NOT NULL,
  `useCustomTitle` int(10) unsigned DEFAULT '0',
  `titleText` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `formatting` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btPageTitle`
--

LOCK TABLES `btPageTitle` WRITE;
/*!40000 ALTER TABLE `btPageTitle` DISABLE KEYS */;
/*!40000 ALTER TABLE `btPageTitle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btRssDisplay`
--

DROP TABLE IF EXISTS `btRssDisplay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btRssDisplay` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateFormat` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `itemsToDisplay` int(10) unsigned DEFAULT '5',
  `showSummary` tinyint(1) NOT NULL DEFAULT '1',
  `launchInNewWindow` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btRssDisplay`
--

LOCK TABLES `btRssDisplay` WRITE;
/*!40000 ALTER TABLE `btRssDisplay` DISABLE KEYS */;
/*!40000 ALTER TABLE `btRssDisplay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btSearch`
--

DROP TABLE IF EXISTS `btSearch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btSearch` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `buttonText` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `baseSearchPath` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postTo_cID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `resultsURL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btSearch`
--

LOCK TABLES `btSearch` WRITE;
/*!40000 ALTER TABLE `btSearch` DISABLE KEYS */;
/*!40000 ALTER TABLE `btSearch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btSectionTitle`
--

DROP TABLE IF EXISTS `btSectionTitle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btSectionTitle` (
  `bID` int(10) unsigned NOT NULL,
  `titleText` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `formatting` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btSectionTitle`
--

LOCK TABLES `btSectionTitle` WRITE;
/*!40000 ALTER TABLE `btSectionTitle` DISABLE KEYS */;
INSERT INTO `btSectionTitle` VALUES (46,'Sermon Series','h2'),(48,'Events','h2'),(51,'About Us','h2'),(55,'Frequently Asked Questions','h2'),(58,'Our Beliefs','h2'),(63,'Small Groups','h2');
/*!40000 ALTER TABLE `btSectionTitle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btSermons`
--

DROP TABLE IF EXISTS `btSermons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btSermons` (
  `bID` int(10) unsigned NOT NULL,
  `sermonURL` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btSermons`
--

LOCK TABLES `btSermons` WRITE;
/*!40000 ALTER TABLE `btSermons` DISABLE KEYS */;
INSERT INTO `btSermons` VALUES (47,'http://events.hbc-ky.com/');
/*!40000 ALTER TABLE `btSermons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btShareThisPage`
--

DROP TABLE IF EXISTS `btShareThisPage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btShareThisPage` (
  `btShareThisPageID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(10) unsigned DEFAULT '0',
  `service` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `displayOrder` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`btShareThisPageID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btShareThisPage`
--

LOCK TABLES `btShareThisPage` WRITE;
/*!40000 ALTER TABLE `btShareThisPage` DISABLE KEYS */;
/*!40000 ALTER TABLE `btShareThisPage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btSocial`
--

DROP TABLE IF EXISTS `btSocial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btSocial` (
  `bID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sData` longtext COLLATE utf8_unicode_ci,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btSocial`
--

LOCK TABLES `btSocial` WRITE;
/*!40000 ALTER TABLE `btSocial` DISABLE KEYS */;
INSERT INTO `btSocial` VALUES (10,'{\"1\":{\"name\":\"Facebook\",\"icon\":\"facebook\",\"url\":\"http:\\/\\/www.facebook.com\\/highlandky\",\"feed\":false,\"show\":true,\"access\":\"\",\"userid\":\"\"},\"3\":{\"name\":\"Instagram\",\"icon\":\"instagram\",\"url\":\"https:\\/\\/instagram.com\\/hbc_ky\\/\",\"feed\":true,\"show\":false,\"access\":\"1678475616.467ede5.3507c96e1879422ba2bbef4eddc38025\",\"userid\":\"1678475616\"},\"2\":{\"name\":\"Twitter\",\"icon\":\"twitter\",\"url\":\"http:\\/\\/www.twitter.com\\/highlandbc_ky\",\"feed\":false,\"show\":true,\"access\":\"\",\"userid\":\"\"}}',NULL),(43,'{\"1\":{\"name\":\"Facebook\",\"icon\":\"facebook\",\"url\":\"http:\\/\\/www.facebook.com\\/highlandky\",\"feed\":false,\"show\":true,\"access\":\"\",\"userid\":\"\"},\"3\":{\"name\":\"Instagram\",\"icon\":\"instagram\",\"url\":\"https:\\/\\/instagram.com\\/hbc_ky\\/\",\"feed\":true,\"show\":true,\"access\":\"1678475616.467ede5.3507c96e1879422ba2bbef4eddc38025\",\"userid\":\"1678475616\"},\"2\":{\"name\":\"Twitter\",\"icon\":\"twitter\",\"url\":\"http:\\/\\/www.twitter.com\\/highlandbc_ky\",\"feed\":false,\"show\":true,\"access\":\"\",\"userid\":\"\"}}',NULL),(44,'{\"1\":{\"name\":\"Facebook\",\"icon\":\"facebook\",\"url\":\"http:\\/\\/www.facebook.com\\/highlandky\",\"feed\":false,\"show\":true,\"access\":\"\",\"userid\":\"\"},\"3\":{\"name\":\"Instagram\",\"icon\":\"instagram\",\"url\":\"https:\\/\\/instagram.com\\/hbc_ky\\/\",\"feed\":true,\"show\":true,\"access\":\"1678475616.467ede5.3507c96e1879422ba2bbef4eddc38025\",\"userid\":\"1678475616\"},\"2\":{\"name\":\"Twitter\",\"icon\":\"twitter\",\"url\":\"http:\\/\\/www.twitter.com\\/highlandbc_ky\",\"feed\":false,\"show\":true,\"access\":\"\",\"userid\":\"\"}}','Connect With Us'),(74,'{\"1\":{\"name\":\"Facebook\",\"icon\":\"facebook\",\"url\":\"http:\\/\\/www.facebook.com\\/highlandky\",\"feed\":true,\"show\":true,\"access\":\"133229210055866\",\"userid\":\"133229210055866\"},\"3\":{\"name\":\"Instagram\",\"icon\":\"instagram\",\"url\":\"https:\\/\\/instagram.com\\/hbc_ky\\/\",\"feed\":true,\"show\":true,\"access\":\"1678475616.467ede5.3507c96e1879422ba2bbef4eddc38025\",\"userid\":\"1678475616\"},\"2\":{\"name\":\"Twitter\",\"icon\":\"twitter\",\"url\":\"http:\\/\\/www.twitter.com\\/highlandbc_ky\",\"feed\":false,\"show\":true,\"access\":\"\",\"userid\":\"\"}}','Connect With Us'),(93,'{\"1\":{\"name\":\"Facebook\",\"icon\":\"facebook\",\"url\":\"http:\\/\\/www.facebook.com\\/highlandky\",\"feed\":false,\"show\":false,\"access\":\"\",\"userid\":\"\"},\"3\":{\"name\":\"Instagram\",\"icon\":\"instagram\",\"url\":\"https:\\/\\/instagram.com\\/hbc_ky\\/\",\"feed\":true,\"show\":true,\"access\":\"234474976.467ede5.d1c61f1254ee4761ad9377e7683e358f\",\"userid\":\"234474976\"},\"2\":{\"name\":\"Twitter\",\"icon\":\"twitter\",\"url\":\"http:\\/\\/www.twitter.com\\/highlandbc_ky\",\"feed\":false,\"show\":false,\"access\":\"\",\"userid\":\"\"}}','Connecting'),(94,'{\"1\":{\"name\":\"Facebook\",\"icon\":\"facebook\",\"url\":\"http:\\/\\/www.facebook.com\\/highlandky\",\"feed\":false,\"show\":false,\"access\":\"\",\"userid\":\"\"},\"3\":{\"name\":\"Instagram\",\"icon\":\"instagram\",\"url\":\"https:\\/\\/instagram.com\\/hbc_ky\\/\",\"feed\":true,\"show\":true,\"access\":\"1678475616.467ede5.3507c96e1879422ba2bbef4eddc38025\",\"userid\":\"1678475616\"},\"2\":{\"name\":\"Twitter\",\"icon\":\"twitter\",\"url\":\"http:\\/\\/www.twitter.com\\/highlandbc_ky\",\"feed\":false,\"show\":false,\"access\":\"\",\"userid\":\"\"}}','Connecting'),(97,'{\"1\":{\"name\":\"Facebook\",\"icon\":\"facebook\",\"url\":\"http:\\/\\/www.facebook.com\\/highlandky\",\"feed\":false,\"show\":true,\"access\":\"\",\"userid\":\"\"},\"3\":{\"name\":\"Instagram\",\"icon\":\"instagram\",\"url\":\"https:\\/\\/instagram.com\\/hbc_ky\\/\",\"feed\":true,\"show\":true,\"access\":\"1678475616.467ede5.3507c96e1879422ba2bbef4eddc38025\",\"userid\":\"1678475616\"},\"2\":{\"name\":\"Twitter\",\"icon\":\"twitter\",\"url\":\"http:\\/\\/www.twitter.com\\/highlandbc_ky\",\"feed\":false,\"show\":true,\"access\":\"\",\"userid\":\"\"}}','Connecting');
/*!40000 ALTER TABLE `btSocial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btSocialLinks`
--

DROP TABLE IF EXISTS `btSocialLinks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btSocialLinks` (
  `btSocialLinkID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(10) unsigned DEFAULT '0',
  `slID` int(10) unsigned DEFAULT '0',
  `displayOrder` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`btSocialLinkID`),
  KEY `bID` (`bID`,`displayOrder`),
  KEY `slID` (`slID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btSocialLinks`
--

LOCK TABLES `btSocialLinks` WRITE;
/*!40000 ALTER TABLE `btSocialLinks` DISABLE KEYS */;
/*!40000 ALTER TABLE `btSocialLinks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btSurvey`
--

DROP TABLE IF EXISTS `btSurvey`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btSurvey` (
  `bID` int(10) unsigned NOT NULL,
  `question` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `requiresRegistration` int(11) DEFAULT '0',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btSurvey`
--

LOCK TABLES `btSurvey` WRITE;
/*!40000 ALTER TABLE `btSurvey` DISABLE KEYS */;
/*!40000 ALTER TABLE `btSurvey` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btSurveyOptions`
--

DROP TABLE IF EXISTS `btSurveyOptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btSurveyOptions` (
  `optionID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(11) DEFAULT NULL,
  `optionName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `displayOrder` int(11) DEFAULT '0',
  PRIMARY KEY (`optionID`),
  KEY `bID` (`bID`,`displayOrder`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btSurveyOptions`
--

LOCK TABLES `btSurveyOptions` WRITE;
/*!40000 ALTER TABLE `btSurveyOptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `btSurveyOptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btSurveyResults`
--

DROP TABLE IF EXISTS `btSurveyResults`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btSurveyResults` (
  `resultID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `optionID` int(10) unsigned DEFAULT '0',
  `uID` int(10) unsigned DEFAULT '0',
  `bID` int(11) DEFAULT NULL,
  `cID` int(11) DEFAULT NULL,
  `ipAddress` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`resultID`),
  KEY `optionID` (`optionID`),
  KEY `cID` (`cID`,`optionID`,`bID`),
  KEY `bID` (`bID`,`cID`,`uID`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btSurveyResults`
--

LOCK TABLES `btSurveyResults` WRITE;
/*!40000 ALTER TABLE `btSurveyResults` DISABLE KEYS */;
/*!40000 ALTER TABLE `btSurveyResults` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btSwitchLanguage`
--

DROP TABLE IF EXISTS `btSwitchLanguage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btSwitchLanguage` (
  `bID` int(10) unsigned NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btSwitchLanguage`
--

LOCK TABLES `btSwitchLanguage` WRITE;
/*!40000 ALTER TABLE `btSwitchLanguage` DISABLE KEYS */;
/*!40000 ALTER TABLE `btSwitchLanguage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btTags`
--

DROP TABLE IF EXISTS `btTags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btTags` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `targetCID` int(11) DEFAULT NULL,
  `displayMode` varchar(20) COLLATE utf8_unicode_ci DEFAULT 'page',
  `cloudCount` int(11) DEFAULT '10',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btTags`
--

LOCK TABLES `btTags` WRITE;
/*!40000 ALTER TABLE `btTags` DISABLE KEYS */;
/*!40000 ALTER TABLE `btTags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btTestimonial`
--

DROP TABLE IF EXISTS `btTestimonial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btTestimonial` (
  `bID` int(10) unsigned NOT NULL,
  `fID` int(10) unsigned DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `companyURL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paragraph` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btTestimonial`
--

LOCK TABLES `btTestimonial` WRITE;
/*!40000 ALTER TABLE `btTestimonial` DISABLE KEYS */;
/*!40000 ALTER TABLE `btTestimonial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btTopicList`
--

DROP TABLE IF EXISTS `btTopicList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btTopicList` (
  `bID` int(10) unsigned NOT NULL,
  `mode` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'S',
  `topicAttributeKeyHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `topicTreeID` int(10) unsigned NOT NULL DEFAULT '0',
  `cParentID` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btTopicList`
--

LOCK TABLES `btTopicList` WRITE;
/*!40000 ALTER TABLE `btTopicList` DISABLE KEYS */;
/*!40000 ALTER TABLE `btTopicList` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btVideo`
--

DROP TABLE IF EXISTS `btVideo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btVideo` (
  `bID` int(10) unsigned NOT NULL,
  `webmfID` int(10) unsigned DEFAULT '0',
  `oggfID` int(10) unsigned DEFAULT '0',
  `posterfID` int(10) unsigned DEFAULT '0',
  `mp4fID` int(10) unsigned DEFAULT '0',
  `width` int(10) unsigned DEFAULT NULL,
  `height` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btVideo`
--

LOCK TABLES `btVideo` WRITE;
/*!40000 ALTER TABLE `btVideo` DISABLE KEYS */;
/*!40000 ALTER TABLE `btVideo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btYouTube`
--

DROP TABLE IF EXISTS `btYouTube`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btYouTube` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `videoURL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vHeight` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vWidth` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vPlayer` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btYouTube`
--

LOCK TABLES `btYouTube` WRITE;
/*!40000 ALTER TABLE `btYouTube` DISABLE KEYS */;
/*!40000 ALTER TABLE `btYouTube` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gaPage`
--

DROP TABLE IF EXISTS `gaPage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gaPage` (
  `gaiID` int(10) unsigned NOT NULL,
  `cID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`gaiID`),
  KEY `cID` (`cID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gaPage`
--

LOCK TABLES `gaPage` WRITE;
/*!40000 ALTER TABLE `gaPage` DISABLE KEYS */;
/*!40000 ALTER TABLE `gaPage` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-09-18  8:47:42
