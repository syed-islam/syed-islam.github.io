-- mysql dump 10.13  distrib 5.5.28, for osx10.6 (i386)
--
-- host: summit.cs.ucl.ac.uk    database: belle2_unfiltered_lda_data
-- ------------------------------------------------------
-- server version	5.5.28

/*!40101 set @old_character_set_client=@@character_set_client */;
/*!40101 set @old_character_set_results=@@character_set_results */;
/*!40101 set @old_collation_connection=@@collation_connection */;
/*!40101 set names utf8 */;
/*!40103 set @old_time_zone=@@time_zone */;
/*!40103 set time_zone='+00:00' */;
/*!40014 set @old_unique_checks=@@unique_checks, unique_checks=0 */;
/*!40014 set @old_foreign_key_checks=@@foreign_key_checks, foreign_key_checks=0 */;
/*!40101 set @old_sql_mode=@@sql_mode, sql_mode='no_auto_value_on_zero' */;
/*!40111 set @old_sql_notes=@@sql_notes, sql_notes=0 */;

--
-- table structure for table `bug_reports`
--

drop table if exists `bug_reports`;
/*!40101 set @saved_cs_client     = @@character_set_client */;
/*!40101 set character_set_client = utf8 */;
create table `bug_reports` (
  `bug_id` int(11) not null,
  `assigned_to` text,
  `reported_by` text,
  `tokens` text,
  fulltext key `tokens` (`tokens`)
) engine=myisam default charset=latin1;
/*!40101 set character_set_client = @saved_cs_client */;

--
-- dumping data for table `bug_reports`
--

