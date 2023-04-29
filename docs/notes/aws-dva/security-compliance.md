# Security and Compliance

## AWS Artifact
 * Self-service AWS Security Reports
 * View and manage contacts between you and AWS for Account or Organization. 
 * Reports
     * Audit Compliance Artifacts/Reports, can be shared with IAM users (Auditors).
     * Audit artifacts validate AWS portion of the service not user
 * Agreements
     * Can be applied to all Accounts in an Organization
     * NDA needs to be signed before the agreement can be viewed

## IAM

### Components
 * Identity - username - Which user/who is it?
 * Authentication - Password - Prove that you are the users.
 * Authorization - Access to services and features. 

### Authentication

 * username/password
 * MFA
 * Federated Access (no AWS IAM user credential needed)

### Features
 * Setup password complexity requirements. Enforce password policies. 
 * MFA required (should be setup for elevated users at least)
 * IAM user sign-in links (customized)


### Access Management - Resources
#### Users
 * Can be people 
 * Can be Applications
 * Has a specific ARN
  
#### User Groups
 * Groups users
 * Associated to IAM policies 
 * Used to often related to a job-role.
 * Users inherit the permissions of the group..
 * Default 300 Groups
 * An user can be attached to 10 Groups and 10 policies can be attached to a group.
  
#### IAM policies
 * AWS Managed Policies  - written by AWS and stored in library
 * Customer managed Policies - defined by customer and stored in library
 * in-line policies - policies attached directly to a user, group or role. 

!!! note "Size Limits"
    2kb for user policies, 5kb for groups, 10kb for roles.

#### Roles
 * Identity with associated permissions
 * Assumed by identity or service that need to acquire temporary permissions. 
 * No passwords, assumed if correctly permissioned.
 * Roles can be assumed by - trusted users, AWS services and applications. This is done using a trust relationship.
 * Policies are associated with Roles just like other identities
 * Roles an be assumed cross-account by users, federated users as well. 
 * Temporary ability to get permissions or capabilities, by using Roles.
 * When users assume a role, users existing permissions are replaced and only has the permissions attached to the role. 
 * For a Role, trusted entity has to include a user, as well as, a policy needs to be associated with the user to be able to assume the role. So this has to be both way, trusted by the role policy and policy for the user to assume the role. 
  

##### AWS Service Roles
 * Allows AWS services to access other AWS resource on your own account. 
 * For example - EC2 gets access to AWS Resources. EC2 needs to access to S3. Removes the need to store credentials locally.
 * **Service-linked roles** Can only be used by specific AWS services to interact with other AWS services. Created at the time of first use and uses AWS managed polices. Example - ```AWSServiceRoleForAmazonSSm```, ```AWSServiceRoleForCloudTrail``` and ```AWSServiceRoleForCloudWatchEvents```. It will have a fixed service principal that can't be edited. 

##### Federated Access to Roles
 * Two options:
     * Web Identity - Large base of external users using Google, Facebook etc. 
     * SAML2.0 federation - Employees of the firm using existing directory services
 * Identity Provider Authenticates the user and Service Provider enables access to services once authentication. 
  



#### Identify Providers
 * Needed for federated access
 * Active Directory or Google Identity Provider are examples



### Access Reports
#### Access Analyzer
 * Policies within zone of trust allows access outside your zone of trust.
 * Any outside access will be highlighted as a finding

#### Credential Report
 * List of all IAM users and credentials as a csv
 * Last usage, last password change and MFA setup can also be seen

#### Organizational Activity
 * Select organizational unit/account based user activity and services accessed by the users

#### Access Advisor
 * Services that a user can access and which policies are granting the access
 * Last time services were accessed by the user
 * This option sits under a user

#### Service Control Policies
 * SCPs are used with organizations to setup boundaries or permissions. They don't grant permissions
 * Shows SCPs 



### Best Practice
 * Least privilege access
 * Identity Federation - single sign-on
 * Enable MFA
 * Rotate Credentials regularly
 * Enable IAM Access Analyzer

## User Dashboard
 * Shows the list of users and pertinent information about the users.
 * Attributes
   * Username
   * Path - organizational structure representations. Paths can also be referred to in policies
   * Group - which groups user belongs to
   * Last login
   * MFA
   * Password age
   * Console last sign-in
   * Access Key ID - Active/Inactive and ID
   * Active Key Age
   * ARN
   * Console Access 
   * Signing Certificates




## AWS KMS
 * The Key Management Service (KMS) is a managed service used to store and generate encryption keys that can be used by other AWS services and applications to encrypt and decrypt your data.
 * AWS administrators do **not** have access to KMS keys and cannot recover deleted keys. 
 * KSM keys are for encryption at rest only. SSL is needed for encryption in transit.
 * Integrates with CloudTrail for usage tracking. 
 * KMS is region-specific. Each region requires its own instance of KMS. 

### Components

There are 4 key components of AWS KMS:

   1. Customer Master Keys (CMK)
   2. Data Encryption Keys (DEKs)
   3. Key Policies
   4. Grants

