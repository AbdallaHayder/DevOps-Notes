# Terraform Provider Code

The **`terraform` block**, through `required_providers`, declares which provider plugins your configuration needs. For AWS, `source = "hashicorp/aws"` identifies the provider’s namespace and name in the Terraform Registry. A **`version` constraint** specifies which provider versions are allowed—it refers to the AWS plugin, not the Terraform CLI.

The **`provider "aws"` block** configures how that plugin operates, such as which AWS region to use.
```bash
terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "5.62.0"
        }
    }
}

provider "aws" {
    #Configuration options
}
```
```text
required_providers → Which plugin do I need?
provider "aws"     → How should that plugin be configured?
```
After adding these blocks to your `.tf` configuration, run **`terraform init`** to download the required provider and initialize the working directory.

The “Terraform 0.13+” note describes support for this configuration syntax. Actual compatibility also depends on the provider version you select.
