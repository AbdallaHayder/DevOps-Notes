# Route 53 - Health Checks

Health checks help Route 53 determine whether **your application destinations are healthy**. When connected to an appropriate DNS routing policy, they let Route 53 favour a healthy destination over an unhealthy one.

### 1. **Endpoint health checks — check the application directly**
Route 53 sends **HTTP, HTTPS, or TCP checks** to a configured endpoint.

For example, it can request your public application’s `/health` page. If that check repeatedly fails, the endpoint can be marked unhealthy.

The lecture’s “ping” is informal wording—it does **not** mean ICMP ping.

### 2. Calculated health checks — combine other checks
These produce one health result from several individual checks.

For example:

“Consider this service healthy if at least **two of its three server checks** are healthy.”

You define the rule; Route 53 combines the results accordingly.

### 3. CloudWatch-based health checks — use monitoring data
These use the metric data underlying a configured **CloudWatch alarm**.

For example, you publish your application’s memory metric and configure an alarm threshold. Route 53 can use that signal to assess health—even if the application still responds to basic connection checks. The metric and alarm must be configured; Route 53 doesn’t automatically discover low memory.

**How this helps your application**

Suppose your website has a primary deployment in the US and a ready backup in Europe. With DNS failover configured, an unhealthy primary can cause Route 53 to return the backup’s address instead.

**Correction**: This isn’t guaranteed to happen “without users noticing.” Failure detection takes time, cached DNS answers may still point to the primary, and existing connections aren’t transferred.

Also, direct endpoint checks cannot reach private IP addresses; CloudWatch-based checks can help represent private-resource health.