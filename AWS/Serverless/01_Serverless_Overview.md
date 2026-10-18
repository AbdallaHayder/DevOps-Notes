# Serverless Overview

**Serverless** means you build and run applications **without managing the underlying servers yourself**.

The main idea is:
- you write and deploy your code
- AWS runs it for you
- AWS handles the infrastructure behind the scenes

### Function as a Service (FaaS)
Serverless originally became popular through **FaaS — Function as a Service**.

With AWS, the main example is **AWS Lambda**:
- you deploy a function
- it runs when triggered by an event
- you pay mainly for the time/resources used while it runs

Example:
```text
User uploads file
      ↓
Event triggers Lambda
      ↓
Lambda processes file
```

### Serverless is broader than Lambda
Serverless can also describe managed services where you don’t manage servers directly, such as:
- **DynamoDB** → serverless database
- **S3** → serverless storage
- **SQS** → serverless message queue

### Important Clarification
**Serverless does not mean there are no servers**.

The servers still exist, but **AWS manages them for you**.

### Key Idea
```text
Traditional:
You manage servers + app

Serverless:
AWS manages servers
You focus on code and application logic
```
The goal is to reduce infrastructure management so you can focus more on building the application.