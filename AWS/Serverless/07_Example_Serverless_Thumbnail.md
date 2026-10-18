# Example: Serverless Thumbnail creation

This lesson shows two common real-world serverless patterns.

1. **Automatic Thumbnail Creation**

When a user uploads an image to S3, the upload event automatically triggers a Lambda function.

The Lambda function:
- reads the original image
- creates a smaller thumbnail
- saves the thumbnail back to S3
- can also store image metadata in **DynamoDB**

Example:
```text
Upload image to S3
      ↓
S3 Event
      ↓
Lambda
      ↓
Create thumbnail
      ↓
Save thumbnail to S3
      ↓
Store metadata in DynamoDB
```

This is fully automated and event-driven, with no always-running server.

2. **Scheduled Tasks with EventBridge**

**Amazon EventBridge** can trigger Lambda on a schedule, similar to a cron job.

Example:
```text
Every hour
   ↓
EventBridge
   ↓
Lambda
   ↓
Run backup / cleanup / maintenance task
```

This is useful for recurring jobs such as:
- backups
- cleanup scripts
- scheduled reports
- interactions with other AWS services

### Key Idea
**Event happens → Lambda runs → work gets done → Lambda stops**.

This makes serverless useful for automated, event-driven, and scheduled tasks without keeping servers running 24/7.