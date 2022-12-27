# Cognito 
> Identity and access management 
- OAuth 2.0
    - Client Credentials 
    - Authentication Code
- SAML 2.0
- OpenID Connect


## ADR
- Why bash
- Why not python
- 

## Crosscutting Concerns
- Logging
    - CloudTrail 
    - Sumo Logic (collectors)

## Client Credentials

### Deploy
- Concourse
- AWS CLI

### Self Service
- Create ClientId/ClientSecret with concourse tasks
- Rotate client credentials
- Secrets manager

### DevOps
iac-eb-central
- Deploy User Pools
- Define Resource Servers
    - Manage scopes
        - Per endpoint vs CRUD
- Integration Testing
    - Create and teardown Userpool, ResourceServer, AppClient


## Authentication Code Flow