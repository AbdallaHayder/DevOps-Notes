# Sticky Session (Session Affinity)

**Sticky Sessions** make a load balancer keep sending the same user to the **same backend instance** for a period of time.

Normally, a load balancer may send each request to a different healthy server:
```text
User
  ↓
Load Balancer
  ├── EC2 #1
  ├── EC2 #2
  └── EC2 #3
```
With stickiness enabled:
```text
User A → EC2 #1
User A → EC2 #1
User A → EC2 #1
```
The user is effectively “stuck” to one instance.

### How it works
The load balancer usually uses a **cookie** to remember which backend instance the client should return to.

You can configure how long that stickiness lasts by setting the cookie expiration time.

### When it is useful
Sticky sessions are useful when **session data is stored locally on one instance**.

Example:
```text
User adds items to cart
        ↓
Cart data stored on EC2 #1
        ↓
User should keep returning to EC2 #1
```

Without stickiness, the next request could go to EC2 #2, which may not know about that session/cart data.

### Trade-off
The downside is that traffic can become **unbalanced**.

For example:
```text
EC2 #1 → 80 users
EC2 #2 → 20 users
```
because many users may be stuck to the same server.

Without stickiness, the load balancer can usually distribute traffic more evenly.

### Key Idea
Use sticky sessions when your application needs users to stay connected to the same backend because session data is stored there.

If session data is already shared between instances, sticky sessions are often unnecessary.