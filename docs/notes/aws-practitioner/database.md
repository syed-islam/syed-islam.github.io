## Database Types

 * Relational - (1) MySQL, (2) MariaDB, (3) PostgreSQL, (4) Aurora, (5) Oracle, (6) SQL Server
 * Key-Value - (1) DynamoDB
 * Document - (1) DocumentDB
 * In-memory - (1) Elasticache (MemcacheD, Redis)
 * Graph - (1) Neptune
 * Columnar - (1) KeySpace
 * Time Series - (1) Timestream
 * Quantum Ledger - (1) QLDB
 * Search - (1)  Elastic Search  

## Types of workloads
1. OLTP - Online Transaction Processing. Predictable and structured work. 
2. OLAP - Online Analytics Processing. Retrospective, predictive, streaming. 

## Amazon DocumentDB

### Properties
 * JSON Data as the value which is referred to as a document. 

## Amazon Keyspaces

### Properties
 * Columnar database
 * Apache Casandra

### Typical usage
 *  Analytical process
 *  Big Data processing
 *  Data Warehouses

## Elasticache
 * In-memory DB used as cache


### MemcacheD

### Redis
 * Persistence with transaction logs. 

## Neptune

### Properties
 * Graph Database


## Amazon Timestream
### Properties
 * Time Series Database
 * Data is gathered over time and stored with time as the key. 
 * Idea for Dev Ops applications which collect millions of data per second. 
 * IOT application data storage is also a good use case. 

## Amazon Quantum Ledger Database (QLDB)
### Properties
 * Cryptographic verification to confirm that data is immutable and remains unchanged. 
 * Quantum ledger uses block chain, hash of the record data and previous record data. 
 * Financial Transactional data that shouldn't change. 
 * Insurance history of claims
 * Auditing is built in.

## Amazon Elastic Search Service
 * Ingest data from multiple sources in raw format.
 * Indexes the data and make it searchable.
 * Each document is stored as json document.
 * Elastic search uses reverse indexes - words against documents


## AWS RDS Deployment
 * Instance Type and Instance Size
 * Single-AZ vs Multi-AZ
   * Failover 60-120s - DNS updated automatically.
     * Patching
     * Host failure
     * AZ Fails
     * Reboot with failover
     * Instance class on primary DB is modified. 
 * EBS (scalable storage) used by MySQL, PostgreSQL, MariaDB, Oracle, SQL Server.
     * SSD Storage (20GB - 64TB [SQLServer 16TB]), Provisioned (8000 IOPS - 80000 IOPS [SQLServer 40000] / 100GB - 64 TB [SQLServer 16TB])
     * Autoscaling of storage can be enabled on configuration. <10% storage for 5 mins and 6 hours since last scale up. 
 * Aurora - shared cluster storage.
     * Grows automatically and doesn't need to be configured.
 * Read Replica
     * Read only traffic. 
     * Where multi-AZ config is enabled, read replica is created from secondary db.
 * Auto Backup
     * Backup to S3
     * 0-35 days of retention
     * Manual backup can be done at any time and backups need to be deleted manually
     * Encryption can be defined using KMS keys. 
 * Backtrack - Aurora allows backtrack up to 72 hours. Allows you to back in time. Aurora retains transactional log data for the duration of the backtrack. 


## Amazon Dynamo DB
### Properties
 * NoSQL DB
 * Key Value Store type. Key or indexes. 
 * Ultra high performance at any scale with single digit latency. 
 * Fully managed service
 * No patches / No backup - all handled by AWS.
 * Setup tables and provisioned throughput for each table. 
 * Pricing :  Provisioned Throughput + Size
 * Creation requires DB name and Primary Key at its simplest form.
 * Partition Key and Index can be used
 * 1 Query can use only 1 Index. Query needs to be explicit about what index to use.


### Secondary Index
 * Global - everywhere in the table
 * Local - only within the single partition key. 

### Provisioned Capacity
 * Read Capacity Units
 * Write Capacity Units
 * 5 default.
 * Each query can use more than one RCU/WCU
 * Known load and query patterns.
 * Auto-scaling can happen of the provisioned capacity based on utilization based on minimum and maximum capacity. 

### On-Demand
 * Scaled on demand
 * Not as cost-effective as provisioned.

### Encryption
 * Default is on
 * Customer managed or AWS managed Key can be selected. 

### Advantages
 * Fully managed - backup, redundancies
 * Schemaless
 * Auto HA - Across 3 AZ
 * Fast ms and unlimited scalability.
 * Constant performance. 
  
### Disadvantages
 * Eventual consistency due to replication
 * Queries not flexible as SQL
 * Max record size of 400KB
 * 20 global and 5 secondary index per table.
 * Max number of tables per account - can be adjusted by AWS
 * PovisionedThroughputException. 
 * Adjustments take a few mins. 


## Redshift

### Properties and advantages
 * Based on Postgre SQL
 * Massively parallel processing
 * Columnar data storage
 * Result caching


### Structure
* Cluster has a database and at least one compute node. More than one compute node has a leader node. 
* Leader node is the gateway to the cluster and creates the execution plans for query. 
* Compute Nodes can be of two types:
     * RA3 node types - High performance and scalable
     * Dense node types - High performance with fixed local SSD
* Nodes can be between 1-32.


### Communication
 * JDBC
 * ODBD

### Metrics
 * Disk usage is available in CloudWatch
 * CPU and Memory Utilization - Query/ Load performance data is only available from Redshift console and not CloudWatch. 

### Access to other sources
 * Accessing data from S3 can be provided by IAM Roles to Redshift. 

### Backup
 * Automated snapshots for backups
 * Optionally - Backup cluster to a secondary region.

