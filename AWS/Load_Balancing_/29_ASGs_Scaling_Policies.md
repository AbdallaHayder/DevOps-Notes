# Auto Scaling Groups - Scaling Policies

Scaling policies control **when and how an Auto Scaling Group (ASG) adds or removes EC2 instances** as demand changes.

There are three main types:
- **Target Tracking Scaling**
  - You give AWS a target metric to maintain.
  - Example: keep average CPU utilisation around **40%**.
  - AWS automatically adds or removes instances to stay near that target.
  - Simple and easy to manage.
- **Simple / Step Scaling**
  - Uses **CloudWatch alarms** and predefined actions.
  - Example:
  ```text
    CPU > 70% → add 2 instances
    CPU < 30% → remove 1 instance
    ```

  - Gives you more detailed control over how much the ASG scales.


- **Scheduled Scaling**
  - Scales at specific times based on predictable traffic patterns.
  - Example:
  ```text
    Every Monday at 10 AM
        ↓
    Increase instance count before traffic spike
  ```
  - Useful for planned events, regular peak periods, or known busy times.

### Key Idea
```text
Target Tracking → maintain a target automatically
Step Scaling    → react to CloudWatch thresholds
Scheduled       → scale based on known times
```
These policies let AWS scale your infrastructure automatically for both **unexpected demand** and **predictable traffic patterns**.