lock tables `bug_reports` write;
/*!40000 alter table `bug_reports` disable keys */;
insert into `bug_reports` values (23,'3',null,';file;steer;framework;basf2'),(24,'3',null,';file;remove;directory;tool;build'),(25,'3',null,';option;directory;tool'),(26,'3',null,';tool;build'),(27,'3',null,';document;example;contain;documentation'),(28,'3',null,';processing;remove;need'),(29,'8',null,';file;steer;basf2;contain;class;object;variable'),(30,'8',null,';file;steer;module;parameter;line;need'),(31,'3',null,';central;framework;example;process;object;event;simulation;need;generator'),(34,'14',null,';file;framework;example;process;module;datum;event;type'),(36,'14',null,';file;steer;processing;user;framework;process;module;event'),(38,'14',null,';framework;class;unit;implement'),(39,'14',null,';framework;name;convention;change;implement'),(40,'14',null,';framework;module;parameter;description'),(41,'14',null,';framework;geometry;link;package;implement'),(42,'14',null,';framework;geometry;simulation;implement'),(43,'14',null,';geant4;mcparticle;code;list;simulation;implement'),(44,'14',null,';geant4;create;mcparticle;list;simulation'),(45,'14',null,';list;simulation'),(46,'14',null,';framework;module'),(47,'5',null,';framework;module;list'),(48,'8',null,';name;module'),(55,'11',null,';create;datum;need'),(56,'11',null,';allow'),(58,'8',null,';process'),(59,'8',null,';header;framework;object'),(60,'5',null,';framework;relation;possible'),(61,'5',null,';framework;relation;object;list'),(62,'5',null,';framework;module;possible'),(69,'3',null,';error;geant4;build;externals'),(70,'3',null,';error;build;nightly;package;case'),(72,'3',null,';processing;framework;module;datum;miss;event'),(73,'3',null,';file;steer;framework;option'),(95,'3',null,';framework;module;change;event'),(96,'14',null,';geant4;definition;geometry;allow;implement'),(97,'14',null,';simulation;case'),(98,'3',null,';file;remove;check'),(106,'14',null,';file;error;framework;example;parameter'),(107,'3',null,';directory;code;build;externals;root'),(108,'3',null,';processing;example;module'),(110,'14',null,';library;geometry;class;simulation;package'),(111,'8',null,';framework;version;process;assignment;order;change;destination'),(112,'3',null,';debug;framework;basf2;process;function;possible;event;case'),(113,'6',null,';include;remove;library;geometry;generator'),(116,'20',null,';include;possible;documentation'),(131,'11',null,';document;documentation;need'),(146,'8',null,';change;destination;multiple'),(148,'11',null,';document;documentation'),(149,'11',null,';virtual;document;documentation'),(150,'11',null,';documentation'),(151,'11',null,';document;documentation'),(152,'3',null,';geometry;review'),(153,'3',null,';review;generator'),(154,'3',null,';review;simulation'),(155,'6',null,';framework;review'),(168,'25',null,';review'),(169,'25',null,';review'),(171,'3',null,';build;nightly'),(172,'3',null,';debug;user;allow'),(173,'3',null,';tool'),(176,'3',null,';file;check;tool;change'),(177,'26',null,';geometry;review'),(178,'26',null,';review;simulation'),(180,'11',null,';version;code;allow'),(199,'6',null,';comment;review;line'),(200,'3',null,';work;file;update;check;directory;tool;basf2;release;externals;change;root;package'),(201,'14',null,';name;convention;generator'),(202,'6',null,';constant;name;generator'),(203,'14',null,';const;pointer;need;generator;type'),(204,'6',null,';comment;generator;case'),(205,'6',null,';work;multiple;generator'),(206,'6',null,';comment;remove;generator'),(207,'6',null,';unit;generator'),(208,'6',null,';user;example;particle;generator'),(209,'6',null,';comment;miss;generator'),(210,'6',null,';comment;miss;generator'),(211,'14',null,';convention;variable;generator;type'),(212,'14',null,';change;const;variable;argument;generator'),(213,'14',null,';file;source;generator'),(214,'6',null,';virtual;definition;particle;generator'),(215,'3',null,';geometry;check;build;nightly'),(217,'17',null,';geant4;geometry;check;root'),(218,'17',null,';file;geometry;allow'),(219,'14',null,';user;geant4'),(220,'3',null,';include;geometry;root'),(221,'25',null,';geant4'),(223,'14',null,';comment;check;code;convention;documentation;root'),(225,'21',null,';work;list;simulation'),(226,'14',null,';include;simulation'),(229,'10',null,';relation;class;object;implement'),(230,'14',null,';constant;geometry;implement'),(231,'17',null,';geometry'),(232,'5',null,';relation;object'),(233,'5',null,';relation'),(246,'6',null,';file;steer;user;module;event;generator'),(248,'5',null,';framework;class'),(249,'3',null,';externals;public'),(250,'3',null,';framework;definition;check;double'),(251,'3',null,';error;processing;debug;framework;module;line;event'),(258,'14',null,';file;header;definition;mcparticle;example;code;convention;class;generator;case'),(259,'6',null,';line;generator'),(260,'6',null,';constant;include;name;convention;const;generator'),(261,'6',null,';line;placement;generator;type'),(262,'6',null,';code;convention;line;argument;generator'),(263,'6',null,';comment;code;particle;generator'),(264,'6',null,';work;definition;convention;need;generator'),(265,'6',null,';namespace;package;generator'),(266,'6',null,';option;name;example;class;generator'),(267,'6',null,';datum;public;allow;generator'),(268,'6',null,';unit;variable;generator'),(269,'6',null,';generator'),(270,'6',null,';underscore;generator'),(271,'6',null,';second;argument;particle;generator'),(272,'14',null,';convention;variable;list;generator'),(273,'14',null,';remove;class;variable;generator'),(274,'6',null,';generator'),(276,'6',null,';placement;generator;type'),(277,'6',null,';placement;generator;type'),(278,'6',null,';file;header;placement;generator'),(279,'6',null,';namespace;generator'),(280,'6',null,';underscore;generator'),(281,'14',null,';file;header;include;build;process;declaration;pointer;generator'),(282,'6',null,';namespace;generator'),(283,'14',null,';geometry;check;module;description;class;generator'),(284,'6',null,';file;source;placement;generator'),(285,'6',null,';name;convention;datum;public;allow;generator'),(286,'6',null,';declaration;generator'),(287,'6',null,';relation;need;particle;generator'),(288,'6',null,';placement;generator;type'),(289,'6',null,';virtual;variable;constructor;particle;generator'),(290,'6',null,';virtual;steer;user;option;simulation;particle;generator;case'),(291,'6',null,';line;placement;generator'),(292,'6',null,';remove;allow;generator;case'),(293,'6',null,';guard;file;include;generator'),(294,'6',null,';name;generator'),(295,'6',null,';miss;documentation;generator'),(296,'6',null,';namespace;function;generator'),(297,'6',null,';file;header;include;generator'),(298,'6',null,';name;generator'),(299,'6',null,';debug;general;package;generator'),(300,'6',null,';miss;variable;generator'),(301,'6',null,';version;generator'),(302,'6',null,';name;generator'),(303,'6',null,';comment;code;list;generator'),(304,'6',null,';file;parameter;generator'),(305,'6',null,';placement;generator;type'),(306,'6',null,';namespace;generator'),(307,'14',null,';declaration;generator'),(308,'6',null,';file;source;placement;generator'),(309,'3',null,';work;file;check;tool;code;contain;class;nightly'),(310,'3',null,';version;update;tool;externals'),(311,'3',null,';structure;document;directory'),(312,'3',null,';package'),(313,'5',null,';central;framework;example;source;link'),(318,'3',null,';include;version;geant4;update;externals;root'),(320,'3',null,';work;directory;release;allow;variable'),(321,'6',null,';mcparticle'),(323,'14',null,';geometry;second;underscore'),(325,'14',null,';geometry;second;underscore'),(326,'14',null,';geometry;second;underscore;need'),(327,'14',null,';geometry;class;change'),(328,'14',null,';geometry;second;underscore;need'),(329,'14',null,';geometry;second;underscore;need'),(330,'14',null,';geometry;change'),(331,'14',null,';geometry;change'),(332,'14',null,';statement;file;include;geometry;order;line'),(333,'14',null,';geometry;parameter;unit'),(334,'14',null,';geometry;second;underscore'),(335,'14',null,';statement;file;include;geometry;order'),(336,'14',null,';file;header;definition;geometry;source;implement'),(337,'14',null,';geometry;second;underscore;need'),(338,'14',null,';remove;geometry;second;underscore'),(339,'14',null,';remove;geometry;second;underscore'),(340,'14',null,';remove;geometry;second;underscore'),(341,'14',null,';geometry;code;parameter;private;documentation;object;line'),(342,'14',null,';remove;geometry;second;underscore'),(343,'14',null,';geometry;possible;declaration'),(346,'17',null,';statement;remove;simulation'),(347,'17',null,';statement;framework;need'),(359,'17',null,';file;include;simulation'),(364,'17',null,';private;change;simulation'),(365,'17',null,';remove;second;underscore;simulation'),(368,'17',null,';statement;file;include;remove;simulation'),(370,'17',null,';statement;file;header;include;remove;simulation'),(371,'17',null,';statement;file;header;include;remove;simulation'),(372,'17',null,';header;include;mcparticle;change;simulation'),(385,'17',null,';parameter;description;miss;unit;simulation'),(386,'17',null,';statement;simulation'),(387,'17',null,';statement;simulation'),(388,'17',null,';simulation'),(391,'28',null,';file;structure;miss'),(392,'28',null,';file'),(393,'28',null,';file;comment;geant4;definition;create;general;parameter;root'),(394,'28',null,';structure;miss'),(395,'28',null,';file;miss'),(396,'28',null,';file'),(397,'28',null,';file;comment;geant4;definition;create;general;parameter;root'),(398,'28',null,';structure;miss'),(399,'28',null,';miss'),(400,'28',null,';order;public;private;protect;case'),(402,'28',null,';comment;class'),(403,'10',null,';order;public;private;protect;line;case'),(404,'10',null,';line'),(405,'10',null,';line'),(406,'10',null,';comment;line'),(407,'10',null,';comment;class;line'),(408,'10',null,';guard;comment;include;line'),(409,'10',null,';virtual;check;destructor;line'),(410,'10',null,';name;change'),(411,'10',null,';function;line;argument'),(412,'10',null,';assignment;contain;datum;operator;class;destructor;miss;line;nontrivial;pointer;constructor'),(413,'28',null,';change;line'),(414,'28',null,';order;public;private;protect;line;case'),(415,'28',null,';guard;comment;include;line'),(416,'28',null,';parameter;param;description;miss;line'),(417,'28',null,';comment;class;line'),(418,'28',null,';float;function;line;argument'),(419,'28',null,';assignment;contain;datum;operator;class;destructor;miss;line;nontrivial;pointer;constructor'),(420,'28',null,';order;class;public;private;protect;line;case'),(421,'28',null,';comment;description;class;line'),(422,'28',null,';comment;class;line'),(423,'28',null,';comment;namespace;line'),(424,'28',null,';guard;comment;include;line'),(425,'28',null,';comment;description;class;line'),(426,'28',null,';order;class;public;private;protect;line;case'),(427,'28',null,';comment;class;line'),(428,'28',null,';comment;namespace;line'),(429,'28',null,';guard;comment;include;line'),(430,'28',null,';order;class;public;private;protect;line;case'),(431,'28',null,';order;class;public;private;protect;line;case'),(432,'28',null,';order;class;public;private;protect;line;case'),(433,'28',null,';comment;class;line'),(434,'28',null,';comment;class;line'),(435,'28',null,';comment;class;line'),(436,'28',null,';comment;namespace;line'),(437,'28',null,';guard;comment;include;line'),(438,'28',null,';assignment;contain;datum;operator;class;destructor;line;nontrivial;pointer;constructor'),(439,'28',null,';assignment;contain;datum;operator;class;destructor;line;nontrivial;pointer;constructor'),(440,'28',null,';comment;description;class;line'),(441,'28',null,';class;public;protect;line'),(442,'28',null,';virtual;check;destructor;line'),(443,'28',null,';class;public;protect;line'),(444,'28',null,';class;public;protect;line'),(445,'28',null,';comment;class;line'),(446,'28',null,';comment;class;line'),(447,'28',null,';comment;class;line'),(448,'28',null,';comment;class;line'),(449,'28',null,';comment;namespace;line'),(450,'28',null,';guard;comment;include;line'),(451,'28',null,';parameter;param;description;miss;line'),(452,'28',null,';parameter;param;description;miss;line'),(453,'28',null,';parameter;param;description;miss;line'),(454,'28',null,';assignment;contain;datum;operator;class;public;destructor;protect;line;nontrivial;pointer;constructor'),(455,'28',null,';file;structure;general;code'),(456,'28',null,';definition;class;function;line'),(457,'28',null,';declaration;allow;line;multiple;variable'),(458,'28',null,';possible;line;pointer'),(459,'28',null,';guard;include;line'),(460,'28',null,';comment;description;class;line'),(461,'28',null,';comment;class;line'),(462,'28',null,';comment;namespace;line'),(463,'28',null,';comment;general;parameter;description;function;variable;need'),(464,'28',null,';comment;general;parameter;description;function;variable;need'),(465,'28',null,';comment;general;parameter;description;function;variable;need'),(466,'28',null,';line;case'),(467,'28',null,';namespace;nonlocal;line'),(468,'28',null,';file;module;change'),(469,'28',null,';guard;comment;include;line'),(470,'28',null,';comment;line'),(471,'10',null,';file;module;change'),(472,'10',null,';comment;class;line'),(473,'10',null,';code;module;source;line'),(474,'10',null,';assignment;module;contain;datum;operator;class;destructor;line;nontrivial;pointer;constructor'),(475,'10',null,';module;change'),(476,'10',null,';parameter;description;miss;line'),(477,'10',null,';virtual;check;destructor;line'),(478,'10',null,';parameter;param;description;miss;line'),(479,'10',null,';guard;comment;include;line'),(480,'10',null,';code;module;source;line'),(481,'10',null,';khig;fdelta;declaration;allow;const;line;double;multiple;variable'),(482,'10',null,';comment;structure;code'),(483,'10',null,';constant;code;possible;source;link'),(484,'10',null,';module'),(485,'10',null,';module;change'),(486,'10',null,';comment;parameter;description;function;variable;need'),(487,'10',null,';comment;line'),(488,'10',null,';virtual;check;destructor;line'),(489,'10',null,';parameter;param;description;miss;line'),(490,'10',null,';comment;class;line'),(491,'10',null,';namespace;const;nonlocal;line'),(492,'10',null,';class;protect;line'),(493,'10',null,';destructor;line'),(494,'10',null,';float;parameter;param;description;miss;function;line;argument'),(495,'10',null,';comment;line'),(496,'10',null,';class;protect;line'),(497,'10',null,';line;nontrivial'),(498,'10',null,';parameter;param;description;miss;function;line;argument'),(499,'28',null,';order;class;public;private;protect;line'),(500,'28',null,';order;class;public;private;protect;line'),(501,'28',null,';order;class;public;private;protect;line'),(502,'28',null,';order;class;public;private;protect;line'),(503,'28',null,';structure;geometry;build;datum;class;public;second;object;protect;line'),(504,'28',null,';assignment;contain;datum;operator;class;destructor;line;nontrivial;pointer;constructor'),(505,'28',null,';guard;include;line'),(506,'28',null,';order;class;public;private;protect;line'),(507,'28',null,';guard;include;line'),(508,'28',null,';order;class;public;private;protect;line'),(509,'28',null,';order;class;public;private;protect;line'),(510,'28',null,';assignment;contain;datum;operator;class;destructor;line;nontrivial;pointer;constructor'),(511,'28',null,';guard;include;line'),(512,'28',null,';guard;include;line'),(513,'28',null,';namespace;nonlocal;line'),(514,'10',null,';assignment;module;contain;datum;operator;class;destructor;line;nontrivial;pointer;constructor'),(515,'10',null,';code;module;source;line'),(516,'10',null,';module;change'),(517,'10',null,';code;module;source;line'),(518,'10',null,';khig;fdelta;declaration;allow;const;line;double;multiple;variable'),(519,'10',null,';comment;structure;general;code'),(520,'10',null,';constant;code;possible;source;link'),(521,'10',null,';module'),(522,'10',null,';module;change'),(523,'10',null,';comment;line'),(524,'10',null,';namespace;const;nonlocal;line'),(525,'3',null,';version;update;externals;documentation;object;root;link'),(526,'3',null,';user;check;tool;miss;package'),(527,'3',null,';file;error;steer;processing;user;framework;module;parameter;event'),(537,'3',null,';work;basf2;release;externals;package'),(540,'3',null,';option;tool;build;externals;allow'),(541,'3',null,';work;file;library;create;basf2;datum;class;allow;root'),(542,'3',null,';work;central;error;framework;basf2;release'),(543,'3',null,';error;code;build;nightly'),(547,'47',null,';framework;geant4;code;simulation'),(548,'46',null,';framework;geant4;code;simulation'),(549,'17',null,';framework;geant4;code;simulation'),(550,'17',null,';framework;geant4;code;simulation'),(551,'17',null,';structure;framework;geant4;code;simulation'),(553,'21',null,';framework;geant4;code;simulation'),(555,'3',null,';file;framework;basf2;object'),(558,'3',null,';processing;framework;module;second;event'),(559,'5',null,';function'),(560,'3',null,';debug;framework;version;library;option;code'),(562,'3',null,';debug;version;library;externals'),(563,'3',null,';version;update;check;tool'),(564,'17',null,';option;mcparticle;release;module;externals;simulation;particle'),(565,'17',null,';event;simulation'),(566,'38',null,';geometry;basf2;parameter;miss;unit'),(567,'38',null,';geometry;example;basf2'),(570,'3',null,';error;processing;framework;create;check;module;datum;object;event'),(571,'21',null,';file;include;class;line;link'),(572,'3',null,';tool;code'),(573,'3',null,';work;remove;directory;externals'),(574,'43',null,';file;framework;unit'),(575,'3',null,';update;externals'),(580,'41',null,';file;steer;user;option;datum;line'),(584,'3',null,';framework;tool;code;possible;package'),(586,'3',null,';user;code;basf2;build;change;line;link;case'),(588,'3',null,';central;user;framework;library;directory;module;change;case'),(590,'3',null,';version;tool;placement;pointer'),(591,'3',null,';work;file;check;tool');
/*!40000 alter table `bug_reports` enable keys */;
unlock tables;

