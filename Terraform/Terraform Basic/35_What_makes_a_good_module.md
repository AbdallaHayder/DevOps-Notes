# What makes a good module?

**A good Terraform module is focused, flexible, documented, and easy to reuse**. It should package a clear infrastructure component without forcing users to understand every internal detail.

**Use inputs for settings that vary**, such as AMI IDs and instance types, rather than hard-coding them. Expose **useful outputs**, such as an EC2 instance ID or public IP, so other parts of the configuration can use the results.

```text
Inputs → Module’s infrastructure logic → Outputs
AMI      Create/configure EC2             Instance ID
Size                                     Public IP
```

**Document how to use it**. A README should explain its purpose, inputs, outputs, requirements, and include an example.

**Keep one clear responsibility**. An EC2 module should contain resources needed for that purpose, rather than unrelated infrastructure. Related resources can belong together—the aim is a coherent component, not necessarily one resource per module.

**Test and version it**. Tests help confirm expected behavior, while versioned releases let teams choose when to adopt changes instead of receiving unexpected updates.

A reusable module offers **configurable inputs, a clear purpose, and useful outputs**, backed by documentation and testing.