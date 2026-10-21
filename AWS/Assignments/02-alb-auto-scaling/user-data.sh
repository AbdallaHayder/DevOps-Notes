#!/bin/bash
set -e

dnf install -y httpd

cat > /var/www/html/index.html <<EOF
<h1>Assignment 2 — Web Server</h1>
<p>Served by: $(hostname)</p>
EOF

systemctl enable --now httpd