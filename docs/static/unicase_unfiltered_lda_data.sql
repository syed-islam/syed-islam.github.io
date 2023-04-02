-- mysql dump 10.13  distrib 5.5.28, for osx10.6 (i386)
--
-- host: summit.cs.ucl.ac.uk    database: unicase_unfiltered_lda_data
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
insert into `bug_reports` values (1075,'helming',null,';update;work;view;item;unknown'),(1066,'wesendon',null,';client;update;commit;unknown'),(1050,'narayan',null,';element;model;navigator;unknown'),(1042,'koegel',null,';link;unknown;exception;just;issue;create'),(1030,'weisss',null,';message;eclipse;work;click;element;model;link;unknown;project;exception;window;error;create'),(1033,'narayan',null,';unknown;behaviour;contain;report;create'),(1035,'narayan',null,';work;open;click;diagram;item;unknown'),(1036,'shterevg',null,';update;widget.java;workbench.java;org.eclipse.swt.widgets.display.sendevent;eclipseapplauncher.java;org.eclipse.core.runtime.internal.adaptor.eclipseapplauncher.start;unicasecommand.java;eventtable.java;display.java;org.eclipse.swt.widgets.widget.sendevent;sun.reflect.delegatingmethodaccessorimpl.invoke;unknown;project;recordingcommand.java;exception;org.eclipse.core.databinding.observable.realm.runwithdefault;org.eclipse.swt.widgets.display.readanddispatch;java.lang.reflect.method.invoke;main.java;method.java;delegatingmethodaccessorimpl.java;org.eclipse.equinox.launcher.main.invokeframework;org.eclipse.core.runtime.adaptor.eclipsestarter.run;native;method;org.eclipse.equinox.launcher.main.run;org.eclipse.equinox.launcher.main.basicrun;basiccommandstack.java;eclipsestarter.java;transactionalcommandstackimpl.java;org.eclipse.emf.transaction.impl.abstracttransactionalcommandstack.execute;org.eclipse.emf.common.command.basiccommandstack.execute;org.eclipse.swt.widgets.eventtable.sendevent;abstracttransactionalcommandstack.java;sun.reflect.nativemethodaccessorimpl.invoke0;org.eclipse.swt.widgets.display.rundeferredevents;throw;error;start'),(1019,'liya',null,';fail;widget.java;workbench.java;eclipseapplauncher.java;org.eclipse.core.runtime.internal.adaptor.eclipseapplauncher.start;unicasecommand.java;eventtable.java;display.java;org.eclipse.swt.widgets.widget.sendevent;sun.reflect.delegatingmethodaccessorimpl.invoke;unknown;unicasecommandwithresult.java;cause;recordingcommand.java;serverrequestcommandhandler.java;serverrequesthandler.java;org.eclipse.core.databinding.observable.realm.runwithdefault;org.eclipse.swt.widgets.display.readanddispatch;java.lang.reflect.method.invoke;main.java;method.java;delegatingmethodaccessorimpl.java;org.eclipse.equinox.launcher.main.invokeframework;org.eclipse.core.runtime.adaptor.eclipsestarter.run;native;method;org.eclipse.equinox.launcher.main.run;org.eclipse.equinox.launcher.main.basicrun;basiccommandstack.java;eclipsestarter.java;transactionalcommandstackimpl.java;commandcontributionitem.java;org.eclipse.emf.transaction.impl.abstracttransactionalcommandstack.execute;org.eclipse.emf.common.command.basiccommandstack.execute;org.eclipse.swt.widgets.eventtable.sendevent;abstracttransactionalcommandstack.java;sun.reflect.nativemethodaccessorimpl.invoke0;org.eclipse.swt.widgets.display.rundeferredevents'),(1018,'pfeifferc',null,';dialog;file;unknown'),(1016,'liya',null,';unknown;emfstore'),(998,'wesendon',null,';dialog;update;work;commit;unknown;project;server'),(994,'shterevg',null,';link;unknown'),(985,'shterevg',null,';client;commit;unknown'),(989,'shterevg',null,';update;model;change;unknown'),(975,'helming',null,';fail;widget.java;workbench.java;org.eclipse.swt.widgets.display.sendevent;eclipseapplauncher.java;org.eclipse.core.runtime.internal.adaptor.eclipseapplauncher.start;unicasecommand.java;eventtable.java;display.java;org.eclipse.swt.widgets.widget.sendevent;sun.reflect.delegatingmethodaccessorimpl.invoke;unknown;project;recordingcommand.java;org.eclipse.core.databinding.observable.realm.runwithdefault;org.eclipse.swt.widgets.display.readanddispatch;java.lang.reflect.method.invoke;main.java;method.java;delegatingmethodaccessorimpl.java;org.eclipse.equinox.launcher.main.invokeframework;org.eclipse.core.runtime.adaptor.eclipsestarter.run;native;method;org.eclipse.equinox.launcher.main.run;org.eclipse.equinox.launcher.main.basicrun;basiccommandstack.java;eclipsestarter.java;transactionalcommandstackimpl.java;commandcontributionitem.java;org.eclipse.emf.transaction.impl.abstracttransactionalcommandstack.execute;org.eclipse.emf.common.command.basiccommandstack.execute;org.eclipse.swt.widgets.eventtable.sendevent;abstracttransactionalcommandstack.java;sun.reflect.nativemethodaccessorimpl.invoke0;org.eclipse.swt.widgets.display.rundeferredevents'),(953,'helming',null,';unknown'),(968,'pfeifferc',null,';unknown'),(947,'shterevg',null,';unknown;doesnt'),(936,'pfeifferc',null,';unknown;method'),(940,'narayan',null,';unknown;show'),(942,'koegel',null,';save;unknown;doesnt'),(934,'helming',null,';comment;dialog;section;open;button;click;element;navigator;item;unknown;exception;show;error'),(933,'helming',null,';unknown;meeting'),(931,'helming',null,';unknown'),(917,'shterevg',null,';work;unknown'),(909,'kagel',null,';dialog;item;unknown'),(904,'helming',null,';work;diagram;widget.java;workbench.java;org.eclipse.swt.widgets.display.sendevent;eclipseapplauncher.java;org.eclipse.core.runtime.internal.adaptor.eclipseapplauncher.start;unicasecommand.java;eventtable.java;display.java;org.eclipse.swt.widgets.widget.sendevent;sun.reflect.delegatingmethodaccessorimpl.invoke;element;unknown;cause;recordingcommand.java;exception;org.eclipse.core.databinding.observable.realm.runwithdefault;org.eclipse.swt.widgets.display.readanddispatch;java.lang.reflect.method.invoke;main.java;method.java;delegatingmethodaccessorimpl.java;org.eclipse.equinox.launcher.main.invokeframework;org.eclipse.core.runtime.adaptor.eclipsestarter.run;native;method;org.eclipse.equinox.launcher.main.run;org.eclipse.equinox.launcher.main.basicrun;basiccommandstack.java;eclipsestarter.java;transactionalcommandstackimpl.java;org.eclipse.emf.transaction.impl.abstracttransactionalcommandstack.execute;org.eclipse.emf.common.command.basiccommandstack.execute;org.eclipse.swt.widgets.eventtable.sendevent;abstracttransactionalcommandstack.java;sun.reflect.nativemethodaccessorimpl.invoke0'),(901,'narayan',null,';save;problem;work;file;link;unknown;just;doesnt'),(894,'koegel',null,';problem;element;link;unknown'),(892,'narayan',null,';section;click;diagram;unknown;show;contain'),(887,'narayan',null,';work;diagram;element;navigator;drop;unknown'),(882,'wesendon',null,';unknown;exception;server;throw'),(879,'shterevg',null,';widget.java;workbench.java;org.eclipse.swt.widgets.display.sendevent;eclipseapplauncher.java;org.eclipse.core.runtime.internal.adaptor.eclipseapplauncher.start;unicasecommand.java;eventtable.java;display.java;org.eclipse.swt.widgets.widget.sendevent;sun.reflect.delegatingmethodaccessorimpl.invoke;unknown;cause;recordingcommand.java;exception;org.eclipse.core.databinding.observable.realm.runwithdefault;user;org.eclipse.swt.widgets.display.readanddispatch;java.lang.reflect.method.invoke;main.java;method.java;delegatingmethodaccessorimpl.java;org.eclipse.equinox.launcher.main.invokeframework;org.eclipse.core.runtime.adaptor.eclipsestarter.run;native;method;org.eclipse.equinox.launcher.main.run;org.eclipse.equinox.launcher.main.basicrun;basiccommandstack.java;eclipsestarter.java;transactionalcommandstackimpl.java;commandcontributionitem.java;org.eclipse.emf.transaction.impl.abstracttransactionalcommandstack.execute;org.eclipse.emf.common.command.basiccommandstack.execute;org.eclipse.swt.widgets.eventtable.sendevent;abstracttransactionalcommandstack.java;sun.reflect.nativemethodaccessorimpl.invoke0;org.eclipse.swt.widgets.display.rundeferredevents;start;create'),(881,'wesendon',null,';problem;widget.java;workbench.java;org.eclipse.swt.widgets.display.sendevent;eclipseapplauncher.java;org.eclipse.core.runtime.internal.adaptor.eclipseapplauncher.start;eventtable.java;display.java;org.eclipse.swt.widgets.widget.sendevent;sun.reflect.delegatingmethodaccessorimpl.invoke;file;unknown;org.eclipse.core.databinding.observable.realm.runwithdefault;user;org.eclipse.swt.widgets.display.readanddispatch;java.lang.reflect.method.invoke;main.java;method.java;delegatingmethodaccessorimpl.java;org.eclipse.equinox.launcher.main.invokeframework;org.eclipse.core.runtime.adaptor.eclipsestarter.run;native;method;org.eclipse.equinox.launcher.main.run;org.eclipse.equinox.launcher.main.basicrun;eclipsestarter.java;org.eclipse.swt.widgets.eventtable.sendevent;sun.reflect.nativemethodaccessorimpl.invoke0;org.eclipse.swt.widgets.display.rundeferredevents;workbenchpage.java'),(877,'helming',null,';update;open;change;unknown;project;exception'),(864,'wesendon',null,';login;dialog;fail;widget.java;workbench.java;org.eclipse.swt.widgets.display.sendevent;eclipseapplauncher.java;org.eclipse.core.runtime.internal.adaptor.eclipseapplauncher.start;eventtable.java;display.java;org.eclipse.swt.widgets.widget.sendevent;sun.reflect.delegatingmethodaccessorimpl.invoke;element;model;file;unknown;unicasecommandwithresult.java;cause;recordingcommand.java;serverrequestcommandhandler.java;exception;serverrequesthandler.java;org.eclipse.core.databinding.observable.realm.runwithdefault;org.eclipse.swt.widgets.display.readanddispatch;java.lang.reflect.method.invoke;main.java;method.java;delegatingmethodaccessorimpl.java;org.eclipse.equinox.launcher.main.invokeframework;org.eclipse.core.runtime.adaptor.eclipsestarter.run;native;method;org.eclipse.equinox.launcher.main.run;org.eclipse.equinox.launcher.main.basicrun;basiccommandstack.java;eclipsestarter.java;transactionalcommandstackimpl.java;commandcontributionitem.java;org.eclipse.emf.transaction.impl.abstracttransactionalcommandstack.execute;org.eclipse.emf.common.command.basiccommandstack.execute;org.eclipse.swt.widgets.eventtable.sendevent;abstracttransactionalcommandstack.java;sun.reflect.nativemethodaccessorimpl.invoke0;org.eclipse.swt.widgets.display.rundeferredevents;show;server;throw;meeting;create'),(858,'helming',null,';problem;eclipse;click;unknown;cause;server'),(857,'fuesescc',null,';save;problem;unknown;cause;user;show;behaviour'),(848,'helming',null,';update;navigator;unknown'),(849,'shterevg',null,';comment;view;unknown'),(832,'narayan',null,';section;unknown;contain;report'),(836,'shterevg',null,';work;button;click;dashboard;unknown;exception;operation;doesnt;error'),(841,'helming',null,';wrong;open;unknown'),(823,'shterevg',null,';button;link;unknown'),(816,'wesendon',null,';widget.java;workbench.java;org.eclipse.swt.widgets.display.sendevent;eclipseapplauncher.java;org.eclipse.core.runtime.internal.adaptor.eclipseapplauncher.start;unicasecommand.java;eventtable.java;display.java;org.eclipse.swt.widgets.widget.sendevent;sun.reflect.delegatingmethodaccessorimpl.invoke;unknown;recordingcommand.java;exception;org.eclipse.core.databinding.observable.realm.runwithdefault;org.eclipse.swt.widgets.display.readanddispatch;java.lang.reflect.method.invoke;main.java;method.java;delegatingmethodaccessorimpl.java;org.eclipse.equinox.launcher.main.invokeframework;org.eclipse.core.runtime.adaptor.eclipsestarter.run;native;method;org.eclipse.equinox.launcher.main.run;org.eclipse.equinox.launcher.main.basicrun;basiccommandstack.java;eclipsestarter.java;transactionalcommandstackimpl.java;org.eclipse.emf.transaction.impl.abstracttransactionalcommandstack.execute;org.eclipse.emf.common.command.basiccommandstack.execute;org.eclipse.swt.widgets.eventtable.sendevent;abstracttransactionalcommandstack.java;sun.reflect.nativemethodaccessorimpl.invoke0;org.eclipse.swt.widgets.display.rundeferredevents;password'),(813,'koegel',null,';widget.java;workbench.java;org.eclipse.swt.widgets.display.sendevent;eclipseapplauncher.java;org.eclipse.core.runtime.internal.adaptor.eclipseapplauncher.start;unicasecommand.java;eventtable.java;display.java;org.eclipse.swt.widgets.widget.sendevent;sun.reflect.delegatingmethodaccessorimpl.invoke;file;item;unknown;project;cause;recordingcommand.java;exception;org.eclipse.core.databinding.observable.realm.runwithdefault;user;org.eclipse.swt.widgets.display.readanddispatch;java.lang.reflect.method.invoke;main.java;method.java;delegatingmethodaccessorimpl.java;org.eclipse.equinox.launcher.main.invokeframework;org.eclipse.core.runtime.adaptor.eclipsestarter.run;native;method;org.eclipse.equinox.launcher.main.run;org.eclipse.equinox.launcher.main.basicrun;basiccommandstack.java;eclipsestarter.java;transactionalcommandstackimpl.java;commandcontributionitem.java;org.eclipse.emf.transaction.impl.abstracttransactionalcommandstack.execute;org.eclipse.emf.common.command.basiccommandstack.execute;org.eclipse.swt.widgets.eventtable.sendevent;abstracttransactionalcommandstack.java;sun.reflect.nativemethodaccessorimpl.invoke0;org.eclipse.swt.widgets.display.rundeferredevents;workspace'),(809,'liya',null,';unknown'),(806,'shterevg',null,';dialog;work;button;widget.java;workbench.java;org.eclipse.swt.widgets.display.sendevent;eclipseapplauncher.java;org.eclipse.core.runtime.internal.adaptor.eclipseapplauncher.start;unicasecommand.java;eventtable.java;display.java;org.eclipse.swt.widgets.widget.sendevent;sun.reflect.delegatingmethodaccessorimpl.invoke;unknown;project;recordingcommand.java;org.eclipse.core.databinding.observable.realm.runwithdefault;org.eclipse.swt.widgets.display.readanddispatch;java.lang.reflect.method.invoke;main.java;method.java;delegatingmethodaccessorimpl.java;org.eclipse.equinox.launcher.main.invokeframework;org.eclipse.core.runtime.adaptor.eclipsestarter.run;native;method;org.eclipse.equinox.launcher.main.run;org.eclipse.equinox.launcher.main.basicrun;basiccommandstack.java;eclipsestarter.java;transactionalcommandstackimpl.java;org.eclipse.emf.transaction.impl.abstracttransactionalcommandstack.execute;org.eclipse.emf.common.command.basiccommandstack.execute;org.eclipse.swt.widgets.eventtable.sendevent;abstracttransactionalcommandstack.java;sun.reflect.nativemethodaccessorimpl.invoke0;org.eclipse.swt.widgets.display.rundeferredevents;just;report;error'),(804,'koegel',null,';update;fail;class;eclipseapplauncher.java;org.eclipse.core.runtime.internal.adaptor.eclipseapplauncher.start;sun.reflect.delegatingmethodaccessorimpl.invoke;model;unknown;project;java.lang.reflect.method.invoke;main.java;org.eclipse.equinox.launcher.main.invokeframework;org.eclipse.core.runtime.adaptor.eclipsestarter.run;native;method;org.eclipse.equinox.launcher.main.run;org.eclipse.equinox.launcher.main.basicrun;eclipsestarter.java;sun.reflect.nativemethodaccessorimpl.invoke0;delete;line;server;emfstorecontroller.java;emfstore;error;workspace;start;org.unicase.emfstore.emfstore'),(792,'narayan',null,';open;fail;diagram;unicasecommand.java;element;unknown;recordingcommand.java;basiccommandstack.java;org.eclipse.emf.common.command.basiccommandstack.execute;error;create'),(775,'helming',null,';unknown'),(756,'pfeifferc',null,';problem;unknown'),(749,'narayan',null,';unicasecommand.java;sun.reflect.delegatingmethodaccessorimpl.invoke;element;model;unknown;project;cause;recordingcommand.java;exception;java.lang.reflect.method.invoke;main.java;method.java;delegatingmethodaccessorimpl.java;org.eclipse.equinox.launcher.main.invokeframework;org.eclipse.core.runtime.adaptor.eclipsestarter.run;native;method;org.eclipse.equinox.launcher.main.run;org.eclipse.equinox.launcher.main.basicrun;basiccommandstack.java;eclipsestarter.java;org.eclipse.emf.common.command.basiccommandstack.execute;sun.reflect.nativemethodaccessorimpl.invoke0;delete;contain'),(745,'haeger',null,';button;diagram;element;drop;unknown'),(721,'shterevg',null,';dashboard;unknown;just;show'),(732,'koegel',null,';save;wrong;dialog;section;work;commit;change;unknown;user;behaviour;doesnt'),(715,'wesendon',null,';widget.java;workbench.java;org.eclipse.swt.widgets.display.sendevent;eclipseapplauncher.java;org.eclipse.core.runtime.internal.adaptor.eclipseapplauncher.start;eventtable.java;display.java;org.eclipse.swt.widgets.widget.sendevent;sun.reflect.delegatingmethodaccessorimpl.invoke;unknown;exception;org.eclipse.core.databinding.observable.realm.runwithdefault;org.eclipse.swt.widgets.display.readanddispatch;java.lang.reflect.method.invoke;main.java;method.java;delegatingmethodaccessorimpl.java;org.eclipse.equinox.launcher.main.invokeframework;org.eclipse.core.runtime.adaptor.eclipsestarter.run;native;method;org.eclipse.equinox.launcher.main.run;org.eclipse.equinox.launcher.main.basicrun;eclipsestarter.java;org.eclipse.swt.widgets.eventtable.sendevent;sun.reflect.nativemethodaccessorimpl.invoke0;org.eclipse.swt.widgets.display.rundeferredevents;create'),(691,'shterevg',null,';element;unknown;exception;show;server'),(687,'shterevg',null,';dialog;element;unknown'),(685,'wesendon',null,';login;dialog;update;fail;commit;unknown;user;server;report'),(674,'koegel',null,';comment;work;element;navigator;unknown;just;delete;operation'),(667,'shterevg',null,';update;widget.java;workbench.java;org.eclipse.swt.widgets.display.sendevent;eclipseapplauncher.java;org.eclipse.core.runtime.internal.adaptor.eclipseapplauncher.start;eventtable.java;display.java;org.eclipse.swt.widgets.widget.sendevent;sun.reflect.delegatingmethodaccessorimpl.invoke;unknown;unicasecommandwithresult.java;recordingcommand.java;serverrequestcommandhandler.java;serverrequesthandler.java;org.eclipse.core.databinding.observable.realm.runwithdefault;org.eclipse.swt.widgets.display.readanddispatch;java.lang.reflect.method.invoke;main.java;method.java;delegatingmethodaccessorimpl.java;org.eclipse.equinox.launcher.main.invokeframework;org.eclipse.core.runtime.adaptor.eclipsestarter.run;native;method;org.eclipse.equinox.launcher.main.run;org.eclipse.equinox.launcher.main.basicrun;basiccommandstack.java;eclipsestarter.java;transactionalcommandstackimpl.java;commandcontributionitem.java;org.eclipse.emf.transaction.impl.abstracttransactionalcommandstack.execute;org.eclipse.emf.common.command.basiccommandstack.execute;org.eclipse.swt.widgets.eventtable.sendevent;abstracttransactionalcommandstack.java;sun.reflect.nativemethodaccessorimpl.invoke0;org.eclipse.swt.widgets.display.rundeferredevents'),(670,'helming',null,';problem;eclipse;work;open;click;change;unknown;operation;report'),(657,'shterevg',null,';element;unknown'),(658,'shterevg',null,';update;unknown;project;server;create'),(659,'shterevg',null,';message;commit;unknown'),(662,'shterevg',null,';login;unknown'),(651,'none',null,';section;element;model;unknown;project;issue;create'),(655,'pfeifferc',null,';diagram;unknown'),(641,'pfeifferc',null,';unknown'),(644,'shterevg',null,';work;unknown'),(646,'helming',null,';unknown'),(629,'helming',null,';unknown'),(624,'muelleed',null,';file;unknown;line;meeting'),(606,'wesendon',null,';eclipseapplauncher.java;org.eclipse.core.runtime.internal.adaptor.eclipseapplauncher.start;sun.reflect.delegatingmethodaccessorimpl.invoke;unknown;exception;java.lang.reflect.method.invoke;main.java;method.java;delegatingmethodaccessorimpl.java;org.eclipse.equinox.launcher.main.invokeframework;org.eclipse.core.runtime.adaptor.eclipsestarter.run;native;method;org.eclipse.equinox.launcher.main.run;org.eclipse.equinox.launcher.main.basicrun;eclipsestarter.java;sun.reflect.nativemethodaccessorimpl.invoke0;server;emfstorecontroller.java;emfstore;throw;start'),(592,'koegel',null,';message;work;element;commit;unknown;delete;contain'),(583,'kagel',null,';view;element;model;navigator;link;unknown;show;behaviour'),(584,'shterevg',null,';unknown;line'),(571,'none',null,';comment;unknown'),(570,'shterevg',null,';unknown'),(567,'shterevg',null,';dashboard;unknown;line'),(555,'narayan',null,';dialog;button;unknown'),(559,'wesendon',null,';message;client;wrong;model;commit;unknown;exception;serverrequesthandler.java;server;report;error'),(551,'koegel',null,';problem;element;link;unknown;exception;throw'),(547,'narayan',null,';update;open;view;navigator;commit;change;unknown'),(531,'helming',null,';unknown;meeting'),(539,'naughton',null,';unknown'),(530,'koegel',null,';save;wrong;login;dialog;work;unknown;show;password'),(518,'maierma',null,';dashboard;change;item;unknown'),(508,'shterevg',null,';login;unknown;exception'),(506,'helming',null,';unknown;meeting'),(483,'pfeifferc',null,';work;unknown'),(490,'wesendon',null,';message;client;login;dialog;unknown;server;error'),(491,'narayan',null,';class;diagram;unknown;create'),(495,'wesendon',null,';unknown;operation'),(476,'none',null,';section;widget.java;workbench.java;org.eclipse.swt.widgets.display.sendevent;eclipseapplauncher.java;org.eclipse.core.runtime.internal.adaptor.eclipseapplauncher.start;eventtable.java;display.java;org.eclipse.swt.widgets.widget.sendevent;sun.reflect.delegatingmethodaccessorimpl.invoke;element;unknown;cause;exception;org.eclipse.core.databinding.observable.realm.runwithdefault;org.eclipse.swt.widgets.display.readanddispatch;java.lang.reflect.method.invoke;main.java;method.java;delegatingmethodaccessorimpl.java;org.eclipse.equinox.launcher.main.invokeframework;org.eclipse.core.runtime.adaptor.eclipsestarter.run;native;method;org.eclipse.equinox.launcher.main.run;org.eclipse.equinox.launcher.main.basicrun;basiccommandstack.java;eclipsestarter.java;transactionalcommandstackimpl.java;commandcontributionitem.java;org.eclipse.emf.transaction.impl.abstracttransactionalcommandstack.execute;org.eclipse.emf.common.command.basiccommandstack.execute;org.eclipse.swt.widgets.eventtable.sendevent;abstracttransactionalcommandstack.java;sun.reflect.nativemethodaccessorimpl.invoke0;org.eclipse.swt.widgets.display.rundeferredevents;delete;contain;throw;description'),(474,'koegel',null,';save;wrong;problem;login;update;work;unknown;project;user;window;show;behaviour;report;password'),(468,'koegel',null,';save;file;unknown;workspace'),(470,'helming',null,';eclipse;element;model;file;unknown;just;description'),(471,'narayan',null,';diagram;element;unknown;show;doesnt;create'),(461,'shterevg',null,';update;navigator;commit;unknown'),(435,'naguib',null,';comment;unknown;user'),(438,'wesendon',null,';fail;element;commit;unknown;operation;create'),(446,'kagel',null,';dialog;open;element;model;item;unknown'),(425,'koegel',null,';file;unknown;project;cause;exception;user;transactionalcommandstackimpl.java;org.eclipse.emf.transaction.impl.abstracttransactionalcommandstack.execute;abstracttransactionalcommandstack.java;report;throw;create'),(426,'shterevg',null,';wrong;unknown'),(428,'helming',null,';unknown'),(430,'koegel',null,';unknown;user'),(431,'kagel',null,';work;model;drop;item;unknown;exception;behaviour;create'),(419,'helming',null,';unknown'),(386,'pfeifferc',null,';dialog;work;item;unknown'),(393,'shterevg',null,';message;widget.java;workbench.java;org.eclipse.swt.widgets.display.sendevent;eclipseapplauncher.java;org.eclipse.core.runtime.internal.adaptor.eclipseapplauncher.start;unicasecommand.java;eventtable.java;display.java;org.eclipse.swt.widgets.widget.sendevent;sun.reflect.delegatingmethodaccessorimpl.invoke;unknown;project;recordingcommand.java;exception;org.eclipse.core.databinding.observable.realm.runwithdefault;org.eclipse.swt.widgets.display.readanddispatch;java.lang.reflect.method.invoke;main.java;method.java;delegatingmethodaccessorimpl.java;org.eclipse.equinox.launcher.main.invokeframework;org.eclipse.core.runtime.adaptor.eclipsestarter.run;native;method;org.eclipse.equinox.launcher.main.run;org.eclipse.equinox.launcher.main.basicrun;basiccommandstack.java;eclipsestarter.java;transactionalcommandstackimpl.java;org.eclipse.emf.transaction.impl.abstracttransactionalcommandstack.execute;org.eclipse.emf.common.command.basiccommandstack.execute;org.eclipse.swt.widgets.eventtable.sendevent;abstracttransactionalcommandstack.java;sun.reflect.nativemethodaccessorimpl.invoke0;org.eclipse.swt.widgets.display.rundeferredevents;throw;error'),(370,'wesendon',null,';message;problem;unknown;exception;user;server;error'),(369,'helming',null,';client;open;file;unknown;exception;throw;error'),(357,'wesendon',null,';unknown;exception;operation'),(339,'helming',null,';class;diagram;unknown;create'),(328,'wesendon',null,';eclipse;update;fail;unknown;error;workspace'),(329,'none',null,';widget.java;workbench.java;org.eclipse.swt.widgets.display.sendevent;eclipseapplauncher.java;org.eclipse.core.runtime.internal.adaptor.eclipseapplauncher.start;unicasecommand.java;eventtable.java;display.java;org.eclipse.swt.widgets.widget.sendevent;sun.reflect.delegatingmethodaccessorimpl.invoke;unknown;project;recordingcommand.java;exception;org.eclipse.core.databinding.observable.realm.runwithdefault;org.eclipse.swt.widgets.display.readanddispatch;java.lang.reflect.method.invoke;main.java;method.java;delegatingmethodaccessorimpl.java;org.eclipse.equinox.launcher.main.invokeframework;org.eclipse.core.runtime.adaptor.eclipsestarter.run;native;method;org.eclipse.equinox.launcher.main.run;org.eclipse.equinox.launcher.main.basicrun;basiccommandstack.java;eclipsestarter.java;transactionalcommandstackimpl.java;commandcontributionitem.java;org.eclipse.emf.transaction.impl.abstracttransactionalcommandstack.execute;org.eclipse.emf.common.command.basiccommandstack.execute;org.eclipse.swt.widgets.eventtable.sendevent;abstracttransactionalcommandstack.java;sun.reflect.nativemethodaccessorimpl.invoke0;org.eclipse.swt.widgets.display.rundeferredevents;throw;create'),(330,'shterevg',null,';work;commit;unknown;user'),(321,'shterevg',null,';open;unknown'),(312,'wesendon',null,';message;dialog;commit;unknown'),(298,'helming',null,';open;button;dashboard;element;model;navigator;unknown'),(299,'wesendon',null,';login;dialog;unknown;server;emfstore;doesnt;error'),(301,'koegel',null,';widget.java;workbench.java;org.eclipse.swt.widgets.display.sendevent;eclipseapplauncher.java;org.eclipse.core.runtime.internal.adaptor.eclipseapplauncher.start;unicasecommand.java;eventtable.java;display.java;org.eclipse.swt.widgets.widget.sendevent;sun.reflect.delegatingmethodaccessorimpl.invoke;file;unknown;unicasecommandwithresult.java;project;cause;recordingcommand.java;serverrequestcommandhandler.java;exception;serverrequesthandler.java;org.eclipse.core.databinding.observable.realm.runwithdefault;user;org.eclipse.swt.widgets.display.readanddispatch;java.lang.reflect.method.invoke;main.java;method.java;delegatingmethodaccessorimpl.java;org.eclipse.equinox.launcher.main.invokeframework;org.eclipse.core.runtime.adaptor.eclipsestarter.run;native;method;org.eclipse.equinox.launcher.main.run;org.eclipse.equinox.launcher.main.basicrun;basiccommandstack.java;eclipsestarter.java;transactionalcommandstackimpl.java;commandcontributionitem.java;org.eclipse.emf.transaction.impl.abstracttransactionalcommandstack.execute;org.eclipse.emf.common.command.basiccommandstack.execute;org.eclipse.swt.widgets.eventtable.sendevent;abstracttransactionalcommandstack.java;sun.reflect.nativemethodaccessorimpl.invoke0;org.eclipse.swt.widgets.display.rundeferredevents'),(233,'shterevg',null,';unknown;delete'),(236,'shterevg',null,';click;unknown;user;window;show;server;emfstore'),(237,'shterevg',null,';update;unknown'),(239,'narayan',null,';class;diagram;unknown'),(240,'wesendon',null,';unknown;emfstore'),(258,'kagel',null,';work;element;model;navigator;drop;unknown;contain'),(273,'pfeifferc',null,';unknown;line;doesnt;description'),(276,'koegel',null,';problem;comment;update;commit;file;change;item;unknown;project;cause;user;just;delete;server'),(219,'koegel',null,';class;unknown;exception;operation'),(207,'muelleed',null,';client;unknown;project;exception;throw;create'),(209,'koegel',null,';save;button;unknown'),(217,'wesendon',null,';eclipse;update;widget.java;workbench.java;eclipseapplauncher.java;org.eclipse.core.runtime.internal.adaptor.eclipseapplauncher.start;eventtable.java;display.java;org.eclipse.swt.widgets.widget.sendevent;sun.reflect.delegatingmethodaccessorimpl.invoke;commit;unknown;unicasecommandwithresult.java;project;recordingcommand.java;serverrequestcommandhandler.java;exception;serverrequesthandler.java;org.eclipse.core.databinding.observable.realm.runwithdefault;org.eclipse.swt.widgets.display.readanddispatch;java.lang.reflect.method.invoke;main.java;org.eclipse.equinox.launcher.main.invokeframework;org.eclipse.core.runtime.adaptor.eclipsestarter.run;native;method;org.eclipse.equinox.launcher.main.run;org.eclipse.equinox.launcher.main.basicrun;basiccommandstack.java;eclipsestarter.java;transactionalcommandstackimpl.java;commandcontributionitem.java;org.eclipse.emf.transaction.impl.abstracttransactionalcommandstack.execute;org.eclipse.emf.common.command.basiccommandstack.execute;org.eclipse.swt.widgets.eventtable.sendevent;abstracttransactionalcommandstack.java;sun.reflect.nativemethodaccessorimpl.invoke0;org.eclipse.swt.widgets.display.rundeferredevents;delete;error'),(195,'shterevg',null,';open;commit;link;unknown;exception'),(171,'helming',null,';unknown;start'),(173,'narayan',null,';client;unknown'),(177,'pfeifferc',null,';update;element;commit;unknown;project'),(180,'wesendon',null,';save;problem;unknown;delete'),(155,'narayan',null,';diagram;unknown'),(158,'liya',null,';unknown'),(159,'shterevg',null,';wrong;work;open;click;dashboard;link;unknown'),(162,'kagel',null,';open;view;dashboard;element;model;navigator;unknown'),(169,'shterevg',null,';comment;eclipse;fail;class;dashboard;widget.java;workbench.java;org.eclipse.swt.widgets.display.sendevent;eclipseapplauncher.java;org.eclipse.core.runtime.internal.adaptor.eclipseapplauncher.start;unicasecommand.java;eventtable.java;display.java;org.eclipse.swt.widgets.widget.sendevent;sun.reflect.delegatingmethodaccessorimpl.invoke;file;unknown;cause;recordingcommand.java;org.eclipse.core.databinding.observable.realm.runwithdefault;user;org.eclipse.swt.widgets.display.readanddispatch;java.lang.reflect.method.invoke;main.java;method.java;delegatingmethodaccessorimpl.java;org.eclipse.equinox.launcher.main.invokeframework;org.eclipse.core.runtime.adaptor.eclipsestarter.run;native;method;org.eclipse.equinox.launcher.main.run;org.eclipse.equinox.launcher.main.basicrun;basiccommandstack.java;eclipsestarter.java;transactionalcommandstackimpl.java;org.eclipse.emf.transaction.impl.abstracttransactionalcommandstack.execute;org.eclipse.emf.common.command.basiccommandstack.execute;org.eclipse.swt.widgets.eventtable.sendevent;abstracttransactionalcommandstack.java;sun.reflect.nativemethodaccessorimpl.invoke0;org.eclipse.swt.widgets.display.rundeferredevents;behaviour'),(140,'haeger',null,';problem;open;view;diagram;element;drop;change;unknown;user;create'),(143,'none',null,';unknown'),(113,'koegel',null,';fail;unknown'),(108,'kagel',null,';save;element;model;file;unknown'),(99,'pfeifferc',null,';diagram;unknown'),(100,'shterevg',null,';update;work;button;view;dashboard;change;unknown;doesnt'),(101,'pfeifferc',null,';commit;change;unknown;report;create'),(105,'wesendon',null,';element;model;unknown;operation;contain;description;issue'),(106,'shterevg',null,';link;unknown'),(96,'wesendon',null,';client;eclipse;fail;unknown;project;cause;exception;server;error'),(88,'narayan',null,';save;problem;fail;diagram;widget.java;workbench.java;org.eclipse.swt.widgets.display.sendevent;eclipseapplauncher.java;org.eclipse.core.runtime.internal.adaptor.eclipseapplauncher.start;unicasecommand.java;eventtable.java;display.java;org.eclipse.swt.widgets.widget.sendevent;sun.reflect.delegatingmethodaccessorimpl.invoke;unknown;cause;exception;org.eclipse.core.databinding.observable.realm.runwithdefault;org.eclipse.swt.widgets.display.readanddispatch;java.lang.reflect.method.invoke;main.java;method.java;delegatingmethodaccessorimpl.java;org.eclipse.equinox.launcher.main.invokeframework;org.eclipse.core.runtime.adaptor.eclipsestarter.run;native;method;org.eclipse.equinox.launcher.main.run;org.eclipse.equinox.launcher.main.basicrun;basiccommandstack.java;eclipsestarter.java;transactionalcommandstackimpl.java;org.eclipse.emf.transaction.impl.abstracttransactionalcommandstack.execute;org.eclipse.swt.widgets.eventtable.sendevent;abstracttransactionalcommandstack.java;sun.reflect.nativemethodaccessorimpl.invoke0;workbenchpage.java'),(76,'koegel',null,';unknown'),(85,'wesendon',null,';comment;eclipseapplauncher.java;org.eclipse.core.runtime.internal.adaptor.eclipseapplauncher.start;sun.reflect.delegatingmethodaccessorimpl.invoke;model;file;unknown;cause;exception;java.lang.reflect.method.invoke;main.java;method.java;delegatingmethodaccessorimpl.java;org.eclipse.equinox.launcher.main.invokeframework;org.eclipse.core.runtime.adaptor.eclipsestarter.run;native;method;org.eclipse.equinox.launcher.main.run;org.eclipse.equinox.launcher.main.basicrun;eclipsestarter.java;sun.reflect.nativemethodaccessorimpl.invoke0;just;window;line;server;emfstorecontroller.java;emfstore;throw;error;workspace;start;org.unicase.emfstore.emfstore'),(75,'none',null,';unknown;project;operation'),(73,'liya',null,';work;fail;view;navigator;unknown;project;exception;show;doesnt;workspace;start'),(70,'none',null,';eclipse;unknown;server;emfstore;throw;error;start'),(68,'shterevg',null,';work;commit;unknown;issue'),(66,'wesendon',null,';sun.reflect.delegatingmethodaccessorimpl.invoke;unknown;java.lang.reflect.method.invoke;method.java;delegatingmethodaccessorimpl.java;server'),(57,'shterevg',null,';update;unknown;delete;emfstore'),(60,'shterevg',null,';login;update;unknown'),(47,'wesendon',null,';message;wrong;problem;change;unknown;server;error'),(42,'haeger',null,';open;view;diagram;element;drop;unknown;create'),(41,'muelleed',null,';client;view;widget.java;workbench.java;org.eclipse.swt.widgets.display.sendevent;eclipseapplauncher.java;org.eclipse.core.runtime.internal.adaptor.eclipseapplauncher.start;unicasecommand.java;eventtable.java;display.java;org.eclipse.swt.widgets.widget.sendevent;sun.reflect.delegatingmethodaccessorimpl.invoke;unknown;cause;recordingcommand.java;exception;org.eclipse.core.databinding.observable.realm.runwithdefault;org.eclipse.swt.widgets.display.readanddispatch;java.lang.reflect.method.invoke;main.java;method.java;delegatingmethodaccessorimpl.java;org.eclipse.equinox.launcher.main.invokeframework;org.eclipse.core.runtime.adaptor.eclipsestarter.run;native;method;org.eclipse.equinox.launcher.main.run;org.eclipse.equinox.launcher.main.basicrun;basiccommandstack.java;eclipsestarter.java;transactionalcommandstackimpl.java;org.eclipse.emf.transaction.impl.abstracttransactionalcommandstack.execute;org.eclipse.emf.common.command.basiccommandstack.execute;org.eclipse.swt.widgets.eventtable.sendevent;abstracttransactionalcommandstack.java;sun.reflect.nativemethodaccessorimpl.invoke0;org.eclipse.swt.widgets.display.rundeferredevents;throw'),(34,'hodaie',null,';view;unknown;user'),(32,'narayan',null,';open;diagram;widget.java;workbench.java;org.eclipse.swt.widgets.display.sendevent;eclipseapplauncher.java;org.eclipse.core.runtime.internal.adaptor.eclipseapplauncher.start;eventtable.java;display.java;org.eclipse.swt.widgets.widget.sendevent;sun.reflect.delegatingmethodaccessorimpl.invoke;unknown;org.eclipse.core.databinding.observable.realm.runwithdefault;org.eclipse.swt.widgets.display.readanddispatch;java.lang.reflect.method.invoke;main.java;method.java;delegatingmethodaccessorimpl.java;org.eclipse.equinox.launcher.main.invokeframework;org.eclipse.core.runtime.adaptor.eclipsestarter.run;native;method;org.eclipse.equinox.launcher.main.run;org.eclipse.equinox.launcher.main.basicrun;eclipsestarter.java;org.eclipse.swt.widgets.eventtable.sendevent;sun.reflect.nativemethodaccessorimpl.invoke0;org.eclipse.swt.widgets.display.rundeferredevents;abstracteditpart.java;graphicaleditpart.java;doesnt;workbenchpage.java;throw'),(9,'helming',null,';work;link;unknown;delete;issue'),(18,'shterevg',null,';unknown;line;description'),(21,'wesendon',null,';change;unknown;workspace'),(24,'wesendon',null,';client;unknown;server'),(27,'pfeifferc',null,';section;drop;unknown;meeting;issue');
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

-- dump completed on 2013-01-23 22:39:37
