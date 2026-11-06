# Terraform Workflows

The **Terraform workflow** takes you from preparing a project to deploying—and eventually removing—its infrastructure.
```text
Write .tf files → init → validate → plan → apply
                                            ↓
                                      destroy when finished
```
### `terraform init`
 prepares the working directory: it installs required providers and configures the backend where state is stored. Existing installations can be reused.

### `terraform validate`
 checks that your configuration is well formed and internally consistent. It catches configuration errors, but doesn’t prove AWS will accept the deployment or that you have sufficient permissions.

### `terraform plan`
 checks existing infrastructure and previews the actions needed to match your configuration: creating, updating, replacing, or deleting resources.

### `terraform apply`
 carries out those changes. Normally, it generates a fresh plan and asks for confirmation before proceeding.

### `terraform destroy`
 removes resources tracked in the selected Terraform state, after showing a destruction plan and asking for confirmation.

**Prepare → Check → Preview → Execute**. Use `destroy` when you’re ready to clean up the managed infrastructure.