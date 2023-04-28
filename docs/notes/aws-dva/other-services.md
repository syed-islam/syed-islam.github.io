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

## AWS Trusted Advisor (FSCPS)
 Makes recommendations to improve infrastructure use across environment based on known best practices.

 Make recommendations in the following areas:
  * Fault Tolerance - Multi-AZ
  * Security - weakness/vulnerabilities
  * Cost Optimization - is there unused resources.
  * Performance - where can we take advantage of provisioned capabilities
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
 * Simplify the management of security protection across multiple-AWS Accounts. 
 * AWS Firewall manager can apply the security / firewall policies across multiple Accounts and automatically new resources. 
 * Simplifies security management
 * Integrates with AWS organization and is required for using AWS Firewall manager

### Integration
 * AWS WAF
 * AWS Shield Advanced
 * AWS Network Firewall
 * VPC Security Groups
 * Amazon Route53 Resolver DNS Firewall

### Steps for configuraiton
 1. AWS Firewall Manager Administrator Account - define rules
 2. Account has to be part of an organization
 3. AWS Firewall manager as the Firewall Manager account. 
 4. Enable AWS Config for all accounts, all regions for firewall manager to work
 5. Enable Sharing with AWS Organizations in Resource Access Manager
 6. Enable regions within AWS Management console where firewall manager is no enabled by default.


## AWS Shield
 * Protect against DDOS attacks:
   * SYN Flood
   * DNS Query flood
   * HTTP Flood/Cache-busting

### Levels of Featurs
 * Standard - free for all AWS Account. Protect against Level 3 and Level 4 attacks. 
 * Advanced - Web Apps on EC2, CloudFronts, ELBs and Route53. 24x7 DDOS protection team. Level 3,4,7 protection. Cost protection and get AWS WAF included. $3K / month current cost.

## Amazon Inspector
 * Analyze **EC2** instance for security issues
 * Rules for security standards and vulnerability definitions
 * Install agent on the EC2
 * Gives a prioritized list of findings 

## Amazon Guard Duty
 * Intelligent Threat Identification using AI
 * Analyze CloudTrail logs, VPC Flow logs and DNS query logs for review
 * Sample Findings are provided for each type of problem.
 * Critical, Medium and Low severity findings. 

## AWS Security Hub
???

## Amazon Macie
 * Machine learning to analyze objects in S3
 * Identifies critical private data - PII
 * Automatically keeps track of changes to data to only check new objects
 * One time or scheduled run possible
 * Reports the findings as Medium or High and the type of findings.


## AWS Resilience Hub
 * Information about how resilient is your design.

## AWS Backup
 * Can be used to manage backup across multiple AWS services
 * Central managed service
 * Supports multiple regions
 * Central backup hub
 * logging and monitoring

### Policies
 * schedule
 * window
 * lifecycle rules
 * backup vault 
 * regional copies 
 * tags

### Integrates
 * **EFS** needs to use AWS Backup
 * EBS
 * EC2
 * RDS
 * Aurora
 * DynamoDB
 * DFS
 * Storage Gateway Volumes
 * FSx (Windows and Lustre)

## Data Lifecycle Manager
 * EBS Backup across cross-region

### AWS Well-Architected Tool
 * Based on best practices from AWS
 * based on AWS Well-Architected Framework

## Monitoring
### CloudWatch
 * metrics for cluster size scaling up and down for ECS

## AWS Autoscaling
Three services supported by AWS Autoscaling:
 1. Amazon ECS
 2. DynamoDB
 3. Amazon Aurora







