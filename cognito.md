# Cognito 
**Identity and access management**
## OAuth 2.0
- Client Credentials 
- Authentication Code
## SAML 2.0
- ADFS federation
## OpenID Connect
## Federation (Social providers)
- TrimbleId


## ADR
### Why Shell?
- Flexibility/control
- Adhears with current state of concourse pipelines/tasks
### Why not Python?
- Default image support?
- Boto3 limitations (command line args) (--query)
### Why not SAM?
- Cloudformation vs Terraform
### Why not SDK?
- CloudFormation vs Terraform

# Crosscutting Concerns
## Logging
- CloudTrail 
- Sumo Logic (collectors)
## Monitoring
- CloudWatch

## Limitations
- Name length
- Max resource servers
- Max Scopes
- Max Userpool Clients


# Client Credentials Flow

## Deploy
### Concourse
- Yaml Anchors
- Across: Modifier (experimental)
    - Reduced redundancy 
    - external environments.yaml scripts
- AWS CLI

# Self Service
- Create ClientId/ClientSecret with concourse tasks
- Rotate client credentials
- Secrets manager

# DevOps
iac-eb-central
- Deploy User Pools
- Define Resource Servers
    - Manage scopes
        - Per endpoint 
        - CRUD
- Integration Testing
    - Create and teardown Userpool, ResourceServer, AppClient
    - Governance
        - iac-eb-central repository
        - User pool tags


## Authentication Code Flow