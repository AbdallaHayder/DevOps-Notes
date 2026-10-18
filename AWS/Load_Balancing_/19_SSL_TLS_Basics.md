# SSL/TLS - Basics

**SSL/TLS certificates** are used to secure communication between clients, such as web browsers, and servers.

- **SSL** stands for **Secure Sockets Layer**.
- **TLS** stands for **Transport Layer Security** and is the modern, more secure replacement for SSL.
- People still commonly say “**SSL certificate**”, even though modern websites actually use TLS.

### What do certificates do?

They help provide **encryption in transit** (also called **in-flight encryption**).

This means data is encrypted while travelling across the network:
```text
Browser
   ↓
Encrypted HTTPS traffic
   ↓
Server / Load Balancer
```
This prevents someone intercepting the network traffic from easily reading the data.

### Certificate Authorities (CAs)

Certificates are issued by trusted organisations called **Certificate Authorities (CAs)**, which help verify the identity of websites.

Examples mentioned in the lecture include:
- DigiCert
- GlobalSign
- GoDaddy
- Let's Encrypt
- Comodo

### Certificate Expiration

TLS certificates have an **expiration date** and must be renewed.

If a certificate expires, browsers may display a security warning to users, which can prevent users from trusting or accessing the site normally.

Managed tools can help automate certificate renewal.

### Key Idea
```text
HTTP  → unencrypted traffic
HTTPS → HTTP protected with TLS
```
**TLS certificates help prove a website's identity and protect data while it travels between clients and servers**.