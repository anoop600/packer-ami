sudo apt-get update -y && sudo apt install openjdk-8-jdk -y
sudo echo "Asia/Kolkata" > /etc/timezone
sudo dpkg-reconfigure -f noninteractive tzdata
echo "JAVA is Installed"
sudo apt-get -y install zsh htop

#sudo apt-get -y install mysql-server
sudo echo "mysql-server mysql-server/root_password password root" | sudo debconf-set-selections
sudo echo "mysql-server mysql-server/root_password_again password root" | sudo debconf-set-selections
sudo apt-get -y install mysql-server
echo "Starting MYSQL user creation"

mysql --user="root" --password="root" < ./database.sql
sleep 10
echo "MYSQL user creation ended"

sudo apt-get update -y && sudo apt-get install nginx -y

sudo ufw allow 'OpenSSH'
sudo ufw allow 'Nginx HTTP'
sudo rm /etc/nginx/sites-enabled/default
sudo cp sonarqube_proxy /etc/nginx/sites-enabled/
sudo service nginx restart

sleep 10

sudo adduser --system --no-create-home --group --disabled-login sonarqube
sudo mkdir /opt/sonarqube
sudo chown -R sonarqube:sonarqube /opt/sonarqube
sudo apt-get install -y unzip
cd /opt/sonarqube
sudo wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-7.7.zip
sudo unzip sonarqube-7.7.zip
sudo rm sonarqube-7.7.zip
sudo cp /home/ubuntu/sonar.properties /opt/sonarqube/sonarqube-7.7/conf/
sudo cp /home/ubuntu/sonarqube.service /etc/systemd/system/sonarqube.service
sudo chown -R sonarqube:sonarqube /opt/sonarqube
sudo service sonarqube start
sudo systemctl enable sonarqube
