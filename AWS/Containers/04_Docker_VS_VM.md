# Docker vs Virtual Machines

Both **Docker containers and Virtual Machines (VMs)** let you run applications in isolated environments, but they do it differently.

### Virtual Machines
VMs virtualize the **hardware**.

Each VM has:
- its own **guest operating system** such as Ubuntu or Windows
- its own allocated CPU, memory, and storage
- a **hypervisor** that manages multiple VMs on the same physical machine

Because every VM includes a full OS, VMs are:
- heavier
- slower to start
- more resource-intensive
```text
Physical Server
   ↓
Hypervisor
   ├── VM 1 → Guest OS → App
   ├── VM 2 → Guest OS → App
   └── VM 3 → Guest OS → App
```
### Docker Containers
Containers virtualize at the operating-system level.

They:
- share the host OS kernel
- keep applications and dependencies isolated
- are managed by the Docker Engine/daemon
- do not need a full guest OS for every container

This makes them:
- faster to start and stop
- more lightweight
- more resource-efficient
- easier to move between environments
```text
Physical Server / VM
   ↓
Host OS
   ↓
Docker Engine
   ├── Container 1 → App
   ├── Container 2 → App
   └── Container 3 → App
```
### Key Difference
```text
VMs
→ virtualize hardware
→ each VM has its own OS
→ heavier

Containers
→ virtualize/isolate at OS level
→ share the host kernel
→ lighter and faster
```
**Key idea**: Docker is often preferred when you want **speed, portability, and efficiency**, while VMs provide stronger separation because each one has its own full operating system.