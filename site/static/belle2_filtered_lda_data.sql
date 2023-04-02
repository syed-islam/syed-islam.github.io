-- mysql dump 10.13  distrib 5.5.28, for osx10.6 (i386)
--
-- host: summit.cs.ucl.ac.uk    database: belle2_filtered_lda_data
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
insert into `bug_reports` values (47,'5',null,';module;list;framework'),(48,'8',null,';interface;ring;buffer;module'),(55,'11',null,';datum;need;gbasf2'),(56,'11',null,';allow;gbasf2'),(107,'3',null,';root;code;build'),(110,'14',null,';circular;library;geometry;simulation;class;dependency'),(131,'11',null,';documentation;document;need;gbasf2'),(149,'11',null,';host;documentation;document'),(150,'11',null,';documentation;workspace;toms'),(151,'11',null,';documentation;workspace;toms;document'),(152,'3',null,';review;geometry'),(154,'3',null,';review;simulation'),(155,'6',null,';review;framework'),(203,'14',null,';type;const;pointer;generator;need'),(213,'14',null,';file;inline;generator'),(218,'17',null,';file;load;geometry;allow'),(223,'14',null,';root;code;comment;style;documentation;check;convention'),(250,'3',null,';epsilon;definition;double;check;framework'),(270,'6',null,';generator;underscore'),(271,'6',null,';number;default;generator;argument;second'),(272,'14',null,';instead;list;convention;generator;initialization'),(274,'6',null,';number;generator'),(276,'6',null,';type;generator'),(290,'6',null,';steer;case;simulation;know;generator'),(292,'6',null,';allow;case;default;generator;remove'),(321,'6',null,';place'),(323,'14',null,';geometry;inclusion;second;underscore'),(325,'14',null,';geometry;inclusion;second;underscore'),(326,'14',null,';geometry;need;second;underscore'),(327,'14',null,';geometry;class;consider;change'),(328,'14',null,';geometry;need;second;underscore'),(329,'14',null,';geometry;need;second;underscore'),(330,'14',null,';geometry;abbreviation;consider;change;classname'),(331,'14',null,';geometry;consider;change;classname'),(332,'14',null,';statement;sort;group;include;file;geometry;level;line;order;position'),(333,'14',null,';geometry;unit;know;parameter'),(334,'14',null,';geometry;second;underscore'),(335,'14',null,';statement;sort;include;file;geometry;level;order;position'),(336,'14',null,';file;interface;geometry;definition;declare'),(337,'14',null,';geometry;need;second;underscore'),(338,'14',null,';geometry;remove;second;underscore'),(339,'14',null,';geometry;remove;second;underscore'),(340,'14',null,';geometry;remove;second;underscore'),(341,'14',null,';code;number;geometry;line;documentation;declare;private;parameter'),(342,'14',null,';geometry;remove;second;underscore'),(343,'14',null,';geometry;declaration;forward'),(396,'28',null,';file'),(399,'28',null,';miss'),(400,'28',null,';case;order;public;private;protect'),(402,'28',null,';comment;class'),(413,'28',null,';line;sensorcid;m_sensorcid;change;getsensorcid'),(414,'28',null,';line;case;order;public;private;protect'),(415,'28',null,';guard;comment;include;line'),(417,'28',null,';comment;line;class'),(418,'28',null,';line;sensorcid;function;float;argument'),(419,'28',null,';line;miss;operator;class;declare;nontrivial;pointer;assignment;item;contain;datum;destructor;shall;copy;constructor'),(420,'28',null,';line;case;order;class;public;private;protect'),(421,'28',null,';comment;line;class;short;description'),(422,'28',null,';comment;line;class'),(424,'28',null,';guard;comment;include;line'),(425,'28',null,';comment;line;class;short;description'),(426,'28',null,';line;case;order;class;public;private;protect'),(427,'28',null,';comment;line;class'),(429,'28',null,';guard;comment;include;line'),(430,'28',null,';line;case;order;class;public;private;protect'),(431,'28',null,';line;case;order;class;public;private;protect'),(432,'28',null,';line;case;order;class;public;private;protect'),(433,'28',null,';comment;line;class'),(434,'28',null,';comment;line;class'),(435,'28',null,';comment;line;class'),(437,'28',null,';guard;comment;include;line'),(438,'28',null,';b2geomvxdvolume;line;operator;class;declare;nontrivial;pointer;assignment;item;contain;datum;destructor;shall;copy;constructor'),(439,'28',null,';line;operator;class;declare;nontrivial;pointer;assignment;item;contain;datum;destructor;shall;copy;constructor'),(440,'28',null,';comment;line;class;short;description'),(441,'28',null,';line;class;public;protect'),(442,'28',null,';line;destructor;check'),(443,'28',null,';line;class;public;protect'),(444,'28',null,';line;class;public;protect'),(445,'28',null,';comment;line;class'),(446,'28',null,';comment;line;class'),(447,'28',null,';comment;line;class'),(448,'28',null,';comment;line;class'),(449,'28',null,';comment;line;namespace'),(450,'28',null,';guard;comment;include;line'),(454,'28',null,';b2geomvxdstructvolume;b2geomvolume;line;operator;class;public;declare;nontrivial;pointer;assignment;item;contain;datum;destructor;shall;copy;constructor;protect'),(456,'28',null,';line;definition;class;function;inline;place'),(459,'28',null,';guard;include;line'),(461,'28',null,';comment;line;class'),(462,'28',null,';comment;line;namespace'),(466,'28',null,';style;instead;line;case'),(468,'28',null,';file;module;cidmanager;change'),(469,'28',null,';guard;comment;include;line'),(470,'28',null,';comment;line'),(499,'28',null,';line;order;class;public;private;protect'),(500,'28',null,';line;order;class;public;private;protect'),(501,'28',null,';line;order;class;public;private;protect'),(502,'28',null,';line;order;class;public;private;protect'),(503,'28',null,';b2geomvxdvolume;geometry;line;build;inside;class;public;datum;position;protect;second'),(504,'28',null,';b2geomvxdvolume;line;b2geomsvdladdercoolingpipe:public;operator;class;declare;nontrivial;pointer;assignment;item;contain;datum;destructor;shall;copy;constructor'),(505,'28',null,';guard;include;line'),(506,'28',null,';line;order;class;public;private;protect'),(507,'28',null,';guard;include;line'),(508,'28',null,';line;order;class;public;private;protect'),(509,'28',null,';line;order;class;public;private;protect'),(510,'28',null,';b2geomvxdvolume;line;operator;class;declare;nontrivial;pointer;assignment;item;contain;datum;destructor;shall;copy;constructor'),(511,'28',null,';guard;include;line'),(512,'28',null,';guard;include;line');
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

-- dump completed on 2013-01-23 22:37:47
