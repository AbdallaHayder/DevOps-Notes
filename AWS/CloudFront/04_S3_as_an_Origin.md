# CloudFront - S3 as an Origin

Your **S3 bucket stores the original files**, such as images and videos. CloudFront caches copies at edge locations to deliver them faster to users.

### How delivery works:
1. A user requests a file through CloudFront.
2. **Cache hit**: CloudFront has a usable cached copy and returns it directly.
3. **Cache miss**: CloudFront fetches the file from S3 when needed, delivers it, and caches it for future requests.

Files are **cached on demand**, not automatically copied to every edge location worldwide.

### Keeping the S3 bucket private

Use **Origin Access Control (OAC)** and an appropriate **bucket policy** to allow your CloudFront distribution to retrieve files while keeping public S3 access blocked.
```text
User → CloudFront → Private S3 bucket
User → Direct S3 URL → Access denied for anonymous requests
```
This lets visitors view your content through CloudFront without making the bucket publicly accessible.

### Lecture corrections:
- “Private database” should be **private S3 bucket**—S3 is object storage.
- “Only CloudFront can access it” is shorthand: authorized IAM users or roles may still have direct access, depending on their permissions. OAC does not automatically remove those permissions.