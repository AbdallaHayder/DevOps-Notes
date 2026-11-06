# Terraform Module - DEMO

The lecturer turns his existing **two EC2 resource blocks into a reusable child module**, then calls it from the root configuration.

He moves **`ec2.tf` and `variables.tf`** into a module folder, while keeping the provider, backend, and root input-value file outside:

```text
Project/
├── provider.tf
├── terraform.tfvars
├── main.tf
└── modules/
    └── EC2/
        ├── ec2.tf
        └── variables.tf
```

In the root **`main.tf`**, he calls the module:

```text
module "EC2" {
  source = "./modules/EC2"
}
```

**Terraform doesn’t automatically read resource blocks in subfolders**. Moving the files without calling the module makes the root configuration appear to have no EC2 resources, so Terraform proposes deleting any it still tracks.

After adding the module call, he runs **`terraform init`** to initialize the module, then **`terraform plan`**.

**Moving resources into a module changes their Terraform addresses**:

```text
aws_instance.this
        ↓
module.EC2.aws_instance.this
```

Without an explicit address migration, Terraform treats the old and new addresses as separate resources. In his demo, he accepts **two deletions and two creations**. For existing infrastructure you want to preserve, use **`moved` blocks or `terraform state mv`** to map the addresses instead of recreating resources.

**Important input detail**: root `terraform.tfvars` values don’t automatically reach child modules. Pass inputs through the module block, or the child uses its declared defaults. His child module defaults to `t2.micro`.

For your project, **if both instances were successfully destroyed**, this refactor should propose creating the module’s two instances, without deleting old ones. Review the plan before applying.