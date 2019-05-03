sudo apt-get -y update
sudo apt-get install software-properties-common -y
sudo apt install python-pip -y
pip install -e git://github.com/locustio/locust.git@master#egg=locustio
pip install --upgrade pip
