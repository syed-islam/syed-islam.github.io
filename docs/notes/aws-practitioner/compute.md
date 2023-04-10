# Compute

## EC2 -  Elastic Cloud Compute
### Amazon Machine Images - AMI
* Large selection, own AMI, market place AMI
  
### Instance types 
  * An instance type simply defines the size of the instance based on a number of different parameters, these being ECUs. This defines:
    * vCPUs this is the number of virtual CPUs on the instance. 
    * Physical processor, this is the process speed used on the instance. 
    * Clock speed, it's clock speed in gigahertz. 
    * Memory, the amount of memory associated. 
    * Instance storage this is the capacity of the local instance store volumes available. 
    * EBS optimized available, this defines if the instance supports EBS optimized storage or not. 
    * Network performance, this shows the performance level of rate of data transfer. 
    * IPV6 support, this simply indicates if the instance type supports IPV6. 
    * Process architecture this shows the architected type of the processor. 
    * AES-NI, this stands for advanced encryption standard new instructions and it shows if the instance supports it for enhanced data protection. 
    * AVX this indicates if the instance supports AVX which is advanced vector extensions, which are primary used for applications focused on audio and video, scientific calculations and 3D modeling analysis. 
    * And finally Turbo which shows if the instance supports intel turbo boost and AMD turbo core technologies. 
  * Instance Family
    * Micro instances - These are ideal for very low throughput use cases such as low traffic websites. 
    * General-purpose - balanced mix of CPU memory and storage making them ideal for small to medium databases, tests and development servers and back-end servers. 
    * Compute optimized - focus on compute. They have the highest performing processes for high-performance front end servers, web servers, high-performance science and engineering applications and video encoding and batch processing. 
    * GPU - GPU stands for graphics processing unit, optimized for graphic intensive applications. 
    * FPGA - field programmable gate arrays. To create application specific hardware accelerations when used with applications that use massively parallel processing power such as genomics and financial computing. 
    * Memory optimized -  primarily used for large-scale enterprise class in-memory applications, such as performing real time processing of unstructured data, Microsoft SharePoint. 
    * Storage optimized - optimized for enhanced storage. SSD backed instant storage for low latency and very high I/O, input/output performance, including very high IOPS which is input/output operations per second. And these are great for analytic workloads and no SQL databases. Data file systems and log processing applications. 


### Instance purchasing options
#### on-demand instances 
  * unpredictable
  * testing and dev.
  
#### reserved instances
  * 75% discount
  * 1- 3 years
  * upfront payment, partial upfront, no up-front.
  * long-term committed, steady workloads
 
#### scheduled instances 
  * fixed recurring schedule
  * better rates than on-demand. charged even not used. 
  * scheduled but not continuously running workloads
  

#### spot instances 
  * bid higher than the current spot price
  * 2 minute warning if bid is not met
  * low cost
  * suddenly removed - batch jobs and background jobs. 

#### on-demand capacity reservations. 
  *  reserve capacity based on different attributes
  *  this can be used with reserved instances plan to save money

### Tenancy
#### shared tenancy
  * multiple customers on same host
  * AWS manages security
#### dedicated instances
  * hardware only be used by one aws account
  * additional charge 
  * for security and compliance reasons. 
#### dedicated hosts
  * additional visibility into hardware
  * placement of instances can be controlled
  * socket and core visibility for licensing (per vm license)
  * compliance, security and regulation requirements
  
### user data 
 * runs onl once during first boot
 * pull software updates and install during first boot
  
### storage options 
#### Instance Store
 * instance backed storage - all data is lost when stopped or terminated. Reboot retains data. Not detachable. 
 * Ephemeral storage / temporary. 
 * No additional cost and included as part of EC2. 
 * very high i/o speed. I3 - 3.3 million read IOPS/1.4 million write IOPS. 
 * Good for cache/buffer.
 * Not all instances support instance type volumes. The sizes will increase with the size of the EC2 instance.
 * Same security and policy as the EC2. 


#### EBS Storage
 * EBS storage - attached by network, persistent, EBS is auto replicated by AWS for resiliency, encryption and backup, size and performance can vary, Detachable and re-attachable. 
   *  delete on termination. This is set to True by default for root volume. 
*  
  

### security
  * Security Group - instance level firewall. Inbound and Outbound control. 
    * Default
      * All inbound traffic from same SG.
      * All outbound traffic to any destination.
  * Key pair - Public and private key pair. Private key is your and public one remains with AWS. Used to decrypt password on windows or ssh for linux. Same key pair can be used across multiple instances. 
  * OS and its patches are your responsibility. 

