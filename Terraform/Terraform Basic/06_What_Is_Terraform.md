# What is Terraform?

**Terraform is an Infrastructure as Code (IaC) tool** that lets you define cloud resources in configuration files. It is **cloud-agnostic**, supporting platforms such as AWS, Azure, and Google Cloud through their respective providers.

You describe your **desired infrastructure**, then run `terraform plan`. Terraform uses your configuration, state, and information from the provider to preview the changes needed—resources to create, update, or destroy.

After reviewing the proposed changes, you run `terraform apply` to carry them out.
```text
Write configuration → Plan → Review → Apply → Cloud resources
```
For example, if your configuration defines an EC2 instance, the plan previews its creation, and applying the changes provisions it in AWS.

**Remember**: `plan` previews changes; `apply` performs them. Store the configuration in Git to track its history.