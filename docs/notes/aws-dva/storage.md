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
  

### Spec
 * Durability - 11 9s
 * Availability - 99.5% - 99.99% (depends on storage class)


### Versioning
 * Keeps all versions of the objects in the same bucket. 
 * Versioning is **not** on by default
 * Once turned on, it can't be turned off but can be suspended. 
 * Bucket level setting that turns versioning for all objects in the bucket. 
 * Can be enabled during creation of a bucket or on an existing bucket. 
 * By default older versions of an object are not shown but are there to inspect. 
 * Every new version of an object gets a version id
 * When versioning is turned on - version id of an object will be null unless a change of the object takes place.
 * Using versioning will incur costs as all versions are saved in full and storage used has costs in s3
 * When an object is deleted after versioning is turned on, a delete marker is put on the latest version of the object and all previous versions of the file are also retained. 
 * It is possible to delete specific versions of an object along with the version tagged with the delete marker. 

 ### Server Access Logging
 * Logs for access to bucket. 
 * Not guaranteed and are done on a best effort basis.
 * No guarantees of set period in which the logs will be available. 
 * The logs are stored in a target bucket that you need to configure - can use an optional prefix to be added to the log file name to make it easy to manage.
 * ```log delivery group``` permissions need to be added for the logging to work. Setting up from Consoles sets this up automatically. SDK or CLI needs to be setup explicitly. This is done via a **ACL not bucket policies.**
 * Access logs will only be delivered to target bucket if the target bucket is using ```SSE-S3``` encryption. **KMS not supported**. 

### Object-level logging
 * Object-level API activity. This is more closely related to CloudTrail.

#### Enabling
 * For all or some of the buckets - this can be configured from the AWS CloudTrail Console. 
 * Can be configured from the bucket configurations and will need to select CloudTrail Trail for the events to be captured. Also the type of events: Read/Write can be selected. 

### Data Transfer
 * Transfer Acceleration can speed up the delivery of data to and from S3. 
 * It uses the edge location by Amazon CloudFront. 
 * Transfer Acceleration can be enabled at the Bucket Level
 * Data Transfer uses internal high-speed connectivity to achieve higher bandwidth. 
 * Transfer Acceleration has cost per GB depending of the Edge Location used. Outwards data transfer has a higher charge compared to the usual outward transfer charge. 
 * Specific endpoint is provided by AWS for the accelerated transfer. Bucket names but be DNS compliant and can't contain any dots. 
 * Can be enabled or suspended. 
 * Does not support - Get Service (list buckets), Put Bucket (create bucket), Delete Bucket, Cross region copies using Put Object (Copy)


### Encryption
#### At Rest
Can be done at the following level:
 * Bucket-level Encryption
 * Folder level Encryption


| Scheme | Description |
| ---- | ------|
|SSE-S3| Server-side encryption with S3 managed keys, SSE-S3. This option requires minimal configuration and all management of encryption keys used are managed by AWS. All you need to do is to upload your data and S3 will handle all other aspects. |
|SSE-KMS|Server-side encryption with KMS managed keys, SSE-KMS. This method allows S3 to use the key management service to generate your data encryption keys. KMS gives you a far greater flexibility of how your keys are managed. For example, you are able to disable, rotate, and apply access controls to the CMK, and audit it against their usage using AWS CloudTrail. |
|SSE-C|Server-side encryption with customer provided keys, SSE-C. This option gives you the opportunity to provide your own master key that you may already be using outside of AWS. Your customer-provided key would then be sent with your data to S3, where S3 would then perform the encryption for you. |
| CSE-KMS| Client-side encryption with KMS, CSE-KMS. Similarly to SSE-KMS, this also uses the key management service to generate your data encryption keys. However, this time KMS is called upon via the client not S3. The encryption then takes place client-side and the encrypted data is then sent to S3 to be stored. |
|CSE-C|Client-side encryption with customer provided keys, CSE-C. Using this mechanism, you are able to utilize your own provided keys and use an AWS-SDK client to encrypt your data before sending it to S3 for storage. |


#### In Transit 
Via SSL/TLS


