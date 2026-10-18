# How Can Users Access AWS?

There are three main ways to access AWS:
1. **AWS Management Console**
   The web interface used for manual tasks such as launching EC2 instances or creating S3 buckets. Access is usually protected with a **password + MFA**.
2. **AWS CLI (Command Line Interface)**
   Lets you manage and automate AWS resources from the terminal. It commonly uses **access keys** for authentication.
3. **AWS SDK (Software Development Kit)**
   Used by applications and code to interact with AWS programmatically.

### Access Keys
Access keys are used for programmatic access:
- **Access Key ID** = like a username
- **Secret Access Key** = like a password
They must be kept private, never shared, and **never committed to GitHub or source code**. Use them only when needed, and prefer secure authentication methods where possible.