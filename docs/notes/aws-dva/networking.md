# Networking

!!! danger "Incomplete"
    In progress.

## IP Ranges
Reserved addresses with subnet 10.0.1.0/24

 * 10.0.1.0 - Network
 * 10.0.1.1 - AWS Routing
 * 10.0.1.2 - AWS DNS
 * 10.0.1.3 - AWS Future
 * 10.0.1.255 - Broadcast

## VPC

### Properties
 * Isolated piece of the AWS Cloud only accessible by your AWS Account
 * Define a name and a CIDR block from /16 to /28.

### Limits
 * 5 VPC per region per account
 * VPCs exist within a region.

## Subnets
### Properties
 * Reside inside a VPC and segment VPC.
 * CIDR must reside within the CIDR of the VPC.
 * Can be **Public** or **Private**.
 * Each subnet has **a** route table. 
 * A route table can be attached to multiple subnets. 
 * Each subnet comes with a default route table with a **local** route that can't be deleted.
 * Subnets have to reside within one AZs, can't span multiple AZs.

### Public Subnet
 * Needs an entry in the route table pointing to the Internet Gateway.

### Private Subnet
 * No route entry for the Internet Gateway.
 * Needs a route entry pointing to a configured NAT Gateway in a public subnet to get outbound communications to the Internet. 

## NACL - Network Access Control List
### Properties
 * Provides security for subnets and controls traffic in and out of subnets.
 * Default NACL is attached to each subnet created. Default NACL allows all traffic in and out. 
 * All NACLs have a default rule at the end of the list with Deny. Implicit Deny. 
 * There are Inbound NACLs and Outbound NACLs
 * NACLs are **stateless**.
 * Each subnet can have only one NACL.
 * Same NACLs can be associated with multiple subnets.
 * Evaluation stops at first match of a rule.

### Structure

| Inbound | Outbound |
| ------| ------ |
 Rule Number | Rule Number|
 Type (HTTP) | Type (HTTP)|
 Protocol (TCP) | Protocol (TCP)|
 Port Range (80) | Port Range (80)|
 Source (0.0.0.0/-) | Destination (0.0.0.0/-)|
 Action (Allow/Deny)| Action (Allow/Deny)|

## Security Groups
### Property
 * Security Groups work at the instance level. 
 * Rules are an explicit Allow, they can't be deny. 
 * All Rules are evaluated before a decision is made.
 * Implicit Deny if no rules match
 * There are inbound and outbound security groups
 * They are **stateful**
 * **Default** - All inbound from same security group, All Outbound Traffic allowed to everywhere. 

### Structure

| Inbound | Outbound |
| ------| ------ |
|Type (MySQL) | Type|
| Protocol (TCP) |Protocol (TCP) |
| Port Range (3306) |Port Range  |
| Source 10.0.1.0/24 |Source  | 

## Internet Gateway
 * Attaches to VPC and allows connections to the Internet.
 * Managed by AWS.

## NAT Gateway
 * Sits within the public subnet
 * Needs an EIP
 * Does not accept any inbound traffic from Internet
 * Its managed by AWS. Has high availability setup by AWS.

## Bastion Host
 * Resides on the public subnet, hardened, and allows incoming connections from Internet. 
 * Bastion hosts simply forwards incoming connections (ssh tunnel) to EC2s in the private subnet.
 * Bastion host is essentially an EC2 instance which is keep secured and tightly controlled.

## VPN Connection
 * On-prem to AWS
 * Customer Gateway (CGW) and VGW (Virtual Private Gateway)
 * Encrypted traffic over the Internet. 
 * AWS Subnet Route tables will need routes to the On-prem resources. 
 * VPN tunnel can only be initiate from CGW.
 * Idle activity causes connection drop. Monitoring to keep alive. 
 * Route Propagation can be turned on the route table and will allow routes to added to Route Tables.
 * BGP on CGW enables dynamic routing and is recommended
 * Security Groups also need to be configured for instances for the data connectivity. 

