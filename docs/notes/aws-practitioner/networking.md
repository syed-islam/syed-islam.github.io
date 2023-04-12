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
#### Inbound
 * Rule Number
 * Type (HTTP)
 * Protocol (TCP)
 * Port Range (80)
 * Source (0.0.0.0/-)
 * Action (Allow/Deny)

#### Outbound
#### Inbound
 * Rule Number
 * Type (HTTP)
 * Protocol (TCP)
 * Port Range (80)
 * Destination (0.0.0.0/-)
 * Action (Allow/Deny)

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
#### Inbound
 * Type (MySQL)
 * Protocol (TCP)
 * Port Range (3306)
 * Source 10.0.1.0/24

#### Outbound
 * Type
 * Protocol
 * Port Range
 * Destination


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


## Outstanding Question
