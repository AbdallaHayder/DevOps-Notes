# Variable Hierarchy

**Variable hierarchy determines which value Terraform uses when the same input is supplied in multiple places**.
Higher-priority sources override lower ones.

**Correction to the lecture**: `.tfvars` files override `TF_VAR_...` environment variables, not the other way around.

For your local CLI workflow, the order is:
```text
Highest priority
  -var / -var-file command-line options
  *.auto.tfvars.json / *.auto.tfvars files
  terraform.tfvars.json
  terraform.tfvars
  TF_VAR_... environment variables
  default in the variable block
Lowest priority
```

For example, if `terraform.tfvars` contains `instance_type = "t2.micro"` and your terminal has:

```text
export TF_VAR_instance_type='t3.micro'
```

Terraform uses **`t2.micro`**, because `terraform.tfvars` wins. You can override it for one plan with:

```text
terraform plan -var='instance_type=t3.small'
```

**Custom filenames**, such as `dev.tfvars`, aren’t automatically loaded. Select them explicitly:

```text
terraform plan -var-file='dev.tfvars'
```

If multiple `-var` or `-var-file` options assign the same variable, **the later assignment wins**.
