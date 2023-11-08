-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: blog
-- ------------------------------------------------------
-- Server version	8.2.0

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
-- Table structure for table `article`
--

DROP TABLE IF EXISTS `article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `article` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,utf8mb4_general_ci
  `image` varchar(255) NOT NULL,
  `content` longtext NOT NULL,
  `category` varchar(45) DEFAULT NULL,
  `author` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `  fk_article_user_idx` (`author`),
  CONSTRAINT `  fk_article_user` FOREIGN KEY (`author`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=146.59.153.113;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article`
--

LOCK TABLES `article` WRITE;
/*!40000 ALTER TABLE `article` DISABLE KEYS */;
INSERT INTO `article` VALUES (2,'La ds3 est une belle voiture !','https://www.largus.fr/images/images/ds3-crossback-essai-photos-25_1.jpg','Au lancement du grand frère DS7 Crossback, en 2017, on ne donna pas cher de la carrière de ce grand SUV, similaire au Mercedes GLC en termes de gabarit, faute d’image de marque. Mais force est de constater, trois ans après son lancement, que ce challenger dans l’âme a su conquérir une certaine clientèle tricolore, se hissant fin juillet 2020 au 33e rang des ventes sur notre territoire, toutes catégories confondues. Avec 7 012 exemplaires écoulés depuis le début d’année, il se permet de marquer à la culotte le Volkswagen Tiguan (7 526 ex.), naviguant pourtant en terrain généraliste. Le renfort de motorisations hybrides rechargeables, en début d’année, a semble-t-il eu des effets bénéfiques sur le plan commercial, malgré la crise sanitaire.','technologie',NULL),(3,'La ds6 est incroyable !','https://sf2.auto-moto.com/wp-content/uploads/sites/9/2016/04/01-ds-6-750x410.jpg','Un soin particulier sera porté au traitement de l’habitacle, évocateur du luxe à la française, aux matériaux rigoureusement choisis. Outre le cuir, l’emploi de pierres semi-précieuses pourraient orner l’habitacle, mais sur certains marchés uniquement, notamment la Chine. Comme sur le concept-car E-Tense, de grandes maisons de luxe françaises pourraient apporter leur savoir-faire, comme le maroquinier Moynat, l’horloger BRM ou le spécialiste audio Focal. Le tout au service d’un style flamboyant, cher au designer maison Thierry Métroz, prônant le design paramétrique, utilisé en architecture.\r\n\r\nLe bloc hybride plug-in essence électrique pourra trôner sous son capot, sans oublier une probable déclinaison sportive, siglée DS Performance. Mais il y a peu de chance pour que DS développe des motorisations au delà des 4 cylindres. Un peu léger quand on prétend évoluer dans la galaxie premium.\r\n\r\nEncore un peu de patience, un concept-car devrait nous en dire plus sur ce nouveau SUV, dans les mois à venir. A son arrivée en concession en 2018, il devrait débuter sa carrière à un tarif aux alentours de 32 000 €.','technologie',NULL),(4,'Space X réussit son atterrissage sur la lune','https://www.cieletespace.fr/media/default/0001/20/for_press_release-607d.jpeg','C’est la dernière ligne droite pour SpaceX. Dans quelques jours, l’entreprise américaine procédera à son tout premier vol habité vers la Station spatiale internationale (ISS). Si les conditions météorologiques sont clémentes : la saison des tempêtes tropicales a débuté dans l’océan Atlantique et celle-ci s’annonce plus active que d’ordinaire, ce qui pourrait contrarier le lancement, qui doit partir de Floride.\r\n\r\nMais de report, il n’en est pour l’heure pas question : le tir est toujours programmé le 27 mai à 22h33 (heure française) depuis le centre spatial Kennedy. Et SpaceX comme l’agence spatiale américaine (Nasa), qui supervise le programme des vols habités dans lequel s’inscrit la société fondée par Elon Musk, continuent de respecter leur planning à la lettre en attendant le grand jour.\r\n\r\nTrois évènements récents témoignent d’ailleurs de l’imminence du décollage : le 21 mai, SpaceX a annoncé l’installation de la fusée Falcon 9 sur son pas de tir, avec à son sommet la capsule Crew Dragon dans laquelle embarqueront les astronautes américains Robert Behnken et Douglas Hurley. Une vidéo accélérée montre cette séquence, avec en outre le déploiement de la passerelle qu’ils emprunteront.','technologie',NULL),(5,'Ce que Napoléon dit de son époque','https://img-4.linternaute.com/VV4kHHJPo-KBMcYIlSEB4qtMfG8=/1240x/smart/e136f40b199348e1aa2e6a8d6ee9a19e/ccmcms-linternaute/23753373.jpg','Napoléon Bonaparte, né le 15 août 1769 à Ajaccio et mort le 5 mai 1821 sur l\'île Sainte-Hélène, est un militaire et homme d\'État français, premier empereur des Français, du 18 mai 1804 au 6 avril 1814 et du 20 mars au 22 juin 1815, sous le nom de Napoléon Ier.\r\n\r\nSecond enfant de Charles Bonaparte et Letizia Ramolino, Napoléon Bonaparte devient en 1793 général dans les armées de la Première République française, née de la Révolution, où il est notamment commandant en chef de l\'armée d\'Italie puis de l\'armée d\'Orient. Arrivé au pouvoir en 1799 par le coup d\'État du 18 Brumaire, il est Premier consul — consul à vie à partir du 2 août 1802 — jusqu\'au 18 mai 1804, date à laquelle l\'Empire est proclamé par un sénatus-consulte suivi d\'un plébiscite. Il est sacré empereur, en la cathédrale Notre-Dame de Paris, le 2 décembre 1804, par le pape Pie VII. Son épouse, l\'impératrice Joséphine de Beauharnais, est également sacrée.\r\n\r\nEn tant que général en chef et chef d\'État, Napoléon tente de briser les coalitions montées et financées par le royaume de Grande-Bretagne et qui rassemblent, à partir de 1792, les monarchies européennes contre la France et son régime né de la Révolution. Il conduit les armées françaises d\'Italie au Nil et d\'Autriche à la Prusse et à la Pologne : les nombreuses et brillantes victoires de Bonaparte (Arcole, Rivoli, Pyramides, Marengo, Austerlitz, Iéna, Friedland), dans des campagnes militaires rapides, disloquent les quatre premières coalitions. Les paix successives, qui mettent un terme à chacune de ces coalitions, renforcent la France et donnent à Napoléon un degré de puissance jusqu\'alors rarement égalé en Europe, lors de la paix de Tilsit (1807).','politique',NULL),(6,'Sarkozy de retour en prison','https://resize-europe1.lanmedia.fr/r/620,310,FFFFFF,center-middle/img/var/europe1/storage/images/europe1/dossiers/nicolas-sarkozy/9887872-3-fre-FR/Nicolas-Sarkozy.jpg','Sarkozy\'s political career began when he was 23, when he became a city councillor in Neuilly-sur-Seine. A member of the Neo-Gaullist party RPR, he went on to be elected mayor of that town, after the death of the incumbent mayor Achille Peretti. Sarkozy had been close to Peretti, as his mother was Peretti\'s secretary. A more senior RPR councillor, Charles Pasqua, wanted to become mayor, and asked Sarkozy to organize his campaign. Instead Sarkozy took that opportunity to propel himself into the office of mayor.[28] He was the youngest mayor of any town in France with a population of over 50,000. He served from 1983 to 2002. In 1988, he became a deputy in the National Assembly.\r\n\r\nIn 1993, Sarkozy was in the national news for personally negotiating with the \"Human Bomb\", a man who had taken small children hostage in a kindergarten in Neuilly.[29] The \"Human Bomb\" was killed after two days of talks by policemen of the RAID, who entered the school stealthily while the attacker was resting.\r\n\r\nAt the same time, from 1993 to 1995, he was Minister for the Budget and spokesman for the executive in the cabinet of Prime Minister Édouard Balladur. Throughout most of his early career, Sarkozy had been seen as a protégé of Jacques Chirac. During his tenure, he increased France\'s public debt more than any other French Budget Minister, by the equivalent of €200 billion (US$260 billion) (FY 1994–1996). The first two budgets he submitted to the parliament (budgets for FY1994 and FY1995) assumed a yearly budget deficit equivalent to six percent of GDP.[note 2] According to the Maastricht Treaty, the French yearly budget deficit may not exceed three percent of France\'s GDP. ','politique',NULL),(7,'Hollande ouvre une fromagerie','https://france3-regions.francetvinfo.fr/image/U8sQm-QC3BCwiqzNmgACxesHD5g/600x400/regions/2020/06/08/5ede62028f63c_hollande_au_stand_fromage_rungis.jpg','A wiki (/ˈwɪki/ (About this soundlisten) WIK-ee) is a hypertext publication collaboratively edited and managed by its own audience directly using a web browser. A typical wiki contains multiple pages for the subjects or scope of the project and could be either open to the public or limited to use within an organization for maintaining its internal knowledge base.\r\n\r\nWikis are enabled by wiki software, otherwise known as wiki engines. A wiki engine, being a form of a content management system, differs from other web-based systems such as blog software, in that the content is created without any defined owner or leader, and wikis have little inherent structure, allowing structure to emerge according to the needs of the users.[1] Wiki engines usually allow content to be written using a simplified markup language and sometimes edited with the help of a rich-text editor.[2] There are dozens of different wiki engines in use, both standalone and part of other software, such as bug tracking systems. Some wiki engines are open source, whereas others are proprietary. Some permit control over different functions (levels of access); for example, editing rights may permit changing, adding, or removing material. Others may permit access without enforcing access control. Other rules may be imposed to organize content. ','politique',NULL),(8,'Les fraises rendent heureux','https://res.cloudinary.com/serdy-m-dia-inc/image/upload/f_auto/fl_lossy/q_auto:eco/x_706,y_1118,w_5115,h_2877,c_crop/w_1200,h_630,c_fill/v1529433367/foodlavie/prod/articles/comment-congeler-les-fraises-afin-den-avoir-toute-lannee-944186b6','En Europe et en Amérique du Nord, les fruits de l’espèce Fragaria vesca, le fraisier des bois, sont de petite taille. Connus depuis l\'Antiquité, les Romains les consommaient et les utilisaient dans leurs produits cosmétiques en raison de leur odeur agréable. Elle est cultivée dans les jardins européens vers le xive siècle.\r\n\r\nLe fraisier musqué est connu pour ses fruits petits d\'une saveur musquée unique, que les connaisseurs donnent comme supérieur à la fraise des jardins. Il est cultivé depuis le xvie siècle3. Le premier cultivar connu du genre Fragaria appartient à cette espèce avec Le chapiron nommé en 1576.\r\n\r\nLe fraisier vert a été très peu cultivé car ses fruits sont moins appréciés du fait de leur acidité plus forte que les espèces ci-dessus. Cependant il a fait l\'objet de cueillette pour la consommation personnelle.\r\n\r\nVers la fin du xvie siècle l\'explorateur Jacques Cartier rapporte du Canada en France des plants de fraisier de Virginie (Fragaria virginiana Mill. subsp. virginiana)3. L\'espèce intéresse assez par ses fruits parfumés pour être cultivée pour le commerce surtout en Grande-Bretagne et aux États-Unis. Encore de nos jours, il existe une production industrielle faible mais suivie en Grande-Bretagne. C\'est la première fraise à mûrir.','nature',NULL),(9,'Les plus beaux champs d&#39;éoliennes','https://www.connaissancedesenergies.org/sites/default/files/image_article/Parc-eolien-Logan-Colorado.jpg','En 1714, l\'officier du génie maritime Amédée François Frézier4 rapporte en fraude du Chili plusieurs plants de Blanches du Chili, dont cinq survivent au voyage5, des fraisiers à gros fruits blancs cultivés là-bas depuis longtemps par les Amérindiens, le (Fragaria chiloensis subsp. chiloensis f. chiloensis Staudt). Ces fraisiers se révélèrent être uniquement des plants femelles ne pouvant pas donner de fruits sans plant mâle3. Quelques décennies plus tard, après importation de plants fertiles, la culture de blanches du Chili a été tentée en Grande-Bretagne (en 1824 trois variétés sont décrites) mais elle est peu résistante au froid et, sous le climat anglais, il est rarement possible de l\'amener à fructifier et, même alors, il est difficile de la faire mûrir correctement. La culture de blanches du Chili a été relancée au début des années 2000 mais les quantités produites restent marginales3.\r\n\r\nVers 1740, le botaniste Antoine Nicolas Duchesne observe que de beaux fruits sont obtenus lorsqu\'un fraisier du Chili est cultivé près d\'un fraisier de Virginie3. Ce croisement spontané, qui se produit notamment en Bretagne, en Angleterre et aux Pays-Bas, est à l\'origine d\'un nouvel hybride qui associe la saveur de Fragaria virginiana et la grosseur du fruit de Fragaria chiloensis, et qui possède un parfum d\'ananas à l\'origine de son nom botanique : Fragaria ×ananassa Duch3. C\'est de cet hybride que provient l’essentiel des variétés de fraises à gros « fruits » que l’on cultive désormais.\r\n\r\nC\'est en Angleterre que seront en premier créées plusieurs variétés issues de cette hybridation, et qu\'en sera développée la culture industrielle. L\'Angleterre dominera longtemps le marché européen de la fraise, en concurrence avec Plougastel en France.','nature',NULL),(10,'Ce 4x4 roule à l&#39;eau','https://thegoodlife.thegoodhub.com/wp-content/thumbnails/uploads/sites/2/2019/10/bollinger-reveal-1-56-tt-width-1872-height-1200-fill-0-crop-0-bgcolor-eeeeee.jpg','On en apprend également plus sur les caractéristiques techniques des B1 et B2. Ils sont équipés de deux moteurs électriques, qui lâchent 622 chevaux pour un couple de 900 Nm. Les engins passent de 0 à 100 en 4,5 secondes – pas mal pour de tels gabarits – mais ne dépassent pas les 160 km/h. Les deux véhicules Bollinger sont équipés d’une batterie de 120 kWh, dont on ne connait pas encore l’autonomie.\r\n\r\nBollinger sur la route, oui, mais quand ?\r\nAutre grande nouvelle de ce « reveal », Bollinger promet que ses B1 et B2 ont été pensés pour être autorisés sur toutes les routes du monde. C’était l’une des interrogations le plus souvent soulevées par les observateurs lors de la présentation du premier prototype de la marque en 2017.\r\n\r\nMalgré tout, cette cérémonie diffusée en direct sur Youtube a comme un gout d’inachevé. Un coup d’œil rapide aux commentaires sous le live de l’événement suffit pour ressentir la frustration des spectateurs.','nature',NULL);
/*!40000 ALTER TABLE `article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `session`
--

DROP TABLE IF EXISTS `session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `session` (
  `id` char(64) NOT NULL,
  `userid` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `session`
--

LOCK TABLES `session` WRITE;
/*!40000 ALTER TABLE `session` DISABLE KEYS */;
INSERT INTO `session` VALUES ('1',1),('6',1),('ced3525a684f2d09b5019f7f8a08b88caf1a252d4da234d5aa43411ffbdc4fdc',1);
/*!40000 ALTER TABLE `session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(150) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'aliak','ibrahim','alib99@live.fr','$argon2id$v=19$m=65536,t=4,p=1$OEVPQVJBcFUxVXlSVUtpZg$GSE9GfIff4t4FNWgzgezFC9+2LHmhgkamXYfqMP9jVg');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'blog'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-02 18:03:40
