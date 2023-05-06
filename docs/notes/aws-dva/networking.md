# Networking

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
  
### Record Types
|Record Type | Description|
| ---------- | ----------- |
|A| Route traffic to a resource using IP4|
|AAAA| Route traffic to a resource using IP6|
|CAA| Certificate authority for domain and subdomains|
|CNAME|Used as an Alias of one name to another. Does **not** work for APEX.
|MX| Mail Server|
|NAPTR | Name Authority Pointer|
|NS| Named server for hosted zone|
|PTR| Map IP to domain name |

**Alias** is a route 53 specific extension to DNS. Routes traffic to:

 * S3 buckets
 * ELBs
 * Elastic Beanstalk
 * CloudFront Distributions
 * VPC Interface Endpoints


### Routing Policies
| Routing Policy | Description |
| -------------- | ------------|
| Simple | Default, no health check, single resource.|
| Failover | Route to different policy based on health checks, active passive failover|
|Geo-Location | Geographic location/origin of traffic |
|Geo Proximity | Based on both users and resource location. Bias allows to adjust scope of resource and controls routing of traffic. |
| Latency | Routing based on lowest latency |
| Multi-value | Returns up to 8 records at once |
| Weighted Routing Policy | Distributes traffic according to weights | 

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
