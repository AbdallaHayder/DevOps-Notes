# How DNS Works

When you enter `example.com`, your device needs its IP address before connecting to the website.

Assuming the answer isn’t already cached:
1. **Your device asks a recursive DNS resolver**, provided by your ISP, company, or another DNS provider.
2. **The resolver asks a root server**, which replies: “Ask these `.com` name servers.”
3. **The resolver asks a `.com` TLD server**, which replies: “These are the authoritative name servers for `example.com`.”
4. **The resolver asks an authoritative server**, which returns the requested IP address in this simple example.
5. **The resolver caches the answer** according to its TTL and returns it to your device.
6. **Your browser connects to the IP address** and requests the website. 

The **resolver does the searching**. Root and TLD servers provide directions—called **referrals**—rather than forwarding your request themselves. Cached answers can skip some or all of these steps.

**Corrections to the lecture**:
- The final server is called an **authoritative name server**, rather than an “SLD DNS server.” Its DNS provider can be different from the domain registrar.
- Root servers have **multiple independent operators**; ICANN doesn’t operate all of them.

Connecting this to AWS: if your domain uses **Route 53 authoritative DNS**, Route 53 supplies the answer at **step 4** from your hosted-zone records.