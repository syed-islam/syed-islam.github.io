# Summary

| Topic | Area | Description | 
| ----- | ----- | ----------- | 
| Cost Explorer       |  Cost     | Detailed view of Cost. Base Free, Granular + API charged.  |
| Billing Dashboard       |  Cost     | Detailed view of Bills and cost from major services |
| CUR | Cost | Default OFF, detailed cost usage report ar varying granularity. Stored to S3, accessible by Athena, Quicksight, Redshift.
| AWS Budget | Cost | Automatic Notification and Actions when set thresholds are hit- cost, usage, reservation, savings plans. Action via SCP and IAM. |
| AWS Tag Editor | Cost, Reporting | Updating tags in bulk. |
| Compute Savings Plan | Purchase, Cost | Across all compute services, AZs, instance families, regions. Full flexibility. 66% |
| EC2 Instance Savings Plan | Purchase, Cost | Across EC2 of same instance families in defined region.  72% |
| AWS OpsWork | Config | AWS OpsWorks is a configuration management service that helps customers configure and operate applications, both on-premises and in the AWS Cloud, using Chef and Puppet. |
| CodeDeploy | CICD | AWS CodeDeploy automates code deployments to any instance, including Amazon EC2 instances and instances running on-premises. |
| AWS Security Hub| Security | Automated compliance checks against industry standards and best practices such as PCI DSS, HIPAA, and CIS AWS Foundations Benchmark. |
|CloudEndure | DR | tool that minimizes downtime and data loss by providing fast, reliable recovery of physical, virtual, and cloud-based servers into AWS Cloud.|
|AWS Device Farm | CICD |In AWS, you can test your app against a massive collection of physical devices in parallel. |
| AWS Ground Station | Other |service is for controlling satellite communications and processing data using satellites.|
|Amazon QuickSight | BI |  a business intelligence service for creating visualizations and dashboards.|
|AWS Security Bulletin | Doc |  security announcement provider service. |
|AWS SES (Simple Email Service) | Notification |  Used to send only emails out of AWS |
|AWS CodeDeploy | CICD | Automate Code Deployments to instances including EC2 |
|AWS CodePipeline | CICD |  Continuous Code Delivery Pipeline |
|AWS CodeCommit | CICD | Fully-managed source control service |
|AWS CodeBuild | CICD |  Fully Managed continuous integration service that compiles source code, run tests and produce software packages ready to deploy. |
|AWS CodeStar | CICD |  Quickly Develop, Build, and Deploy Applications on AWS. |
|AWS SWS (Simple Workflow) | Workflow |  The Amazon Simple Workflow Service (Amazon SWF) makes it easy to build applications that coordinate work across distributed components. |
|AWS Comprehend | Other, NLP | Analyze and recognize entities and connectivity between text|
| Amazon Textract | Other, IR | This service is mainly used to extract printed text, handwriting, and data from virtually any document.|
|Amazon Monitron | Other | is a machine learning service used for detecting abnormal industrial machine behavior and it enables you to implement predictive maintenance.|
| AWS Connect | Other |a seamless experience across voice and chats for your customers and agents.|
|AWS Lex | Other|It is used to build chatbots for everyday consumer requests, NLP + AI|
|AWS Transcribe | Other |This service turns speech into text|
|AWS Polly| Other |This service turns text into speech||
|AWS Resource Access Manager | Management, Access |is used to securely share your resources across your AWS accounts.| 
|Session Manager| Dev Tool |fully managed AWS Systems Manager capability that lets you manage your EC2 instances, on-premises instances, and virtual machines (VMs) through an interactive one-click browser-based shell or through the AWS CLI.|
|EC2 Instance Connect |Dev Tool| connect to your Linux instances using a browser-based client.|
|AWS Cost Anomaly Detection | Cost | helps you detect and alert on any abnormal or sudden spend increases in your AWS account. |
|Amazon WorkSpaces| Other |is simply a secure cloud desktop service. Both Linux and Windows supported.|
|AWS Migration Hub | Migration |can only monitor application migrations. |
|AWS Database Migration Service | Migration |is mainly used for migrating databases from on-premises to AWS. |
|AWS Application Migration Service (MGN) |Migration |is the primary migration service recommended for lift and shift migrations to AWS, moving workloads.|
|AWS Server Migration Service (SMS)|Migration| this is simply an agent-less service that makes it easier and faster for you to migrate thousands of on-premises workloads to AWS.|
|Amazon AppStream 2.0 | Other | is a fully managed application streaming service that provides users with instant access to their desktop applications from anywhere.|
|AWS AppSync | Data, API| is mainly used to develop GraphQL APIs using serverless managed endpoint with data from multiple sources.|
|AWS Data Exchange| Data | it is a service that makes it easy for millions of AWS customers to securely find, subscribe to, and use third-party data in the cloud|
|AWS PrivateLink | Networking |is a highly available, scalable technology that lets you privately connect your VPC to services as if they were in your VPC.|
| AWS Config | Config | this service is mainly used to evaluate the configuration settings of your AWS resources.|
|AWS Wavelength | Other | Brings AWS services to the edge of the 5G network, minimizing the latency to connect to an application from a mobile device|
|AWS DataSync | Data Transfer |can quickly move large amounts of data across the file system, object storage, Amazon S3, Amazon EFS, and Amazon FSx for Windows file servers and On-prem. |
|AWS Transfer Family | Data Transfer |  allows your files to be transferred through secure file transfer protocols (SFTP), FTPS (FTP over SSL/TLS), and FTP(unencrypted)|
|AWS Systems Manager | Config | this service is used for the automation of your EC2 instances.|
|Amazon Lightsail | App Deployment | service is just a package solution for the fast deployment of websites and other applications.|
|Amazon Mechanical Turk | Other | an on-demand, scalable, human workforce to complete jobs that humans can do better than computers|
|AWS Signer | Other | is a code-signing service to ensure the trust and integrity of your code.|
|APN Technology Partner | Support  |An AWS Technology Partner company provides software tools and services hosted on or integrated with AWS.|
|APN Consulting Partner | Support |The Consulting Partner helps an AWS customer in the implementation and management of an AWS cloud deployment.|
|AWS Trusted Advisor | Architecture | FSCPS - Fault Tolerance, Security, Cost Optimization, Performance, Service Limits |
|AWS Proton | Workflow | is a deployment workflow tool. It is mainly used to standardize infrastructure and automate the deployment of serverless & container-based applications.|
| AWS License Manager | Security | allows you to manage software licenses from different vendors. |
| AWS Systems Manager Parameter Store | Security |  used to centralize the configuration data of their application. You can store data such as passwords, database strings, AMI IDs, and license codes as parameter values.|
|Amazon Chime | Other | is a high-quality communications service that transforms online meetings with an easy-to-use app that works seamlessly across all your devices.|
| AWS Well-Architected Framework |Architecture | RSPCO - Reliability, Security, Performance, Cost Optimization and Operational Excellence|
|S3 | Storage | S3 Standard, S3 Intelligent Tier, S3 Standard Infrequent-Access, S3 1 Zone Infrequent-Access|
|S3 Glacier | Storage | Instant Retrieval (ms), Flexible Retrieval (min), Deep Archive (12h)|
|S3 Data Lifecycle | Storage| One direction, 30 days (except standard) -> 90 days (Glacier) -> 180 days (Deep Archive) |
|EBS | Storage | SSD (General Purpose - GP2/ Provisioned IOPS - io1), HDD (Throughput Optimized - st1, Cold - sc1) |
|EFS | Storage | Retrieval (Standard/Infrequent Access), Performance Modes (General Purpose, Max I/O), Throughput Modes (Bursting/Provisioned) |
|Snow Family | Storage | Snowcone (4Gb/8TB), Snowball Compute (208GB/40TB), Snowball Storage (32GB/80TB), Snow Mobile (100PB) |
|EC2 | Compute | Instance Type, Instance Family, Purchase Option (on-demand, reserved, scheduled, spot, computer savings plan, instance savings plan, Instance/EBS Storage, Status Check)|
|ECS | Compute | Launch (Fargate/EC2)|
|ECR | Compute | Registry, Repository, Repository Policy, Authorization Token|
|EKS | Compute | Kubernetes, Docker/Rocket, Worker Nodes - Specific AMI, on-demand EC2|
| Beanstalk | Compute | Application Version, Environment, Environment Tier (Web Server Tier/ Worker Tier), Configuration Template, Application|
| Lambda | Compute | 15min, 10GB, Components - Application, Event source, Trigger, Downstream Resources, Log Streams|
| AWS Batch | Compute | Jobs, Job Definitions, Job Queues, Jobs Scheduling, Compute Environments (ECS Managed/Unmanaged)|
| AWS Lightsail | Compute | VPS, easy deployment of web sites and blogs, fixed monthly cost |
| RDS | DB | (1) MySQL, (2) MariaDB, (3) PostgreSQL, (4) Aurora, (5) Oracle, (6) SQL Server. Instance Type/Family, EBS Storage with Auto scaling. Single/Multi-AZ. Auto backup. Read Replica  |
| DynamoDB| DB| Key-Value, 400KB max record size, unlimited scalability, RCU/WCU, Not SQL flexibility|
| DocumentDB| DB | JSON docs|
|Elasticache (MemcacheD, Redis) |DB|In-memory cache|
|Graph|DB| Neptune |
|KeySpace| DB| Columnar, Casandra |
|TimeStream|DB| Time Series|
|QLDB|DB| Quantum Ledger |
|Redshift | DB| Data Warehouse, Redshift Spectrum, RA3 Node / Dense Node |
| Elastic Search|DB| Indexes multiple sources as JSON documents and search capability|
|Aurora |DB| Cluster based growth, backtrack, Global DB, Serverless option|
| IP Reserved | Network| Network, AWS Routing, AWS DNS, AWS Future, Broadcast |
|VPC CIDR |Network | from /16 to /28|
|NACL | Network | subnet, rules in order of number, 20 rules, allow/deny, stateless, stops first match, explicit deny, default - all allow|
|Security Groups | Network | Only Allow, implicit deny, all evaluated, 50 rules, stateful, default - inbound blocked, outbound allowed|
| VPN | Network | Customer Gateway - Virtual Private Gateway, IPSec Tunnel.|
|Direct Connect | Network | AWS Region Access for Public and VPC (Virtual Private Gateway) for Private Resources, Public/Private Virtual Interface on the Router|
|VPC Peering | Network | 1-2-1 VPC connectivity, Non-Transitive, Non-overlapping CIDR Blocks, Route tables need updating |
| Transit Gateway | Network | Central hub for multiple VPN and VPC Peering |
| Route 53 | Network | A, AAAA, CAA, CNAME, MX, NAPTR, NS, PTR, Alias (S3, CloudFront, ELB, Beanstalk, VPC Interface Endpoint), Routing - simple, Failover, Geo-Location, Geo Proximity, Latency, Multi-value, Weighted. Health check.|
|Cloud Front | Network | AWS CDN, Web/RMTP, Caching at edge, Static Sites - EC2 / S3, WAF Integration|
| AWS Global Accelerator | Network | UPD/TCP Traffic via private link, 2 fixed IP Address, Forward to - ELB, EC2, EIP across regions Multi-region, Health check|
| Elastic Load Balancer (ELB) | Network | Internet Facing (DNS, Public IP, Private IP) or Internal (Private IP). Routing via Private IP. Routes to: Lambda, EC2, IP Range or even containers. Listener, Rules, Target Group.|
| Application Load Balancer (ALB)| Network | HTTP Request level, Advanced Routing, TLS Termination, Target Port, Cross-zone always ON. Health Check - Protocol, Path, threshold, interval, success code.|
| Network Load Balancer (NLB) | Network | TCP/UDP level, cross-zone off by default. NLB has **static IP** per AZ. TLS termination. Millions of request per second.|
| Simple Queue Service (SQS) | Message | Queue - Standard [120K, Visibility Timeout (0,30s,12h), ], FIFO [20K], Dead Letter. Delay Queue. Short/Long Polling. Message: 256KB - 2GB (SECL).|
| Simple Notification Service (SNS)| Notification | Pub/Sub - 1:M. Topic based - 100K Topic and 12M subscribers. 30K/s varies by region. Message (64KB chunks): 256KB - 2GB (SECL).|
| Amazon MQ Service | Message | On-Prem queue migration to cloud. Apache ActiveMQ broker - JMS, NMS, MQTT and web sockets. Encryption at REST and Transit. |
| Amazon Kinesis Data Streams | Streaming | Real-time, put to get latency < 1s. Maintains a copy of (immutable and unremovable) data (24h - 365d). Encryption. Shard holds Data Records made of Partition Key, Sequence Number and Actual Data (1MB). 1000 records/second or 1MB/s write, 2MB/s read - per shard. Classic has pull limits and shard read is shared, Enhanced Fan out gets 2MB/s per shard per consumer.|
| Kinesis Client Library (KCL) | Streaming | Manages record processor using one (DynamoDB) table per processor application per shard. Runs on EC2, Elastic Beanstalk and Data Centre servers. On Demand or Provisioned.|
| Amazon Kinesis Vide Streams | Streaming | Stream processing binary-encoded data such as video or audio. |
| Amazon Kinesis Data Firehose | Streaming | Near real-time (buffers for delivery), delivery service - S3, redshift, elastic search, splunk, http endpoint, DataDog, MondoDB, Relic, Lambda Transformation.|
| Amazon Kinesis Data Analytics | Streaming, Analytics | Apache Flink with Java and Scala for Data Streams. SQL for Firehose.|
| AWS Artifact | Security, Compliance | Security and Compliance Reports. Agreements with AWS.|
| Users | IAM | People / Application has ARN|
| User Groups | IAM | Groups users, users inherit permissions, Default 300 Groups, 10 Groups per user and 10 Policies per Group |
| Roles | IAM | Assumed by - Trusted users, AWS Services, Application. Federated (Web Identify / SAML2.0) /Cross-Account users (Trusted users need policies on both sides.). Temporary permissions. Services linked roles assumed by AWS Services only. |
| Access Analyzer | IAM, Reporting | Policies that enable access outside zone of trust|
| Credential Report | IAM, Reporting | IAM users, credentials, metadata about credentials usage and rotation| 
| Organizational Activity | IAM, Reporting | OU/Account based user activity |
| Service Control Policies (SCP)| IAM | Permission Boundaries, don't grant permissions, used with Organizations |
| AWS Key Management Service (KMS) | Security |Region-specific. CMK (Customer Managed, AWS Managed, AWS Owned), DEK, Key Policies, Grants | 
| Security Token Service (STS) | Security, IAM | Request temporary, limited-privilege credentials for IAM users or Federated Users. Best practice to turn of Regions not in use. |
| IAM Policy | IAM | Version, Statement [SID, Effect, Principal, Action, Condition, IP Address]. AWS Managed, Customer Managed or In-line Policies. Policy order: SCP, Resource-based Policy, IAM Permission Boundaries, IAM Policies|
| Disaster Recovery Strategies | DR | Backup and Restore (No infra), Pilot Light (Core with no running servers), Warm Standby (minimal implementation), Multi-site (active/active).|
| Cross Region Data Replication | DR | S3 cross-region replication, RDS cross-region replicas, Aurora Global Database, DyanmoDB global tables, DocumentDB global Clusters, Global Datastore for Amazon ElasticCache for Redis|
|Management...|||
| Amazon CloudTrail | Security, Compliance | Records every API call. Requests from SDK, CLI and Console are captured. New files every 5 mins and stored in S3. Can be delivered to CloudWatch Logs.|
| AWS CloudWatch | Security | Global service. CloudWatch Dashboards, CloudWatch Metrics and Anomaly Detection, CloudWatch Alarms, CloudWatch EventBridge, CloudWatch Logs, CloudWatch Insights.|
| Pricing Calculator | Cost | Estimate costs of AWS services |
| Cost Explorer | Cost | Analyze usage and cost. Base is free, API is charged. Hourly data is payable. Report generation.|
| Usage Report (CUR) | Cost | Details of Usage and Cost, CUR files land in S3, integration with Athena and Redshift+QuickShift. Cost allocation tags needs to be enabled |
| AWS Budgets | Cost | Set budgets and get alarms. Thresholds for max or min usage. Action via workflow or automatic to apply IAM or SCP policies.|
| Amazon Support Plans | Cost | Basic, Developer, Business, Enterprise On-Ramp, Enterprise.|
| Severless Application Model (SAM) | Compute ||