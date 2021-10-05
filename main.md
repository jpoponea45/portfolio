# Architecture
## SOLID
* **Single Responsibilty** (class should do one thing)
* **Open Closed** (open for extension closed for modification)
* **Liskov** (child class should be substituted without consumer knowing)
* **Interface** (multiple interfaces, no ignored methods)
* **Dependency Injection** (dependencies should be abstractions not implementations)

## CAP (pick 2)
* **Consistency** Every read receives the most recent write or an error
* **Availability** Every request receives a (non-error) response, without the guarantee that it contains the most recent write
* **Partition** The system continues to operate despite an arbitrary number of messages being dropped (or delayed) by the network between nodes
  
## Code Quality
* Cyclomatic Complexity
* Code Coverage
* Cohesion (degree to which the elements inside a module belong together)
* Coupling (interdependence between modules)

## Design Patterns
* Creational
  * Singleton
* Structural
  * Adapter (wrapper)
  * Facade   
* Behavioral
    * Mediator (loose coupling)
    * Iterator (sequential access to elements)

## Domain Driven Design
* Ubiquitous Language
    * Communication between developers and users
* Aggregates
    * Cluster of domain objects that are treated like single unit
    * Transactions should not cross boundries
    * Aggregate Root/Outside references
* Event Sourcing
    * No internal State
* CQRS (Command Query Responsibilty Segregation)
    * Query
    * Commands
* High Availability
    * Clustering
* Scalability
* Resiliency
 
## Methodology
* TDD
    * Red, Green, Refactor
* BDD
* Agile



#  Cloud
* Serverless
* Elastisearch
 
#  Infrastructure
* Load Balancing
    * Round Robin
    * Sticky Sessions
    * IP Affinity
* Firewall
    * DMZ
* Devops
    * Infrastructure as Code
        * Jenkins file
        * DockerFile
        * YAML
    * NX
        * Monorepos
    * Source control
        * Git
            * Workflows
    * CI/CD
    * Kubernetes
 
 
# Testing
* Unit Testing
    * Boundry Conditions
* Integration
     
*  
* # CROSS CUTTING
     * Tracing
         * Distrubuted
           * CONCEPTS
             * Trace
             * Span
             * Tags
             * CorrelationId
            * VENDORS
                * DynaTrace
            * STANDARDS
              * OpenTracing
              * OpenCensus
              * OpenTelemetry

     * Logging
         * ILogger
         * Splunk
           * Universal Forwarder
           * Load Balancer
           * Heavy Forwarder
           * Indexer
           * Serach Head
           * Deployment Server
           * Licence Manager
     * Secrets Management
         * Vault
     * Configuration
         * Web.config
         * Appsettings.json