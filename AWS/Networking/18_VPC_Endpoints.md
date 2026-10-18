# VPC Endpoints (AWS PrivateLink)

A **VPC Endpoint** lets resources inside your VPC connect to supported AWS services **privately**, without sending traffic over the public internet.
- Powered by **AWS PrivateLink**
- Keeps traffic inside the AWS network
- Useful for services such as **S3, SNS, and other AWS services**
- Helps improve security and compliance
- Can reduce the need for an **Internet Gateway or NAT Gateway** just to reach AWS services
- AWS manages the underlying availability and scaling

### Traditional Access
Without a VPC Endpoint, a private EC2 might reach an AWS service like this:

```text
Private EC2 → NAT Gateway → Internet path → AWS service
```

### With a VPC Endpoint
The private EC2 can connect directly:
```text
Private EC2 → VPC Endpoint → AWS service
```

So the traffic stays private and does not need to go through the NAT Gateway.
### Troubleshooting
If a VPC Endpoint is not working, check:
- **DNS resolution** settings
- **Route tables**
- whether traffic is correctly directed to the endpoint

### Key Idea
**VPC Endpoint = private access from your VPC to AWS services without using the public internet**.