# Other Services

## AWS DataSync

### Between Non-AWS Storage
 * Snow devices to S3
 * On-prem data center to S3

### Between AWS Storage
*  EBS to S3
*  Windows FXs to S3

## AWS OpsHub
 * Comes as a software and not on the AWS Console. 
 * Manages the SNOW devices for data transfer
 * Configure fleets of cluster devices
 * Dashboard and Metrics to the snow devices.
 * Integrates with AWS Systems Manager for automation of different tasks. 
 * GUI based as opposed to previous way of managing via AWS CLI. 

## AWS Lambda
 * Serverless
 * Runs code without having to define servers
 * Event-drive triggers, e.g. S3 notifications
 * Time limits of 15 mins, and 10GB memory.

## AWS Fargate
 * Serverless containers on ECS, no limits like Lambda. 

## Amazon EventBridge
 * Serverless event bus
 * Takes input events from multiple sources and can act as the event bus from there. 
  
## AWS Step Function
 * serverless state machine

## Amazon API Gateway
 * Building, monitoring, documenting and managing serverless API
 * 100s of Thousands of requests per second and can throttle if necessary

## AWS AppSync
 * Manage and Sync data across multiple data across mobile devices and users
 * build real-time multi-user collaborative tools, between different apps. 
 * AWS AppSync enables a single GraphQL API to access data from multiple sources

## Amazon RDS Proxy
 * Serverless, highly available proxy for Amazon RDS.
 * More scalable than standard direct to RDS implementation
 * Pools established database connections for enabling connections at scale
 * Can refuse connections that can't be serviced. 


