CREATE DATABASE  IF NOT EXISTS `bookshelf` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `bookshelf`;
-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: bookshelf
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book` (
  `ISBN` bigint NOT NULL,
  `title` varchar(45) DEFAULT NULL,
  `author` varchar(45) DEFAULT NULL,
  `plot` text,
  `cover_image` blob,
  PRIMARY KEY (`ISBN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book`
--

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` VALUES (9781781101582,'Harry Potter e la Pietra Filosofale','J.K. Rowling','Harry Potter è un ragazzo normale, o quantomeno è convinto di esserlo, anche se a volte provoca strani fenomeni, come farsi ricrescere i capelli inesorabilmente tagliati dai perfidi zii. Vive con loro al numero 4 di Privet Drive: una strada di periferia come tante, dove non succede mai nulla fuori dall’ordinario. Finché un giorno, poco prima del suo undicesimo compleanno, riceve una misteriosa lettera che gli rivela la sua vera natura: Harry è un mago e la Scuola di Magia e Stregoneria di Hogwarts è pronta ad accoglierlo...',NULL),(9788806239831,'Le otto montagne','Paolo Cognetti','Pietro è un ragazzino di città, solitario e un po\' scontroso. La madre lavora in un consultorio di periferia, e farsi carico degli altri è il suo talento. Il padre è un chimico, un uomo ombroso e affascinante, che torna a casa ogni sera dal lavoro carico di rabbia. I genitori di Pietro sono uniti da una passione comune, fondativa: in montagna si sono conosciuti, innamorati, si sono addirittura sposati ai piedi delle Tre Cime di Lavaredo. La montagna li ha uniti da sempre, anche nella tragedia, e l\'orizzonte lineare di Milano li riempie ora di rimpianto e nostalgia. Quando scoprono il paesino di Grana, ai piedi del Monte Rosa, sentono di aver trovato il posto giusto: Pietro trascorrerà tutte le estati in quel luogo \"chiuso a monte da creste grigio ferro e a valle da una rupe che ne ostacola l\'accesso\" ma attraversato da un torrente che lo incanta dal primo momento. E li, ad aspettarlo, c\'è Bruno, capelli biondo canapa e collo bruciato dal sole: ha la sua stessa età ma invece di essere in vacanza si occupa del pascolo delle vacche. Iniziano così estati di esplorazioni e scoperte, tra le case abbandonate, il mulino e i sentieri più aspri. Sono anche gli anni in cui Pietro inizia a camminare con suo padre, \"la cosa più simile a un\'educazione che abbia ricevuto da lui\". Perché la montagna è un sapere, un vero e proprio modo di respirare, e sarà il suo lascito più vero: \"Eccola li, la mia eredità: una parete di roccia, neve, un mucchio di sassi squadrati, un pino\". Un\'eredità che dopo tanti anni lo riavvicinerà a Bruno.',NULL),(9788830104716,'Il signore degli anelli','J. R. R. Tolkien','Il Signore degli Anelli è romanzo d\'eccezione, al di fuori del tempo: chiarissimo ed enigmatico, semplice e sublime. Dona alla felicità del lettore ciò che la narrativa del nostro secolo sembrava incapace di offrire: avventure in luoghi remoti e terribili, episodi d\'inesauribile allegria, segreti paurosi che si svelano a poco a poco, draghi crudeli e alberi che camminano, città d\'argento e di diamante poco lontane da necropoli tenebrose in cui dimorano esseri che spaventano solo al nominarli, urti giganteschi di eserciti luminosi e oscuri; e tutto questo in un mondo immaginario ma ricostruito con cura meticolosa, e in effetti assolutamente verosimile, perché dietro i suoi simboli si nasconde una realtà che dura oltre e malgrado la storia: la lotta, senza tregua, fra il bene e il male. Leggenda e fiaba, tragedia e poema cavalleresco, il romanzo di Tolkien è in realtà un\'allegoria della condizione umana che ripropone in chiave moderna i miti antichi.',NULL),(9788834710081,'Blade runner','Philip K. Dick','Nel 1992 la Guerra Mondiale ha ucciso milioni di persone, e condannato all\'estinzione intere specie, costringendo l\'umanità ad andare nello spazio. Chi è rimasto sogna di possedere un animale vivente, e le compagnie producono copie incredibilmente realistiche: gatti, cavalli, pecore... Anche l\'uomo è stato duplicato. I replicanti sono simulacri perfetti e indistinguibili, e per questo motivo sono stati banditi dalla Terra. Ma a volte decidono di confondersi tra i loro simili biologici. A San Francisco vive un uomo che ha l\'incarico di ritirare gli androidi che violano la legge, ma i dubbi intralciano a volte il suo crudele mestiere, spingendolo a chiedersi cosa sia davvero un essere umano.',NULL);
/*!40000 ALTER TABLE `book` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-29 20:28:29