--
-- table structure for table `developer`
--

drop table if exists `developer`;
/*!40101 set @saved_cs_client     = @@character_set_client */;
/*!40101 set character_set_client = utf8 */;
create table `developer` (
  `developer` varchar(40) not null default '',
  `load` int(2) not null default '0'
) engine=innodb default charset=latin1;
/*!40101 set character_set_client = @saved_cs_client */;

--
-- dumping data for table `developer`
--

lock tables `developer` write;
/*!40000 alter table `developer` disable keys */;
/*!40000 alter table `developer` enable keys */;
unlock tables;

--
-- table structure for table `developerfeature`
--

drop table if exists `developerfeature`;
/*!40101 set @saved_cs_client     = @@character_set_client */;
/*!40101 set character_set_client = utf8 */;
create table `developerfeature` (
  `developer` varchar(40) not null default '',
  `feature` varchar(40) not null default ''
) engine=innodb default charset=latin1;
/*!40101 set character_set_client = @saved_cs_client */;

--
-- dumping data for table `developerfeature`
--

lock tables `developerfeature` write;
/*!40000 alter table `developerfeature` disable keys */;
/*!40000 alter table `developerfeature` enable keys */;
unlock tables;

--
-- table structure for table `evaluationset_actual`
--

drop table if exists `evaluationset_actual`;
/*!40101 set @saved_cs_client     = @@character_set_client */;
/*!40101 set character_set_client = utf8 */;
create table `evaluationset_actual` (
  `bug_id` int(11) not null,
  `assigned_to` text,
  `reported_by` text,
  `tokens` text not null,
  `rank_of_assigned_to` int(11) default null,
  `top_developers` text,
  fulltext key `tokens` (`tokens`)
) engine=myisam default charset=latin1;
/*!40101 set character_set_client = @saved_cs_client */;

