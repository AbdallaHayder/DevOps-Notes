# Load Balacning

**Load Balancing** distributes incoming traffic across multiple servers or EC2 instances so that no single instance becomes overloaded.
- In AWS, an **Elastic Load Balancer (ELB)** sits between users and your backend EC2 instances.
- It sends requests to available **healthy instances** and continuously performs **health checks**.
- If one instance fails, the load balancer stops sending traffic to it and redirects requests to the remaining healthy instances.
- This improves **scalability, availability, and reliability**.

### Reverse Proxy

A **reverse proxy** also sits between users and backend servers, but can do more advanced routing.
For example, an **Application Load Balancer (ALB)** can route requests to different backend services depending on the request.
```text
Users
  ↓
Load Balancer / Reverse Proxy
  ↓
┌────────┬────────┬────────┐
EC2 #1   EC2 #2   EC2 #3
```

### Key Idea
**Load balancer = spreads traffic across servers**.

**Reverse proxy = receives requests on behalf of backend servers and can route them intelligently**.

Together, they help applications stay **responsive, scalable, and available even when traffic increases or servers fail**.