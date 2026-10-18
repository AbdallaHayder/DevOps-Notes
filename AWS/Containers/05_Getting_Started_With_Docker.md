# Getting Started with Docker

Everything starts with a **Dockerfile**, which is the recipe Docker uses to build an image.

Common Dockerfile instructions include:
- `FROM` → chooses the base image
- `COPY` → copies your app files into the image
- `RUN` → runs commands during the build
- `CMD` → defines what runs when the container starts

Then the basic workflow is:
```text
Dockerfile
   ↓
docker build
   ↓
Docker Image
   ↓
docker run
   ↓
Container
```
You can also **push** images to registries like **Docker Hub** or **Amazon ECR**, and later **pull** them to another machine.
#### Key idea:  
Dockerfile → build image → run container → optionally push/pull the image from a registry.