CREATE DATABASE  IF NOT EXISTS `exile` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `exile`;
-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: exile
-- ------------------------------------------------------
-- Server version	8.0.27

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `account_stats`
--

DROP TABLE IF EXISTS `account_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account_stats` (
  `uid` varchar(32) NOT NULL,
  `stat_npc_kill` int NOT NULL DEFAULT '0',
  `stat_zombie_kill` int NOT NULL DEFAULT '0',
  `stat_bambi_kill` int NOT NULL DEFAULT '0',
  `stat_total_repairs` int NOT NULL DEFAULT '0',
  `stat_total_hotwire` int NOT NULL DEFAULT '0',
  `stat_total_bandage_used` int NOT NULL DEFAULT '0',
  `stat_total_vishpirin_used` int NOT NULL DEFAULT '0',
  `stat_total_instadoc_used` int NOT NULL DEFAULT '0',
  `stat_total_firstaid_used` int NOT NULL DEFAULT '0',
  `stat_total_easy_task_completed` int NOT NULL DEFAULT '0',
  `stat_total_medium_task_completed` int NOT NULL DEFAULT '0',
  `stat_total_hard_task_completed` int NOT NULL DEFAULT '0',
  `stat_total_flags_taken` int NOT NULL DEFAULT '0',
  `stat_total_black_market_items_bought` int NOT NULL DEFAULT '0',
  `stat_total_items_bought` int NOT NULL DEFAULT '0',
  `stat_total_distance_traveled` double NOT NULL DEFAULT '0',
  `stat_total_intel_gathered` int NOT NULL DEFAULT '0',
  `stat_total_mines_disarmed` int NOT NULL DEFAULT '0',
  `stat_spawn_data` text,
  `stat_time_spent_outside_trader` double NOT NULL DEFAULT '0',
  `stat_time_spent_in_trader` double NOT NULL DEFAULT '0',
  `stat_time_spent_in_radzone` double NOT NULL DEFAULT '0',
  `stat_total_vehicle_rearmed` int NOT NULL DEFAULT '0',
  `stat_total_weed_gathered` int NOT NULL DEFAULT '0',
  `stat_total_exilecoin_spent` int NOT NULL DEFAULT '0',
  `stat_weapon_kill_data` text,
  `stat_total_explosives_placed` int NOT NULL DEFAULT '0',
  `stat_total_quads_deployed` int NOT NULL DEFAULT '0',
  `stat_total_revives` int NOT NULL DEFAULT '0',
  `stat_total_times_revived` int NOT NULL DEFAULT '0',
  `stat_total_zcp_capped` int NOT NULL DEFAULT '0',
  `stat_total_breaching_charges_placed` int NOT NULL DEFAULT '0',
  `stat_longest_kill_distance` double NOT NULL DEFAULT '0',
  `stat_total_doors_grinded` int NOT NULL DEFAULT '0',
  `stat_total_homie_kills` int NOT NULL DEFAULT '0',
  `stat_total_raid_kills` int NOT NULL DEFAULT '0',
  `stat_total_donations` double NOT NULL DEFAULT '0',
  `stat_total_skull` int NOT NULL DEFAULT '0',
  `stat_total_containers_hacked` int NOT NULL DEFAULT '0',
  `stat_total_mad_passenger_kills` int NOT NULL DEFAULT '0',
  `stat_total_suicides` int NOT NULL DEFAULT '0',
  `stat_total_roadkills` int NOT NULL DEFAULT '0',
  `stat_total_demon_kills` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping events for database 'exile'
--

--
-- Dumping routines for database 'exile'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-24 20:02:37
