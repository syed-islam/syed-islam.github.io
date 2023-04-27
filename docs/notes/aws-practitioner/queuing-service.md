# Decoupling and Queuing
## Properties
 * Loose coupling
 * Asynchronous connectivity between sub-systems.

## Amazon SQS
 * Producers put messages to the SQS Queue
 * Consumer is polling the queue for pick up and processing
 * Visibility Timeout is set when picked up by consumer
 * Delete message from Consumer deletes the message or visibility timeout expiry causes message to become visible on the queue.
 * Visibility Timeout - min 0s, Default 30s and maximum is 12 hours. 
 * Visibility timeout can be setup for entire queue or individual messages. 
 * Step functions should be used if more than 12 hours delay is needed. 

### Standard Queue
 * Standard Queue - **At least once delivery** guaranteed. 
 * 120K in-flight messages in a standard queue. Short Polling will return error if exceeded, Long polling won't return any errors.

### FIFO Queues
 * **First in First Out**, implements exactly once delivery. 
 * Lower performance than Standard Queue. 
 * 20K in-flight messages. 

### Dead Letter Queue
 * Messages are Delivered here after ```MaxReceivedCount``` reaches the limits set for a Queue. 
 * Messages can be put back into the original queue once the problem has been resolved but may break FIFO order in doing so. 
 * SNS is commonly used to dispatch notification when messages arrive in dead letter queue for examination. 

### Delay Queue
 * Delay queue - the message is not initially available until the delay timeout is over. Can range min 0s and max is 15mins

### Consumer polling
#### Short polling
 * Default for queues
 * Consumers use ReceiveMessage request and SQS responds even when no messages are found
 * This can happen when either the consumer sets ```ReceiveMessage``` or queue parameter ```ReceiveMessageWaitTime``` is set to 0.

#### Long polling
 * ```ReceiveMessage``` or ```ReceiveMessageWaitTime``` is set to larger than 0 and less than 20 seconds. 
 * SQS waits for at least one message or the max number ```MaxNumberOfMessages``` specified. 
 * Empty response happens when the Wait time expires. 

### Messasge Specifics
 * Minimum size is 1 byte / 1 character
 * Maximum is 256 KB (default)
 * SQS Extended Client Library enables messages to be 2GB and leverages S3.


  
## SNS - Simple Notification Service
### Property
 * 1:M Messages distribution model
 * A single message is published to a Topic which is then pushed out to subscribers. 
 * A Topic doesn't store messages, once published the message are pushed out to subscribers. 
 * A single topic can have 12M subscriptions
 * 100K Topics are allowed and 
 * US-EAST1 allows a rate of 30K/seconds which varies by regions. 
 * Max Message is 256KB and breaks into chunks of 64KB and deals with them as individual requests.
 * Extended Library can increase the message size to 2GB using S3.
 * Message Filtering allows subscribers to filter messages using SNSMessagePolicy via JSON specifications. Removes the needs to have multiple Topics for each Subscriber but enables filtering on the single topic from Producer.
  
### Message Retry
 * Controlled using SNS Delivery Policy
 * Retry Patterns:
     *  Linear
     *  Geometric
     *  Exponential back-off
     *  maximum and Minimum tries
*  Messages can be sent to Dead Letter Queue which can be delivered.

### Notification Services:
 * Apple Push
 * Windows Push
 * Amazon Messages
 * HTTPS endpoints
 * Email
 * SMS 
 * MFA
 * OTP

## Amazon MQ Service
 * Enables migration of existing on-prem queues to Cloud
 * Amazon MQ is AWS managed message broker service for Apache ActiveMQ, and its compliant with:
     * JMS, 
     * NMS, 
     * MQTT and 
     * WebSockets.
 * Amazon MQ also provides message encryption in transit using SSL and at REST using AES 256 encryption.

