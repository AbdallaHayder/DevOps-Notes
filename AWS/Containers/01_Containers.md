# Containers on AWS

**Docker** is a platform used to **build, package, ship, and run applications consistently** across different environments.

It packages an application together with everything it needs, such as:
- application code
- libraries
- dependencies
- runtime environment

into a portable unit called a **container**.

### What is a Container?
A container is a **lightweight, isolated environment** that runs your application with all of its required dependencies.

This helps solve the classic:

“It works on my machine.”

Because the same container can run consistently on:
```text
Developer laptop
      ↓
Testing / Staging
      ↓
Production
      ↓
Cloud
```
as long as the system supports the container runtime.

### Why Use Docker?
- **Portability** — containers can run across different environments.
- **Consistency** — the application behaves the same in development, testing, and production.
- **Speed** — containers are lightweight and start quickly.
- **Efficiency** — they generally use fewer resources than full virtual machines.
- **Simpler deployment** — package the app once and deploy the same container everywhere.

### Images vs Containers
A **Docker image** is the blueprint/template for your application.

A **container** is the running instance created from that image.
```text
Docker Image
    ↓
"Blueprint"
    ↓
Docker runs it
    ↓
Container
"Running application"
```
You can create multiple containers from the same image:
```text
        Docker Image
        /    |    \
       ↓     ↓     ↓
Container  Container  Container
```
### Key Idea
**Docker packages your application and its dependencies into an image, and that image is used to create portable, consistent containers that can run across different environments**.