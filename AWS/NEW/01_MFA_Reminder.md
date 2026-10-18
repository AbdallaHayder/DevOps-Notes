# MFA Reminder

**MFA (Multi-Factor Authentication)** adds another check when signing in, such as an authenticator-app code or a security key. This means a stolen password alone is insufficient to complete that protected sign-in.

### Why it matters in AWS
An attacker with enough permissions could launch expensive resources for cryptocurrency mining, access sensitive data, or disrupt your infrastructure. Charges can accumulate quickly if you ignore billing notifications.

The instructor reports an incident costing approximately **$30,000**, followed by AWS waiving the charges. Treat this as his personal account—not a guarantee that AWS will forgive unauthorized charges.

### Practical takeaway
- Use a **strong, unique password and MFA together**, especially for your AWS root user and privileged access.
- Use ordinary roles or federated access for daily work rather than the root user.
- Pay attention to billing alerts and unexpected resource usage. Alerts notify you; they do not automatically cap spending.

**Technical clarification**: a strong password is not inevitably brute-forced. Password theft can also happen through phishing, reuse, or malware. MFA reduces risk, but console MFA does not automatically protect every API request made with stolen access keys—those credentials also need protection.