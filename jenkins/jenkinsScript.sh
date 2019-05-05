sudo apt-get update -y && sudo apt install openjdk-8-jdk -y

sleep 5

echo "JAVA is installed"


echo -ne '\n' |  wget -q -O - https://pkg.jenkins.io/debian/jenkins-ci.org.key | sudo apt-key add -
echo deb https://pkg.jenkins.io/debian-stable binary/ | sudo tee /etc/apt/sources.list.d/jenkins.list
sudo apt-get update -y && sudo apt-get install jenkins -y
sudo systemctl start jenkins
sudo ufw allow 8080
