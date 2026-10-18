# Where are the Docker images Stored?

A **Docker image** is the blueprint for a container. It includes the application code, dependencies, libraries, and configuration needed to run the app.

Once you build an image, you usually store it in a **container registry/repository** so it can be pulled and used elsewhere.

### Common Places to Store Images
- **Docker Hub**
  - The most popular public registry for Docker images.
  - Contains common base images such as:
    - Ubuntu
    - Nginx
    - MySQL
  - Think of it like **GitHub, but for Docker images**.
- **Amazon ECR — Elastic Container Registry**
  - AWS’s container image registry.
  - Integrates closely with AWS services.
  - Can store images privately or publicly.
  - Commonly used by teams running containers on AWS.

### Public vs Private Repositories
- **Public repository**
  - Anyone can access the image.
  - Useful for open-source or commonly shared images.
- **Private repository**
  - Only authorised users or systems can access the image.
  - Common in companies for internal applications.

### Simple Flow
```text
Build Docker Image
      ↓
Push to Registry
      ↓
Docker Hub / Amazon ECR
      ↓
Other servers pull the image
      ↓
Run containers
```
### Key Idea
**Docker images are stored in container registries such as Docker Hub or Amazon ECR, where they can be shared, secured, and pulled whenever you need to create containers**.