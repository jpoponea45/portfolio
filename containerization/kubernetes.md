
# Kubernetes
> open-source container-orchestration system for automating computer application deployment, scaling, and management

![overview](https://upload.wikimedia.org/wikipedia/commons/b/be/Kubernetes.png)

## **Control Plane**
- Kubernetes master 
    > Main controlling unit of cluster
- etcd (key value data store for configuration data)
- Api Server 
    > (configure workload and containers across worker nodes)
- Scheduler 
    > selects which node an uscheduled pod will run on 
- Controller Manager 
    >  Reconciliation loop.  Uses API to create, update, and delete resources
## Nodes
> Worker/Minon.  Machine where containers are deployed.  Must have Docker runtime
### Kublelet
  - Responsible for running state of each node
  - Responsible for starting, stopping, maintaining application containers
### Kube-proxy
  > Network proxy/load balancer
    - Routes traffic based on IP and port of incoming request
### Container Runtime
- Container
    - resides in pod.  
    - holds running applications, libraries, their dependencies
    - exposed through external IP address

### Namespaces

## Workload Objects
### Pods 
Basic scheduling unit 
- Replica sets
> Maintain a stable set of replica pods at any given time
    - Guarantee the avaiability of a specified number of identical pods
### Services
  > Set of pods working together
- Provides service discovery (environmental variables or Kubernetes DNS)
- Assigns stable IP and DNS name to service
- Load balancing
- Exposed inside (default) or outside container
### Volumes
  > Kubernetes files systems provide ephemeral storage (restarting pod wipes out data)
  - Persistent storage for lifetime of pod
  - can be used as shared disk space for containers within pod
  - Mounted at specific mount points within container
    - Defined by pod configuration


### ConfigMaps/Secrets
  - Available to every application instance that have been bound via deployment
  - Only sent if application requests it
  - Data is accessible two ways
    - as environment variables
    - container filessystem that is only visible within pod
  - Stored on master
  - Secrets are base64 encoded
    - certificates 
    - passwords
    - pull secrets (credentials to work with image registries)
    - SSH keys
  
### Stateful Sets
- Database (example)   
- Preserved if pod restarted
- Redistributed when application scales

### Labels and selectors
- Keys attached to any API object in system (pods, nodes)
- dyanically control how services implement resources to provide loose coupling
- Uses
  - routing/load balancing
    - blue-green deployments
    - A-B testing
- Selectors
 > queries agains lables that resolve matching objects


## Sidecar Pattern

Containers that run along with the main container in the pod.  
Used to wrap all depedencies for the application to run anywhere

![Pod with sidecars](https://miro.medium.com/max/1400/1*2O7FNVCO5k83WIbbGbbl-A.webp)