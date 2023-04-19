# Domains covered in the Exam
1. Security and Compliance
2. Technology - CORE AWS services
3. Billing and Pricing
4. Cloud Concepts

## Cloud Concepts
`Cloud Computing`
:   Cloud computing is a remote virtual pool of on-demand shared resources offering to compute, storage, database and network services that can be rapidly deployed at scale.

`Resources Types`
:   Compute, Storage, Database and Network.

`Cloud model types`
:   Public Cloud, Private Cloud, Hybrid Cloud. These are differentiated based on Security, Data Location, Capital Expenditure, Operational Expenditure and Tenancy.

`Cloud Service Models`
:   Infrastructure as a Service (IaaS), Software as a Service (SaaS) - Gmail, Platform as a Service (PaaS) -

`Dedicated Host`
:   Choose instance placement, visibility of cores and sockets, meets licensing needs. 

`Dedicated Instance`
: More costly than shared, uses dedicated hardware without the visibility. 

`High Availability`
:   Replication across multiple geographical zones. 


### Benefits of Cloud:
1. On-demand
2. Scalibility
3. Economy of Scale
4. Flexibility & Scalibility
5. Growth
6. Utility based metering

### Use cases for Cloud Computing:
* Traffic Bursting
* Backup and Disaster Recovery
* Test and Dev environments. 
* Proof of Concepts. 
* Big Data and Data Manipulation

### AWS Global Infrastructure
#### Availability Zone
At least one more AZ close to an AZ with high-speed, low-latency connectivity for data replication. In reality multiple-AZs are linked together. AZs will be in the same geographic area but will have independent power and networking to ensure that failure in one doesn't impact another. 

Multi-AZ deployment is best practice and maintains high availability of infrastructure in architecture design. 

AZ names us-east-1**a** may not designate the same AZ across accounts. This is done by AWS for better load balancing. 

61 AZs at present with another 12 planned. 

#### Region
Region is made up of a group of AZs within a certain geographical region. Every region is independent of one another will have at least *three* AZs. Regional deployments help with:
1. latency
2. regulation, laws and compliance 
3. high availability and resiliency

Most services are region specific and not all services are available in every region. 

**IAM** and **CloudFront** are not tied to a specific region. 

**AWS GovCloud** acts as an isolated region only available to the government and government-regulated industries that must meet *strict* guidelines. 

20 Regions at present with another 4 planned. 

#### Edge Location
Places in major cities and highly populated areas and far outnumber the number of AZs. They are not used for traditional infrastructure. 
They are used by **Amazon CloudFront** and **Lambda@Edge** for cache data and to reduce latency for end-user access by using edge location at CDN. 

#### Regional Edge Cache
Type of Edge Location. These sit between Cloud Front Origin servers and Edge Locations and have larger cache-width.

## FAQ
1. Dedicated Instance vs Dedicated Host. 

## Network Infrastructure
1. VPC - Virtual Private Cloud (Virtual Networks)


## Monitoring
### CloudWatch
 * metrics for cluster size scaling up and down for ECS


## AWS Well-Architected Framework

### Operational Excellence
aims at constant improvement and efficient managing of workloads, as well as gaining operational insights and continuous improvement of processes and procedures to support business value

#### Principles
1. Operations-as-Code
2. Frequent and reversible changes
3. Evolve procedures alongside the workload
4. Failure prevention
5. Learning from operational failures

### Security
describes how to protect data, systems, and components using cloud technologies, how user rights and privileges are correctly managed, and how integrity and conformity of information is maintained.

#### Principles
1. Implementation of a strong identity foundation
2. Traceability
3. Apply security at all levels
4. Security by automation
5. Data protection
6. Access
7. Incident preparation

### Reliability
focuses on the ability of a workload to perform correctly and as intended at the expected time. Including quickly recovery and prevention from failures

#### Principles
1. Automatic recovery
2. Test recovery procedures
3. Horizontal scaling for better availability
4. Stop guessing capacity
5. Manage changes in automation


### Performance Efficiency
Efficient allocation and right-sizing of computing resources by the system requirements and interception of demand changes

#### Principles
1. Make use of advanced technologies
2. Global in minutes
3. Serverless architectures
4. Experiment more
5. Know the options - make the right choices

### Cost Optimization
Understanding and controlling expenses, avoiding unnecessary costs, and analyzing spend in detail

#### Principles
1. Implement Cloud Financial Management
2. Adopt a consumption model
3. Measure overall efficiency
4. Stop spending money on data center operations
5. Analyze and attribute expenses







