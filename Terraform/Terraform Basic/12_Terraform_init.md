# Terraform init

**`terraform init` initializes your Terraform working directory**, preparing it for commands such as `plan` and `apply`. Run it when starting a project or after cloning an existing one.

It **initializes the backend**—the configured location for Terraform’s state. State can be stored locally on your machine or remotely, for example in an S3 bucket.

It also **downloads the required provider plugins**, such as the AWS provider, based on your configuration.
```text
Terraform configuration → terraform init → Ready to plan
                          ├─ Set up backend
                          └─ Install providers
```

**`init` prepares the project; it does not deploy cloud resources**. You can safely rerun it when initialization is needed.