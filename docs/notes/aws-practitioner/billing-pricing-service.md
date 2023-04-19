# Billing, Pricing and Support

## File Pillars of Cost Optimization
 * Right Size - Provision what you need
 * Increase Elasticity - Meet dynamic needs and spikes
 * Pick Right Pricing Model - Choose reserved or etc as needed
 * Match Usage to Storage Cost - Choose right the storage class and performance. 
 * Measure and Monitoring - Measure, Monitor via Tagging. Optimize where possible.

## TCO - Total Cost of Ownership
 * Hardware and Software Acquisition
 * Management and Support
 * Communication
 * End-user Expenses
 * Downtime, Training and others

AWS is easier to measure the cost. 

## Pricing Calculator - Estimates
 * Ability to create estimates of cost
 * Steps:
   * Choose Service
   * Choose Region
   * Quick Estimate / Advanced Estimate
   * Specific information about the services.
 * Save and share estimates or create groups of services for estimates.


## Billing Dashboard
 * Gives detailed cost for each AWS Service
 * Credits can be obtained from Training, Non-private Organizations etc. 

## Cost Explorer
 * Main tool to gather information about all costs and analyze usage in your environment. 
 * Deeper insight into the costs, trends, hunt down the max cost drivers
 * Base tool is free, but API requests are charged per request. 
 * Hourly view is also payable as it requires more granular data.
 * Possible to create and download reports. 

## Usage Report - CUR
 * Needs to be enabled, by default its disabled. 
 * Choose S3 bucket where the CUR file lands
 * Choose granularity
 * Data Integration to read it such as - Athena (.parequet), Redshift+Quickshift (.csv) 
 * Reports are updated between 1 - 3 times per day.
 * Cost Allocation Tags needs to be activated, once activated both 'User-defined cost allocation tags' and 'AWS-generated cost allocation tags' can be used in the cost explorer. 

## AWS Budget
 * Automatic Notification and Actions when set thresholds are hit. 
 * Types:
   * Cost
   * Usage
   * Reservation Budget
   * Saving Plan Budget
 * Actions can be automatic or via workflow approvals
 * Actions be be targeted via IAM policies, SCP policies or directly shut off RDS/EC2. 



## Tagging
 * Key, Value pairs
 * Should be used groups resources for various business needs. 
 * CUR and Cost Explorer can make use of tags explicitly. This has to be done 
 * Tags can be updated using: Service Console, AWS CLI and AWS Tag Editor.
 * Keep tagging simple and not overdo. 
 * Best to use pre-defined tags rather than make them up on the fly. 
 * Setup policies where new resources can't be launched without tags
 * Do regular review of tags.
 * 
 
  
