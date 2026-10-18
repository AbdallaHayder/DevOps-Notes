# Routing Policies - Latency Based

**Latency means network delay**. Latency-based routing helps users reach the deployment of your application expected to have the lowest network delay.

Imagine **one website, `example.com`**, with your application running behind load balancers in three AWS Regions:
- Europe
- United States
- Asia

When a user in Germany looks up `example.com`, Route 53 compares its latency data for **the Regions you configured**, then returns the chosen application endpoint’s address.

Europe may be selected—but **geographically closest doesn’t always mean fastest**. If the network path to your US deployment offers lower latency, Route 53 may select that instead.

**Important clarification**: Route 53 uses AWS network-latency measurements collected over time. It does not run a new speed test against each EC2 instance for every visitor, or check which application server processes requests fastest.

**Health checks**

With health checks or supported alias target-health evaluation configured, an unhealthy endpoint can be excluded when healthy alternatives exist. Route 53 can then select another eligible Region.

Switching is **not immediate**: detecting the failure takes time, and resolvers may still hold cached answers pointing to the previous endpoint.

The distinction from the policies you just studied:
- **Weighted**: “Prefer destinations according to the proportions I set.”
- **Latency-based**: “Prefer the configured Region with the lowest estimated network delay.”