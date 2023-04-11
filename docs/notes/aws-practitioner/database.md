## Database Types
 1. Relational
    1. MySQL
    2. MariaDB
    3. PostgreSQL
    4. Aurora
    5. Oracle
    6. SQL Server
 2. Key-Value
 3. Document
 4. In-memory
 5. Graph
 6. Columnar
 7. Time Series
 8. Quantum Ledger
 9.  Search 

## Types of workloads
1. OLTP - Online Transaction Processing. Predictable and structured work. 
2. OLAP - Online Analytics Processing. Retrospective, predictive, streaming. 

## DynamoDB

### Properties
 * Key, Value data store. 
 * No schema. 


## Amazon DocumentDB

### Properties
 * JSON Data as the value which is referred to as a document. 

## Amazon Keyspaces

### Properties
 * Columnar database

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


