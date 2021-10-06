# RDBMS

## Characteristis
- Optmized for Storage
- ACID

* Indexing
* Normalization
* ACID

# NoSQL
**RDBMS were not built for distrubted applications**

## Characteristis
- Optmized for Compute
- Not ACID
- Polyglot Persistence
- Simplicity of design, 
- Simpler "horizontal" scaling to clusters 
- Finer control over availability 
- Avoids Joins (expensive)

Compromise consistency in favor of 
- availability, 
- partition tolerance
- Speed

## Limitations
- Security
- Data Consistency
- Lack of standardization
- Scalability (some can't shard automatically)

## Sharding

## Data structures

### Key–Value Pair 

### Wide Column

### Graph
Graph databases hold the relationships between data as a priority. Querying relationships is fast because they are perpetually stored in the database. Relationships can be intuitively visualized using graph databases, making them useful for heavily inter-connected data
- Nodes
- Edges 
- Properties

### Document

### Specific DBs
**Key–value cache**	Apache Ignite, Couchbase, Coherence, eXtreme Scale, Hazelcast, Infinispan, Memcached, Redis, Velocity

**Key–value store**	Azure Cosmos DB, ArangoDB, Aerospike, Couchbase, Redis

**Key–value store (eventually consistent)**	Azure Cosmos DB, Oracle NoSQL Database, Dynamo, Riak, Voldemort

**Key–value store (ordered)**	FoundationDB, InfinityDB, LMDB, MemcacheDB

**Tuple store**	Apache River, GigaSpaces
Object database	Objectivity/DB, Perst, ZopeDB

**Document store**	Azure Cosmos DB, ArangoDB, BaseX, Clusterpoint, Couchbase, CouchDB, DocumentDB, eXist-db, IBM Domino, MarkLogic, MongoDB, Qizx, RethinkDB, Elasticsearch

**Wide Column Store**	Azure Cosmos DB, Amazon DynamoDB, Bigtable, Cassandra, Google Cloud Datastore, HBase, Hypertable, ScyllaDB
Native multi-model database	ArangoDB, Azure Cosmos DB, OrientDB, MarkLogic- Mongo


# Data Warehouse
- Fact
- Dim

# Data Lake
- Unstructured



