-- mysql dump 10.13  distrib 5.5.28, for osx10.6 (i386)
--
-- host: summit.cs.ucl.ac.uk    database: unicase_filtered_lda_data
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
insert into `bug_reports` values (1075,'helming',null,';view;unknown;update;work;item'),(1066,'wesendon',null,';unknown;update;client;commit'),(1050,'narayan',null,';element;navigator;unknown;workpackage;model'),(1042,'koegel',null,';command;just;select;link;unknown;create;exception'),(1030,'weisss',null,';element;select;link;unknown;create;exception;case;eclipse;work;project;check;org.eclipse.ui.internal.handlers.handlerproxy.execute;slavehandlerservice.java;org.eclipse.ui.internal.handlers.handlerservice.executecommand;handlerservice.java;org.eclipse.ui.internal.handlers.slavehandlerservice.executecommand;message;window;click;model;error'),(1033,'narayan',null,';unknown;create;workpackage;report'),(1035,'narayan',null,';open;diagram;meeditor;unknown;work;item;click'),(1036,'shterevg',null,';eclipsestarter.java;delegatingmethodaccessorimpl.java;org.eclipse.swt.widgets.eventtable.sendevent;org.eclipse.core.runtime.internal.adaptor.eclipseapplauncher.runapplication;eclipseapphandle.java;org.eclipse.ui.platformui.createandrunworkbench;eventtable.java;nativemethodaccessorimpl.java;org.eclipse.equinox.launcher.main.run;org.eclipse.swt.widgets.display.readanddispatch;unknown;basiccommandstack.java;main.java;widget.java;workbench.java;org.eclipse.core.runtime.adaptor.eclipsestarter.run;org.eclipse.emf.transaction.impl.abstracttransactionalcommandstack.execute;eclipseapplauncher.java;abstracttransactionalcommandstack.java;display.java;org.eclipse.swt.widgets.widget.sendevent;exception;native;method;update;project;java.lang.reflect.method.invoke;error;start'),(1019,'liya',null,';eclipsestarter.java;delegatingmethodaccessorimpl.java;org.eclipse.swt.widgets.eventtable.sendevent;org.eclipse.core.runtime.internal.adaptor.eclipseapplauncher.runapplication;eclipseapphandle.java;org.eclipse.ui.platformui.createandrunworkbench;eventtable.java;nativemethodaccessorimpl.java;org.eclipse.equinox.launcher.main.run;org.eclipse.swt.widgets.display.readanddispatch;unknown;basiccommandstack.java;main.java;widget.java;workbench.java;org.eclipse.core.runtime.adaptor.eclipsestarter.run;org.eclipse.emf.transaction.impl.abstracttransactionalcommandstack.execute;eclipseapplauncher.java;abstracttransactionalcommandstack.java;display.java;org.eclipse.swt.widgets.widget.sendevent;fail;native;org.eclipse.equinox.launcher.main.main;method;unicasecommandwithresult.java;java.lang.reflect.method.invoke;org.eclipse.ui.internal.handlers.handlerproxy.execute;cause;org.unicase.workspace.ui.commands.serverrequesthandler.executerun;slavehandlerservice.java;org.eclipse.ui.internal.handlers.handlerservice.executecommand;handlerservice.java;org.eclipse.ui.internal.handlers.slavehandlerservice.executecommand'),(1018,'pfeifferc',null,';select;unknown;export;0.4.3;case;dialog;file'),(1016,'liya',null,';unknown;check;emfstore'),(998,'wesendon',null,';unknown;dialog;update;work;project;server;commit'),(994,'shterevg',null,';link;unknown'),(985,'shterevg',null,';unknown;client;commit'),(989,'shterevg',null,';unknown;update;change;model'),(975,'helming',null,';eclipsestarter.java;delegatingmethodaccessorimpl.java;org.eclipse.swt.widgets.eventtable.sendevent;org.eclipse.core.runtime.internal.adaptor.eclipseapplauncher.runapplication;eclipseapphandle.java;org.eclipse.ui.platformui.createandrunworkbench;eventtable.java;nativemethodaccessorimpl.java;org.eclipse.equinox.launcher.main.run;org.eclipse.swt.widgets.display.readanddispatch;unknown;basiccommandstack.java;main.java;widget.java;workbench.java;org.eclipse.core.runtime.adaptor.eclipsestarter.run;org.eclipse.emf.transaction.impl.abstracttransactionalcommandstack.execute;eclipseapplauncher.java;abstracttransactionalcommandstack.java;display.java;org.eclipse.swt.widgets.widget.sendevent;export;fail;native;method;project;java.lang.reflect.method.invoke;org.eclipse.ui.internal.handlers.handlerproxy.execute;slavehandlerservice.java;org.eclipse.ui.internal.handlers.handlerservice.executecommand;handlerservice.java;org.eclipse.ui.internal.handlers.slavehandlerservice.executecommand'),(953,'helming',null,';unknown'),(968,'pfeifferc',null,';unknown'),(947,'shterevg',null,';doesnt;time;unknown'),(936,'pfeifferc',null,';unknown;method'),(940,'narayan',null,';meeditor;show;unknown;attach'),(942,'koegel',null,';doesnt;save;unknown'),(934,'helming',null,';open;element;navigator;meeditor;select;show;unknown;exception;dialog;item;comment;button;click;error'),(933,'helming',null,';unknown;export;meeting'),(931,'helming',null,';unknown'),(917,'shterevg',null,';meeditor;unknown;work'),(909,'kagel',null,';unknown;dialog;item'),(904,'helming',null,';element;command;diagram;eclipsestarter.java;delegatingmethodaccessorimpl.java;org.eclipse.swt.widgets.eventtable.sendevent;org.eclipse.core.runtime.internal.adaptor.eclipseapplauncher.runapplication;eclipseapphandle.java;org.eclipse.ui.platformui.createandrunworkbench;eventtable.java;nativemethodaccessorimpl.java;org.eclipse.equinox.launcher.main.run;org.eclipse.swt.widgets.display.readanddispatch;unknown;basiccommandstack.java;main.java;widget.java;workbench.java;org.eclipse.core.runtime.adaptor.eclipsestarter.run;org.eclipse.emf.transaction.impl.abstracttransactionalcommandstack.execute;eclipseapplauncher.java;abstracttransactionalcommandstack.java;display.java;org.eclipse.swt.widgets.widget.sendevent;exception;native;org.eclipse.swt.widgets.display.windowproc;org.eclipse.swt.internal.cocoa.os.objc_msgsendsuper;method;control.java;work;java.lang.reflect.method.invoke;cause'),(901,'narayan',null,';doesnt;just;save;link;unknown;case;work;problem;file'),(894,'koegel',null,';element;link;unknown;problem'),(892,'narayan',null,';diagram;show;unknown;click'),(887,'narayan',null,';element;navigator;drop;diagram;unknown;work'),(882,'wesendon',null,';unknown;exception;server'),(879,'shterevg',null,';command;eclipsestarter.java;delegatingmethodaccessorimpl.java;org.eclipse.swt.widgets.eventtable.sendevent;org.eclipse.core.runtime.internal.adaptor.eclipseapplauncher.runapplication;eclipseapphandle.java;org.eclipse.ui.platformui.createandrunworkbench;eventtable.java;nativemethodaccessorimpl.java;org.eclipse.equinox.launcher.main.run;org.eclipse.swt.widgets.display.readanddispatch;unknown;create;basiccommandstack.java;main.java;widget.java;workbench.java;org.eclipse.core.runtime.adaptor.eclipsestarter.run;org.eclipse.emf.transaction.impl.abstracttransactionalcommandstack.execute;eclipseapplauncher.java;abstracttransactionalcommandstack.java;display.java;org.eclipse.swt.widgets.widget.sendevent;exception;native;org.eclipse.equinox.launcher.main.main;method;java.lang.reflect.method.invoke;org.eclipse.ui.internal.handlers.handlerproxy.execute;cause;slavehandlerservice.java;org.eclipse.ui.internal.handlers.handlerservice.executecommand;handlerservice.java;org.eclipse.ui.internal.handlers.slavehandlerservice.executecommand;user;start'),(881,'wesendon',null,';eclipsestarter.java;delegatingmethodaccessorimpl.java;org.eclipse.swt.widgets.eventtable.sendevent;org.eclipse.core.runtime.internal.adaptor.eclipseapplauncher.runapplication;eclipseapphandle.java;org.eclipse.ui.platformui.createandrunworkbench;eventtable.java;nativemethodaccessorimpl.java;org.eclipse.equinox.launcher.main.run;org.eclipse.swt.widgets.display.readanddispatch;unknown;main.java;widget.java;workbench.java;org.eclipse.core.runtime.adaptor.eclipsestarter.run;eclipseapplauncher.java;display.java;org.eclipse.swt.widgets.widget.sendevent;native;org.eclipse.equinox.launcher.main.main;workbenchpage.java;method;java.lang.reflect.method.invoke;org.eclipse.ui.internal.handlers.handlerproxy.execute;slavehandlerservice.java;org.eclipse.ui.internal.handlers.handlerservice.executecommand;handlerservice.java;org.eclipse.ui.internal.handlers.slavehandlerservice.executecommand;problem;user;file'),(877,'helming',null,';open;unknown;exception;update;project;change'),(864,'wesendon',null,';element;eclipsestarter.java;delegatingmethodaccessorimpl.java;org.eclipse.swt.widgets.eventtable.sendevent;org.eclipse.core.runtime.internal.adaptor.eclipseapplauncher.runapplication;eclipseapphandle.java;org.eclipse.ui.platformui.createandrunworkbench;eventtable.java;nativemethodaccessorimpl.java;org.eclipse.equinox.launcher.main.run;org.eclipse.swt.widgets.display.readanddispatch;time;show;login;unknown;create;basiccommandstack.java;main.java;widget.java;workbench.java;org.eclipse.core.runtime.adaptor.eclipsestarter.run;org.eclipse.emf.transaction.impl.abstracttransactionalcommandstack.execute;eclipseapplauncher.java;abstracttransactionalcommandstack.java;display.java;org.eclipse.swt.widgets.widget.sendevent;fail;meeting;exception;dialog;native;method;unicasecommandwithresult.java;java.lang.reflect.method.invoke;org.eclipse.ui.internal.handlers.handlerproxy.execute;cause;org.unicase.workspace.ui.commands.serverrequesthandler.executerun;org.eclipse.ui.internal.handlers.handlerservice.executecommand;handlerservice.java;server;model;file'),(858,'helming',null,';unknown;eclipse;cause;server;click;problem'),(857,'fuesescc',null,';save;select;show;unknown;cause;problem;user'),(848,'helming',null,';navigator;unknown;update'),(849,'shterevg',null,';view;unknown;comment'),(832,'narayan',null,';unknown;workpackage;report'),(836,'shterevg',null,';doesnt;unknown;exception;dashboard;work;operation;button;click;error'),(841,'helming',null,';open;unknown'),(823,'shterevg',null,';link;unknown;button'),(816,'wesendon',null,';eclipsestarter.java;delegatingmethodaccessorimpl.java;org.eclipse.swt.widgets.eventtable.sendevent;org.eclipse.core.runtime.internal.adaptor.eclipseapplauncher.runapplication;eclipseapphandle.java;org.eclipse.ui.platformui.createandrunworkbench;eventtable.java;nativemethodaccessorimpl.java;org.eclipse.equinox.launcher.main.run;org.eclipse.swt.widgets.display.readanddispatch;unknown;basiccommandstack.java;main.java;widget.java;workbench.java;org.eclipse.core.runtime.adaptor.eclipsestarter.run;org.eclipse.emf.transaction.impl.abstracttransactionalcommandstack.execute;eclipseapplauncher.java;abstracttransactionalcommandstack.java;display.java;org.eclipse.swt.widgets.widget.sendevent;exception;native;org.eclipse.swt.widgets.display.windowproc;org.eclipse.swt.internal.cocoa.os.objc_msgsendsuper;abstracttreeviewer.java;org.eclipse.equinox.launcher.main.main;method;control.java;java.lang.reflect.method.invoke;password'),(813,'koegel',null,';command;eclipsestarter.java;delegatingmethodaccessorimpl.java;org.eclipse.swt.widgets.eventtable.sendevent;org.eclipse.core.runtime.internal.adaptor.eclipseapplauncher.runapplication;eclipseapphandle.java;org.eclipse.ui.platformui.createandrunworkbench;eventtable.java;nativemethodaccessorimpl.java;org.eclipse.equinox.launcher.main.run;org.eclipse.swt.widgets.display.readanddispatch;unknown;basiccommandstack.java;main.java;widget.java;workbench.java;org.eclipse.core.runtime.adaptor.eclipsestarter.run;org.eclipse.emf.transaction.impl.abstracttransactionalcommandstack.execute;eclipseapplauncher.java;abstracttransactionalcommandstack.java;display.java;org.eclipse.swt.widgets.widget.sendevent;exception;native;abstracttreeviewer.java;method;project;item;java.lang.reflect.method.invoke;org.eclipse.ui.internal.handlers.handlerproxy.execute;cause;slavehandlerservice.java;org.eclipse.ui.internal.handlers.handlerservice.executecommand;handlerservice.java;org.eclipse.ui.internal.handlers.slavehandlerservice.executecommand;user;workspace;file'),(809,'liya',null,';unknown'),(806,'shterevg',null,';eclipsestarter.java;delegatingmethodaccessorimpl.java;org.eclipse.swt.widgets.eventtable.sendevent;org.eclipse.core.runtime.internal.adaptor.eclipseapplauncher.runapplication;eclipseapphandle.java;org.eclipse.ui.platformui.createandrunworkbench;eventtable.java;nativemethodaccessorimpl.java;org.eclipse.equinox.launcher.main.run;org.eclipse.swt.widgets.display.readanddispatch;just;unknown;basiccommandstack.java;main.java;widget.java;workbench.java;org.eclipse.core.runtime.adaptor.eclipsestarter.run;org.eclipse.emf.transaction.impl.abstracttransactionalcommandstack.execute;eclipseapplauncher.java;abstracttransactionalcommandstack.java;display.java;org.eclipse.swt.widgets.widget.sendevent;dialog;native;method;work;project;java.lang.reflect.method.invoke;button;report;error'),(804,'koegel',null,';command;delete;class;eclipsestarter.java;org.eclipse.core.runtime.internal.adaptor.eclipseapplauncher.runapplication;eclipseapphandle.java;org.eclipse.equinox.launcher.main.run;unknown;main.java;org.eclipse.core.runtime.adaptor.eclipsestarter.run;eclipseapplauncher.java;fail;native;org.eclipse.equinox.launcher.main.main;method;update;project;attach;java.lang.reflect.method.invoke;server;model;error;workspace;start;line;emfstore;org.unicase.emfstore.emfstore;win32'),(792,'narayan',null,';open;element;diagram;unknown;create;basiccommandstack.java;fail;error'),(775,'helming',null,';unknown'),(756,'pfeifferc',null,';unknown;problem'),(749,'narayan',null,';element;delete;eclipsestarter.java;delegatingmethodaccessorimpl.java;nativemethodaccessorimpl.java;org.eclipse.equinox.launcher.main.run;unknown;basiccommandstack.java;main.java;org.eclipse.core.runtime.adaptor.eclipsestarter.run;exception;native;org.eclipse.equinox.launcher.main.main;method;project;java.lang.reflect.method.invoke;cause;model'),(745,'haeger',null,';element;drop;diagram;unknown;button'),(721,'shterevg',null,';just;show;unknown;0.4.3;dashboard'),(732,'koegel',null,';doesnt;save;unknown;case;dialog;work;change;commit;user'),(715,'wesendon',null,';eclipsestarter.java;delegatingmethodaccessorimpl.java;org.eclipse.swt.widgets.eventtable.sendevent;org.eclipse.core.runtime.internal.adaptor.eclipseapplauncher.runapplication;eclipseapphandle.java;org.eclipse.ui.platformui.createandrunworkbench;eventtable.java;nativemethodaccessorimpl.java;org.eclipse.equinox.launcher.main.run;org.eclipse.swt.widgets.display.readanddispatch;unknown;create;main.java;widget.java;workbench.java;org.eclipse.core.runtime.adaptor.eclipsestarter.run;eclipseapplauncher.java;display.java;org.eclipse.swt.widgets.widget.sendevent;exception;native;method;java.lang.reflect.method.invoke'),(691,'shterevg',null,';element;select;show;unknown;exception;check;server'),(687,'shterevg',null,';element;select;unknown;dialog'),(685,'wesendon',null,';login;unknown;fail;dialog;update;server;commit;report;user'),(674,'koegel',null,';element;navigator;delete;just;unknown;work;attach;comment;operation'),(667,'shterevg',null,';eclipsestarter.java;delegatingmethodaccessorimpl.java;org.eclipse.swt.widgets.eventtable.sendevent;org.eclipse.core.runtime.internal.adaptor.eclipseapplauncher.runapplication;eclipseapphandle.java;org.eclipse.ui.platformui.createandrunworkbench;eventtable.java;nativemethodaccessorimpl.java;org.eclipse.equinox.launcher.main.run;org.eclipse.swt.widgets.display.readanddispatch;unknown;basiccommandstack.java;main.java;widget.java;workbench.java;org.eclipse.core.runtime.adaptor.eclipsestarter.run;org.eclipse.emf.transaction.impl.abstracttransactionalcommandstack.execute;eclipseapplauncher.java;abstracttransactionalcommandstack.java;display.java;org.eclipse.swt.widgets.widget.sendevent;native;method;update;unicasecommandwithresult.java;java.lang.reflect.method.invoke;org.eclipse.ui.internal.handlers.handlerproxy.execute;org.unicase.workspace.ui.commands.serverrequesthandler.executerun;slavehandlerservice.java;org.eclipse.ui.internal.handlers.handlerservice.executecommand;handlerservice.java;org.eclipse.ui.internal.handlers.slavehandlerservice.executecommand'),(670,'helming',null,';open;time;unknown;eclipse;work;check;change;operation;report;click;problem'),(657,'shterevg',null,';element;unknown'),(658,'shterevg',null,';unknown;create;update;project;server'),(659,'shterevg',null,';unknown;message;commit'),(662,'shterevg',null,';login;unknown'),(655,'pfeifferc',null,';diagram;unknown'),(641,'pfeifferc',null,';unknown'),(644,'shterevg',null,';unknown;work'),(646,'helming',null,';unknown'),(629,'helming',null,';unknown'),(624,'muelleed',null,';unknown;export;meeting;0.4.3;file;line'),(606,'wesendon',null,';eclipsestarter.java;delegatingmethodaccessorimpl.java;org.eclipse.core.runtime.internal.adaptor.eclipseapplauncher.runapplication;eclipseapphandle.java;nativemethodaccessorimpl.java;org.eclipse.equinox.launcher.main.run;unknown;main.java;org.eclipse.core.runtime.adaptor.eclipsestarter.run;eclipseapplauncher.java;exception;native;org.eclipse.equinox.launcher.main.main;method;java.lang.reflect.method.invoke;server;start;emfstore'),(592,'koegel',null,';element;delete;unknown;work;message;commit'),(583,'kagel',null,';element;navigator;view;link;show;unknown;model'),(584,'shterevg',null,';meeditor;unknown;line'),(570,'shterevg',null,';meeditor;unknown'),(567,'shterevg',null,';unknown;dashboard;line'),(555,'narayan',null,';unknown;0.4.3;dialog;button'),(559,'wesendon',null,';unknown;exception;case;client;org.unicase.workspace.ui.commands.serverrequesthandler.executerun;server;message;commit;report;model;error'),(551,'koegel',null,';element;link;unknown;exception;check;problem'),(547,'narayan',null,';open;navigator;view;time;unknown;update;change;commit'),(531,'helming',null,';unknown;export;meeting'),(539,'naughton',null,';unknown'),(530,'koegel',null,';save;show;login;unknown;dialog;work;password'),(518,'maierma',null,';unknown;dashboard;attach;change;item'),(508,'shterevg',null,';login;unknown;exception'),(506,'helming',null,';unknown;meeting'),(483,'pfeifferc',null,';unknown;work'),(490,'wesendon',null,';login;unknown;dialog;check;client;server;message;error'),(491,'narayan',null,';class;diagram;unknown;create'),(495,'wesendon',null,';unknown;operation'),(474,'koegel',null,';time;save;show;login;unknown;update;work;project;window;report;problem;password;user'),(468,'koegel',null,';save;unknown;workspace;file'),(470,'helming',null,';element;just;unknown;eclipse;model;file'),(471,'narayan',null,';element;doesnt;diagram;show;unknown;create'),(461,'shterevg',null,';navigator;unknown;update;commit'),(435,'naguib',null,';unknown;comment;user'),(438,'wesendon',null,';element;unknown;create;fail;0.4.3;case;operation;commit'),(446,'kagel',null,';open;element;time;unknown;dialog;item;model'),(425,'koegel',null,';unknown;create;org.eclipse.emf.transaction.impl.abstracttransactionalcommandstack.execute;abstracttransactionalcommandstack.java;exception;project;cause;report;user;file'),(426,'shterevg',null,';meeditor;unknown'),(428,'helming',null,';unknown'),(430,'koegel',null,';unknown;user'),(431,'kagel',null,';drop;unknown;create;exception;workpackage;work;item;model'),(419,'helming',null,';unknown'),(386,'pfeifferc',null,';unknown;dialog;work;item'),(393,'shterevg',null,';eclipsestarter.java;delegatingmethodaccessorimpl.java;org.eclipse.swt.widgets.eventtable.sendevent;org.eclipse.core.runtime.internal.adaptor.eclipseapplauncher.runapplication;eclipseapphandle.java;org.eclipse.ui.platformui.createandrunworkbench;eventtable.java;nativemethodaccessorimpl.java;org.eclipse.equinox.launcher.main.run;org.eclipse.swt.widgets.display.readanddispatch;unknown;basiccommandstack.java;main.java;widget.java;workbench.java;org.eclipse.core.runtime.adaptor.eclipsestarter.run;org.eclipse.emf.transaction.impl.abstracttransactionalcommandstack.execute;eclipseapplauncher.java;abstracttransactionalcommandstack.java;display.java;org.eclipse.swt.widgets.widget.sendevent;exception;native;method;project;java.lang.reflect.method.invoke;message;error'),(370,'wesendon',null,';unknown;exception;server;message;problem;user;error'),(369,'helming',null,';open;unknown;exception;client;attach;error;file'),(357,'wesendon',null,';command;unknown;exception;operation'),(339,'helming',null,';class;diagram;unknown;create'),(328,'wesendon',null,';time;unknown;fail;eclipse;update;check;attach;error;workspace'),(330,'shterevg',null,';unknown;work;commit;user'),(321,'shterevg',null,';open;meeditor;unknown'),(312,'wesendon',null,';unknown;dialog;message;commit'),(298,'helming',null,';open;element;navigator;select;unknown;dashboard;button;model'),(299,'wesendon',null,';doesnt;login;unknown;dialog;server;error;emfstore'),(301,'koegel',null,';command;eclipsestarter.java;delegatingmethodaccessorimpl.java;org.eclipse.swt.widgets.eventtable.sendevent;org.eclipse.core.runtime.internal.adaptor.eclipseapplauncher.runapplication;eclipseapphandle.java;org.eclipse.ui.platformui.createandrunworkbench;eventtable.java;nativemethodaccessorimpl.java;org.eclipse.equinox.launcher.main.run;org.eclipse.swt.widgets.display.readanddispatch;unknown;basiccommandstack.java;main.java;widget.java;workbench.java;org.eclipse.core.runtime.adaptor.eclipsestarter.run;org.eclipse.emf.transaction.impl.abstracttransactionalcommandstack.execute;eclipseapplauncher.java;abstracttransactionalcommandstack.java;display.java;org.eclipse.swt.widgets.widget.sendevent;exception;native;method;project;unicasecommandwithresult.java;java.lang.reflect.method.invoke;org.eclipse.ui.internal.handlers.handlerproxy.execute;cause;slavehandlerservice.java;org.eclipse.ui.internal.handlers.handlerservice.executecommand;handlerservice.java;org.eclipse.ui.internal.handlers.slavehandlerservice.executecommand;user;file'),(233,'shterevg',null,';delete;unknown'),(236,'shterevg',null,';show;unknown;server;window;click;user;emfstore'),(237,'shterevg',null,';unknown;update'),(239,'narayan',null,';class;diagram;unknown'),(240,'wesendon',null,';unknown;emfstore'),(258,'kagel',null,';element;navigator;drop;unknown;work;model'),(273,'pfeifferc',null,';doesnt;unknown;export;line'),(276,'koegel',null,';delete;just;time;unknown;update;project;change;item;comment;cause;server;commit;problem;user;file'),(219,'koegel',null,';class;unknown;exception;0.4.3;operation'),(207,'muelleed',null,';unknown;create;exception;project;client'),(209,'koegel',null,';save;unknown;button'),(217,'wesendon',null,';delete;eclipsestarter.java;org.eclipse.swt.widgets.eventtable.sendevent;org.eclipse.core.runtime.internal.adaptor.eclipseapplauncher.runapplication;eclipseapphandle.java;org.eclipse.ui.platformui.createandrunworkbench;eventtable.java;org.eclipse.equinox.launcher.main.run;org.eclipse.swt.widgets.display.readanddispatch;unknown;basiccommandstack.java;main.java;widget.java;workbench.java;org.eclipse.core.runtime.adaptor.eclipsestarter.run;org.eclipse.emf.transaction.impl.abstracttransactionalcommandstack.execute;eclipseapplauncher.java;abstracttransactionalcommandstack.java;display.java;org.eclipse.swt.widgets.widget.sendevent;exception;eclipse;native;method;update;project;attach;unicasecommandwithresult.java;java.lang.reflect.method.invoke;org.eclipse.ui.internal.handlers.handlerproxy.execute;slavehandlerservice.java;org.eclipse.ui.internal.handlers.handlerservice.executecommand;handlerservice.java;org.eclipse.ui.internal.handlers.slavehandlerservice.executecommand;commit;error'),(195,'shterevg',null,';open;link;unknown;exception;commit'),(171,'helming',null,';unknown;workpackage;start'),(173,'narayan',null,';unknown;client'),(177,'pfeifferc',null,';element;unknown;update;project;commit'),(180,'wesendon',null,';delete;save;unknown;problem'),(155,'narayan',null,';diagram;unknown'),(158,'liya',null,';command;unknown'),(159,'shterevg',null,';open;link;unknown;0.4.3;dashboard;work;click'),(162,'kagel',null,';open;element;navigator;view;meeditor;unknown;case;dashboard;model'),(169,'shterevg',null,';class;eclipsestarter.java;delegatingmethodaccessorimpl.java;org.eclipse.swt.widgets.eventtable.sendevent;org.eclipse.core.runtime.internal.adaptor.eclipseapplauncher.runapplication;eclipseapphandle.java;org.eclipse.ui.platformui.createandrunworkbench;eventtable.java;nativemethodaccessorimpl.java;org.eclipse.equinox.launcher.main.run;org.eclipse.swt.widgets.display.readanddispatch;unknown;basiccommandstack.java;main.java;widget.java;workbench.java;org.eclipse.core.runtime.adaptor.eclipsestarter.run;org.eclipse.emf.transaction.impl.abstracttransactionalcommandstack.execute;eclipseapplauncher.java;abstracttransactionalcommandstack.java;display.java;org.eclipse.swt.widgets.widget.sendevent;fail;dashboard;eclipse;native;method;attach;comment;java.lang.reflect.method.invoke;cause;user;file'),(140,'haeger',null,';open;element;drop;command;view;diagram;unknown;create;case;change;problem;user'),(113,'koegel',null,';unknown;fail'),(108,'kagel',null,';element;save;unknown;export;model;file'),(99,'pfeifferc',null,';diagram;unknown;export;0.4.3;case'),(100,'shterevg',null,';doesnt;view;unknown;0.4.3;dashboard;update;work;change;button'),(101,'pfeifferc',null,';unknown;create;change;commit;report'),(105,'wesendon',null,';element;unknown;operation;model'),(106,'shterevg',null,';link;unknown'),(96,'wesendon',null,';command;unknown;fail;exception;eclipse;project;client;cause;server;error'),(88,'narayan',null,';command;diagram;eclipsestarter.java;delegatingmethodaccessorimpl.java;org.eclipse.swt.widgets.eventtable.sendevent;org.eclipse.core.runtime.internal.adaptor.eclipseapplauncher.runapplication;eclipseapphandle.java;org.eclipse.ui.platformui.createandrunworkbench;eventtable.java;nativemethodaccessorimpl.java;org.eclipse.equinox.launcher.main.run;org.eclipse.swt.widgets.display.readanddispatch;save;unknown;basiccommandstack.java;main.java;widget.java;workbench.java;org.eclipse.core.runtime.adaptor.eclipsestarter.run;org.eclipse.emf.transaction.impl.abstracttransactionalcommandstack.execute;eclipseapplauncher.java;abstracttransactionalcommandstack.java;display.java;org.eclipse.swt.widgets.widget.sendevent;fail;exception;native;org.eclipse.swt.widgets.display.windowproc;org.eclipse.swt.internal.cocoa.os.objc_msgsendsuper;workbenchpage.java;method;control.java;java.lang.reflect.method.invoke;cause;problem'),(76,'koegel',null,';unknown;case'),(85,'wesendon',null,';command;eclipsestarter.java;delegatingmethodaccessorimpl.java;org.eclipse.core.runtime.internal.adaptor.eclipseapplauncher.runapplication;eclipseapphandle.java;nativemethodaccessorimpl.java;org.eclipse.equinox.launcher.main.run;just;unknown;main.java;org.eclipse.core.runtime.adaptor.eclipsestarter.run;eclipseapplauncher.java;exception;native;org.eclipse.equinox.launcher.main.main;method;comment;java.lang.reflect.method.invoke;cause;server;window;model;error;workspace;start;file;line;emfstore;org.unicase.emfstore.emfstore;win32'),(73,'liya',null,';navigator;doesnt;view;show;unknown;fail;exception;work;project;check;workspace;start'),(68,'shterevg',null,';unknown;work;commit'),(66,'wesendon',null,';delegatingmethodaccessorimpl.java;time;unknown;java.lang.reflect.method.invoke;server'),(57,'shterevg',null,';delete;unknown;update;emfstore'),(60,'shterevg',null,';login;unknown;update'),(47,'wesendon',null,';unknown;change;server;message;problem;error'),(42,'haeger',null,';open;element;drop;view;diagram;unknown;create'),(41,'muelleed',null,';command;view;eclipsestarter.java;delegatingmethodaccessorimpl.java;org.eclipse.swt.widgets.eventtable.sendevent;org.eclipse.core.runtime.internal.adaptor.eclipseapplauncher.runapplication;eclipseapphandle.java;org.eclipse.ui.platformui.createandrunworkbench;eventtable.java;nativemethodaccessorimpl.java;org.eclipse.equinox.launcher.main.run;org.eclipse.swt.widgets.display.readanddispatch;unknown;basiccommandstack.java;main.java;widget.java;workbench.java;org.eclipse.core.runtime.adaptor.eclipsestarter.run;org.eclipse.emf.transaction.impl.abstracttransactionalcommandstack.execute;eclipseapplauncher.java;abstracttransactionalcommandstack.java;display.java;org.eclipse.swt.widgets.widget.sendevent;exception;native;org.eclipse.swt.widgets.display.windowproc;org.eclipse.swt.internal.cocoa.os.objc_msgsendsuper;org.eclipse.equinox.launcher.main.main;method;control.java;client;java.lang.reflect.method.invoke;cause'),(34,'hodaie',null,';view;unknown;user'),(32,'narayan',null,';open;doesnt;diagram;eclipsestarter.java;delegatingmethodaccessorimpl.java;org.eclipse.swt.widgets.eventtable.sendevent;org.eclipse.core.runtime.internal.adaptor.eclipseapplauncher.runapplication;eclipseapphandle.java;org.eclipse.ui.platformui.createandrunworkbench;eventtable.java;nativemethodaccessorimpl.java;org.eclipse.equinox.launcher.main.run;org.eclipse.swt.widgets.display.readanddispatch;unknown;main.java;widget.java;workbench.java;org.eclipse.core.runtime.adaptor.eclipsestarter.run;eclipseapplauncher.java;display.java;org.eclipse.swt.widgets.widget.sendevent;native;abstracteditpart.java;abstracttreeviewer.java;org.eclipse.equinox.launcher.main.main;workbenchpage.java;method;java.lang.reflect.method.invoke'),(9,'helming',null,';delete;link;unknown;work'),(18,'shterevg',null,';unknown;line'),(21,'wesendon',null,';unknown;check;attach;change;workspace'),(24,'wesendon',null,';unknown;client;server'),(27,'pfeifferc',null,';drop;unknown;meeting;0.4.3');
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

-- dump completed on 2013-01-23 22:39:21
