# Overview

AWS Cognito allows us to create a centralized identity solution that supports
- Web and Mobile applications
- machine-to-machine communication

# Definitions

## Cognito 
- AWS identity and access management

## OAuth 2.0
### Client Credentials grant 
- intended to provide credentials to an application in order to authorize machine-to-machine requests

### User Pool
>The principle resource used to 
- define users, 
- define client/server integrations
- Authenticate users and applications

### Resource Server
- Manages access-protected resources. (**ONE OR MORE** services in the same business domain)
- handles authenticated requests from an app that has an access token.
- defines all scopes in that business domain

### Application Client
- defines client Id and client secret
- declares one or more resource server scopes scopes 

## ADR
### Why Shell?
- Flexibility/control
- Adhears with current state of concourse pipelines/tasks

### Why not Python?
- Default image support for python?
- Boto3 limitations (command line args --filter --query)

### Why not SAM?
- Cloudformation vs Terraform
- Resources that were not initially created with SAM cannot be migrated 

### Why not CDK?
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



# Deployment

### Concourse
- [Yaml Anchors](https://docs.concourse.farm/cookbook/use-yaml-anchor-and-alias)
- [Across Step Modifier](https://concourse-ci.org/across-step.html)
    - DRY
    - external environments.yaml scripts
>Run a step multiple times with different combinations of variable values.
across is considered an experimental feature, and its syntax/semantics may change. To you must set the feature flag CONCOURSE_ENABLE_ACROSS_STEP.
>
>The across step can be combined with the load_var step, the set_pipeline step, and instanced pipelines to maintain a dynamically sized group of related pipelines.

- AWS CLI
    - Get resource Id limitations (max results)

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


## Future Development

### Authentication Code grant 
- preferred method for authorizing end users
- Instead of directly providing user pool tokens to an end user upon authentication, an authorization code is provided
- Authorization code is exchanged for the desired tokens

## SAML 2.0
- ADFS federation
- Used to federate to corporate identity providers

## OpenID Connect
- identity layer built on top of the OAuth 2.0 framework

## Federation (Social providers)
- TrimbleId

## Not Covered

### Implicit grant 
- Only use the implicit grant when there’s a specific reason that the authorization code grant can’t be used
- User pool tokens are exposed directly to the end user.
