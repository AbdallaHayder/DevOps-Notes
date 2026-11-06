# Terraform State File

The **Terraform state file** records the resources Terraform manages, linking each resource in your configuration to its real counterpart—for example, an EC2 instance’s AWS ID.

Your **configuration (`.tf` files)** describes what you want: the **desired state**. The state file holds Terraform’s **last recorded information** about those resources. During a normal plan, Terraform checks the actual infrastructure through the provider to detect changes.
```text
Configuration       State + provider checks
“What I want”       “What already exists”
          \           /
           Terraform plan
           “What must change?”
```

For example, if Terraform already manages **two EC2 instances** and you update the configuration to require **three**, it plans to create one additional instance.

**Idempotency** means repeating an operation produces the same intended result. If your configuration and infrastructure already match, another apply should make no changes rather than create duplicates.

**Two useful clarifications**: The configuration is the blueprint; state is the tracking record and can become outdated. Also, some configuration changes require replacing a resource instead of updating it in place—check the plan.