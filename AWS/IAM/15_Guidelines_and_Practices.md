# IAM Guidelines & Best Practices

* **Avoid using the root account** for everyday work; use IAM users or roles with appropriate permissions.
* Give **each person their own AWS identity** and never share logins.
* Organize users into **groups** and assign permissions to groups for easier management.
* Enforce a **strong password policy**.
* Enforce **MFA**.
* Use **IAM roles** for AWS services like EC2 and Lambda instead of hard-coding credentials.
* Keep **access keys** for CLI/SDK access secure and never share or commit them to source control.
* Regularly review access using **IAM Credentials Report** and **Access Advisor**.
* Follow **least privilege**: only grant the permissions that are actually needed.

The goal is to keep AWS access **secure, traceable, and easy to manage** as the environment grows.