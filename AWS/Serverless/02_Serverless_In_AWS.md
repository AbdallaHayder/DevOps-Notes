# Serverless in AWS

AWS provides many serverless services, each handling a different part of an application without you managing the underlying servers.
- **AWS Lambda** — runs your code as functions when triggered.
- **DynamoDB** — fully managed serverless NoSQL database that scales automatically.
- **Amazon Cognito** — handles user authentication, including sign-up and login.
- **API Gateway** — creates and manages APIs that connect users/apps to backend services such as Lambda.
- **Amazon S3** — serverless object storage for files and static content.
- **SNS (Simple Notification Service)** — sends notifications/messages to multiple subscribers.
- **SQS (Simple Queue Service)** — queues messages between different services.
- **Kinesis Data Firehose** — delivers streaming data into AWS destinations for storage and analysis.
- **Aurora Serverless** — serverless relational database option that can scale with demand.
- **Step Functions** — coordinates workflows involving multiple Lambda functions and AWS services.
- **AWS Fargate** — serverless compute for containers, so you don’t manage EC2 instances.

### Example Serverless Architecture
```text
Users
  ↓
Cognito
  ↓
API Gateway
  ↓
Lambda
  ↓
DynamoDB
```
Static files can also be stored in:
```text
S3
```
### Key Idea
AWS serverless services cover compute, storage, databases, authentication, messaging, APIs, workflows, and containers — while AWS handles the underlying infrastructure and scaling.