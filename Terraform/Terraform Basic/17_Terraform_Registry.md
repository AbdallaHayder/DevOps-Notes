# Terraform Registry

The **Terraform Registry** is where you find providers and their documentation. In this lesson, you open the official **HashiCorp AWS provider** and select **“Use Provider”** to get its configuration code.

Paste that code into **`provider.tf`** in your project folder. It declares the AWS provider dependency and provides a block for configuring it.

Then, from a terminal **inside that project folder**, run:
```text
terraform init
```
Terraform initializes the backend, downloads the provider plugin, and creates **`.terraform.lock.hcl`**, which records selected provider versions and checksums.
```text
Registry → Provider code → provider.tf → terraform init
```
At this stage, Terraform is initialized and ready for the resource configuration. **No EC2 instance has been deployed yet**.