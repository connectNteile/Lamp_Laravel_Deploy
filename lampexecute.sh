#!/usr/bin/bash

#update your linux packages
sudo apt update -y
sudo apt upgrade -y

#install apache2
sudo apt install apache2 -y

#add php ondrej repository
sudo add-apt-repository ppa:ondrej/php --yes

#update your repository
sudo apt update -y

#Install php8.2
sudo apt install php8.2 -y

#install other php dependencies needed for laravel
sudo apt install php8.2-curl php8.2-dom php8.2-mbstring php8.2-xml php8.2-mysql mysql-server libapache2-mod-php8.2 zip unzip  -y


#enable rewrite
sudo a2enmod rewrite


#restart apache server
sudo systemctl restart apache2


#composer for laravel
cd /usr/bin
sudo apt-get install composer global -y
sudo curl -sS https://getcomposer.org/installer  | sudo php-q

#move the content to default composer.phar
sudo mv composer.phar composer


#Change to /var/www and clone
cd /var/www
sudo git clone https://github.com/laravel/laravel
cd laravel/

#composer autoloader
sudo composer install --optimize-autoloader --no-dev --no-interaction
sudo composer update --no-interaction


#move .env
sudo cp .env. .env

sudo chown -R www-data storage
sudo chown -R www-data bootstrap/cache

cd ~

 cd /etc/apache2/sites-available/
sudo touch latest.conf

sudo echo '<Virtual *:80>
              ServerNAme 192.168.30.11
              DocumentRoot /var/www/laravel/public  

              <Directory /var/www/laravel/public>
                 AllowOverride All
                 Require all granted
               </Directory >

               ErrorLog ${APACHE_LOG_DIR}/demo-error.log
	       CustomLog ${APACHE_LOG_DIR}/demo-access.log combined

	    </VirtualHos>' | sudo tee /etc/apache2/sites-available/latest.conf

 
sudo a2ensite latest.conf
sudo adissite 000-default.conf
sudo systemctl restart apache2

cd

sudo apt install mysql-server -y
sudo apt install mysql-client -y
sudo apt-get install php8.2-sqlite -y
sudo systemctl start mysql



#creating database
sudo mysql -u root -e "CREATE DATABASE laravel_db;"
sudo mysql -u root -e "CREATE USER 'vagrant'@'localhost' IDENTIFIED BY 'vagrant';"
sudo mysql -u root -e "GRANT ALL PRIVILEGES ON laravel_db.* TO 'vagrant'@'localhost';"
sudo mysql -u root -e "FLUSH PRIVILEGES;"

#copy .env.example to .env and set configuraton for database
sudo cp /var/www/laravel/.env.example /var/www/laravel/.env
sudo sed -i 's|DB_DATABASE=laravel|DB_DATABASE=laravel_db|g'
sudo sed -i 's|DB_USERNAME=root|DB_USERNAME=vagrant|g'
sudo sed -i 's|DB_PASSWORD=|DB_PASSWORD=vagrant|g'
 
#set Permission
sudo -R 777 /var/www/laravel /var/www/laravel/bootstrap/cache
cd /var/www/laravel/database
sudo chmod +x /var/www/laravel/database
sudo chown -R www-data:www-data /var/www/laravel/database
sudo touch /var/www/laravel/database/database.sqlite
sudo 'database' => '/var/www/laravel/datbase/database.sqlite'
chmod 7775 /var/www/laravel/database/database.sqlite

#generate application key
sudo php artisan key:generate

#storage
sudo php artisan storage:link

#migrate
sudo php artisan migrate

#seed database
sudo php artisan db:seed

sudo systemctl restart apache2

echo "LAMP Stack and LARAVEL Successful"