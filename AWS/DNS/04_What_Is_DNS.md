# What is DNS?

**DNS stands for Domain Name System**. It resolves human-friendly names, such as `google.com`, into IP addresses that devices use to connect to servers.
When you open a website:
1. Your device obtains its IP address through DNS, possibly using a cached answer.
2. Your browser connects to that address and requests the website.

**DNS finds the destination; it doesn’t carry the website’s content or determine the network path**. That’s the limit of the lecture’s GPS analogy.

DNS names form a hierarchy:
```text
.                    Root
└── com              Top-level domain (TLD)
    └── example      example.com
        ├── www      www.example.com
        └── api      api.example.com
```
**Small correction**: The hierarchy starts at the **root (`.`)**, above `.com`. The final root dot is usually omitted when typing domain names.

The benefit is that users can remember a stable name even when the service’s underlying IP addresses change. A name can also resolve to multiple addresses.