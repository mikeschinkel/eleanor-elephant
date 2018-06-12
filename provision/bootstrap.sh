if ! [ -L /var/www/public/wp-config.php ]; then
cd /var/www/public
wp core download
wp core config --dbhost=localhost --dbname=junglewp --dbuser=root --dbpass=root
chmod 644 wp-config.php
wp core install --url=junglewp.local --title="Elephant Eleanor" --admin_name=eleanor --admin_password=elephAnt&4u --admin_email=admin@junglewp.local
cd wp-content
mkdir uploads
chgrp web uploads/
chmod 775 uploads/
history -c && exit

echo 'Booooooooom! We are done . You are a hero. I love you.'
fi