### Status Checks
 * System Status Check - Likely H/W issue, stop and start so that it launches somewhere else. Do not reboot as likely to remain on same server. 
 * Instance Status Check - EC2 instance itself, network issue, corrupted file system etc. Require user intervention. 

## ECS - Elastic Container Service
 * No management software needed
 * No monitoring software needed
 * Clusters are region specific can't scale across regions. 
 * Clusters act as a resource pool and dynamically scalable
 * Multiple instance type is possible
 * Docker Demon and ECS agent on nodes of a cluster allowing ECS commands to be translated to Docker Commands. 

### Launch Options

 * AWS Fargate
   * CPU and Memory required
   * Networking
   * IAM policies
   * Package application into containers
 * EC2
   * instance and instance patching
   * more granularity
   * security and compliance controls

#### AWS Fargate
Cluster management across EC2 instances. 
AWS Fargate is an engine used to enable ECS to run containers without having to manage and provision instances and clusters for containers. 

**Docker** is piece of software that allows you to automate the installation and distribution of applications inside Linux Containers. 

So what are containers? A **Container** holds everything that an application requires to enable it to run from within it's isolated container package. This may include system libraries, code, system tools, run time, etcetera. 


## ECR
 * Fully managed by AWS for docker imgaes

### Registry
 * Host and store docker images
 * Your account w/r to images in registry
 * IAM policies can control access to registry
 * docker client needs to authorize to the default registry
 
### Authorization Token
 * AWS CLI get login for authorization. Outputs a docker login command
 * Docker command to be used in docker client for login
 * Token lasts for 12 hours. 
 *  ```ecr:getAuthorizationToken``` API call for an AWS user.
   
### Repository
 * Grouping of images into repository for storage
 * IAM and registry policies. IAM policies exist for RegistryFullAccess, RegistryPowerUser, RegistryReadOnly. 
  
### Repository Policy
 * Resource based policies and requires a principal
 * Created within ERC itself and within the repositories. 


## EKS - Elastic Container Service for Kubernetes
 * open source container orchestration tool. 
 * Can run Docker and Rocket containers
 * AWS takes care of management infrastructure knowns as control plane. Ths is done across multi-AZ for resilience. 
 * User needs to maintain the work nodes. 
 * Control Plane does scheduling, tracking stake of all containers. It is made of:
   * Number of APIs
   * Kubelet Process
   * Kubernetes Master
 * Nodes - Worker machine. On-Demand EC2 instance and includes software to run containers via specific AMI which ensures Docker and Kublet in installed. Provisioned worker nodes connect to an EKS endpoint. 

### Working with EKS
1. EKS Service Role - ```AmazonEKSServicePolicy``` and ```AmazonEKSClusterPolicy```. Can be assigned to multiple clusters. 
2. EKS Cluster VPC - use Cloud Formation to run a specific template
3. Install kubectl - kubernetes command line
4. Install AWS-IAM-Authenticator - needed to authenticate to EKS Cluster
5. Create EKS Cluster - use VPC details from step 2.
6. Configure kubectl for EKS - ```update-kubeconfig``` on AWS CLI create a `kubeconfig` file for EKS cluster 
7. Provision and configure worker nodes - can be done via cloud formation using a template. 
8. Configure the worker node to join the EKS Cluster. 

### Elastic BeanStalk
 AWS Elastic Beanstalk is an AWS managed service that allows you to upload the code of your web application, along with the environment configurations, which will then allow Elastic Beanstalk to automatically provision and deploy the appropriate and necessary resources required within AWS to make the web application operational. 
 
 These resources can include other AWS services and features, such as EC2, Auto Scaling, application health-monitoring, and Elastic Load Balancing, in addition to capacity provisioning. 
 
 Elastic Beanstalk is able to operate with a variety of different platforms and programming languages, making it a very flexible service for your DevOps teams. There is no cost associated with Elastic Beanstalk, however, any resources that are created on your application's behalf, such as EC2 instances, you will be charged for as per the standard pricing policies at the time of deployment. 