--
-- dumping data for table `evaluationset_actual`
--

lock tables `evaluationset_actual` write;
/*!40000 alter table `evaluationset_actual` disable keys */;
/*!40000 alter table `evaluationset_actual` enable keys */;
unlock tables;

--
-- table structure for table `evaluationset_ga_full`
--

drop table if exists `evaluationset_ga_full`;
/*!40101 set @saved_cs_client     = @@character_set_client */;
/*!40101 set character_set_client = utf8 */;
create table `evaluationset_ga_full` (
  `bug_id` int(11) not null,
  `assigned_to` text,
  `reported_by` text,
  `tokens` text not null,
  `rank_of_assigned_to` int(11) default null,
  `top_developers` text,
  fulltext key `tokens` (`tokens`)
) engine=myisam default charset=latin1;
/*!40101 set character_set_client = @saved_cs_client */;

--
-- dumping data for table `evaluationset_ga_full`
--

lock tables `evaluationset_ga_full` write;
/*!40000 alter table `evaluationset_ga_full` disable keys */;
/*!40000 alter table `evaluationset_ga_full` enable keys */;
unlock tables;

--
-- table structure for table `evaluationset_ga_sample`
--

drop table if exists `evaluationset_ga_sample`;
/*!40101 set @saved_cs_client     = @@character_set_client */;
/*!40101 set character_set_client = utf8 */;
create table `evaluationset_ga_sample` (
  `bug_id` int(11) not null,
  `assigned_to` text,
  `reported_by` text,
  `tokens` text not null,
  `rank_of_assigned_to` int(11) default null,
  `top_developers` text,
  fulltext key `tokens` (`tokens`)
) engine=myisam default charset=latin1;
/*!40101 set character_set_client = @saved_cs_client */;

