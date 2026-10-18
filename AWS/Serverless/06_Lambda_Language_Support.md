# AWS Lambda Language Support

AWS Lambda supports several programming languages out of the box, including:
- **Node.js (JavaScript)** — common for event-driven apps
- **Python** — popular for automation, data processing, and serverless apps
- **Java** — often used in enterprise applications
- **C# / .NET / PowerShell** — useful for Microsoft-based environments
- **Ruby** — another supported option

### Custom Runtimes
If your language is not natively supported, Lambda can use a **custom runtime** such as **Rust** or **Golang**.

That means you provide the runtime logic needed so Lambda knows how to execute your code.

### Lambda Container Images
You can also package your Lambda function as a **container image** when:
- your dependencies are complex
- you need more control over the runtime environment
- you want to package everything together

The container still has to work with the **Lambda Runtime API**.

### Lambda vs Fargate for Containers
```text
Lambda container image
→ still runs as a Lambda function
→ event-driven
→ Lambda limitations still apply

ECS/Fargate
→ better for general-purpose containers
→ more flexible for long-running containerized apps
```
### Key Idea
Lambda gives you flexibility in both programming language and runtime, while container images give you extra control when the standard Lambda runtime is not enough.