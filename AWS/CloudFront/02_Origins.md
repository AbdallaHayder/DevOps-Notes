# CloudFront - Origins

An **origin** is where CloudFront gets the content it delivers to users.

### 1. S3 bucket origins

Useful for files such as images, videos, HTML, CSS, and JavaScript.

You can keep the bucket private using **Origin Access Control (OAC)** together with the appropriate **S3 bucket policy**:
```text
User → CloudFront → Private S3 bucket
```
CloudFront authenticates its requests to S3. With public access blocked and permissions configured correctly, users can access files through CloudFront without accessing them anonymously through a direct S3 URL.

AWS recommends **OAC** over the older **Origin Access Identity (OAI)**, which still exists.

### 2. Custom HTTP origins

These are backends that serve content over HTTP, such as:
- An **ALB** in front of your EC2 application.
- An **EC2 instance** running a web server.
- Another compatible web server, including one outside AWS.
- An **S3 static website endpoint**.

For example:
```text
User → CloudFront → ALB → EC2 application
```
**Important lecture correction: S3 website hosting**

The transcript mixes two different S3 options:
| S3 origin option | Enable S3 Static Website Hosting? | Supports OAC? |
|---|---|---|
| Regular S3 bucket endpoint | No | Yes |
| S3 website endpoint, treated as a custom origin | Yes | No |

The website-hosting requirement does **not** apply to ALB or EC2 origins.

### Uploading through CloudFront
CloudFront can also act as an **ingress—an entry point—for uploads to S3**. For example, it can forward a `PUT` request containing a file. This requires explicitly allowing the relevant HTTP methods and configuring write permissions and authorization; read-only access is insufficient.