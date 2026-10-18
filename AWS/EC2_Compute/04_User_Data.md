# EC2 User Data (Bootstrap)

**EC2 User Data** is a script that runs automatically when an instance launches, mainly to **bootstrap and configure the server**. 

**Bootstrapping** means launching commands when a machine starts.

**That script is** only run once at the instance first start.

### EC2 user data is used to automate boot tasks such as:

- **Installing updates**.
- **Installing software** like NGINX or Apache, and 
- **Downloading files or application code**.
- It's useful for automating setup across multiple instances instead of configuring each server manually.

User data runs with **root-level permissions**, so scripts should be written carefully.

It's mainly intended for **initial setup at launch**; if you need ongoing configuration later, you'd usually use the other automation tools.

For DevOps, user data is valuable because it makes EC2 deployments **faster, repeatable, and automated**.