#!/bin/bash
set -euxo pipefail

dnf install -y httpd

cat > /var/www/html/index.html <<'HTML'
<!DOCTYPE html>
<html>
<head><title>Assignment 1</title></head>
<body>
  <h1>Assignment 1 — Public EC2</h1>
  <p>The web server is running in the public subnet.</p>
</body>
</html>
HTML

systemctl enable --now httpd
