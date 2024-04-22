** Exam Solution for Deploying LAMP STACK and Cloning a LARAVEL APPLICATION **

## Automate the provisioning of two Ubuntu-based server, named "Master" and "Slave" using vagrant. ##
solution:

### Step 1: ###
- Open your project folder,by create a folder called vagrant , then insde thghe vagrant folder, create a project folder
called webservers using powershell terminal or any other convenient terminal. 
- from the webserver, type vagrant init ubuntu/bioic64. This is help to create a vagrant file in the webserver directory
- once the vagrant init is done, you then type ls to see if the vagrant file has been created. e.g. ls
- Next you open the vagrant file to provision it with the required servers ("Master" and "Slave"). We open the vagrant file  using any
convenient text application e.g vim, nano etc. so i will be using nano.
- so type nano vagrantfile to open the content.
- Next configure the Master server using this command
	config.vm.define "master" do |master|
	  master.vm.box = "ubuntu/focal64"
	  master.vm.hostname = "master"
	  master.vm.network "private_network", "192.168.30.10"
          master.vm.network "forwarded_port", guest: 80,  host:8085
	end

- Next configure the slave 
	config.vm.define "slave" do |subconfig|
	  subconfig.vm.box = "ubuntu/focal64"
	  subconfig.vm.hostname = "slave"
	  subconfig.vm.network "private_network", "192.168.30.11"
	  subconfig.vm.network "forwarded_port", guest: 80, host:8086	
	end
- Next provision the master and slave dns so they can communicate(using shell approach), instal net tools and also install ansible
	config.vm.provision "shell", inline: <<-SHELL
		sudo apt-get update
		sudo apt-get install -y net-tools
		sudo apt-get install -y avahi-daemon libnss-mdns
                sudo apt-get install -y ansible
	SHELL
	   
- Next you load this configuration using vagrant up to complete setup and make the machine ready and running.
	vagrant up. if i wish to vagrant each server individually, i will use vagrant up master & vagrant up slave. But to save
time, we do all at once.

- Next check if all have been installed and running         
	vagrant global-status
- Next open either the master or the slave : vagrant ssh master or vagrant ssh slave
- to confirm if they are seeing their selfs, ping master.local or ping slave.local or you ping their ip addresses e.g. ping 192.168.32.10 or ping 192.168.32.11

#### Step 2: Connecting the system via ssh ####
- Next connect the master to the slave via ssh, so we can remotely install and run application from the master to the slave.
a.	login to the master, vagrant ssh master or vagrant ssh id(db5848b75) or vagrant ssh id master
b.	Generate the ssh key using ssh-keygen
c. 	press enter to proceed and it will generate the key
d. 	next copy the key to slave e.g. ssh-copy-id -i vagrant@192.168.30.11, type yes to establish the connection. if the permission is denied, enable password authentication in slave (login to slave, vagrant ssh slave. Then modify the ssh config file for slave, type sudo nano /etc/ssh/sshd_config,  scroll to passwordauthentication, change it to yes. Then save and exit, reload the system sudo systemctl restart sshd. After copy the sshkey from master, you can come back and change it to NO.
e. 	enter the default password if it ask for password which is vagrant.(or if its another user that has password, you enter the password here)
f. 	then it will copy the key and show number of key(S) added 1
g.	login to the slave and diable the password authentication to No and restart the service again sudo systectl restart sshd
h.	Login back to master. then ssh the slave using this command: ssh vagrant@192.168.30.11 and you will be successfuly logged to the slave from the master.
i. 	Install Ansible on both Master node and slave node, But i provisioned from vagrant file, so just check if it is available by usig ansile --version.

     
##### Stage 3: #####
On the master node, create a bash script to automate the deployment of a LAMP(Linux, Apache, MySQL, PHP)stack and clone https://github.com/laravel/laravel and install all required packages
vagrant@Master:~$ cat lampexecute.sh
#!/usr/bin/bash

#Installation of LAMP Stack (Linux Apache,MySQL, & PHP)


#=======================================================
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


###### Step 4: Create ansiblbe playbook to implement the bash script. The ansible is inside a folder called ansible_execute ######
The ansible_execute has inventory(vagrant@192.168.30.11) inside it, then the playbook called run_lampexecute.yml

-vagrant@Master:~/ansible_exam$ cat run_lampexecute.yml
---
- name: Deploy Lamp with Laravel Application
  hosts: all
  become: yes

  tasks:
  - name: copy the lamsetup script to slave server
    copy:
      src: /home/vagrant/lampsetup.sh
      dest: /home/vagrant/exam/lampsetup.sh
      mode: 0755

  - name: Execute the Bash script
    command: /home/vagrant/exam/lampsetup.sh

  - name: Add cronjob for the server uptime
    cron:
      name: "server_uptime"
      minute: "{{ 0 }}"
      hour: "{{ 0 }}"
      job: "/usr/bin/uptime >> /var/log/server_uptime.log"

####### Stage 5: Check and run the ansible playbook #######
- ansible-playbook -i inventory run_lampexecute.yml --check

- ansible-playbook -i inventory run_lampexecute.yml


Step 6:
Now we can access the Laravel server, listening on all newtork interfaces. 
- To access the laravel application, open a web browser on the host machine(Slave node)
and type http:192.168.30.11, to access the application.
Note: Check screenshot for output. 	   	      