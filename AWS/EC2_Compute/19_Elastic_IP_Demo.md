# Elastic IP Demo

This demo shows how to assign a **fixed public IPv4 address** to an EC2 instance using an **Elastic IP (EIP)**.
- Go to **EC** → **Network & Security** → **Elastic IP** → and allocate a new Elastic IP from AWS's public IPv4 pool.
- Launch an EC2 instance, but **disable auto-assign public IP** so the instance starts without a normal dynamic public IP.
- After the instance is running, go back to the Elastic IP and choose **Associate Elastic IP Address**, then select the EC2 instance.
- The instance will now have that **stable public IP**, which can be used for SSH or other access.
- When finished, **disassociate and release the Elastic IP**, then terminate the EC2 instance to avoid unnecessary charges.

### Key Idea
```text
Launch EC2 without public IP
        ↓
Allocate Elastic IP
        ↓
Associate EIP with EC2
        ↓
EC2 gets a fixed public IP
```

### Important Cost Note
Elastic IPs/public IPv4 addresses can incur charges, so for labs:

**Release the Elastic IP when you're done instead of leaving it allocated**.