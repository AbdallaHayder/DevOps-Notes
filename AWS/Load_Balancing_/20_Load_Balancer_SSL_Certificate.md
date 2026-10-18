# Load Balancer - SSL Certificate

Load balancers can handle **SSL/TLS certificates** so users can connect securely over **HTTPS**.

AWS commonly uses **X.509 certificates**, which are the standard type of certificates used for SSL/TLS.

### AWS Certificate Manager (ACM)

AWS provides **AWS Certificate Manager (ACM)** to make certificate management easier.

ACM can help you:

- create certificates
- manage them
- renew them
- attach them to services such as load balancers

You can also upload your own custom certificate if needed.

### HTTPS Listener

To accept HTTPS traffic, the load balancer needs an **HTTPS listener**, usually on port **443**.

You must attach a **default certificate** to that listener.
```text
User
  ↓
HTTPS :443
  ↓
Load Balancer + TLS certificate
```
### Multiple Domains and SNI
A load balancer can serve **multiple domains** using multiple certificates.

Example:
```text
app.example.com
blog.example.com
shop.example.com
        ↓
       ALB
```
**SNI — Server Name Indication** allows the client to tell the load balancer which hostname it wants, so the load balancer can return the correct certificate for that domain.

### Security Policies
Load balancers can also use **SSL/TLS security policies** to control which TLS versions and encryption settings are allowed, including support for older clients if required.

### Typical Traffic Flow
A common setup is:
```text
User
  ↓
HTTPS :443
  ↓
Load Balancer
  ↓
HTTP :80
  ↓
EC2 instance
```
The load balancer handles the encrypted HTTPS connection, then forwards traffic internally to the EC2 instance.

### Key Idea
**The load balancer can centralize HTTPS handling**, while ACM makes certificate management easier.

This means your backend instances do not necessarily need to manage the public TLS certificate themselves.