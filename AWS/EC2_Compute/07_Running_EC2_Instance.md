# Running a Web Server on an EC2 Instance

This demo showed how to launch an EC2 instance and automatically configure it as a simple web server using **EC2 User Data**.

### EC2 Configuration
The instance was created with:
- **Amazon Linux AMI**
- Small EC2 instance type.
- **RSA `.pem` key pair** for SSH access
- Default **VPC and subnet**
- **Public IP enabled**
- Security Group allowing:
    - **SSH — port 22**
    - **HTTP — port 80**
- Default **8 GB EBS Volume**, with **Delete on termination** enabled.

### User Data Script
A startup script was added under **Advanced Details → User Data**. User Data runs automatically when the instance initially starts and can be used to install and configure software.

A cleaned-up version of the commands demonstrated is:
```bash
#!/bin/bash

yum update -y
yum install -y httpd

systemctl start httpd
systemctl enable httpd

echo "<h1>Hello CoderCo from $(hostname -f)</h1>" > /var/www/html/index.html
```

What these commands do: 
```text
yum update -y
→ Update installed packages

yum install -y httpd
→ Install the Apache web server

systemctl start httpd
→ Start Apache

systemctl enable httpd
→ Start Apache automatically after boot

echo ... > /var/www/html/index.html
→ Create the webpage shown to users
```

### Testubg the Web Server
After the instance entered the **Running** state, its public IP was entered into a browser using:
```text
http://<public-ip>
```
**Port 80** worked because HTTP was allowed in the Security Group. HTTPS did not work because port 443 had not been configured.

The public IP allows users to reach the EC2 instance from the internet, while the server itself also has its own **private IP/hostname inside the VPC**.

### Stop, Start & Terminate
An EC2 instance can be:
- **Stopped** — shuts down the VM but keeps it available to start again.
- **Started** — boots a stopped instance again.
- **Terminated** —permanently deletes the instance.

In the demo, after stopping and starting the instance, AWS assigned it a new public IP address, so the old address no longer worked.

### Key Takeaway
The workflow was:
```text
Launch EC2
    ↓
Configure networking + security
    ↓
Run User Data automatically
    ↓
Install Apache
    ↓
Serve website on port 80
    ↓
Access through public IP
```

This demonstrates how an EC2 server can be **automatically provisioned and turned into a working application/web server as soon as it launches**>