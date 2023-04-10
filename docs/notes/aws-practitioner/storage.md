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





