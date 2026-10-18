# Amazon Networking

AWS networking connects your cloud resources together and controls how traffic moves between users, applications, and services.

The chapter focuses on three main services:

- **Amazon VPC (Virtual Private Cloud)**

  Your private network inside AWS.
  It lets you control:
  - which resources are inside the network
  - who can access them
  - how traffic flows between them and the internet

- **Amazon Route 53**

  AWS’s **DNS service**.

  It translates domain names such as:
  ```text
  example.com → IP address / AWS resource
  ```
  It can also route users based on things like location and availability.

- **Amazon CloudFront**

  AWS’s **Content Delivery Network (CDN)**.

  It delivers content such as images, videos, and website files from locations closer to users, improving speed and performance.

### **VPC Focus**
The VPC section will build a network from the ground up and cover components such as:
```text
VPC
├── Subnets
├── Route Tables
├── Internet access
├── NAT Gateway / NAT Instance
└── Other networking resources
```
VPC is essentially the **networking foundation** that many AWS resources, such as EC2, load balancers, and EKS, rely on.

### Cost Note
Some networking resources, particularly **NAT Gateways**, can generate charges, so lab resources should be deleted when you're finished.

### Key idea:  
**VPC = your AWS network, Route 53 = DNS, CloudFront = fast global content delivery**.