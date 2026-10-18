# CloudFront at a high level

Suppose your browser requests an image, `photo.jpg`, through CloudFront:

1. **The request reaches a CloudFront edge location** selected to serve the user efficiently.
2. **CloudFront checks its cache** for a usable copy of the image.
3. What happens next depends on whether it finds one:

| Situation | What CloudFront does |
|---|---|
| **Cache hit:** image is available in the cache | Returns the cached image without contacting the origin. |
| **Cache miss:** image is unavailable | Fetches it from the origin, such as S3 or an HTTP server, delivers it to the user, and caches it when allowed. |

Later requests can reuse the cached image. **This reduces delivery time and repeated work at the origin**.
```text
Cache hit:   Browser → CloudFront cache → Browser

Cache miss: Browser → CloudFront → Origin
                    Browser ← CloudFront ← Origin
```
**Small clarifications**: “Closest edge” usually means lowest network delay, not necessarily geographically nearest. Also, CloudFront may check an intermediate **regional edge cache** before fetching from the origin—the diagram shows the simplified flow.