## Direct Connect
 * Private infrastructure and does not traverse the public network
 * Router on On-Prem, AWS Partner [Customer Side (Router) +  AWS Side (Router)], AWS Region.
 * Direct Connect enables connection to AWS Defined Region. 
 * This enables access to public and private resources on AWS.
 * The VPC would still need the Virtual Gateway (VGW) to enable on-prem traffic.
 * Private Virtual Interface / Public Virtual Interface defines whether routes are to private subnet or public resources. Private Virtual Interface connects to VGW and Private Virtual Interface connects to Region. 
 * Dedicated network route from on-prem to Direct Connect Location. 
 * Its private connection and speeds of 1-10GBPs

## VPC Peering
 * 1-2-1 connection only. Not transitive. 
 * CIDR blocks can't overlap.
 * Can peer VPC in different regions
 * Requester requests a peering connection, Acceptor Accepts it. 
 * Route tables of both VPC needs to be updated to point to the peered connection. 

## Transit Gateway
 * A central hub to connect all VPCs for peering and VPN connections. 
 * Saves from paired connections and 
 * Connectivity can be achieved by individual connection directly to Transit Gateway.
 * Centralized monitoring of network traffic as it goes through a central hub.


## Route 53
### Properties
 * Global network of DNS Authoritative servers.
 * Hosted zone - how to route traffic for a particular domain
   * Public zone - how is traffic routed on the public internet
   * Private zone - how is traffic routed inside AWS.

### Components
 * Routing Policies
 * Traffic Flow
 * Application Recovery Controller
 * Route 53 Resolver
 * Route 53 Resolver DNS Firewall
  
### Record Types
|Record Type | Description|
| ---------- | ----------- |
|A| Route traffic to a resource using IP4|
|AAAA| Route traffic to a resource using IP6|
|CAA| Certificate authority for domain and subdomains|
|CNAME|Used as an Alias of one name to another. Does **not** work for APEX.
|MX| Mail Server. Multiple records with priority numbers are used.|
|NAPTR | Name Authority Pointer|
|NS| Named server for hosted zone|
|PTR| Map IP to domain name |
|SOA|Start of Authority Records|

**Alias** is a route 53 specific extension to DNS. It can be used to map **Apex** domains which is not possible to do with CNAME. Routes traffic to:
 * S3 buckets
 * ELBs
 * Elastic Beanstalk
 * CloudFront Distributions
 * VPC Interface Endpoints


### Routing Policies
| Routing Policy | Description |
| -------------- | ------------|
| Simple | Default, no health check, single resource. Random if multiple available.|
| Failover | Route to different policy based on health checks, active passive failover. Primary and Secondary defined and must have health check defined.|
|Geo-Location | Geographic location/origin of traffic |
|Geo Proximity | Based on both users and resource location. Bias (-99 to 99) allows to adjust scope of resource and controls routing of traffic. Needs to be created using Route 53 Traffic Flow to create policy.|
| Latency | Routing based on lowest latency |
| Multi-value | Returns up to 8 records at once |
| Weighted | Distributes traffic according to weights. 0 means record never returned. | 

### Health Check
 * Endpoints are defined for health check
 * Sends request every 30s by default. Can also be done very 10s.
 * Health Checks can depend on other Health Checks and the cumulative value can be checked against defined threshold
 * Health check can be based on CloudWatch Alarm status.
 * Health checks are performed by regional health checkers
   * By IP or Domain Name
   * HTTP / HTTPS
   * HTTP protocol can look at particular response within the first 520 bytes of the response.
   * Notification when health checks fails can be setup. 

### Route 53 Traffic Flow
Traffic flow simplifies the process of creating and maintaining records in large and complex configurations. This is useful when you have a group of resources that perform the same operation, such as a fleet of web servers for the same domain.  

The traffic flow visual editor lets you create complex sets of records and see the relationships among them. You can combine multiple routing policies and health checks in a single configuration. Each configuration is called a traffic policy and it’s automatically versioned so you don’t have to start all over again when your configuration changes. Old versions of traffic policies continue to be available until you delete them. 

A traffic policy can define hundreds of records. Traffic flow creates all those records automatically when you create a policy record.  You create policy records to associate traffic policies with a domain or subdomain name records.  The traffic policy record appears in the list of records for the hosted zone. You can use the same traffic policy to create records in multiple public-hosted zones.  This is useful when you’re using the same hosts for multiple domains.  

Please note that the Geo-proximity routing policy is available only if you use traffic flow.