--
-- dumping data for table `evaluationset_ga_sample`
--

lock tables `evaluationset_ga_sample` write;
/*!40000 alter table `evaluationset_ga_sample` disable keys */;
/*!40000 alter table `evaluationset_ga_sample` enable keys */;
unlock tables;

--
-- table structure for table `feature`
--

drop table if exists `feature`;
/*!40101 set @saved_cs_client     = @@character_set_client */;
/*!40101 set character_set_client = utf8 */;
create table `feature` (
  `feature` varchar(40) not null default '',
  `featureweight` int(2) not null default '1',
  `topic` varchar(40) not null default 'default'
) engine=innodb default charset=latin1;
/*!40101 set character_set_client = @saved_cs_client */;

--
-- dumping data for table `feature`
--

lock tables `feature` write;
/*!40000 alter table `feature` disable keys */;
/*!40000 alter table `feature` enable keys */;
unlock tables;

--
-- table structure for table `topic`
--

drop table if exists `topic`;
/*!40101 set @saved_cs_client     = @@character_set_client */;
/*!40101 set character_set_client = utf8 */;
create table `topic` (
  `topic` varchar(40) not null default '',
  `topicweight` int(2) not null default '1'
) engine=innodb default charset=latin1;
/*!40101 set character_set_client = @saved_cs_client */;

