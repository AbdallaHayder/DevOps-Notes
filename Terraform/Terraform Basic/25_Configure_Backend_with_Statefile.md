# Configure Backend with Statefile

The lecturer moves **Terraform state from the local project folder into an existing S3 bucket** by adding an S3 backend block inside the `terraform` block.

Documentation for S3 Backend for importing local state file to **AWS S3 Bucket** `developer.hashicorp.com`:
```text
Developer / Terraform / Configuration Language / Backends / s3
```
The backend needs three settings: **`bucket`** identifies the S3 bucket, **`key`** specifies the state file’s path inside it, and **`region`** identifies **the bucket’s AWS region**—which can differ from the region where your EC2 resources run.
```text
Local terraform.tfstate → State migration → S3 bucket
```
He runs **`terraform init`** from the project terminal. When Terraform asks whether to copy the existing state into S3, he confirms **`yes`**. This migrates the tracking record; it doesn’t recreate the infrastructure.

His first attempt fails with **403 Access Denied** because his IAM user lacks S3 permissions. He attaches `AmazonS3FullAccess` for the demo, then retries successfully. For ongoing use, permissions should be limited to the required bucket and state objects.

**Local state suits simple solo projects; remote state supports teams and production workflows**. Remote storage still needs proper protection: access controls, encryption, recoverable backups such as S3 versioning, and explicitly configured state locking.

**Commit your Terraform configuration to Git, not your state files**. State can contain sensitive information. Storing it in S3 doesn’t automatically grant teammates access or enable locking.