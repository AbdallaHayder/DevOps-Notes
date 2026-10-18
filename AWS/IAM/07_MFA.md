# MFA (Multi-Factor Authentication)

**MFA** adds a second layer of security to your AWS account by requiring both:
- **Something you know** --> your password.
- **Something you have** --> such as an authenticator app or security device.

Even if someone steals your password, they still can't log in without the second factor. MFA is especially important for the **root account** and **IAM users** because a compromised AWS account could lead to deleted resources, unauthorized changes, or expensive recourse usage.

In shot: **MFA is one of the easiest and most effective ways to protect an AWS account**.