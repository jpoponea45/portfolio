# Configuration

```bash
brew install kafka
brew install zookeeper
```

## create my-kafka-config

```text
security.protocol=SASL_SSL
sasl.mechanism=PLAIN
sasl.jaas.config=org.apache.kafka.common.security.plain.PlainLoginModule required
username="someuser" 
password="somepassword"
```

## Create a Topic

```bash
kafka-topics --bootstrap-server endpoint:9092 --create --if-not-exists --topic the-new-topic --replication-factor 1 --partitions 1 --command-config ~/my-kafka-config
```