#### Components

  * An **application version** is a very specific reference to a section of deployable code. The application version will point typically to S3, simple storage service to where the deployable code may reside. 
  * An **environment** refers to an application version that has been deployed on AWS resources.
  * An **environment configuration** is a collection of parameters and settings that dictate how an environment will have its resources provisioned by Elastic Beanstalk and how these resources will behave.
  * The **environment tier**. This component reflects on how Elastic Beanstalk provisions resources based on what the application is designed to do. You can deploy your application across one of two different environment tiers, either the ***web server tier*** or the ***worker tier***. The web server environment is typically used for standard web applications that operate and serve requests over HTTP port 80. This tier will typically use service and features such as Route 53, Elastic Load Balancing, Auto Scaling, EC2, and Security Groups. The worker environment is slightly different and are used by applications that will have a back-end processing task that will interact with AWS SQS, the Simple Queue Service. This tier typically uses the following AWS resources in this environment, an SQS Queue, an IAM Service Role, Auto Scaling, and EC2. 
  * The **configuration template**. This is the template that provides the baseline for creating a new, unique environment configuration. 
  * The **platform** is a culmination of components in which you can build your application upon using Elastic Beanstalk
  * **Applications**. Within Elastic Beanstalk, an application is a collection of different elements, such as environments, environment configurations, and application versions.


## Lambda

### Properties
* serverless
* 

### How does it work
1. Write code and upload to Lambda. Code can contain other libraries.
2. Trigger the lambda to run the code. 
3. Computer power is ascertained and lambda code executes
4. sub ms billing by aws. 

### Components
  *  **Lambda application**. Lambda function. The Lambda function is compiled of your own code that you want Lambda to invoke as per defined triggers. 
  *  **Event source**. Event sources are AWS services that can be used to trigger your Lambda functions, or put another way, they produce the events that your Lambda function essentially responds to by invoking it. 
  *  **The Trigger** is essentially an operation from an event source that causes the function to invoke. So essentially triggering that function. For example, an Amazon S3 put request could be used as a trigger. 
  *  **Downstream Resources**. These are the resources that are required during the execution of your Lambda function. For example, your function might call upon accessing a specific SNS topic, or a particular SQS queue. So they are not used as the source of the trigger, but instead they are the resources to be used to execute the code within the function upon invocation.
  *  **Log streams**. In an effort to help you identify issues and troubleshoot issues with your Lambda function, you can add logging statements to help you identify if your code is operating as expected into a log stream. 


## AWS Batch
Batch computing is primarily used in specialist use cases which require a vast amount of compute power across a cluster of compute resources to complete batch processing executing a series of jobs or tasks. 

### Components
 1. **Jobs** - A job is classed as a unit of work that is to be run by AWS Batch. For example, this can be a Linux executable file, an application within an ECS cluster or a shell script. 
 2. **Job definitions** - These define specific parameters for the jobs themselves. They dictate how the job will run and with what configuration. Some examples of these may be how many vCPUs to use for the container, which data volume should be used, which IAM role should be used, allowing access for AWS Batch to communicate with other AWS services, and mount points. Can also define instance types and bid for *spot instances.*
 3. **Job queues** - Jobs that are scheduled are placed into a job queue until they run. It's also possible to have multiple queues with different priorities if needed.
 4. **Job scheduling** -  The Job Scheduler takes control of when a job should be run and from which Compute Environment.
 5. **Compute Environments** - These are the environments containing the compute resources to carry out the job. The environment can be defined as managed or unmanaged. Managed environments automates this using ECS. Unmanaged requires manual creation of ECS clusters. 

## Amazon Lightsail
Its a virtual private server (VPS) much like EC2. Simple, quick, easy to use and low cost point. 
Host small website and blogs etc. 
Multiple lightsail can be used and possible to connect to other infrastructure. 
Lightsail sits outside the management console and configuration is a single page which is a simple version of EC2. 
Pricing is per usage basis and is very simple to pick based on the requirements. 

## ELB - Elastic Load Balancer
Targets could be a fleet of 
 * EC2 instances, 
 * Lambda functions, 
 * a range of IP addresses, 
 * or even Containers.

Managed by AWS and is elastic. 

### ELB Nodes
An ELB node will need to be placed to any Availability Zones for which you want to route traffic to. Without the Availability Zone associated, the ELB will not be able to route traffic to any targets within that Availability Zone even if they are defined within the target group. This is because the nodes are used by the ELB to distribute traffic to your target groups. 

### Cross-Zone load balancing
 * Not set - distributes to nodes
 * Set - distributes to targets evenly. 
 * Default - ALB on,  NLB off

### ALB
 * HTTP/HTTPs protocol.
 * Request level
 * Advanced Routing
 * TLS Termination
 * Route to particular ports / targeted 
 * Visibility features for application architecture.
 * cross-zone is always on. 

####  Configuration

##### Target Group Configuration

