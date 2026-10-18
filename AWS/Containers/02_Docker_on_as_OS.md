# Docker on as OS

Docker runs on a **host machine** such as an EC2 instance, local computer, or server. The **Docker Engine** is installed on that host and runs multiple containers.

Instead of installing every application directly on the host OS, Docker keeps each application inside its own container.

### How Containers Work
Each container can run a different application, for example:
```text
Host Server / EC2
└── Operating System
    └── Docker Engine
        ├── Java Container
        ├── Nginx Container
        └── MySQL Container
```
The containers are **isolated from each other**, but they share the host’s:
- CPU
- memory
- networking
- operating system kernel

Each container still has its own:
- application
- dependencies
- runtime
- processes
- files

This means you can even run different versions of the same software in separate containers without conflicts.

### Why Containers Are Lightweight
Unlike virtual machines, containers **do not need their own full operating system**.

They share the host OS kernel, which makes them:
- faster to start
- less resource-intensive
- more efficient than full VMs

### Why This Helps
Without Docker, installing Java, Nginx, MySQL, and other software directly on one server can lead to dependency or version conflicts.

With Docker:
```text
Java app  → isolated container
Nginx     → isolated container
MySQL     → isolated container
```
They can run side-by-side without interfering with each other.

### Key Idea
**Containers share the host operating system kernel but keep their applications and dependencies isolated, making them lightweight, consistent, and easy to run together on one machine**.