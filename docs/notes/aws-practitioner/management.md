# Management

## AWS CloudTrail
 * Record and track all API call.
 * Each API requests is captured as an event. 
 * The events are stored in log files within S3.
 * Event Metadata:
     * Identify of the caller
     * Request timestamp
     * Source IP Address
 * New log files are created every 5 mins. 
 * Can be delivered to a CloudWatch Logs for metric monitoring and alerting via SNS.
 * Global service and supported in all regions.
 * Helps in tracking and compliance requirements. 

## AWS Config
 * Record and capture resource changes in a file called a ```configurationitem```.
 * Acts as a resource inventory
 * Discover compatible resources
 * Stores configuration history
 * Snapshot of current configuration 
 * Notification of changes via SNS
 * Integration with CloudTrail to check who/what was responsible for change
 * Compliance check
 * Security analysis. Custom rules such as are EBS volumes encrypted. 
 * Identify relationship between resources. 
 * Not all services are covered but major ones are. 
 * AWS config is region specific and needs to be configured for each region.

## AWS CloudWatch
 * Global service
 * Performance insights and can trigger automated responses

### Components
 * **Cloudwatch Dashboards** - Visual widgets showing metrics and alarms. Multi-region. Build own views. Share dashboards to other users even outside your account.
 *  **CloudWatch Metrics and Anomaly Detection** - Different services will be relevant to different metrics. Metrics are by default calculated from data each 5mins. Extra fees can be paid to get data at 1 mins interval. Cloudwatch metrics are region specific. Anomaly Detection is done by Machine Learning to detect activity outside baseline parameters. 
 *  **CloudWatch Alarms** - Tightly integrate with metrics. Set off at specific thresholds. Alarms can send messages to SNS topics. Alarms states - OK, Alarm, Insufficient Data.
 *  **CloudWatch EventBridge** - Enables event-driven real-time architecture. Established connection between your Apps and services. Wide range of targets are supported. Rules filter incoming events and sent to targets (same region). Events are captured via EventBus.
 *  **CloudWatch Logs** - Central repository of log monitoring. Unified CloudWatch Agent can capture additional metrics from EC2 instances. 
 *  **CloudWatch Insights** - Insights allows for visual data to be created from cloudwatch logs. Types of insights:
    *  CloudWatch Log Insights
    *  Container Insights
    *  Lambda Insights - Needs to be enabled per Lambda