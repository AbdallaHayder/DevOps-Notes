# Infrastructure As Code (IaC)

**Infrastructure as Code (IaC)**: Define infrastructure in configuration files using tools such as Terraform or AWS CloudFormation, then use those files to deploy resources.

**Terraform is cloud-agnostic**: It supports multiple platforms, including AWS, Azure, Google Cloud, Kubernetes, and Vault. Each platform still needs its own configuration.

**Providers connect Terraform to platforms**: Provider plugins, available through the Terraform Registry, communicate with each platform’s API to create and manage resources.

**Course focus**: You’ll use Terraform with the AWS provider to deploy AWS infrastructure.