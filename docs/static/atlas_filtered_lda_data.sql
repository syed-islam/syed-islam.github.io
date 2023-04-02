-- mysql dump 10.13  distrib 5.5.28, for osx10.6 (i386)
--
-- host: summit.cs.ucl.ac.uk    database: atlas_filtered_lda_data
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
insert into `bug_reports` values (76705,'396',null,';atla;offline;http;atlasreconstruction;rel_0;build;nightly;file;const;bool;parameterst;x86_64;gcc43;slc5;software;installarea;atlascore;track'),(76706,'396',null,';atla;atlasreconstruction;rel_0;build;nightly;file;x86_64;gcc43;slc5;software;installarea;atlascore'),(76769,'178',null,';atla;offline;http;rel_0;build;nightly;file;const;bool;x86_64;gcc43;slc5;software;rel_4;installarea;atlascore;python;external;message'),(76804,'178',null,';atla;offline;http;atlasreconstruction;build;nightly;file;const;bool;double;parameterst;x86_64;gcc43;slc5;software;rel_4;installarea;atlascore;atlasevent;python;external;track'),(76805,'178',null,';atla;offline;http;atlasreconstruction;build;nightly;file;const;bool;parameterst;x86_64;gcc43;slc5;software;rel_4;installarea;atlascore;include;python;external;track'),(77087,'3583',null,';atla;segmentation;offline;http;atlasreconstruction;build;nightly;file;const;bool;double;x86_64;gcc43;slc5;software;installarea;atlascore;track'),(77207,'396',null,';atla;error;logfile;http;devval;nightly;computing.web.cern.ch;link;computing;message;reconstruction'),(77238,'396',null,';atla;http;surface;const;line;reconstruction'),(77261,'3518',null,';atla;atlasreconstruction;build;nightly;file;software;rel_4;installarea;atlasevent;python;line;verbatim'),(77299,'1693',null,';atla;time;error;fatal;event;exception;signal;datum;atlasreconstruction;rel_0;build;nightly;const;gcc43;slc5;software;installarea;atlascore;reconstruction'),(77444,'2580',null,';atla;error;info;logfile;nightly;const;bool;line;message;warn;test'),(77499,'7354',null,';time;logfile;http;build;nightly;file;gcc43;slc5;rel_4;line;message;warn;test'),(77511,'1200',null,';atla;error;user;info;logfile;atnight;http;rel_0;build;localbuild;nightly;file;computing.web.cern.ch;link;computing;installarea;python;line;fail;test;reconstruction'),(77537,'3868',null,';atla;datum;logfile;http;nightly;file;computing.web.cern.ch;link;computing;fail;test'),(77601,'297',null,';atla;fatal;event;exception;signal;offline;logfile;http;spirit;boost;build;devval;nightly;type;const;double;gcc43;slc5;software;installarea;atlascore;test;reconstruction'),(77623,'1658',null,';atla;logfile;http;atlasreconstruction;nightly;file;computing.web.cern.ch;link;computing;fail;test'),(77630,'3518',null,';atla;error;logfile;http;atlasreconstruction;nightly;computing.web.cern.ch;link;computing;message'),(77699,'6211',null,';atla;user;fatal;event;signal;datum;reco_trf.py;atlasreconstruction;double;gcc43;slc5;software;installarea;atlascore;release;true'),(77702,'396',null,';datum;track;reconstruction'),(77709,'721',null,';atla;user;fatal;event;signal;datum;reco_trf.py;atlasreconstruction;const;bool;gcc43;slc5;software;installarea;atlascore;release;true;track;reconstruction'),(77858,'3518',null,';atla;time;info;root;fatal;event;signal;segmentation;datum;offline;http;rel_0;build;nightly;computing.web.cern.ch;const;link;computing;bool;gcc43;slc5;software;installarea;atlascore;python;external;2.6.5;release;fail;test;reconstruction'),(77947,'3583',null,';event;exception;signal;offline;http;build;gcc43;slc5;reconstruction'),(78120,'1069',null,';time;event;signal;segmentation;offline;http;rel_0;build;gcc43;slc5'),(78212,'1658',null,';atla;atnight;http;atlasreconstruction;rel_0;build;localbuild;nightly;file;computing.web.cern.ch;link;computing;installarea;line;fail;test;reconstruction'),(78220,'3583',null,';atla;root;datum;reco_trf.py;offline;http;atlasreconstruction;build;nightly;const;bool;double;gcc43;slc5;software;installarea;pool.root;reconstruction'),(78261,'337',null,';error;signal;datum;message;warn;fail;track'),(78291,'5297',null,';atla;info;root;fatal;datum;reco_trf.py;offline;http;atlasreconstruction;build;file;gcc43;slc5;software;installarea;python;true;line;pool.root;test'),(78341,'4199',null,';error;info;reco_trf.py;offline;http;build;file;gcc43;slc5;false;warn;verbatim;fail;retrieve;reconstruction'),(78542,'3583',null,';error;user;root;file;collectiontree;verbatim'),(78552,'416',null,';atla;error;prod1;castor;tzero;seconds;byte;file;express_express.recon.aod.x79;data11_cos;remote;local;type;eth0;false'),(78648,'3028',null,';atla;time;error;prod1;py:perfmonsvc;castor;tzero;user;info;fatal;event;datum;reco_trf.py;logfile;http;atlasreconstruction;build;file;software;installarea;atlascore;python;release;false;line;message;warn;verbatim;fail'),(78778,'1658',null,';atla;error;user;info;exception;offline;logfile;http;build;nightly;file;type;gcc43;slc5;software;installarea;atlasevent;include;python;line;test'),(78963,'416',null,';atla;time;error;prod1;py:perfmonsvc;data11_7tev;castor;tzero;user;info;fatal;event;datum;logfile;http;file;software;installarea;atlascore;python;release;false;line;message;warn;fail;track'),(79020,'455',null,';atla;fatal;exception;reco_trf.py;offline;http;atlasreconstruction;build;devval;nightly;file;gcc43;slc5;software;installarea;test'),(79025,'2544',null,';time;info;fatal;event;signal;segmentation;offline;http;build;link;gcc43;slc5;shape;fail;test'),(79051,'1658',null,';atla;event;http;build;nightly;computing.web.cern.ch;link;computing;atlasevent;warn;reconstruction'),(79074,'396',null,';atla;time;error;info;root;fatal;event;signal;offline;logfile;http;atlasreconstruction;rel_0;build;devval;nightly;file;const;bool;double;parameterst;gcc43;slc5;software;installarea;atlascore;python;external;2.6.5;release;line;track'),(79106,'4045',null,';event;offline;http;build;file;gcc43;slc5;test'),(79131,'1682',null,';time;offline;release;test;reconstruction'),(79148,'1069',null,';atla;time;error;info;root;fatal;event;signal;segmentation;datum;offline;logfile;http;atlasreconstruction;build;devval;nightly;file;const;bool;double;gcc43;slc5;software;installarea;atlascore;python;external;2.6.5;release;line'),(79197,'1665',null,';time;retrieve;reconstruction'),(79208,'3245',null,';atla;info;root;event;offline;atnight;http;rel_0;build;localbuild;nightly;computing.web.cern.ch;const;link;computing;gcc43;slc5;software;installarea;atlascore;python;external;2.6.5;release;test'),(79312,'331',null,';atla;time;castor;event;offline;build;file;surface;x86_64;gcc43;slc5;rel_4;atlascerngroupdisk;warn;test'),(79355,'3583',null,';atla;info;event;http;devval;nightly;computing.web.cern.ch;link;computing;message'),(79404,'396',null,';atla;root;datum;reco_trf.py;offline;logfile;http;atlasreconstruction;build;nightly;gcc43;slc5;software;installarea;pool.root;test'),(79458,'721',null,';atla;prod1;tzero;segmentation;http;file;reconstruction'),(79563,'3518',null,';atla;datum;software;false;test;reconstruction'),(79683,'396',null,';atla;time;error;prod1;data11_7tev;castor;tzero;info;root;fatal;event;exception;signal;segmentation;reco_trf.py;logfile;atlasreconstruction;build;seconds;byte;file;remote;local;type;eth0;const;bool;parameterst;gcc43;slc5;software;installarea;atlascore;python;external;2.6.5;release;false;line;message;warn;fail;test;clid;retrieve;track;reconstruction'),(79721,'1658',null,';atla;time;error;fatal;offline;http;rel_0;build;nightly;file;gcc43;slc5;software;installarea;message;clid;reconstruction'),(79855,'178',null,';info;reco_trf.py;include;python;reconstruction'),(79875,'1682',null,';time;event;signal;segmentation;reconstruction'),(79951,'396',null,';atla;time;error;prod1;data11_7tev;castor;tzero;info;root;fatal;event;exception;signal;segmentation;reco_trf.py;logfile;http;atlasreconstruction;build;file;const;bool;parameterst;gcc43;slc5;software;installarea;atlascore;python;external;2.6.5;release;false;line;message;warn;verbatim;track;reconstruction'),(79955,'396',null,';atla;time;error;prod1;py:perfmonsvc;data11_7tev;castor;tzero;user;info;fatal;event;datum;reco_trf.py;logfile;http;build;file;software;installarea;atlascore;python;release;false;line;message;warn;verbatim;fail;clid'),(79968,'3245',null,';error;offline;http;build;gcc43;slc5;rel_4;fail;reconstruction'),(80037,'4045',null,';atla;error;info;offline;logfile;build;nightly;file;gcc43;slc5;software;rel_4;installarea;atlascore;atlasevent;python;line;warn;verbatim'),(80090,'1180',null,';atla;error;fatal;offline;http;build;gcc43;slc5;false;warn'),(80126,'4199',null,';time;event;signal;segmentation;offline;http;rel_0;build;devval;gcc43;slc5;reconstruction'),(82315,'396',null,';atla;error;castor;root;fatal;signal;datum;reco_trf.py;offline;atnight;http;atlasreconstruction;rel_0;build;devval;localbuild;nightly;file;type;const;parameterst;gcc43;slc5;software;installarea;atlascondition;include;python;atlascerngroupdisk;false;pool.root;warn;fail;test;clid;retrieve'),(80255,'844',null,';atla;http;file;release'),(80373,'3732',null,';reconstruction'),(80428,'416',null,';atla;time;error;prod1;py:perfmonsvc;castor;tzero;user;info;fatal;event;datum;logfile;http;file;data11_cos;software;installarea;atlascore;python;release;false;line;message;warn;fail'),(80492,'5087',null,';atla;http;nightly;computing.web.cern.ch;link;computing;warn;verbatim;reconstruction'),(80736,'1658',null,';atla;castor;root;reco_trf.py;offline;http;build;byte;const;bool;gcc43;slc5;atlascerngroupdisk;pool.root;verbatim'),(80836,'844',null,';error;data11_7tev;fatal;http;type;fail'),(80886,'1069',null,';event;exception;signal;offline;http;build;gcc43;slc5'),(80887,'896',null,';time;event;signal;segmentation;offline;http;build;gcc43;slc5;reconstruction'),(81038,'396',null,';atla;time;error;prod1;data11_7tev;castor;tzero;info;root;fatal;event;exception;signal;segmentation;reco_trf.py;logfile;http;build;file;surface;software;rel_4;installarea;atlascore;include;python;release;true;false;line;message;warn;verbatim;fail;test;retrieve'),(81071,'3583',null,';data11_7tev;user;event;datum;reco_trf.py;file;type;message;warn;verbatim'),(81078,'396',null,';time;data11_7tev;user;event;datum;reco_trf.py;type;message;warn;verbatim;fail;track'),(81089,'1180',null,';fatal;offline;http;build;file;gcc43;slc5;message;fail;test'),(81109,'331',null,';error;info;event;http;file;pool.root;fail'),(81120,'4040',null,';atla;time;error;prod1;data11_7tev;castor;tzero;info;root;fatal;event;exception;signal;segmentation;datum;reco_trf.py;logfile;atlasreconstruction;build;seconds;byte;file;remote;local;type;eth0;const;gcc43;slc5;software;installarea;atlascore;atlasevent;python;external;2.6.5;release;true;false;line;message;warn;fail;track;reconstruction'),(81148,'4199',null,';http;line'),(81233,'721',null,';atla;error;http;devval;nightly;computing.web.cern.ch;link;computing;fail;test;reconstruction'),(81281,'3583',null,';atla;prod1;data11_7tev;castor;tzero;user;event;datum;reco_trf.py;file;surface;true;warn;verbatim;fail'),(81378,'3518',null,';atla;info;offline;http;atlasreconstruction;build;devval;nightly;file;gcc43;slc5;software;rel_4;installarea;atlascore;include;python;true;line;test'),(81414,'1658',null,';atla;time;event;signal;segmentation;file;test;reconstruction'),(81459,'1069',null,';atla;castor;offline;http;rel_0;build;file;gcc43;slc5;atlascerngroupdisk;verbatim;test'),(81530,'721',null,';atla;info;event;offline;http;atlasreconstruction;build;devval;nightly;file;const;bool;gcc43;slc5;software;installarea;fail;test;track;reconstruction'),(81620,'721',null,';atla;error;info;fatal;datum;http;nightly;computing.web.cern.ch;link;computing;message;fail;test;retrieve;reconstruction'),(81879,'396',null,';error;offline;logfile;atnight;http;rel_0;build;devval;localbuild;nightly;const;parameterst;gcc43;slc5;installarea;atlascondition;include;python;false;warn;verbatim;fail;test;reconstruction'),(81940,'2580',null,';atla;logfile;http;devval;nightly;computing.web.cern.ch;link;computing;fail;test;reconstruction'),(81971,'396',null,';time;event;signal;segmentation;offline;http;build;devval;gcc43;slc5;fail;reconstruction'),(81988,'396',null,';atla;time;error;prod1;data11_7tev;castor;tzero;info;root;fatal;event;exception;signal;segmentation;datum;reco_trf.py;logfile;http;atlasreconstruction;file;gcc43;slc5;software;installarea;atlascore;python;external;2.6.5;release;false;line;message;warn;verbatim;track;reconstruction'),(82021,'721',null,';time;event;exception;signal;offline;logfile;http;build;devval;gcc43;slc5;fail;reconstruction'),(82070,'1693',null,';atla;time;error;info;root;fatal;event;signal;segmentation;offline;logfile;atnight;http;atlasreconstruction;rel_0;build;localbuild;nightly;link;computing;x86_64;gcc43;slc5;installarea;atlascore;atlasevent;python;external;2.6.5;release;true;line;test;reconstruction'),(82169,'5259',null,';atla;error;datum;reco_trf.py;offline;http;atlasreconstruction;build;nightly;file;x86_64;gcc43;slc5;software;rel_4;installarea;atlascore;python;false;line;warn;fail;test;reconstruction'),(82171,'1693',null,';atla;error;castor;info;root;signal;reco_trf.py;offline;http;atlasreconstruction;build;nightly;file;x86_64;gcc43;slc5;software;rel_4;installarea;include;atlascerngroupdisk;pool.root;warn;test;reconstruction'),(82212,'1544',null,';atla;error;info;exception;build;nightly;file;software;installarea;python;line;verbatim;fail;reconstruction'),(82228,'721',null,';offline;http;atlasreconstruction;build;const;gcc43;slc5;rel_4;verbatim;test'),(82229,'1693',null,';atla;fatal;offline;http;atlasreconstruction;build;nightly;gcc43;slc5;software;installarea;message;verbatim;test'),(82273,'5297',null,';http;rel_0;build;gcc43;slc5;fail;test'),(82276,'721',null,';atla;time;castor;root;fatal;event;signal;segmentation;reco_trf.py;offline;http;atlasreconstruction;rel_0;build;nightly;file;x86_64;gcc43;slc5;software;installarea;atlascerngroupdisk;false;pool.root;warn;fail;test;track;reconstruction'),(82305,'2505',null,';atla;datum;reco_trf.py;offline;http;build;byte;const;bool;double;gcc43;slc5;verbatim'),(82310,'1069',null,';atla;offline;http;atlasreconstruction;build;devval;nightly;const;double;gcc43;slc5;software;installarea;atlascondition;verbatim;test;reconstruction'),(82312,'5259',null,';atla;offline;http;build;devval;nightly;const;gcc43;slc5;software;installarea;atlasevent;verbatim;test'),(82471,'416',null,';error;offline;logfile;http;build;gcc43;slc5;rel_4;message;fail;reconstruction'),(82480,'396',null,';time;user;datum;reco_trf.py;file;pool.root;verbatim'),(82502,'1693',null,';atla;time;fatal;event;signal;segmentation;datum;http;gcc43;slc5;software;installarea;atlascore;atlasevent;release;fail'),(82555,'1658',null,';info;event;datum;nightly;release;line;test;reconstruction'),(82803,'396',null,';atla;time;error;prod1;data11_7tev;castor;tzero;info;root;fatal;event;exception;signal;segmentation;reco_trf.py;logfile;http;build;file;surface;software;installarea;atlascore;include;python;release;true;line;message;warn;verbatim;fail;test;retrieve'),(82902,'844',null,';offline;http;build;devval;file;gcc43;slc5'),(82952,'1160',null,';atla;error;data11_7tev;fatal;offline;http;atlasreconstruction;build;nightly;file;type;const;gcc43;slc5;software;installarea;true;false;warn;clid;retrieve'),(82965,'1160',null,';atla;event;http;nightly;computing.web.cern.ch;link;computing;warn;test'),(82984,'916',null,';time;error;info;event;signal;fail;test'),(83100,'3583',null,';atla;time;error;prod1;data11_7tev;castor;tzero;info;root;fatal;event;exception;signal;segmentation;reco_trf.py;logfile;http;atlasreconstruction;build;file;const;bool;double;gcc43;slc5;software;installarea;atlascore;atlascondition;python;external;2.6.5;release;false;line;message;verbatim'),(83129,'3518',null,';error;event;offline;http;build;type;const;gcc43;slc5;software;warn;verbatim;fail;test;clid;retrieve;track;reconstruction'),(83152,'7701',null,';time;event;exception;signal;offline;logfile;http;rel_0;build;gcc43;slc5;reconstruction'),(83208,'1658',null,';atla;offline;http;build;file;gcc43;slc5;line;test'),(83224,'1658',null,';http;gcc43;slc5;message;test'),(83310,'844',null,';atla;user;info;exception;offline;http;atlasreconstruction;build;devval;nightly;file;x86_64;gcc43;slc5;software;rel_4;installarea;include;line;reconstruction'),(83371,'1160',null,';atla;castor;root;reco_trf.py;byte;surface;const;bool;double;parameterst;atlascerngroupdisk;pool.root;verbatim;track'),(83467,'1658',null,';atla;user;fatal;signal;segmentation;offline;logfile;http;build;gcc43;slc5;release'),(83506,'2544',null,';atla;info;event;http;nightly;seconds;computing.web.cern.ch;link;computing;line;fail;test;retrieve'),(83521,'1658',null,';info;event;offline;http;build;gcc43;slc5;warn;test'),(83555,'7959',null,';atla;time;error;event;exception;signal;offline;logfile;http;build;gcc43;slc5;rel_4;release'),(83556,'416',null,';atla;error;event;signal;segmentation;offline;logfile;http;build;gcc43;slc5;rel_4;release'),(83559,'844',null,';atla;error;user;info;offline;logfile;http;atlasreconstruction;build;nightly;file;gcc43;slc5;software;rel_4;installarea;include;release;line;reconstruction'),(83615,'7354',null,';atla;time;error;event;signal;segmentation;offline;logfile;http;build;gcc43;slc5;release'),(83831,'3583',null,';data11_7tev;user;info;reco_trf.py;true;message;verbatim'),(83837,'4045',null,';atla;error;http;nightly;computing.web.cern.ch;link;computing;fail;test;reconstruction'),(83872,'7959',null,';build;devval;const;bool'),(83950,'5259',null,';atla;time;error;prod1;data11_7tev;castor;tzero;info;root;fatal;event;exception;signal;reco_trf.py;logfile;http;atlasreconstruction;build;file;const;gcc43;slc5;software;installarea;atlascore;shape;python;external;2.6.5;release;false;line;pool.root;message;verbatim'),(83953,'396',null,';atla;time;error;prod1;data11_7tev;castor;tzero;info;root;fatal;event;exception;signal;segmentation;reco_trf.py;logfile;http;atlasreconstruction;build;file;const;gcc43;slc5;software;installarea;atlascore;atlasevent;python;external;2.6.5;release;false;line;message;verbatim'),(83960,'396',null,';atla;info;event;http;atlasreconstruction;const;bool;parameterst;gcc43;slc5;installarea;atlascore;release;track'),(83975,'1069',null,';atla;time;error;prod1;data11_7tev;castor;tzero;info;root;fatal;event;exception;signal;segmentation;reco_trf.py;logfile;http;build;file;const;gcc43;slc5;software;installarea;atlascore;python;external;2.6.5;release;false;line;message;warn;verbatim'),(84044,'396',null,';atla;time;error;prod1;data11_7tev;castor;tzero;info;root;fatal;event;exception;signal;segmentation;reco_trf.py;logfile;http;atlasreconstruction;build;file;const;bool;parameterst;gcc43;slc5;software;installarea;atlascore;python;external;2.6.5;release;false;line;message;verbatim;track;17.0.2'),(84223,'3245',null,';atla;http;nightly;computing.web.cern.ch;link;computing;warn;reconstruction'),(84225,'3316',null,';atla;atnight;http;atlasreconstruction;rel_0;build;localbuild;nightly;computing.web.cern.ch;link;computing;installarea;include;warn'),(84273,'7959',null,';datum;const;double;verbatim;track'),(84282,'396',null,';datum;const;verbatim;reconstruction'),(84285,'416',null,';datum;type;const;bool;double;false;verbatim;track'),(84289,'1069',null,';datum;const;verbatim;track;reconstruction'),(84290,'1160',null,';datum;const;bool;double;true;false;verbatim;retrieve;track'),(84362,'1665',null,';atla;error;root;offline;atnight;http;atlasreconstruction;rel_0;boost;build;localbuild;nightly;file;remote;computing.web.cern.ch;link;computing;x86_64;gcc43;slc5;software;installarea;atlascore;atlascondition;atlasevent;include;external;release;warn;fail;17.0.2;reconstruction'),(84439,'4045',null,';atla;error;root;fatal;exception;signal;offline;http;build;const;x86_64;gcc43;slc5;software;installarea;atlascore;release;reconstruction'),(84473,'4045',null,';atla;error;info;root;fatal;event;exception;signal;datum;offline;http;rel_0;build;const;x86_64;gcc43;slc5;software;installarea;atlascore;release;reconstruction'),(84537,'844',null,';datum;reconstruction'),(84698,'396',null,';atla;error;data11_7tev;datum;reco_trf.py;offline;http;build;devval;nightly;file;type;const;x86_64;gcc43;slc5;release;true;warn;fail;clid;retrieve;track'),(84699,'1200',null,';atla;error;user;info;exception;reco_trf.py;atlasreconstruction;file;software;installarea;python;release;line;warn;verbatim;17.0.2'),(84703,'2505',null,';const;double;false;track'),(84716,'844',null,';track;reconstruction'),(84717,'844',null,';include;reconstruction'),(84759,'4045',null,';atla;error;info;root;datum;reco_trf.py;offline;http;atlasreconstruction;rel_0;build;nightly;file;type;gcc43;slc5;software;installarea;release;true;pool.root;message;warn;fail;test;clid;reconstruction'),(84966,'5259',null,';build;file;python;reconstruction'),(85024,'4343',null,';atla;info;event;exception;reco_trf.py;build;nightly;gcc43;slc5;software;installarea;test'),(85025,'307',null,';reco_trf.py;offline;file;warn;reconstruction'),(85105,'307',null,';devval;file'),(85131,'2580',null,';atla;event;http;gcc43;slc5;message;test'),(85136,'1369',null,';atla;error;logfile;http;nightly;computing.web.cern.ch;link;computing'),(85176,'8379',null,';atla;time;event;http;gcc43;slc5;release;message;test'),(85254,'1658',null,';atla;error;offline;logfile;build;devval;x86_64;gcc43;slc5;line'),(85296,'721',null,';atla;time;user;fatal;event;signal;segmentation;datum;reco_trf.py;atlasreconstruction;const;bool;gcc43;slc5;software;installarea;atlascore;release;warn;verbatim;track;17.0.2;reconstruction'),(85345,'1200',null,';info;event;offline;http;build;gcc43;slc5;message;verbatim;reconstruction'),(85346,'1200',null,';atla;time;error;prod1;castor;info;signal;offline;logfile;http;build;type;gcc43;slc5;release;verbatim'),(85418,'1455',null,';atla;error;fatal;exception;offline;logfile;http;build;file;gcc43;slc5;software;installarea;release;message;17.0.2'),(85428,'455',null,';atla;error;root;offline;logfile;atnight;http;rel_0;boost;build;localbuild;nightly;type;computing.web.cern.ch;const;link;computing;x86_64;gcc43;slc5;installarea;atlascore;atlascondition;atlasevent;include;python;external;2.6.5;release;warn;fail;reconstruction'),(85441,'7959',null,';error;info;devval;const;true;message'),(85445,'2216',null,';error;exception;offline;http;build;file;gcc43;slc5;line;warn;fail;test;reconstruction'),(85488,'331',null,';atla;logfile;http;devval;nightly;computing.web.cern.ch;link;computing;warn;reconstruction'),(85498,'1216',null,';atla;error;atnight;http;atlasreconstruction;rel_0;build;localbuild;nightly;file;computing.web.cern.ch;link;computing;x86_64;gcc43;slc5;installarea;python;line;fail;test'),(85535,'455',null,';atla;logfile;atnight;http;rel_0;build;localbuild;nightly;computing.web.cern.ch;link;computing;installarea;atlascore;include;warn;reconstruction'),(85537,'3245',null,';atla;error;root;fatal;datum;reco_trf.py;offline;logfile;http;atlasreconstruction;rel_0;build;devval;nightly;link;x86_64;gcc43;slc5;software;installarea;pool.root;reconstruction'),(85539,'1069',null,';atla;http;nightly;file;computing.web.cern.ch;link;computing;warn;reconstruction'),(85540,'1069',null,';atla;logfile;http;nightly;computing.web.cern.ch;link;computing;warn;reconstruction'),(85541,'1693',null,';atla;logfile;http;nightly;computing.web.cern.ch;link;computing;warn;reconstruction'),(85543,'331',null,';atla;logfile;http;nightly;computing.web.cern.ch;link;computing;warn;reconstruction'),(85557,'396',null,';atla;logfile;http;nightly;computing.web.cern.ch;link;computing;warn;reconstruction'),(85559,'1658',null,';atla;logfile;http;nightly;computing.web.cern.ch;link;computing;warn;reconstruction'),(85560,'331',null,';atla;http;nightly;file;computing.web.cern.ch;link;computing;warn;reconstruction'),(85563,'331',null,';atla;logfile;http;nightly;computing.web.cern.ch;link;computing;warn;reconstruction'),(85564,'3518',null,';atla;logfile;http;nightly;computing.web.cern.ch;link;computing;warn;reconstruction'),(85576,'3518',null,';atla;error;user;fatal;atnight;http;rel_0;build;localbuild;nightly;file;computing.web.cern.ch;link;computing;software;installarea;atlasevent;include;python;line;message;17.0.2'),(85605,'396',null,';time;data11_7tev;info;fatal;event;signal;segmentation;datum;http;warn'),(85613,'1658',null,';atla;error;http;nightly;computing.web.cern.ch;link;computing;false;reconstruction'),(85685,'1693',null,';atla;error;atnight;http;atlasreconstruction;rel_0;build;localbuild;nightly;file;type;computing.web.cern.ch;const;link;computing;x86_64;gcc43;slc5;installarea;atlascore;atlascondition;atlasevent;include;external;warn;fail;retrieve;reconstruction'),(85694,'3245',null,';atla;error;castor;root;datum;reco_trf.py;offline;http;build;file;link;gcc43;slc5;true;false;pool.root;message;reconstruction'),(85740,'1693',null,';atla;atnight;http;atlasreconstruction;rel_0;build;localbuild;nightly;computing.web.cern.ch;link;computing;installarea;include;warn;reconstruction'),(85758,'1693',null,';atla;user;atlasreconstruction;build;devval;nightly;const;x86_64;gcc43;slc5;software;rel_4;installarea;atlascore;true'),(85775,'416',null,';time;user;info;devval;rel_4;line'),(85828,'1658',null,';atla;time;error;castor;user;info;root;fatal;event;signal;segmentation;reco_trf.py;offline;logfile;http;build;nightly;file;link;x86_64;gcc43;slc5;software;installarea;shape;atlascerngroupdisk;line;pool.root;reconstruction'),(85839,'396',null,';time;data11_7tev;user;event;surface;message;warn;verbatim;fail'),(85840,'8379',null,';time;data11_7tev;user;event;message;warn;verbatim'),(85841,'721',null,';time;data11_7tev;user;event;message;warn;verbatim'),(85842,'396',null,';time;data11_7tev;user;event;surface;message;warn;verbatim;fail'),(85843,'1069',null,';time;data11_7tev;user;event;warn;verbatim;fail'),(85848,'3518',null,';atla;error;atnight;http;atlasreconstruction;rel_0;build;localbuild;nightly;computing.web.cern.ch;link;computing;x86_64;gcc43;slc5;reconstruction'),(85903,'455',null,';atla;http;build;devval;nightly;computing.web.cern.ch;link;computing;fail;reconstruction'),(86018,'721',null,';atla;time;error;prod1;castor;tzero;info;root;fatal;event;exception;signal;segmentation;reco_trf.py;logfile;http;atlasreconstruction;build;file;data11_cos;type;const;bool;parameterst;gcc43;slc5;software;installarea;atlascore;python;external;2.6.5;release;false;line;message;warn;verbatim;fail;test;clid;retrieve;track;17.0.2'),(86088,'1658',null,';atla;time;error;info;root;fatal;exception;segmentation;reco_trf.py;offline;http;build;nightly;file;gcc43;slc5;software;installarea;python;true;false;line;pool.root;message;reconstruction'),(86110,'7211',null,';atla;fatal;offline;logfile;http;build;nightly;gcc43;slc5;software;installarea'),(86118,'3245',null,';atla;user;info;offline;http;atlasreconstruction;rel_0;build;nightly;file;x86_64;gcc43;slc5;software;installarea;include;line;fail'),(86159,'1658',null,';atla;error;fatal;datum;logfile;http;devval;nightly;file;computing.web.cern.ch;link;computing;test;reconstruction'),(86220,'721',null,';atla;logfile;http;nightly;computing.web.cern.ch;link;computing;warn;reconstruction'),(86243,'1658',null,';atla;time;error;data11_7tev;fatal;event;datum;reco_trf.py;offline;http;atlasreconstruction;build;file;gcc43;slc5;software;installarea;release;false;message;reconstruction'),(86308,'1658',null,';atla;error;castor;info;root;exception;logfile;http;build;devval;nightly;file;computing.web.cern.ch;link;computing;atlascerngroupdisk;pool.root;warn;verbatim;fail;test;reconstruction'),(86357,'1693',null,';atla;http;atlasreconstruction;devval;nightly;file;computing.web.cern.ch;link;computing;test;reconstruction'),(86445,'1658',null,';atla;time;castor;user;info;root;fatal;event;signal;segmentation;reco_trf.py;offline;http;build;nightly;file;link;gcc43;slc5;software;installarea;shape;atlascerngroupdisk;pool.root'),(86452,'1693',null,';error;offline;logfile;http;build;devval;x86_64;gcc43;slc5;fail'),(86464,'916',null,';atla;time;error;info;fatal;exception;signal;offline;logfile;http;build;nightly;file;x86_64;gcc43;slc5;software;installarea;release;true;line;pool.root'),(86563,'396',null,';error;user;info;reco_trf.py;type;true;false;pool.root;warn;fail;clid;track;reconstruction'),(86656,'396',null,';false;line;track'),(86681,'721',null,';atla;time;error;prod1;py:perfmonsvc;data11_7tev;castor;tzero;info;fatal;event;datum;logfile;http;file;gcc43;slc5;software;installarea;atlascore;atlascondition;atlasevent;python;release;false;line;message;warn;verbatim;fail;clid;reconstruction'),(86683,'1693',null,';atla;error;fatal;exception;http;build;devval;x86_64;gcc43;slc5;true;false;pool.root'),(86948,'455',null,';atla;error;http;nightly;type;computing.web.cern.ch;link;computing;fail;reconstruction'),(87005,'8379',null,';atla;time;error;prod1;data11_7tev;castor;tzero;info;root;fatal;datum;reco_trf.py;offline;http;atlasreconstruction;build;devval;nightly;file;link;x86_64;gcc43;slc5;software;rel_4;installarea;atlascerngroupdisk;true;false;pool.root;test;reconstruction'),(87020,'4343',null,';atla;time;error;prod1;data11_7tev;castor;tzero;info;root;fatal;event;exception;signal;segmentation;reco_trf.py;logfile;http;build;file;const;gcc43;slc5;software;installarea;atlascore;python;external;2.6.5;release;false;line;message;warn;verbatim'),(87100,'3245',null,';atla;offline;http;rel_0;build;file;x86_64;gcc43;slc5;reconstruction'),(87101,'3518',null,';atla;offline;http;rel_0;build;devval;file;x86_64;gcc43;slc5;reconstruction'),(87102,'1160',null,';atla;root;offline;rel_0;file;gcc43;slc5;atlascerngroupdisk;pool.root;verbatim'),(87123,'3732',null,';atla;event;http;devval;link;gcc43;slc5;message;test'),(87124,'3732',null,';atla;event;http;devval;link;gcc43;slc5;message;test'),(87126,'1693',null,';atla;event;http;devval;link;gcc43;slc5;message;test'),(87127,'3896',null,';atla;event;http;devval;link;gcc43;slc5;message;test'),(87128,'3518',null,';atla;event;http;devval;link;gcc43;slc5;message;test'),(87129,'1682',null,';atla;event;http;devval;link;gcc43;slc5;message;test'),(87133,'3732',null,';atla;event;http;devval;link;gcc43;slc5;message;test'),(87134,'3732',null,';atla;event;http;devval;link;gcc43;slc5;message;test'),(87189,'1160',null,';atla;time;error;fatal;offline;http;build;nightly;file;gcc43;slc5;software;installarea;17.1.1;message;clid;reconstruction'),(87523,'3402',null,';http'),(87195,'1658',null,';atla;offline;logfile;http;build;devval;nightly;file;x86_64;gcc43;slc5;software;installarea;atlascore;atlasevent;python;external;false;line;pool.root'),(87198,'314',null,';atla;error;offline;logfile;http;build;devval;nightly;file;x86_64;gcc43;slc5;software;installarea;atlascore;include;python;line'),(87272,'1658',null,';atla;error;user;info;exception;offline;logfile;http;atlasreconstruction;build;nightly;file;x86_64;gcc43;slc5;software;installarea;atlascore;atlasevent;include;python;external;line'),(87276,'5259',null,';atla;time;fatal;event;exception;signal;offline;logfile;http;build;devval;x86_64;gcc43;slc5;rel_4'),(87336,'721',null,';atla;time;error;fatal;event;signal;segmentation;offline;logfile;http;build;devval;x86_64;gcc43;slc5'),(87348,'455',null,';atla;time;error;event;exception;signal;offline;logfile;http;rel_0;build;x86_64;gcc43;slc5'),(87513,'1682',null,';error;fatal;offline;http;build;gcc43;slc5;rel_4;retrieve;reconstruction'),(87520,'5528',null,';atla;time;event;http;file;true;message'),(87681,'916',null,';atla;error;offline;logfile;http;build;devval;x86_64;gcc43;slc5;line'),(87776,'1160',null,';atla;http;devval;gcc43;slc5;message'),(87804,'8609',null,';atla;error;info;root;event;datum;reco_trf.py;offline;http;build;nightly;type;const;gcc43;slc5;software;installarea;line;pool.root;warn;fail;test;clid;retrieve;reconstruction'),(87941,'1544',null,';atla;time;error;prod1;py:perfmonsvc;data11_7tev;castor;tzero;info;fatal;event;exception;datum;reco_trf.py;logfile;http;file;gcc43;slc5;software;installarea;atlascore;atlascondition;atlasevent;include;python;release;false;line;message;warn;verbatim;fail;retrieve'),(88000,'1658',null,';atla;time;error;fatal;exception;reco_trf.py;offline;logfile;http;atlasreconstruction;build;devval;nightly;file;link;x86_64;gcc43;slc5;software;rel_4;installarea;message'),(88045,'7701',null,';atla;time;error;data11_7tev;fatal;event;exception;datum;reco_trf.py;offline;logfile;http;atlasreconstruction;build;devval;nightly;file;x86_64;gcc43;slc5;software;installarea'),(88087,'396',null,';atla;time;error;user;info;fatal;segmentation;datum;reco_trf.py;offline;logfile;http;atlasreconstruction;build;devval;nightly;file;x86_64;gcc43;slc5;software;installarea;false'),(88098,'721',null,';atla;time;error;user;fatal;exception;datum;reco_trf.py;offline;logfile;http;build;nightly;type;x86_64;gcc43;slc5;software;installarea;message;fail;retrieve'),(88125,'8609',null,';atla;error;fatal;http;nightly;file;type;link;computing;warn;clid;retrieve;reconstruction'),(88155,'331',null,';atla;error;event;http;atlasreconstruction;nightly;file;computing.web.cern.ch;link;computing;atlascore;include;external;warn;test;reconstruction'),(88168,'1658',null,';atla;offline;http;build;link;gcc43;slc5;reconstruction'),(88218,'1200',null,';atla;error;info;root;fatal;event;exception;reco_trf.py;offline;logfile;http;build;nightly;file;gcc43;slc5;software;rel_4;installarea;atlascerngroupdisk;pool.root;track;reconstruction'),(88234,'721',null,';atla;info;fatal;signal;segmentation;atnight;http;atlasreconstruction;rel_0;build;localbuild;nightly;file;computing.web.cern.ch;link;computing;x86_64;gcc43;slc5;installarea;true;test;reconstruction'),(88237,'5297',null,';atla;error;user;info;root;event;exception;offline;http;atlasreconstruction;build;devval;nightly;file;x86_64;gcc43;slc5;software;rel_4;installarea;atlascondition;atlasevent;include;python;line;pool.root;warn;fail;test'),(88270,'2580',null,';atla;error;http;nightly;computing.web.cern.ch;link;computing;fail;reconstruction'),(88276,'1544',null,';atla;user;info;exception;atnight;http;atlasreconstruction;rel_0;build;localbuild;nightly;file;computing.web.cern.ch;link;computing;installarea;atlascore;atlasevent;include;python;true;false;line;test'),(88295,'721',null,';atla;time;error;event;signal;segmentation;offline;logfile;http;rel_0;build;devval;x86_64;gcc43;slc5'),(88345,'3402',null,';error;info;offline;http;build;gcc43;slc5;line;message;verbatim'),(88379,'1160',null,';datum;build;file;verbatim;test'),(88418,'7959',null,';include;verbatim;reconstruction'),(88540,'721',null,';data11_7tev;file;fail'),(88586,'4141',null,';error;info;root;event;signal;offline;logfile;http;rel_0;build;devval;nightly;x86_64;gcc43;slc5;python;external;2.6.5;release;verbatim'),(88705,'916',null,';atla;time;error;data11_7tev;info;fatal;exception;signal;datum;reco_trf.py;offline;logfile;http;atlasreconstruction;build;nightly;file;x86_64;gcc43;slc5;software;rel_4;installarea;atlascore;release;true;false;line;warn;retrieve'),(88719,'396',null,';atla;signal;segmentation;http'),(88780,'2216',null,';atla;time;error;info;root;fatal;exception;signal;reco_trf.py;offline;logfile;atnight;http;atlasreconstruction;rel_0;build;localbuild;nightly;file;type;const;x86_64;gcc43;slc5;software;rel_4;installarea;atlascore;atlasevent;include;python;external;2.6.5;release;false;line;message;warn;clid;retrieve'),(88786,'1200',null,';atla;error;http;nightly;computing.web.cern.ch;link;computing;reconstruction'),(88856,'4045',null,';atla;time;event;signal;segmentation;offline;http;build;link;gcc43;slc5;test;reconstruction'),(88958,'896',null,';atla;time;error;fatal;exception;offline;logfile;http;devval;nightly;computing.web.cern.ch;link;computing;x86_64;gcc43;slc5;software;installarea;external;message;verbatim;test;reconstruction'),(89089,'4141',null,';atla;http;seconds;gcc43;slc5;test'),(89168,'1200',null,';atla;error;castor;root;fatal;event;datum;reco_trf.py;offline;http;build;nightly;file;link;gcc43;slc5;software;installarea;python;true;false;line;pool.root;message;fail'),(89188,'4141',null,';atla;http;python;reconstruction'),(89241,'3743',null,';atla;event;offline;http;build;devval;x86_64;gcc43;slc5;rel_4;reconstruction'),(89245,'331',null,';const;reconstruction'),(89287,'3732',null,';atla;data11_7tev;info;event;datum;reco_trf.py;logfile;devval;test'),(89320,'4141',null,';atla;time;error;data11_7tev;user;info;fatal;datum;reco_trf.py;atnight;http;atlasreconstruction;rel_0;build;localbuild;nightly;file;computing.web.cern.ch;link;computing;installarea;false;message;fail;test'),(89321,'2580',null,';atla;time;error;info;fatal;event;reco_trf.py;offline;logfile;http;build;nightly;file;const;bool;gcc43;slc5;software;installarea;release;false;line;message;warn;fail;reconstruction'),(89339,'7701',null,';info;fatal;signal;segmentation;http'),(89523,'1200',null,';atla;error;info;fatal;event;offline;logfile;http;build;const;bool;gcc43;slc5'),(89587,'1658',null,';atla;offline;http;build;file;link;gcc43;slc5;reconstruction'),(89641,'7701',null,';atla;time;error;data11_7tev;info;fatal;event;exception;signal;datum;reco_trf.py;offline;logfile;http;build;nightly;file;gcc43;slc5;software;installarea;message;reconstruction'),(89646,'1200',null,';atla;user;atnight;http;atlasreconstruction;rel_0;build;localbuild;nightly;file;computing.web.cern.ch;link;computing;software;installarea;atlasevent;include;line;message'),(89725,'1200',null,';atla;user;info;exception;offline;http;atlasreconstruction;build;nightly;file;gcc43;slc5;software;installarea;atlasevent;include;release;line'),(90031,'396',null,';atla;error;user;info;event;reco_trf.py;file;type;true;false;pool.root;warn;fail;clid;track;reconstruction'),(90171,'1658',null,';root;offline;logfile;http;build;nightly;file;link;gcc43;slc5;rel_4;line;verbatim;fail;reconstruction'),(90389,'396',null,';atla;info;exception;http;build;nightly;file;computing.web.cern.ch;link;computing;software;installarea;atlascore;test;reconstruction'),(90476,'7959',null,';atla;error;fatal;offline;logfile;http;build;devval;type;const;gcc43;slc5;warn;fail;clid;retrieve'),(90485,'3931',null,';atla;data11_7tev;info;datum;offline;atnight;http;atlasreconstruction;rel_0;build;localbuild;nightly;file;double;x86_64;gcc43;slc5;software;installarea;atlascondition;17.1.1;python;external;2.6.5;release;true;false;test;reconstruction'),(90553,'7959',null,';atla;error;root;offline;atnight;http;atlasreconstruction;rel_0;boost;build;localbuild;nightly;remote;computing.web.cern.ch;link;computing;bool;gcc43;slc5;software;installarea;atlascore;atlascondition;atlasevent;17.1.1;include;python;external;2.6.5;release;warn;fail;reconstruction'),(90635,'3518',null,';atla;error;http;nightly;computing.web.cern.ch;const;link;computing;reconstruction'),(90844,'7959',null,';atla;time;error;user;info;root;fatal;datum;reco_trf.py;offline;logfile;http;atlasreconstruction;build;devval;nightly;file;type;x86_64;gcc43;slc5;software;installarea;atlascore;atlasevent;include;release;atlascerngroupdisk;true;false;line;pool.root;message');
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

-- dump completed on 2013-01-23 22:37:07
