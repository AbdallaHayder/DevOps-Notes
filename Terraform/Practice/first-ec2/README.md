# Terraform EC2 Practice

A learning example covering EC2 resources, importing existing
infrastructure, variables, locals, outputs, S3 state, and child modules.

This is separate from the WordPress assignment.

## Structure

```text
first-ec2/
├── main.tf
├── provider.tf
├── .terraform.lock.hcl
└── modules/
    └── ec2/
        ├── ec2.tf
        └── variables.tf
```

## Configuration

- The root calls the local `ec2` child module.
- The AWS provider is configured for London (`eu-west-2`).
- The S3 backend uses the state key `terraform.tfstate`,
  separate from the WordPress assignment's `wordpress.tfstate`.
- The child module declares two EC2 resources:
  `aws_instance.this` and `aws_instance.import`.
- Both use a shared local AMI value and an instance-type input
  defaulting to `t2.micro`.

The resource name `import` is only a Terraform label.
It does not automatically import an existing instance.

## Learning Notes

Root `terraform.tfvars` values are not automatically passed into
child modules. This root module currently supplies no arguments,
so the EC2 module uses its default instance type.

The instance ID output is declared inside the child module.
To display it as a root output, the root would need an output
referencing `module.ec2.instance_id`.

Moving existing resources into a module changes their addresses.
Use `moved` blocks or an appropriate state migration when preserving
existing infrastructure.

## Before Reusing

Review the AMI, region, backend bucket, state key, and resource scope.
The AMI is an environment-specific example, not a portable default.

Use a separate backend key for an independent deployment.

Run `terraform init`, `terraform validate`, and `terraform plan`
from this directory before considering an apply.

An apply against an empty state would attempt to create both instances
and could incur charges. This practice configuration does not configure
WordPress or a complete public web-server network.

## Git Exclusions

Local state, state backups, `.terraform/`, and real `.tfvars`
files are ignored. The provider lock file is committed.