--
-- dumping data for table `topic`
--

lock tables `topic` write;
/*!40000 alter table `topic` disable keys */;
/*!40000 alter table `topic` enable keys */;
unlock tables;

--
-- table structure for table `trainingset`
--

drop table if exists `trainingset`;
/*!40101 set @saved_cs_client     = @@character_set_client */;
/*!40101 set character_set_client = utf8 */;
create table `trainingset` (
  `bug_id` int(11) not null,
  `assigned_to` text,
  `reported_by` text,
  `tokens` text not null,
  fulltext key `tokens` (`tokens`)
) engine=myisam default charset=latin1;
/*!40101 set character_set_client = @saved_cs_client */;

--
-- dumping data for table `trainingset`
--

lock tables `trainingset` write;
/*!40000 alter table `trainingset` disable keys */;
/*!40000 alter table `trainingset` enable keys */;
unlock tables;

--
-- temporary table structure for view `viewfw`
--

drop table if exists `viewfw`;
/*!50001 drop view if exists `viewfw`*/;
set @saved_cs_client     = @@character_set_client;
set character_set_client = utf8;
/*!50001 create table `viewfw` (
  `developer` tinyint not null,
  `feature` tinyint not null,
  `featureweight` tinyint not null
) engine=myisam */;
set character_set_client = @saved_cs_client;