### CMK Types
 1. Customer Managed - These keys offer the greatest level of flexibility and control.  You are able to create, disable or delete the key, configure the key policies associated with your key, configure Grants, and also alter and adjust the key rotation periods and view full usage history of the key.These keys can be used by other AWS services that integrate with KMS.Customer managed keys include  an additional charge for creating your customer CMKs.
 2. AWS  - these are managed by AWS, however you are still able to view these keys within the Management Console, and also audit and track their usage and view their key policies.However, because they are managed by AWS you are not able to modify them.  These keys are created and used by AWS services that integrate with KMS directly, but they can only be used by the service that creates them.
 3. AWS Owned - These are not visible within the KMS console or anywhere within your account, neither do you have the ability to audit and track their usage, they are essentially abstracted from your AWS account.But of course, some services use this key type to encrypt your data within your account.Examples of AWS Owned CMKs include:•The S3 Master key uses SSE-S3 encryption•The default encryption option used on all Amazon DynamoDBtables uses AWS owned keys.

### Data Encryption Keys (DEKs)
Data keys are created by CMKs however they are used outside of KMS to perform encryption against your data, either in your own applications or by other AWS services.

### Key Policies
Key policies determine who can do what with the key, for example, defining who can use the key to perform cryptographic operations, in addition to those who can administer the CMK to perform functions such as deleting and revoking the key.  Controlling access to CMKs can’t be done using IAM alone. In ALL cases, to manage access to your CMKs, you MUST use a key policy.

### Grants
Grants allow you to programmatically delegate your permissions to another principal or user, and so the grant consists of 2 parties, the user who creates the Grant, and the Grantee who then uses that grant to perform cryptographic operations.

## STS - Security Token Service
 * Request temporary, limited-privilege credentials for IAM users or Federated users.
 * Enabled globally and best practice is to disable regions not being used. 

Used for federated user access to roles.  Steps for SAML based role assumption:

 1. A user within an internal organization initiates a request to authenticate against the Active Directory Federated Service, an ADFS server, via a web browser using a single sign on URL. 
 2. If their authentication is successful by using their Active Directory credentials, SAML will then issue a successful authentication assertion back to the user's client, requesting federated access. 
 3. The SAML assertion is then sent to the AWS Security Token Service, to assume a role within IAM using the ```AssumeRoleWithSAML``` API. 
 4. STS then responds to the user requesting federated access with temporary security credentials, with an assumed role and associated permissions, allowing S3, EC2, and RDS access as per our example, the user then has federated access to the necessary AWS services as per the role's permissions.

## IAM Policies 


### Policy Syntax
Represented as JSON and has at least one statement.

 1. Version : Policy language version.
 2. Statement : Array of statements is possible.
    1. *SID* : Unique ID for the policy. 
    2. Effect : Allow|Deny
    3. *[NOT] Principal* : Who? Only for resource-based policy.
    4. [NOT] Action : API Calls to which effect apply
    5. *Condition* : Key,Value pair condition filters that must match.
       1. IP Address : ```aws:sourceIp```; 10.0.0.0/16

### Policy Types

#### Identity-based policies
 * Policies associated with anything tha depicts and identity
 * Can be of the following variants:
     * Managed Policies - both are saved in library and can be reused across multiple identities:
        * AWS Managed Policies
        * Customer Managed Policies
     * In-line Policies
        * Embedded directly into the identity and can't easily be replicated to the identity.

##### Creation
 1. Copy existing policy
 2. Policy Generator. Use UI and dropdown to create policy. 
 3. Create your own policy using JSON. This option also has a simple visual editor.

  
#### Resource-based policies
 * Policies are attached to resources themselves.
 * Has **principal** attribute to describe who the policy applies to 

#### Permission Boundaries
 * These policies can be associated with a **role** or **user**.
 * Don't grant permissions but define the maximum permissions that can be granted. Act as guardrail. 
  
#### Organization Service Control Policies (SCPs)
 * These policies can be associated Organizations or Organization units. 
 * Don't grant permissions but define the maximum permissions that can be granted to users of the Organization or OU. 
 * SCPs can be viewed from IAM but can't be edited from IAM and must be done from AWS Organizations services.


#### Policy Evaluation
 1. Authentication Check
 2. Context (Service and request)
 3. Policy Evaluation
    1. Be default all access to a resource is denied
    2. Allows need to be explicit
    3. Explicit deny will take precedence and will lead to deny
 4. Result of evaluation - Allow/deny
  
##### Evaluation Order
  1. Organizational SCP
  2. Resource-based Policies
  3. IAM Permission Boundaries
  4. Identity-based policies

## AWS Security Hub
AWS Security Hub is a service that helps customers to improve their security posture on AWS by providing a comprehensive view of security and compliance across their AWS accounts. It aggregates security findings from various AWS services and third-party tools and presents them in a single dashboard. Doing so makes it easier for customers to identify and prioritize security issues and take corrective actions. Moreover, it offers automated compliance checks against industry standards and best practices such as PCI DSS, HIPAA, and CIS AWS Foundations Benchmark. With AWS Security Hub, customers can automate security and compliance checks, eliminate manual processes, and increase the efficiency of their security operations.

