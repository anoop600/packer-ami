sudo apt-get update -y && sudo apt install openjdk-8-jdk -y

sleep 5

echo "JAVA is installed"

sudo apt-get update && sudo apt-get install unzip
wget https://s3-ap-southeast-1.amazonaws.com/jfrog-zip/jfrog-artifactory-oss-6.9.1.zip
unzip jfrog-artifactory-oss-6.9.1.zip
