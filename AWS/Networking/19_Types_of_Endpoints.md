# Types of Endpoints

AWS provides two main VPC endpoint types for privately accessing AWS services without sending traffic over the public internet.

### Interface Endpoint
An **Interface Endpoint** uses AWS PrivateLink and creates an **ENI (Elastic Network Interface)** inside your VPC.
- The ENI gets a **private IP address**.
- Your EC2/ECS resources connect to supported AWS services through that private IP.
- Supports many AWS services such as **SNS, SQS, Secrets Manager, ECR**, etc.
- Because it uses an ENI, you attach a **Security Group** to control traffic.
- It has costs:
  - hourly charge
  - data-processing charge per GB

### Example idea:
Private EC2 → Interface Endpoint/ENI → SNS
### Gateway Endpoint
A **Gateway Endpoint** works differently.
- It does **not** create an ENI.
- You add the endpoint as a **target in the route table**.
- Supports only:
  - **S3**
  - **DynamoDB**
- No Security Group is attached to the gateway endpoint itself.
- No hourly or per-GB endpoint charge.

Example idea:
```text
Private EC2 → Route Table → Gateway Endpoint → S3
```

| Interface Endpoint | Gateway Endpoint |
|---|---|
| Uses ENI/private IP | Uses route-table target |
| Supports many AWS services | Only S3 and DynamoDB |
| Uses Security Groups | No SG on endpoint |
| Hourly + data-processing cost | Free endpoint usage |

### Key Idea
Use **Interface Endpoints** for most AWS services.
Use **Gateway Endpoints** when privately accessing **S3 or DynamoDB**, because they are simpler and cheaper.