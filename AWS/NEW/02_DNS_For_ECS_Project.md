# Using company DNS for ECS Project

The instructor suggests giving an interview project a **company-themed subdomain under a domain you own**.

For example, if you own `abdalla.com`, you could present a demo at:
```text
microsoft.abdalla.com
```
Here:
- **`abdalla.com`** is your domain.
- **`microsoft`** is a subdomain label you created.
- You manage its DNS records. You are not using or changing `microsoft.com`.

For an ECS application behind an ALB, you could create a Route 53 alias record pointing that name to the ALB. Visitors use the friendly name, and the ALB forwards their requests to your application.

The project gives you something concrete to explain in an interview: **how your domain’s DNS resolves to the infrastructure serving the application**.

The instructor says this has impressed hiring managers. Treat that as anecdotal advice; a custom name supports your presentation, while your implementation and ability to explain it demonstrate your skills.