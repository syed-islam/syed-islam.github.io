# Streaming Data - Amazon Kinesis
 * No Free Tier, each service has its own pricing based on attributes.

## Amazon Kinesis Data Streams
### Properties
 * real-time data collection messaging service
 * Maintains a copy of all data in the received order
 * Data is stored for 24 hours default, upto 65 days if configured using ```IncreaseStreamRetentionPeriod```.
 * Ability to process large data streams in real-time, ability to read and replay records to multiple consumer applications. 
 * Kinesis Data Stream can encrypt data using KMS as producers put data on the stream.
 * Kinesis data stream has *put to get latency* of less than 1 seconds.

### Structure
 * Stream is made of one or more **Shards**
 * Shards hold **Data Records** in sequence. Shards can handle 1000 records/second. Write - 1000 records/second 1MB/second. Read - 1MB/seconds. 
 * Data Record is made of Partition Key (which shard), Sequence Number (per shard ordering) and Actual Data (up to 1MB). 
 * Producers put data on streams and consumers read data using Kinesis Client Library (KCL).
 * Kinesis Data Stream does not inspect or alter the data payload, consumers must do what is necessary. 
 * Data in streams are immutable.
 * Data can't be removed and can only expire.
 

### KCL
 * KCL manages a Record Processor per shard ensuring data processed from each Shard.
 * KCL uses DynamoDB to store control data and creates one table per application reading data from a stream.
 * Can run on EC2, Elastic Beanstalk and Data Centre Servers. 

### Configuration
#### On Demand
 * Adjusts throughput based on demand
 * Billed for actual usage. 

#### Provisioned
 * Specify the number of shards
 * Billed for hourly provision of shards
 * Splitting and Merging shard operations happens during increase and decrease.

### Consumer
#### Classic
 * Pulls data from streams
 * Limits of how many times consumers can pull

#### Enhanced Fan out
 * Every consumer gets 2 MBPs throughput per shard and limits are removed. 

## Amazon Kinesis Video Streams
 * Stream processing binary-encoded data such as video and audio. 
 * 


## Amazon Kinesis Data Firehose
 * Streaming delivery service
 * Data can be dynamically transformed and scaled automatically to deliver to data store. Can transform to Parquet from JSON. Can use Lambda for transformation.
 * No need to develop custom consumers
 * Buffers data during delivery, Buffer Size and Buffer Duration can be configured during creation. This buffering makes it near real-time. 
 * Destinations:
   * Amazon S3
   * Amazon Redshift
   * Amazon Elasticsearch
   * Splunk
   * Generic HTTP endpoints
   * DataDog
   * MongoDB Cloud
   * New Relic
 * No free tier, charged for usage not provisioned. 

## Amazon Kinesis Data Analytics
 * Read from stream real-time and analytics on streams
 * Only SQL available when used with Firehose
 * Apache Flink with Java and Scala are available with only Data Streams.
 
  




