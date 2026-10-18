# CLI Access Key DEMO

The **AWS CLI** lets you interact with your AWS account directly from the terminal insteaf of using the Management Console.

### 1. **Verify AWS CLI installation**

After installing AWS CLI for your operating system, check that it works:
```bash
aws --version
```
Example output:
```text
aws-cli/2.x.x
```
### 2. **Create an IAM access key**

Create an **access key for an IAM user,** not the root account.
For CLI access, AWS provides:
* **Access Key ID**
* **Secret Access Key**

Keep both private and never commit them to GitHub or expose them publicly.

### 3. **Configure AWS CLI**

Run:
```bash
aws configure
```
AWS will ask for:
```text
AWS Access Key ID:
AWS Secret Access Key:
Default region name:
Default output format:
```

Example:

```text
AWS Access Key ID: <your-access-key>
AWS Secret Access Key: <your-secret-key>
Default region name: eu-west-2
Default output format: json
```
This saves your credentials and default AWS settings locally.

### 4. **Verify your AWS identity**

Use AWS STS to check which account/user the CLI is authenticated as:
```bash
aws sts get-caller-identity
```

This returns information such as:
```text
Account
UserId
Arn
```

### 5. **Test AWS CLI commands**

For example, list IAM users:
```bash
aws iam list-users
```
This retrieves the same IAM user information you can view in the AWS Console.

### **Key takeaway**

The AWS CLI allows you to **manage AWS resources from the terminal using commands**, making it especially useful for automation and scripting.

Common flow:
```text
install AWS CLI
      ↓
Create IAM access key
      ↓
aws configure
      ↓
aws sts get-caller-identity
      ↓
Run AWS commands
```

