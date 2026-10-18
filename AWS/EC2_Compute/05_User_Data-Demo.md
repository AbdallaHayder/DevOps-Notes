# EC2 User Data - Demo

In this lab, I launched a temporary **EC2 virtual machine**, connected to it using SSH, tested the instance, and then cleaned up the resources afterward.

### **1. Launch the EC2 instance**

From **EC2** → **Instances** → **Launch instance**:
- Select a Linux AMI.
- Use a small instance type (`t3.micro` in my lab).
- Created a new **RSA `.pem` key pair**.
- Enabled a **public IPv4 address**.
- Created a Security Group allowing **SSH (port 22) only from my IP**.
- Launched the instance and waited until it reached the **Running** state.

### **2. Move the SSH Key**

The downloaded `.pem` key was moved from Downloads into the AWS learning directory:
```bash
mv ~/Downloads/<key-name>.pem .
```

Check and view its permissions:
```bash
ls -la
```

### 3. Secure the Private Key

SSH refuses to use a private key if its permissions are too open, so restrict it:
```bash
chmod 400 <key-name>.pem
```

This makea the key readable by the owner.

### 4. Connect to EC2 Using SSH

General format:
```bash
ssh -i <key-name>.pem <username>@<public-ip>
```

for Ubuntu:
```bash
ssh -i <key-name>.pem ubuntu@<public-ip>
```

for Amazon Linux:
```bash
ssh -i <key-name>.pem ec2-user@<public-ip>
```

On the first connection, confirm the host:
```text
yes
```

### 5. Test the EC2 Machine

Once connected, normal Linux commands can be used:
```bash
ls
touch test.txt
exit
```
This confirms the EC2 instance is essentially a **remote Linux machine running in AWS**

### 6. Clean Up

After completing the exercise:
- **Terminate the EC2 instance** from the AWS Console to stop further compute charges.
- Delete the temporary **EC2 key pair** from AWS if it is no longer needed.
- Delete the local `.pem` file:
```bash
rm <key-name>.pem
```

## Key Takeaway
```text
Launch EC2
   ↓
Create/download SSH key
   ↓
chmod 400 key.pem
   ↓
SSH into instance
   ↓
Use Linux remotely
   ↓
exit
   ↓
Terminate EC2
   ↓
Delete temporary key
```

This lab demonstrated how to **launch, securely access, use, and clean up an EC2 virtual machine**.