# Modules

**A Terraform module is a collection of configuration files in one directory that work together to define infrastructure**. It can describe something small, such as an EC2 instance, or a larger setup containing networks and multiple resources.

**You’ve already been using a module**. Your `first-ec2` folder is the **root module** when you run Terraform from it. Reusable modules called by another module are known as **child modules**.

Modules are like the lecturer’s **Lego blocks**: package an infrastructure component once, then reuse it across projects or environments instead of copying its code.

```text
Reusable EC2 module
    ├─ Development: chosen inputs
    ├─ Staging: chosen inputs
    └─ Production: chosen inputs
```

They help with **reusability and organization**, keeping related resources together and reducing repetition. They also support **consistency and collaboration**: teams can share established naming, security, and configuration patterns rather than each starting from scratch.

**Variables customize a module; the module packages the infrastructure logic**. Reusing the same module gives environments a common structure while allowing different input values.