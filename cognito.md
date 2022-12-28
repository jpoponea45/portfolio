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
- Default image support for python?
- Boto3 limitations (command line args --filter --query)

### Why not SAM?
- Cloudformation vs Terraform
- Local envoke vs fly cli
    - We created some custom functionality to run locally

### Why not SDK?
- CloudFormation vs Terraform

# Crosscutting Concerns
## Logging
- CloudTrail 
- Sumo Logic (collectors)
## Monitoring
- CloudWatch

## Quotas/Limitations (default/max)
- Resource servers per user pool (25/300)
- App clients per user pool (100/10000)
- Scopes per resource server (100,NA)
- Scopes per app client (50,N/A)
- Name length limitations
    - 256 max length (Userpool)
    - 128 max length (Resource Server, Client Secrets)

[Quotas in Amazon Cognito](https://docs.aws.amazon.com/cognito/latest/developerguide/limits.html)

[* increase from default to max must be explicity requested](https://console.aws.amazon.com/support/home#/case/create?issueType=service-limit-increase)


# Client Credentials Flow

## Deployment
### Concourse
- Yaml Anchors
- Across: Modifier (experimental)
    - Reduced redundancy 
    - external environments.yaml scripts
- AWS CLI

## Self Service
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