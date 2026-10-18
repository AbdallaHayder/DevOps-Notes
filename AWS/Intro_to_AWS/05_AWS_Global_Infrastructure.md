# AWS Global Infrastructure

AWS operates a global infrastructure made up of Regions, Availablity Zones, and Edge Locations to provide reliable and fast cloud services around the world.

### 1) AWS Regions
- Regions are physical geographic areas where AWS operates groups of data centers.

### 2) How to choose an AWS Region?
- Choosing a region usually depends on `latency` , `compliance/data residency requirements` , and `pricing`.

### 3) AWS Availability Zones (AZs)
- Are seperate data centers or groups of data centers within a Region.
- Deploying resources across multiple AZs improves `high availbility` and `fault tolerance`, because an application can continue running if one AZ experiences an outage.

### 4) AWS Points of Presence (Edge Locations)
- Are locations used by AWS services such as CDNs `Content Delivery Network` to cache and deliver content closer to users, reducing latency and improving performance.

### 5) Tour of the AWS Console
- Is the web interface used to manage AWS services, such as launching EC2 instances, creating S3 buckets, configuring networking, and managing other cloud resources.

# 

- The main idea is that AWS spreads its infrastructure globally so applications can be deployed closer to users, remain highly available, and meet different performance, compliance, and cost requirements.