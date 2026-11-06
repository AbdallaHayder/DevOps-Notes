# Infra Orchestration vs Config Management

**Infrastructure orchestration** creates and connects the resources an application needs, such as servers, networks, and security groups. Tools like **Terraform and AWS CloudFormation** manage these resources and their dependencies.

**Configuration management** prepares those servers to do their jobs: installing software, changing settings, and keeping configurations consistent. Common tools include **Ansible, Puppet, and Chef**.

The lesson’s **Hajj analogy** separates arranging transport, hotels, and tents— orchestration—from preparing each pilgrim’s clothing, prayer mats, and supplies—configuration management.

For a WordPress deployment, the tools could work together like this:
```text
Terraform                  Ansible
Creates EC2 and      →     Installs and configures     →  WordPress runs
network resources          WordPress dependencies
```
**Remember**: Terraform primarily manages the infrastructure; Ansible primarily manages the software and settings inside it. Their capabilities can overlap.