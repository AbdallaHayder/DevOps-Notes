# IaC with Version control

- **Store Terraform code in Git**: Track changes, collaborate with teammates, and restore earlier configuration versions. Restoring code still requires applying it to change the actual infrastructure.

- **Terraform state**: Records which real resources Terraform manages. Teams typically share state so everyone works from the same infrastructure record.

- **Locking clarification**: State locking prevents conflicting Terraform operations. The .terraform.lock.hcl file serves a different purpose: recording provider versions and checksums.

- **Coming next**: Providers, plugins, the Registry, state, and locking will be explained in more detail.