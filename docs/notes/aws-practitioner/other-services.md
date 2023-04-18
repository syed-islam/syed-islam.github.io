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

## Amazon Cognito
 * Used for managing federated users access to roles. Specifically recommended for Mobile applications. 

## AWS Trusted Advisor
 Makes recommendations to improve infrastructure use across environment based on known best practices.

 Make recommendations in the following areas:
  * Cost Optimization - is there unused resources.
  * Performance - where can we take advantage of provisioned capabilities
  * Security - weakness/vulnerabilities
  * Fault Tolerance - Multi-AZ
  * Service Limits - 80% limits are highlighted

|       | Basic | Developer | Business | Enterprise | 
| ----- | ----- | --------- | -------- | ---------- |
| Cost Optimization | :x:  | :x: | :material-check:| :material-check:|
|Performance  |  :x: | :x: |:material-check: |:material-check: |
| Security |  6 core checks | 6 core checks |:material-check: |:material-check: |
| Fault Tolerance |  :x: | :x: |:material-check: | :material-check:|
| Service Limits |  :material-check: |:material-check:  |:material-check: |:material-check: |
| Track recent changes | ||:material-check:|:material-check:|
| API | ||:material-check:|:material-check:|
| CloudWatch Integration| ||:material-check:|:material-check:|

Core Security Checks:
 * S3 bucket permissions
 * Security Groups - specific ports unrestricted
 * EBS public snapshot
 * RDS public snapshot
 * IAM use
 * MFA on Root account.

All Plans get:
 * Trusted Advisor Notification (opt in/out)
 * Exclude items
 * Action Links
 * Access Management
 * Refresh - 24 hourly update, manual refresh at 5 mins interval.

## AWS Organizations
 * Centrally manage multiple AWS accounts. Helps with security & compliance and account management. 
  
### Components

#### Organization

 * A hierarchical structure for Accounts. 

#### Root
 * Top level of organization
 * Single root at an organization

#### Organizational Unit 
 * Groups of Accounts, hierarchical structure
 * Can be attached to root or another OU
 * Can be 5 level deeps

#### Account
 * AWS Accounts an be controlled from a Master Account.
 * Master Account can be used for consolidated billing from all OUs and Accounts. 
 * Master Account should be kept to a minimum as it can create additional accounts, invite accounts, remove accounts and apply SCP.
 * Two types:
   * Enable Consolidated Billing
   * Enable all features - needed for SCP. 
 * Master Account and Resource-based linked policies are not impacted by SCPs
 * Root Account is still able to perform a lot of functionalities even after an attached SCP. 
  
#### Service Control Policies
 * Sets the permission boundary
 * Can be applied to Root, OU or Account. 
 * Once set it applies to all children of the leaf where set
 * Does not grant policies
 * AWS organizations with 'Enable All Settings' are required and needs to be setup from root account
 * By default the root account gets a SCP of ```FullAWSAccess```. This is why everything works by default.
 * SCPs don't affect resource-base policies then affect the principals. 
 * SCPs affect all users, role in addition to root. Root still able to change password, MFA settings, root access keys and x.509 certificates for root. 
 * Organization removal - removes all SCPs. Re-enabling goes back to default. 
 * SCPs do not affect - Master Account, service-linked roles and CloudFront Keys.



## AWS WAF (Web Application Firewall)

 * Helps with mitigation of attack patterns: OWASP Top 10 Attack Patterns
 * Filtering request on source IP address or country of origin
 * Reduces the risk by block traffic at the perimeter.

### Integrations
 * Amazon API Gateway
 * CloudFront Distributions
 * Application Load Balancer
 * AWS AppSync GraphQL API

### Traffic Types
 * HTTP 
 * HTTPS

### Components
#### Web ACLs
 * Main building block of WAF service
 * Associated with the integrated services to allow of block traffic
 * Contains rules to allow/block traffic
 * Default rule also exists to allow/block

#### Rules
 * Statement (criteria)
 * Action
   * Allow - forwarded
   * Block - blocked and informs requester of block
   * Count - counts traffic match
  
#### Rule Groups
 * A collection of rules that can be applied to Web ACLs
 * WAF comes with some AWS collections or can be purchased from AWS Marketplace
 * You can do your own
 * Rule Groups have weights and this limits the number of rules that can be put on WAF to ensure performance. 


## AWS Firewall Manager








