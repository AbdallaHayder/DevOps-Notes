# Internet Gateway (IGW)

An **Internet Gateway (IGW)** connects a VPC to the public internet.

It allows resources with the right networking setup, such as EC2 instances, to send and receive internet traffic.

### Key Points
- An IGW is:
  - **highly available**
  - **redundant**
  - able to scale with traffic
- It is **not automatically created** when you create a custom VPC.
- You must:
  1. create the IGW
  2. attach it to the VPC
  3. update the relevant subnet route table
### Important
Attaching an IGW alone does **not** give internet access.

The route table must include a route such as:
```text
0.0.0.0/0 → Internet Gateway
```
That tells internet-bound traffic to leave through the IGW.
### Key Idea
```text
VPC resource
   ↓
Route Table
   ↓
Internet Gateway
   ↓
Internet
```
**IGW = the VPC’s gateway to the internet, while the route table tells traffic to use it**.