Define a Target Group, consisting of:

 * Type
     * Instance
     * IP
     * Lambda
 * Protocol, Port and VPC
 * Health check
     * Protocol
     * Path
     * Healthy/unhealthy thresholds
     * Interval
     * Success codes
 * Register Targets in the group

##### Load Balancer Configuration

 * Public / Private
 * Listeners
   * Rules can be added under listeners
   * Multiple Rules can exist.
 * Select AZs for node deployment
 * Security Group for the Load Balancer
 * Configure Routing to Target Group



### NLB
 * connection level
 * ultra-high performance - millions of requests per second. 
 * TCP/UDP protocol. Layer 4.
 * Listeners - TCP/TLS/UDP.
 * cross-zone can be turned on or off, default off. 

If your application requires a *Static IP* then NLB is the only option. 

Once a connection is established, the connection remains open for the duration of the request. 

####  Configuration
 *  Public / Private
 * Listeners
   * Rules can be added under listeners
   * Multiple Rules can exist.
 * Select AZs for node deployment
 * Security Group for the Load Balancer
 * Configure Routing to Target Group

### Classic Load Balancer
 * Classic environment
 * Operates at both request and connection level. 

!!! note
    For target we select EC2 instances directly and not target groups.

### Components
 * **Listener** - The listener defines how your inbound connections are routed to your target groups based on ports and protocols set as conditions.
 * **Target Groups** - A target group is simply a group of resources that you want your ELB to route requests to, for example a fleet of EC2 instances. 
 * **Rules** - Rules are associated to each listener that you have configured within your ELB, and they help to define how an incoming request gets routed to which target group. 

### Health Check
Health checks. The ELB associates a health check that is performed against the resources defined within the target group. These health checks allow the ELB to contact each target using a specific protocol to receive a response. If no response is received within a set of thresholds, then the ELB will mark the target as unhealthy and stop sending traffic to that target.

### Internal or Internet-facing ELBs.
 * **Internet-facing ELBs** - public DNS name, public IP address, internal IP address 
 * **Internal** - Internal IP address. 

Communication to Target Group is only done via Internal IP. 

### Comparison
[AWS Comparison Table](https://aws.amazon.com/elasticloadbalancing/features/#compare)

## Server Certificate (SSL/TLS)
HTTPS on ALB requires additional configuration.
The server certificate used by ALB is X.509. Certificate can be issued by ACM (AWS Certificate Manager). ACM doesn't work in every region and there you need your own certificates in IAM. 

Certificate Selection:
 1. Choose certificate from ACM
 2. Upload to ACM
 3. Choose from IAM
 4. Upload to IAM


## EC2 Auto Scaling Group

**AWS Auto Scaling** can handle scaling for Amazon ECS, DynamoDB and Amazon Aurora. 

### Why
 * Automation
 * Customer Satisfaction
 * Cost Reduction

### Components

#### 1. Launch Template Configuration
Two Options: Launch Template / Launch Configuration
Include:
 * AMI
 * Instance Type
 * Spot instance or not
 * Public IP Address
 * user data
 * storage volume and configuration
 * Security Groups

##### Launch Template
Newer version of Launch Configuration

Create a Template:
 * Template or Version
 * Source Template
 * AMI
 * Instance Type
 * Key/Pair
 * VPC/Classic
 * Security Groups
 * Storage
 * Tags
 * Instance specific configurations (loads of them)
 * user data

##### Launch Configuration

Create a Configuration:
 * AMI
 * Instance Type
 * Spot or not
 * IAM role
 * Limited instance specific options
 * user data
 * Storage
 * Security Groups


##### Difference
 * Single page for Launch Template
 * Advanced options in Launch Template


#### 2. Auto Scaling Group

##### Group
 * Launch Template / Configuration choose. 
 * Adhere to Launch Template for fleet or combine purchase options
 * Group Size
 * Network --> VPC and Subnets
 * Association to Load Balancer
 * Instance Protection (from scale in)
 * service-linked role
 * Keep to size or use policy to scale

##### Policy
 * Minimum and Maximum Size
 * Policy Type
   * Simple
     * Increase via Alarm which has metric of CPU Utilization add single instance
     * Decrease via Alarm which has metric for CPU utilization remove single instance
     * Cooldown - default 300s
     * Health Check Grace - default 300s

!!! note
    Associate ASG directly to the Classic Load Balancer or to a Target Group from its configuration. ALB / NLB can then forward traffic to the target group and would automatically pickup all the EC2 instances in the ASG for load balancing. 

## FAQ


## Outstanding Questions


