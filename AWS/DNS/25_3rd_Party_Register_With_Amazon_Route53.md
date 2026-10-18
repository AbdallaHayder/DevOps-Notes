# 3rd Party Register with Amazon Route 53

You can use Route 53 for DNS while keeping your domain registered with another provider that supports external nameservers, such as GoDaddy.

### The setup:
1. Create a **public hosted zone** in Route 53 matching your domain, such as example.com.
2. Add the required DNS records there. Existing records are **not copied automatically**.
3. Copy the **nameservers assigned to that hosted zone**.
4. At your registrar, replace the domain’s nameserver settings with those Route 53 nameservers.

This tells DNS resolvers to ask **Route 53 for your domain’s DNS answers**. Your registrar continues handling registration and renewal.

Use a **public hosted zone** for publicly resolvable DNS. A private hosted zone is for private DNS resolution, such as within associated VPCs.

**Correction to the lecture**: Cloudflare Registrar is an exception. Domains registered there must use Cloudflare nameservers. To switch the domain’s DNS to Route 53, you must first transfer its registration to another registrar.