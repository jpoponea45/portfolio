# Architecture
## SOLID
* Single Responsibilty
* Open Closed
* Liskov
* Interface
* Dependency Injection

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
  * Adapter
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

# Microservices
* Authentication
    * OAuth
    * OpenId
* Communication   
    * Rest
    * GraphQL
    * gRPC
        * Protobuf
* Service Discovery        
* Service Mesh
    * Common
        * Secure servicetoservice communication with mTLS encryption
        * Servicetoservice metric collection
        * Servicetoservice distributed tracing
        * Resiliency through retries
    * Istio
        * Traffic routing 
        * Traffic Splitting
    * DAPR
        * Sidecar
            * Service Invocation
            * State Management
            * Pub/Sub
            * Resource Bindings/Triggers
            * Secrets
            * Actors
            * Network Security
            * Distrubuted Tracing

# ClientSide
* Javascript
    * Web sockets
        * Signal R
        * Pusher
        * Lightstreamer
    * ECMA 5
    * ES6/ES2015
        * Promises
        * Arrow Functions
        * Classes
        * Template strings
        * Blocked scoped variables/functions
        * Iterators (for n of fibonacci)
        * Generators (function*/yield)
        * Modules
        * Default/Spread parameters
        * Map, Set
        * Proxies
    * Security
        * XSS
        * iFrame
    * Async
        * Promises
        * RxJS
            >library for composing asynchronous and event-based programs by using observable sequences. 
            * Core type Observable, 
            * Satellite types (Observer, Schedulers, Subjects) and 
            * operators (map, filter, reduce, every)
            * Observable
                > Observables are lazy Push collections of multiple values
            * Observer
            * Subscription
            * Operators
            * Subject 
                >special type of Observable that allows values to be multicasted to many Observers
            * Schedulers
    * PWA 
        * Proxy between browser and web server
        * Service Workers 
        * Manifests (installation)
    * Testing
        * Test Runners
            * Karma
        * Unit testing
            * Jest
        * e2e testing (testing the user flow)
            * Protractor
            * Jasmine
        * Visual Regression Testing (Snapshot Testing)
            * Selenium
            * Cypress
    * SPAs
        * Angular
            * Testing
                * Cypress (e2e testing)
                    * test entire page (component interaction)
                * Jasmine
                    * beforeEach
                    > Describe("MyTest", () => {
                    >   it('should return a value' () => {
                    >  })
                    >})
                    * spyOn
                    * HttpClientTestingModule
                    * Components
                        * compileComponents
                        * ComponentFixture
              * .spec.ts
            * RxJS
                * EventEmitter<T>
            * Benefits
                * Full featured CLI, Testing, RxJS, HttpClient
            * Cli
                * Scaffolding
                * Building
                * Testing
            * Directives
                * Components
                    * ShadowDom
                    * Forms
                      * Reactive
                        * One way data.  No binding
                        * Easier Unit Testing
                      * Template
                        * 2 way databinding
                    * Lifecycle
                        * ngOnInit()
                        * ngOnChanges()
                        * ngDoCheck()
                        * ngAfterContentInit()
                        * ngAfterContentChecked()
                        * ngAfterViewInit()
                        * ngAfterViewChecked()
                        * NgOnDestroy()
                    * Communication
                        * ChildParent
                            * @Input() parent to child
                            * @Output() child to parent
                    * Databinding
                        * Property Binding
                        * Event Binding
                        * Inputs and Outputs
                        * 1 way
                            * Property to Target
                            * <input [src] = "url">
                        * 2 way
                            * Combines Property/Event Binding
                            * Components can share data
                            * <input [(src)] = "url">

                * Attribute
                    * NgClass
                * Structural
                  * NgIf
            * Services
                * Service Injection
                * Singleton
                  * Set the providedIn property of the @Injectable() to "root".
                  * Include the service in the AppModule or in a module that is only imported by the AppModule
            * Pipes
              * AsyncPipe
            * Async
            * Modules
                * Lazy Loading
            * Redux patterns
            * Dependency Injection
              * Injectable
            * Best practices
                * Lazy Load Modules
        * Redux
            * Immutable
            * Single direction data flow
* CSS
    * SASS/LESS
    * Flexbox

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
 
# Platform as a Service
* Docker
    * Engine 
        * dockerd (daemon)
        * Images
        * Containers
        * Services
        * Volumes
    * Tools
        * Docker Compose (multicontainer applications)
        * Docker Swarm (Clustering)
        * Docker Volume (Disk persistence)
 
# Testing
* Unit Testing
    * Boundry Conditions
* Integration
     
# Data
* Event Streaming
    * Kafka
            * Distributed 
            * Commit Log
            * Pub/Sub
            * FIFO queue
            * Topics
            * Kafka as a Database
                * Log compaction
                * Immutable Log
                * Materialized Views
            * Zookeeper
                * configuration
                * consensus management
            * OBJECTS
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
                *  
                * Partitions
                    * Horizontal Scaling
    * Queuing
         * Rabbit
         * NServiceBus
     * RDBMS
         * Indexing
         * Normalization
     * NoSQL
         * Use Cases
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