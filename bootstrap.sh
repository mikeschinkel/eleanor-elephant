#!/usr/bin/env bash

INSTALL_DIR=/var/www/public
DOCUMENT_ROOT=/var/www/public

HOME_URL=junglewp.local
BLOG_NAME="Eleanor Elephant"
ADMIN_EMAIL=admin@$HOME_URL

echo "198.143.164.252  api.wordpress.org wordpress " >> /etc/hosts
echo "198.143.164.250  downloads.wordpress.org " >> /etc/hosts
echo "198.143.164.251  api.wordpress.org wordpress " >> /etc/hosts

cat <<HTACCESS > $DOCUMENT_ROOT/.htaccess
<IfModule mod_rewrite.c>
RewriteEngine On
RewriteBase /
RewriteRule ^index\.php$ - [L]
RewriteCond %{REQUEST_FILENAME} !-f
RewriteCond %{REQUEST_FILENAME} !-d
RewriteRule . /index.php [L]
</IfModule>
HTACCESS

chown vagrant:vagrant $DOCUMENT_ROOT/.htaccess
chmod 0644 $DOCUMENT_ROOT/.htaccess

if ! [ -f /var/www/public/wp-settings.php ]; then
cd /var/www/public
su vagrant -c 'wp core download'
fi

if [ ! -f wp-config.php ]; then
su vagrant -c "wp core config --dbname=junglewp --dbuser=root --dbpass=root --extra-php <<PHP
define('WP_DEBUG', true);
define('WP_DEBUG_LOG', true);
PHP"
fi

if ! su vagrant -c "wp core is-installed"; then
    su vagrant -c "wp core install --title='$BLOG_NAME' --admin_email=admin@junglewp.local --admin_user=admin --admin_password=password --url='$HOME_URL/wp-admin/install.php'"
fi

if ! (su vagrant -c "wp user list --fields=user_email" | grep eleanor@$HOME_URL); then
    su vagrant -c "wp user create eleanor eleanor@$HOME_URL --user_pass=password --display_name='Eleanor Elephant'"
fi

mkdir -p $INSTALL_DIR/wp-content/{uploads,upgrade,plugins}

chown vagrant:vagrant $INSTALL_DIR/wp-content/uploads
chmod -R 0777 $INSTALL_DIR/wp-content/uploads

chown vagrant:vagrant $INSTALL_DIR/wp-content/upgrade
chmod -R 0777 $INSTALL_DIR/wp-content/upgrade

chown vagrant:vagrant $INSTALL_DIR/wp-content/plugins
chmod -R 0777 $INSTALL_DIR/wp-content/plugins


history -c && exit

echo 'Booooooooom! We are done . You are a hero. I love you.'
