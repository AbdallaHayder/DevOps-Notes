# Deploying Infrastructure

Before deploying, you need to understand **how Terraform defines resources, connects to AWS, and makes changes safely**.

**Resource blocks** describe what you want to create, such as an EC2 instance and its settings. The upcoming lessons will show how to write these and deploy them.

A **provider block** configures Terraform’s connection to a platform—for example, selecting an AWS region. The AWS provider uses credentials and AWS API calls to manage resources.
```text
Resource configuration → AWS provider → AWS API → Cloud resources
```
**Review before deploying**. Understand the proposed changes and their impact, especially when existing resources contain important data.

Check the Terraform plan for unexpected deletions or replacements before applying it.