CREATE DATABASE sonarqube;
CREATE USER sonarqube@'localhost' IDENTIFIED BY 'sonarqube';
GRANT ALL ON sonarqube.* to sonarqube@'localhost';
FLUSH PRIVILEGES;
