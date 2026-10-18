# ECS Service Auto Scaling

**ECS Service Auto Scaling** automatically adjusts the number of running ECS tasks based on demand.

If traffic or resource usage increases, ECS can **scale out** by adding more tasks. When demand drops, it can **scale in** and remove tasks to reduce cost.

It can scale based on metrics such as:
- CPU utilisation
- memory utilisation
- ALB request count per target

### Scaling Strategies
- **Target Tracking**

  Maintain a target value, such as keeping CPU around 40%.
- **Step Scaling**

  Add or remove a specific number of tasks when thresholds are crossed.

```text
CPU > 70% → add 2 tasks
CPU < 30% → remove 1 task
```
- **Scheduled Scaling**

  Scale at known times when traffic patterns are predictable.

### With Fargate
With **Fargate**, scaling is simpler because you don’t manage EC2 instances. You mainly control the number of ECS tasks, while AWS manages the underlying infrastructure.

**Key idea**: ECS Service Auto Scaling adjusts the number of containers/tasks automatically so the application can handle changing demand efficiently.