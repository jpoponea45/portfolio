# Event Streaming
## Kafka
* Distributed 
* Commit Log
* Pub/Sub
* FIFO queue
* Topics
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
# Queuing
## Rabbit
* NServiceBus

# RDBMS
* Indexing
* Normalization

# NoSQL
    * Use Cases