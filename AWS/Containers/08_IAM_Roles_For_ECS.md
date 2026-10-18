# Amazon ECS - IAM Roles for ECS

In ECS, two important IAM roles are used:
- **EC2 Instance Profile** — used with the **EC2 launch type**
  - Gives the ECS Agent on the EC2 instance permission to interact with AWS services.
  - Examples:
    - communicate with ECS
    - send logs to CloudWatch
    - pull images from ECR
    - access Secrets Manager or SSM Parameter Store

- **ECS Task Role** — used by the **task/container itself**
  - Defines what AWS services that specific task is allowed to access.
  - Example:

```text
Task A → read from S3
Task B → read/write DynamoDB
```
  - Different tasks can have different roles and permissions.

### Key Idea
```text
EC2 Instance Profile
→ permissions for the EC2/ECS Agent

ECS Task Role
→ permissions for the application running inside the task
```
This supports **least privilege**, so each container only gets the permissions it actually needs.