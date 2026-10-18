# IAM Roles for Services

**IAM roles** allow AWS services to access other AWS services **securely using temporary permissions**, without storing long-term credentials like access keys or passwords.

Common examples:

- **EC2 role**: lets an EC2 instance access services such as **S3 or DynamoDB**.
- **Lambda role**: gives a Lambda function permission to interact with other AWS services, such as **writing logs to CloudWatch**.
- **CloudFormation role**: allows CloudFormation to create and manage AWS resources on your behalf.

The key idea: if one AWS service needs to access another, use an **IAM role** instead of hard-coding