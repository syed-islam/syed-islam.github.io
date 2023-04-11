# Storage

## S3

### Limitations
 * 0 bytes - 5TB per file.
 * 100 buckets per account - soft limit. 

### Properties
 * Object storage service 
 * No fixed structure
 * Flat address space, unique URL. 
 * Regional service, must specify the Region while upload
 * Automated replication across multiple AZs for durability. 
 * Need to create buckets - name must be unique across all of S3. 
 * Unique Object key identifies a files in a bucket. Unique Key: Bucket + folder + file.
 * Also, get a URL which is fully qualified
 * Can create virtual folders for easy management
 * 

### Spec
 * Durability - 11 9s
 * Availability - 99.5% - 99.99% (depends on storage class)


### Versioning
 * Keeps all versions of the objects in the same bucket. 
 * 
### Server Access Logging
 * Logs for access to bucket. 

### Object-level logging
 * Object-level API activity.

### Encryption
#### Bucket-level Encryption
#### Folder level Encryption


### Storage Classes
| S3 Standard | S3 INT | S3 S-IA | S3 Z-IA | 
| ------------ | ----------- | ------------ | --------------- |
| High throughput | :white_check_mark:  | :white_check_mark:  | :white_check_mark: |
| Low Latency | :white_check_mark:  |:white_check_mark:   |:white_check_mark:  |
| Frequent access to data| Unknown (Frequent (30 days) + Infrequent) | Infrequent | Infrequent |
| Durability Eleven 9s|:white_check_mark:   | :white_check_mark: | Eleven 9s across single AZ |
| Availability 99.99%  | 99.9% | 99.9% |9 9.5% |
| SSL/TLS | :white_check_mark: | :white_check_mark: | :white_check_mark:|
|Lifecycle rules |:white_check_mark:  | :white_check_mark: | :white_check_mark:|

#### S3 Glacier
 * 11 9s durability
 * Lower cost of storage. 
 * Retrieval is not instant
 * Vaults and Archives. Vaults are container for Archives. Vaults are region specific. 
 * No GUI. GUI is for management only. 
 * Moving data two step process - (1) Create Vault (2) Use API/SDK to move data. or via Data lifecycle from S3.
 * Access is via API/SDK or AWS CLI. Either way an archival retrieval job needs to be create first. 
 * S3 Access of data comes at a cost based on retrieval options:
   * Expedited - <250MB, 5 mins, most expensive
   * Standard - Any size, 3-5 hours, 2nd most expensive
   * Bulk - Any size, 5-12 hours, cheapest

#### S3 Glacier Deep Archive
 * Minimal access retrieval is 12 hours.
 * 

### Fees
 * Minimum storage of 30 days of storage requirement on all tiers, except standard. Glacier has 90 days. Deep Archive 180 days.
 * Per object monitoring fess in Intelligent Tier.
 * Retrieval fees per GB for Infrequent Access and Glacier. 
 * S3 Glacier is at a fraction of the cost of S3.
 
 ### Lifecycle Rules
  * Moving data automatically between different tiers. 

## EBS
 * Persistent Block-level storage
 * Attached to EC2 volumes and can meet IOPS requirements.
 * Generally, EBS volume can be attached to a single storage (exception Multi-Attach).
 * EBS backup - snapshots. Manually / cloudwatch scheduled event. Stored on S3 and incremental changes are stored. Restored to another EBS volume. 
 * Copy snapshot to anther for high durability. 
 * Replicated multiple times within the same AZ. Lives only in the single AZ.
 * When creating an EBS Volume directly, need to specify the AZ can only be attached to EC2 instances in the same AZ. 

### EBS Types
#### SSD
 * Better for work with smaller blocks
 * Boot Volume
 * SSD-GP2
   * Balanced 
   * Boot Volume
 * Provisioned IOPS SSD - io1
   * Low latency/high throughput
   * 16000 IOPS of 250 MiB/s of throughput per volume
#### HD
 * Throughput optimized HDD (st1)
   * Frequently accesses, large throughput, data streaming, log processing
   * cannot be used as boot volumes
 * Cold HDD (sc1)
   * lowest cost
   * large in size and accessed infrequently
   * cannot be used as boot volumes
### Security
 * Enable encryption at the time of creation. 
 * Uses AWS KMS to automatically encrypt data
 * snapshots of encrypted volumes are also encrypted.
 * Encryption is only available on selected instance types. 
 * Regional setting possible to configure all EBS volumes in the region to use encryption. 

## EFS

### Properties
 * File Storage Access like a File Manager
 * Uses hierarchy structure
 * Low Latency and multi-access.
 * EFS is accessed via mountpoints that live in particular AZs and can be used by EC2s in that AZ.
 * Uses standard OS API - NFS4.1 and 4.0.
 * Replicated across AZs in a single region, making it highly available and reliable. 
 * Regional service. Not available in all regions.

### Storage Classes and Performance
#### Standard
 * Default
 * Charged on the storage used at per month.

#### Infrequent Access
 * Rarely accessed, lower cost. 
 * Higher latency of first byte read. 
 * Cost for storage space used + Cost for read and write. 

#### Lifecycle
 * Moves data between the storage classes.
 * Fixed duration of timers 14, 30, 60, 90 days. 
 * Metadata and files smaller than 128K in size. 
 * Can be switched on / off. 


### Performance Modes

|          | General Purpose | Max I/O |
|----------| --------------  | ------- |
| Throughput | Standard | Unlimited |
| IOPS | <= 7K | >= 7k |
| Latency | Low Latency | High Latency |
| Metric| Cloudwatch % of IPOS | | 

### Throughput Modes

|          | Bursting | Provisioned |
|----------| --------------  | ------- |
| Throughput   | 100MiB/s per TB |  Additional charges beyond the bursting option |

#### Duration of Burst
 * 50 MiB/s per TB is baseline, 
 * lower accumulates burst credit 
 * burst credit  is viewable on CloudMetrics.


## SNOW Family
 * Storage and compute capabilities.
 * Few TB to 100PB of physical data transfer in and out of AWS.


|       | Snowcone | Snowball Compute Optimized | Snowball Compute Optimized with GPU | Snowball Storage Optimized | Snow Mobile |
|-------|----------|----------------------------|--------------------------------------|---------------------------|-------------|
|vcpu|2|52|52|24|n/a|
|memory|4GB|208GB|208GB|32GB|n/a|
|storage|8TB|39.5TB|39.5TB|80TB|100PB|
|SSD|n/a|7.68|7.68|n/a|n/a|
|GPU| n/a|n/a|Nvdia Tesla | n/a | n/a|
|cluster| na | 5-10 |5-10 |5-10 |n/a|
|use cases| portable, battery, upto 8TB, DataSync, 10Gbit | S3 API, 100Gbit network |compute power, cluster |80TB, SSD, Rack mounting, **HIPPA compliant** |10 petabyte|




## FAQ
