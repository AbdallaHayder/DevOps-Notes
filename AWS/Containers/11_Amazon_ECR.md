# Amazon ECR

**Amazon ECR** is AWS’s container image registry. Think of it as Docker Hub inside AWS.

It lets you:
- store Docker/container images
- manage them
- pull them later for deployment
- use them directly with services like ECS

### **Repository Types**
- Private repositories — for internal or sensitive images
- Public repositories — for images you want others to access

### **ECS Integration**
ECS can automatically pull container images from ECR when starting tasks:
```text
Developer builds image
      ↓
Push to ECR
      ↓
ECS task pulls image
      ↓
Container runs
```
### **Security**
Access to private ECR repositories is controlled with **IAM permissions**, so only authorised users and AWS services can pull or push images.

### **Useful Features**
- **Vulnerability scanning** — scans images for known security issues
- **Image tagging/versioning** — e.g. `app:v1`, `app:v2`
- **Lifecycle policies** — automatically remove old or unused images

### **Key idea**:  
ECR is AWS’s managed place to securely store, version, scan, and distribute container images.