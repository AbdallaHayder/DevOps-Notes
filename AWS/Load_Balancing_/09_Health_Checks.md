# Health Checks

**Health checks** let a load balancer determine whether backend instances are working properly before sending traffic to them.
- The load balancer regularly sends a request to a configured **port and path**, such as:
```text
http://instance:4567/health
```
- If the instance returns a successful response such as **HTTP 200 OK**, it is marked **healthy**.
- If it stops responding or returns an unhealthy response, the load balancer marks it **unhealthy** and stops sending traffic to it.
- Traffic is then redirected to the remaining healthy instances until the failed instance recovers and passes the health check again.

### Simple Flow
```text
Load Balancer
   ↓ health check
EC2 #1 → 200 OK ✅
EC2 #2 → no response ❌
EC2 #3 → 200 OK ✅
```
Traffic goes only to:
```text
EC2 #1 and EC2 #3
```
**Key idea**: health checks help keep applications available by automatically removing unhealthy instances from traffic and restoring them once they recover.