### Route 53 Resolver
The Route 53 resolver is the DNS service for VPCs that integrates with your data center. Connectivity needs to be established between data center DNS and AWS using a Direct Connect (DX) or a Virtual Private Network (VPN) connection.    

Endpoints for DNS queries into and out of VPC are configured through IP address assignment in each subnet needing the Route 53 Resolver. Inbound queries allow DNS queries that originate in your data center to resolve AWS-hosted domains.  Outbound DNS queries are enabled using conditional forwarding rules. Domains hosted in your data center can be configured as forwarding rules in Route 53 resolver.  

### Route 53 Resolver DNS firewall
Finally, the Route 53 Resolver DNS firewall is a managed firewall service for DNS queries that start in your VPCs.  Firewall rule group to define how Route 53 Resolver DNS firewall inspects and filters traffic coming from VPC.  Each rule consists of a domain list to inspect in DNS queries and an action to take when a query results in a match.  Actions can be:
 * A matching query to go through
 * Allow it to go through with an alert 
 * Block it and respond with a default or a custom response.  

To begin the filtering you associate the rule group to the VPCs you want to protect.  Route 53 resolver DNS firewall will apply your defined filtering rules to the outgoing VPC traffic.

### Route 53 Application Recovery Controller
Route 53 application recovery controller is a set of capabilities that continuously monitors an application’s ability to recover from failures and controls application recovery across multiple availability zones, regions, and possibly your own data center environments. 

#### Readiness Check
You can define a readiness check to monitor AWS resource configurations, capacity, and network routing policies. They can check the configuration of Auto Scaling Groups, Amazon EC2 instances, Amazon EBS volumes, Elastic Load Balancers, RDS instances, and DynamoDB tables among others.  

These readiness checks ensure that the recovery environment is scaled and configured to take over when needed. You can check AWS service limits to verify that enough capacity can be deployed.   You can also verify that capacity and scaling setups for applications are exactly the same across regions before a failover takes place. 

### Routing Controls
Readiness Checks work with Routing Controls to give you a way to failover an entire application based on custom conditions like application metrics, partial failures, increased error rates, or latency. You can also failover manually.   With Routing Controls you can shift traffic for maintenance purposes or during a real failure scenario. 
A control panel is a group of routing controls for an application. As mentioned earlier, A routing control is used to turn traffic flow ON or OFF to individual cells in Regions or Availability Zones.  

### Safety Rules
You can also apply safety rules to routing controls as a way to prevent a failover to an unprepared replica.  


## CloudFront
 * AWS CDN
 * Uses Edge locations around the world to delivery best performance through cached data close to the user. 
 * Distributions Types:
     * Web - static / dynamic content, media using http/https, submit data via web forms, live streaming in real-time
     * RTMP Distribution - Adobe Flash Media distribution. User can start watching video before file downloads. Source can only be **S3 bucket** not EC2.
 * Caching behavior options can be controlled via methods and policies
 * Can select Regions where edge location distributions will be places/used.
 * WAF access control list can be placed on distribution
 * Implementation of additional encryption can be setup with SSL Certificates
 * Pay as you use for the service.
 * CloudFront can work with any **public** endpoint - AWS or Non-AWS.

### Dynamic Content
 * Origin can be EC2 server or Lambda functions

### Static Content
 * Origin can be S3 Bucket. If S3 is static hosting website, must put point to the static site endpoint.
 * If S3 is used - Origin Access Identity (OAI) can be used to restrict access stopping direct access of S3 without cloudfront. 

### Configuration Options
 * Distributions
 * Origin Domain - Can be S3 or ALB which points to compute resources.
 * HTTP/HTTPS protocol
 * Cache time to Live (TTLs)
 * Custom Headers 
 * Price class - All Locations, NA + EU, NA + EU + Asia + Middle East + Africa
 * AWS WAF web ACL Associations
 * Alternate domain names
 * Custom SSL
 * Standard logging
 * IP6 support

### Caching Layers
 1. Cloudfront Distributions - Edge Locations 
 2. Regional Edge Caches
 3. AWS Origin Shield - This is **not** enabled by default. Allows for consolidated requests.

