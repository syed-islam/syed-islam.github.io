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


## AWS KMS
 * The Key Management Service (KMS) is a managed service used to store and generate encryption keys that can be used by other AWS services and applications to encrypt and decrypt your data.
 * AWS administrators do **not** have access to KMS keys and cannot recover deleted keys. 
 * KSM keys are for encryption at rest only. SSL is needed for encryption in transit.
 * Integrates with CloudTrail for usage tracking. 
 * KMS is region-specific. Each region requires its own instance of KMS. 

### Components
 There are 4 key components of AWS KSM:
  1. Customer Master Keys (CMK)
  2. Data Encryption Keys (DEKs)
  3. Key Policies
  4. Grants

### CMK Types
 1. Customer Managed - These keys offer the greatest level of flexibility and control.  You are able to create, disable or delete the key, configure the key policies associated with your key, configure Grants, and also alter and adjust the key rotation periods and view full usage history of the key.These keys can be used by other AWS services that integrate with KMS.Customer managed keys include  an additional charge for creating your customer CMKs.
 2. AWS  - hese are managed by AWS, however you are still able to view these keys within the Management Console, and also audit and track their usage and view their key policies.However, because they are managed by AWS you are not able to modify them.  These keys are created and used by AWS services that integrate with KMS directly, but they can only be used by the service that creates them.
 3. AWS Owned - These are not visible within the KMS console or anywhere within your account, neither do you have the ability to audit and track their usage, they are essentially abstracted from your AWS account.But of course, some services use this key type to encrypt your data within your account.Examples of AWS Owned CMKs include:•The S3 Master key uses SSE-S3 encryption•The default encryption option used on all Amazon DynamoDBtables uses AWS owned keys.

### Data Encryption Keys (DEKs)
Data keys are created by CMKs however they are used outside of KMS to perform encryption against your data, either in your own applications or by other AWS services.

### Key Policies
Key policies determine who can do what with the key, for example, defining who can use the key to perform cryptographic operations, in addition to those who can administer the CMK to perform functions such as deleting and revoking the key.  Controlling access to CMKs can’t be done using IAM alone. In ALL cases, to manage access to your CMKs, you MUST use a key policy.

### Grants
Grants allow you to programmatically delegate your permissions to another principal or user, and so the grant consists of 2 parties, the user who creates the Grant, and the Grantee who then uses that grant to perform cryptographic operations.