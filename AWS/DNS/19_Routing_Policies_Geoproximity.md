# Routing Policies - Geoproximity

Geoproximity routing selects a DNS answer based on **how geographically close users are to your application resources**. You can influence that selection using a bias, which expands or shrinks the geographic area served by a resource.
| Bias | Effect |
|---|---|
| **0** | No added preference; selection follows geographic proximity. |
| **+1 to +99** | Expands the area sending users to that resource. |
| **−1 to −99** | Shrinks that area, shifting users toward other resources. |

**Example: one website running in two Regions**

Your website, `example.com`, runs behind two load balancers: one in **US East** and another in **US West**.

- **Both biases are 0**: users generally receive the DNS answer for the geographically closer deployment.
- **US East bias becomes +50**: its selection area expands. Some users who previously received the western endpoint now receive the eastern endpoint—even if the western deployment is physically closer.

**`+50` does not mean 50% of traffic**. It changes the geographic boundary used to select an endpoint. This can help shift demand toward a deployment with more capacity.

To identify resource locations, specify an **AWS Region** for AWS resources or **latitude and longitude** for resources outside AWS.

#### Difference from earlier policies:
- **Geolocation**: follow explicit rules, such as “users in France → this endpoint.”
- **Geoproximity**: choose by geographic proximity, adjusted by bias.
- **Latency**: choose using network-delay data; the geographically closest resource is not necessarily fastest.

**Lecture correction**: Traffic Flow is **no longer required**. Since January 2024, you can configure geoproximity directly on Route 53 DNS records. Traffic Flow remains an option.