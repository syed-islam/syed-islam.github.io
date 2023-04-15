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

#### IAM policies
 * AWS Managed Policies  - written by AWS and stored in library
 * Customer managed Policies - defined by customer and stored in library
 * in-line policies - policies attached directly to a user, group or role. 

#### Roles
 * Identity with associated permissions
 * Assumed by identity or service that need to acquire temporary permissions. 
 * No passwords, assumed if correctly permissioned.

#### Identify Providers
 * Needed for federated access
 * Active Directory or Google Identity Provider are examples


### Security Token Service Endpoints
 * Request temporary, limited-privilege credentials for IAM users or Federated users.
 * Enabled globally and best practice is to disable regions not being used. 

### Access Reports
#### Access Analyzer
 * Policies within zone of trust allows access outside your zone of trust.
 * Any outside access will be highlighted as a finding

#### Credential Report
 * List of all IAM users and credentials as a csv
 * Last usage, last password change and MFA setup can also be seen

#### Organizational Activity
 * Select organizational unit/account based user activity and services accessed by the users

#### Service Control Policies
 * SCPs are used with organizations to setup boundaries or permissions. They don't grant permissions
 * Shows SCPs 

### Best Practice
 * Least privilege access
 * Identity Federation - single sign-on
 * Enable MFA
 * Rotate Credentials regularly
 * Enable IAM Access Analyzer