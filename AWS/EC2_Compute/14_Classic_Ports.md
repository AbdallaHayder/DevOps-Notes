# Classic Ports To Know

when configuring **Security Groups (SGs)** or troubleshooting connectivity, port numbers tell the server **which service the traffic is meant for**.
| Service | Full Name | Port | What it’s used for | Best practice |
|---|---|---:|---|---|
| **SSH** | Secure Shell | **22** | Secure remote login to Linux servers | Restrict to trusted IPs only; avoid opening to the whole internet |
| **FTP** | File Transfer Protocol | **21** | File transfers | Avoid where possible because it is insecure |
| **SFTP** | SSH File Transfer Protocol | **22** | Secure file transfers over SSH | Prefer over FTP (secure version of FTP) |
| **HTTP** | Hypertext Transfer Protocol | **80** | Unencrypted web traffic (accessing unsecured websites) | Usually redirect users to HTTPS in production |
| **HTTPS** | Hypertext Transfer Protocol Secure | **443** | Encrypted web traffic using TLS | Standard choice for production websites and APIs |
| **DNS** | Domain Name System | **53** | Converts domain names like `google.com` into IP addresses | Essential for name resolution |
| **RDP** | Remote Desktop Protocol | **3389** | Remote access to Windows servers | Restrict to trusted IPs/VPN only |
| **SMTP** | Simple Mail Transfer Protocol | **25** | Sending email between mail servers | Often restricted by cloud providers; secure variants are commonly preferred |
| **MySQL** | MySQL Database Protocol | **3306** | MySQL database connections | Never expose publicly unless absolutely necessary |
| **PostgreSQL** | PostgreSQL Database Protocol | **5432** | PostgreSQL database connections | Usually allow only from app servers or private networks |


### Example in AWS
A typical production web server might use:
```text
SSH 22      → Your office/VPN IP only
HTTP 80     → Public, usually redirected to HTTPS
HTTPS 443   → Public
MySQL 3306  → Only from application servers
```

### Key Best Practice
Open **only the ports your application actually needs**, and restrict sensitive ports like SSH, RDP, and database ports to specific trusted sources.

A useful rule to remember:
**Public-facing services can be open to users; management and database ports should stay tightly restricted**.