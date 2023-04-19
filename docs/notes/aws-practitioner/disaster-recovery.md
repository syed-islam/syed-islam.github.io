# Disaster Recovery
 * back strategies need to be part of the disaster recovery planning
 * How to decide RTO / RPO:
   * Impact on business if app outage is extended?
   * Cost of loss
   * Dependencies
   * Consumers
   * Regulatory requirements

## RTO
 * Maximum amount of time a service is allowed to be unavailable.

## RPO
 * Maximum amount of time for which data could be lost for a service.

## Disaster Recovery Strategies

| Strategies | RPO | RTO |
| ----------- | ------- | -------- |
| Backup and Restore | hours | 24 hours or less |
| Pilot Light | mins | hours|
| Warm Standby | seconds | mins |
| Multi-site | close to zero | close to zero |

### Backup & Restore
 * RTO is usually 24 hours and RPO is hours.
 
 Point in time recovery options
 |Database | Storage|
 |-------| -------|
 |RDS Snapshot | EBS Snapshot|
 |Aurora Snapshot | EFS Snapshot|
 |DynamoBD Snapshot ||
 |Redshift Snapshot ||
 |DocumentDB Snapshot ||
 |Neptune Snapshot ||


 ### Pilot Light
  * Introduction of data replication between DR Region
  * Core infrastructure is in place in DR Region
  * Ability to scale out faster
  * RPO reduced as asynchronous data replication across regions. 
  * Servers are switched off and not running
  * Cross Region data replications
    * S3 cross-region replication - Automatically replicates objects from source to DR region
    * RDF cross-region replicas - Replica DB in a separate region created from snapshots
    * Aurora Global Database - low latency reads in multiple regions
    * DyanmoDB global tables - multi-region deployment of table without need to crete replica
    * DocumentDB global Clusters - single primary region and 5 replicas across regions
    * Global Datastore for Amazon ElasticCache for Redis - cross-regional replica cluster and low latency reads

### Warm Standby
 * Scaled down always running resources
 * Can start serving request as soon as failure occurs
 * Increased costs as opposed to Pilot Light

### Multi-site Active/Active
 * Most complex
 * Most Costly
 * Lowest  RTO/RPO.


