#!/bin/bash
set -euo pipefail

# Install WordPress dependencies
export DEBIAN_FRONTEND=noninteractive

apt-get update
apt-get install -y \
  apache2 \
  mariadb-server \
  php \
  libapache2-mod-php \
  php-mysql \
  php-curl \
  php-gd \
  php-mbstring \
  php-xml \
  php-zip \
  curl \
  unzip \
  openssl

# Start services now and enable them for future boots
systemctl enable --now apache2 mariadb

# Database settings
WP_DB_NAME="wordpress"
WP_DB_USER="wordpress"
WP_DB_PASSWORD=$(openssl rand -hex 24)

# Create the database and its user
mariadb <<SQL
CREATE DATABASE ${WP_DB_NAME};
CREATE USER '${WP_DB_USER}'@'localhost'
  IDENTIFIED BY '${WP_DB_PASSWORD}';
GRANT ALL PRIVILEGES ON ${WP_DB_NAME}.*
  TO '${WP_DB_USER}'@'localhost';
SQL

# Download and extract WordPress
curl -fSL --retry 3 \
  https://wordpress.org/latest.tar.gz \
  -o /tmp/wordpress.tar.gz

mkdir -p /var/www
tar -xzf /tmp/wordpress.tar.gz -C /var/www

# Create WordPress configuration
WP_DIR="/var/www/wordpress"

cp "${WP_DIR}/wp-config-sample.php" \
   "${WP_DIR}/wp-config.php"

sed -i \
  -e "s/database_name_here/${WP_DB_NAME}/" \
  -e "s/username_here/${WP_DB_USER}/" \
  -e "s/password_here/${WP_DB_PASSWORD}/" \
  "${WP_DIR}/wp-config.php"

# Restrict access to the database configuration
chown root:www-data "${WP_DIR}/wp-config.php"
chmod 640 "${WP_DIR}/wp-config.php"

# Configure Apache to serve WordPress
cat > /etc/apache2/sites-available/wordpress.conf <<'APACHE'
<VirtualHost *:80>
    DocumentRoot /var/www/wordpress

    <Directory /var/www/wordpress>
        Options -Indexes +FollowSymLinks
        AllowOverride All
        Require all granted
    </Directory>
</VirtualHost>
APACHE

# Enable WordPress and URL rewriting
a2ensite wordpress.conf
a2enmod rewrite

# Disable Apache's default website
a2dissite 000-default.conf

# Replace WordPress authentication-key placeholders
for key in AUTH_KEY SECURE_AUTH_KEY LOGGED_IN_KEY NONCE_KEY \
           AUTH_SALT SECURE_AUTH_SALT LOGGED_IN_SALT NONCE_SALT
do
  value=$(openssl rand -hex 32)

  sed -i "/'${key}'/s/put your unique phrase here/${value}/" \
    "${WP_DIR}/wp-config.php"
done

# Allow WordPress to manage uploads and other content
chown -R www-data:www-data "${WP_DIR}/wp-content"
find "${WP_DIR}/wp-content" -type d -exec chmod 755 {} \;
find "${WP_DIR}/wp-content" -type f -exec chmod 644 {} \;

# Check configuration before reloading Apache
apache2ctl configtest
systemctl reload apache2