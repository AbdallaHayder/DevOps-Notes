# CloudFront

Amazon CloudFront is AWS’s **Content Delivery Network (CDN)**. It caches copies of content closer to users, helping pages load faster and reducing requests to your original infrastructure.

Two key terms:
- **Origin**: where CloudFront gets the original content—for example, an S3 bucket or an ALB serving your EC2 application.
- **Edge location / Point of Presence (PoP)**: a location in CloudFront’s global network that serves content to users.

### Practical example

Your website’s images are stored in an S3 bucket in Europe, and someone in Saudi Arabia requests an image:
1. Their request reaches a CloudFront edge location.
2. If it has a usable cached copy, CloudFront serves that copy—a **cache hit**.
3. Otherwise, CloudFront fetches the image from the origin and can cache it for later requests—a **cache miss**.

Repeated requests can therefore avoid fetching the image from Europe each time. Content is cached according to your settings; it is not automatically copied to every edge location.

### Security
CloudFront integrates with:
- **AWS Shield**: helps protect against DDoS attacks.
- **AWS WAF**: filters malicious web requests using configured rules.

**Lecture update**: the “216 PoPs” figure is historical. AWS currently lists **750+ PoPs**; this number changes as its network expands.

Connecting this to the previous chapter: **Route 53 provides DNS answers; CloudFront delivers the actual website content**.