--
-- final view structure for view `viewfw`
--

/*!50001 drop table if exists `viewfw`*/;
/*!50001 drop view if exists `viewfw`*/;
/*!50001 set @saved_cs_client          = @@character_set_client */;
/*!50001 set @saved_cs_results         = @@character_set_results */;
/*!50001 set @saved_col_connection     = @@collation_connection */;
/*!50001 set character_set_client      = latin1 */;
/*!50001 set character_set_results     = latin1 */;
/*!50001 set collation_connection      = latin1_swedish_ci */;
/*!50001 create algorithm=undefined */
/*!50013 definer=`root`@`%` sql security definer */
/*!50001 view `viewfw` as (select distinct `developerfeature`.`developer` as `developer`,`developerfeature`.`feature` as `feature`,`feature`.`featureweight` as `featureweight` from (`developerfeature` join `feature` on((`developerfeature`.`feature` = `feature`.`feature`)))) */;
/*!50001 set character_set_client      = @saved_cs_client */;
/*!50001 set character_set_results     = @saved_cs_results */;
/*!50001 set collation_connection      = @saved_col_connection */;
/*!40103 set time_zone=@old_time_zone */;

/*!40101 set sql_mode=@old_sql_mode */;
/*!40014 set foreign_key_checks=@old_foreign_key_checks */;
/*!40014 set unique_checks=@old_unique_checks */;
/*!40101 set character_set_client=@old_character_set_client */;
/*!40101 set character_set_results=@old_character_set_results */;
/*!40101 set collation_connection=@old_collation_connection */;
/*!40111 set sql_notes=@old_sql_notes */;

-- dump completed on 2013-01-23 22:38:03
