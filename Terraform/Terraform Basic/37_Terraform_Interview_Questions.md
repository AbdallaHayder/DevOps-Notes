# Terraform Interview Questions

This lecture reviews **common Terraform interview questions**, emphasizing clear explanations backed by practical examples.
| Topic | What you should explain |
|---|---|
| **Terraform and IaC** | Define infrastructure in code for automation, repeatability, consistency, and version control. Providers support different platforms. |
| **Idempotency** | Repeating an apply should make no changes when infrastructure already matches the configuration. |
| **Plan versus apply** | `plan` previews the changes needed; `apply` executes them after confirmation. |
| **Providers** | Plugins that communicate with platform APIs, such as AWS, to manage resources. |
| **State** | Tracks Terraform-managed resources and links configuration addresses to real resource IDs. |
| **Backends** | Determine where state is stored. Remote backends support collaboration, with appropriate access controls and locking configuration. |
| **Import versus init** | `import` brings existing resources into state; `init` prepares the directory, backend, providers, and modules. |
| **Maintainability** | Use focused modules, configurable inputs, useful outputs, documentation, tests, and version control. |

**Security requires more than hiding credentials**. Keep secrets out of Git, prefer temporary credentials where possible, and protect state with encryption and restricted access. Environment variables are one delivery method—not a guarantee that secrets stay out of state.

**Refreshing state checks real infrastructure against Terraform’s records**. The lecture mentions `terraform refresh`, but that command is deprecated. Terraform normally refreshes during planning; use `plan -refresh-only` and `apply -refresh-only` when specifically reviewing and recording external changes.

For **problem-solving question**, explain an actual issue, your diagnosis, the fix, and how you verified it. Your region-mismatched Dedicated Host ARN error and your imported instance’s tag mismatch are useful examples.

**Explain the reason behind your actions**. For example: “I reviewed the import plan and matched the existing Name tag so Terraform wouldn’t remove it.” This demonstrates more understanding than simply listing commands.