### Security
 * SSD - encrypted at rest
 * user restrictions - Signed URLs and cookies
 * WAF protection via Web ACL
 * Geo restrictions to restrict users from certain locations.


### Integrations
 * IAM - Admin access
 * CloudWatch Alarms - monitoring
 * CloudTrail Logs 
 * CloudFront Logs - Standard and Real-time. 

### Patterns
#### ALB and EC2
 * Route53 - Alias to CloudFront Distribution DNS
 * CloudFront Distribution - Add custom header to security communication to ALB. On CloudFront also needs to configure ```Origin Protocol Policy``` to HTTPS to secure communication to ALB ensuring that the custom header is kept secret. ***Rotation*** of custom header should be done of the custom header. 
 * ALB - Setup Secure Listener and its rule to only forward to target group if the custom header from CloudFront Distribution is present in request. 
 * EC2 - No change

#### S3 Content Delivery
 * Route 53 - Use Alias with CloudFront Distribution name to forward traffic to CloudFront. 
 * CloudFront Distribution - Create Origin Access Identify (OAI) and associate with distribution. SSL certificate via ACM to enforce HTTPS.
 * S3 - S3 bucket policy. Only accepts requests from OAI ARN. Block Public Access. This can be automatically done from the CloudFront Distribution OAI Configuration screen. 

!!! note
    CloudFront only works with ACM certificates from the North Virginia Region. 

!!! note
    S3 only works with HTTP. 

## AWS Global Accelerator
 * Get UDP and TCP traffic from end users to AWS endpoints via AWS infrastructure rather than public network. Optimized path for lowest latency and avoids unhealthy resources
 * Uses 2 fixed IP addresses. Can use own IP or from AWS pool. These are mapped to multiple Global Accelerator endpoints. 
 * Global Accelerator can be multi-region and can forward traffic to:
    *  ELB
    *  EC2
    *  EIP
*  Creation has 4 steps:
    *  Create accelerator, give it name and select 2 IP Address.
    *  Listener - TCP/UDP based and ports
    *  Associate listener with Endpoint Group with multiple endpoints which are for specific Region. Traffic dials can be used to weight traffic routing. Helps with Blue/Green deployments. Setup of health  checks can be done at this stage
    *  Register and associate endpoints for Applications. Each endpoint can also have a weighted traffic routing within the endpoint group.
*  Client affinity is supported for continued connections.

## ELB - Elastic Load Balancer
Targets could be a fleet of:

 * EC2 instances, 
 * Lambda functions, 
 * a range of IP addresses, 
 * or even Containers.

Managed by AWS and is elastic. 


### Comparison
[AWS Comparison Table](https://aws.amazon.com/elasticloadbalancing/features/#compare)

### Components
 * **Listener** - The listener defines how your inbound connections are routed to your target groups based on ports and protocols set as conditions.
 * **Target Groups** - A target group is simply a group of resources that you want your ELB to route requests to, for example a fleet of EC2 instances. 
 * **Rules** - Rules are associated to each listener that you have configured within your ELB, and they help to define how an incoming request gets routed to which target group. 



### ELB Nodes
An ELB node will need to be placed to any Availability Zones for which you want to route traffic to. Without the Availability Zone associated, the ELB will not be able to route traffic to any targets within that Availability Zone even if they are defined within the target group. This is because the nodes are used by the ELB to distribute traffic to your target groups. 

### Internal or Internet-facing ELBs.
 * **Internet-facing ELBs** - public DNS name, public IP address, internal IP address 
 * **Internal** - Internal IP address. 

Communication to Target Group is only done via Internal IP. 


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


### Health Check
Health checks. The ELB associates a health check that is performed against the resources defined within the target group. These health checks allow the ELB to contact each target using a specific protocol to receive a response. If no response is received within a set of thresholds, then the ELB will mark the target as unhealthy and stop sending traffic to that target.


## Server Certificate (SSL/TLS)
HTTPS on ALB requires additional configuration.
The server certificate used by ALB is X.509. Certificate can be issued by ACM (AWS Certificate Manager). ACM doesn't work in every region and there you need your own certificates in IAM. 

NLB also support TCP/TLS certificate based termination. 

Certificate Selection:

   1. Choose certificate from ACM
   2. Upload to ACM
   3. Choose from IAM
   4. Upload to IAM
