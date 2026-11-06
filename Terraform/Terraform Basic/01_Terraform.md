# Terraform module overview

### 1. Terraform module overview
- Introduces Terraform for defining and managing cloud infrastructure through code.
- Builds on your Linux, SSH, networking, and AWS knowledge.

### 2. Infrastructure as Code basics
- What Infrastructure as Code (IaC) means and how to implement it.
- How IaC differs from configuration management, which configures software and settings on machines.
- Which tools suit each task and when to use them.

### 3. Core Terraform commands
- **`plan`** — preview proposed infrastructure changes.
- **`apply`** — carry out those changes.
- **`destroy`** — remove infrastructure managed by the configuration.
- **`import`** — bring existing infrastructure under Terraform management.

### 4. Variables and outputs
- **Variables** supply configurable inputs, such as an AWS region or instance size.
- **Outputs** expose useful results, such as an instance’s public IP address.

### 5. Modules and expressions
- **Modules** organize reusable Terraform configurations; learn how to create and use them.
- **Meta-arguments** control resource behavior, such as creating multiple instances or setting dependencies.
- **Expressions** calculate or select values used in your configuration.