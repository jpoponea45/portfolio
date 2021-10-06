# Event Based Architecture
## Event Sourcing
## Examples
- Git Commit Log 
- Accounting Ledger

## Data at Rest
    Data store is source of truth
## Data in Flight
    Log of events is source of truth



# Distributed Event Streaming
## Kafka
* Commit Log

## Building blocks
- Event Sources
- Stream processing: Stream one topic into another topic
- Event archive
- Notifications

(event log is kept 7 days by default)
### Uses
* Pub/Sub
* FIFO queue
* Kafka as a Database
    * Log compaction
    * Immutable Log
    * Materialized Views
## Zookeeper
* configuration
* consensus management
## CONCEPTS
* Topic
* Message
    * Fire and Forget
    * Synchronous send
    * Async send
* Producer
    * ACK 0 (Dont wait for ack)
    * ACK 1 Concider sent when broker receives message
    * ACK ALL:  Consider sent when all replicas recieve message
* Consumer
* Consumer Group
    * Fan out exchange (Single topic multiple consumers)
    * Order guarantee (partion can only be read by one consumer)
    * Key
* Broker (single kafka server)
* Cluster
    * Core Concepts
        * Scalability
        * Availability
        * Fault Tolerance
    * One Broker is the cluster controller
* Partitions
    * Horizontal Scaling


## Kafka Connect
https://kafka.apache.org/documentation/#connect

# Queuing
## Rabbit
* NServiceBus