### S3 Security
This can be done in two ways:
 * IAM Policies (Will define the resource - bucket)
 * Resource-based Policies:
   * Access Control Lists:
     * Access to buckets and objects
     * Not same structure as those of json based policy definitions
     * No explicit deny is possible. 
     * Bucket Level ACL:
       * Fixed permissions (List, Write, Read ACL, Write ACL) for Bucket Owner, Everyone (public - authenticated/unauthenticated. Also requires for the object/bucket to be public), Authenticated Users Groups (IAM users form any AWS Account), S3 Log Delivery Group (For Server Access Log Delivery). 
     * Object Level ACL:
       * Options for Owner, Public and Everyone. 
       * Permissions: Read Object, Read Object Permissions, Write Object Permissions.
   * Bucket Policies (Possible to directly give access to cross-account users. Cross-account users will need delegated access to the same bucket.): 
     * Written in JSON
     * No default policy exists when creating a bucket
     * **'Principal'**  must be defined to identify the user/group/role that the policy applies to. 
     * Can be up to **20kb** in size. This is greater than IAM Policies (User - 2kb, group - 5kb, roles - 10kb)

### Cross Origin Resource Sharing (CORS) with S3
 * CORS allows specific resources on a webpage to be requested from a different domain than its own.
 * This is done via policies inside the CORS configuration of the bucket and is used for matching

#### Policy Syntax
    [
      {
        "AllowedHeaders":[
          "*"
        ],
        "AllowedMethods":[
          "PUT",
          "POST",
          "DELETE"
        ],
        "AllowedOrigns":[
          "http://www.syedislam.com"
        ],
        "ExposedHeaders":[]
      }    
    ]

Rule Math happens when:
 * ```AllowedOrigns``` == Requesters Origin
 * ```AllowedMethods``` == Request Method
 * ```AllowedHeaders``` == ```Access-Control-Request-Header```

The ```ExposeHeader``` element in the policy is used to define a header in the response that is allowed to be made by customer applications. 


### Storage Classes
|Property| S3 Standard | S3 INT | S3 S-IA | S3 Z-IA | 
|--| ------------ | ----------- | ------------ | --------------- |
| High throughput | :white_check_mark:  | :white_check_mark:  | :white_check_mark: |
| Low Latency | :white_check_mark:  |:white_check_mark:   |:white_check_mark:  |
| Frequent access to data| Unknown (Frequent (30 days) + Infrequent) | Infrequent | Infrequent |
| Durability Eleven 9s|:white_check_mark:   | :white_check_mark: | Eleven 9s across single AZ |
| Availability 99.99%  | 99.9% | 99.9% |99.5% |
| SSL/TLS | :white_check_mark: | :white_check_mark: | :white_check_mark:|
|Lifecycle rules |:white_check_mark:  | :white_check_mark: | :white_check_mark:|

#### S3 INT 
 * Has Frequent and  Access and Archival. 
 * Moves automatically between the tiers. Move to infrequent if object not accessed for 30 days and frequent once object is accessed. 
 * Frequent is more expensive that infrequent
 * Per object monitoring fess in Intelligent Tier plus storage costs.



#### S3 Glacier
 * 11 9s durability
 * Lower cost of storage. 
 * Retrieval is not instant
 * Vaults and Archives. Vaults are container for Archives. Vaults are region specific. 
 * No GUI. GUI is for management only. 
 * Moving data two step process - (1) Create Vault (2) Use API/SDK to move data. or via Data lifecycle from S3.
 * Access is via API/SDK or AWS CLI. Either way an archival retrieval job needs to be create first. 
 * S3 Access of data comes at a cost based on retrieval options:
   * Set 1
     * Expedited - <250MB, 5 mins, most expensive
     * Standard - Any size, 3-5 hours, 2nd most expensive
     * Bulk - Any size, 5-12 hours, cheapest
   * Set 2
     * Instant Retrieval - milliseconds
     * Flexible Retrieval - mins to hours
     
#### S3 Glacier Deep Archive
 * Minimal access retrieval is 12 hours.

### Fees
 * Minimum storage of 30 days of storage requirement on all tiers, except standard. Glacier has 90 days. Deep Archive 180 days.
 * Per object monitoring fess in Intelligent Tier.
 * Retrieval fees per GB for Infrequent Access and Glacier. 
 * S3 Glacier is at a fraction of the cost of S3.
 
 ### Lifecycle Rules
  * Moving data automatically between different tiers. 
  * Can also used to remove incomplete uploads and to remove non-current versions of data. 
  * This works well when there are some known patterns of usage or requirements
  * Lifecycle configuration can only move data in one direction.

#### Components of Lifecycle Configuration
 * Internally presented as an XML file with configuration rules. 

```
    <LifecycleConfiguration>
      <Rule>
        <ID> [ID/Name of the Rule] </ID>
        <Filter> [Which objects to take actions on] </Filter>
        <Status> </Status>
        Actions
      </Rule>
    </LifecycleConfiguration>
```

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
#### HDD
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
