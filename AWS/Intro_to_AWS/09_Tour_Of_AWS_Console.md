# Tour of AWS Console

The **AWS Management Console** is the main web interface used to access, create and manage AWS services and resources.

**Global services** are not tied to a specific AWS Region. Examples Include:
- **IAM** --------------> (`Identity and Access Management`)
- This is where you control who has access to AWS resources.
- **Route 53** -------> (`DNS Service`)
- A managed DNS service that helps you route users to your applications.
- **CloudFront** ---> (`Content Delivery Network`) 
- Also a CDN to help you get your content to users faster.
- **and WAF** -------> (`Web Application Firewall`) 
- Another global service.
#
**Region-scoped services** require you to choose a Region when creating resources. Example include 
- **Amazon EC2** -----------> (`Infrastructure as a Service`)
- **Elastic Beanstalk** ----> (`Platform as a Service`)
- **Lambda** -------------------> (`Functions as a Service`)
- **Rekognition** ------------> (`Software as a Service`)
#
AWS provides a **regional services table** so you can check which services are available in each Region.
#

The key idea is to always know whether a service is **global or regional**, because that affects where and how your resources are managed.



https://633269087269.signin.aws.amazon.com/console