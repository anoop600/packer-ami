# DevOps Accelerators Packer-AMI

This repository contains packer scripts to create aws ami's for diffrent DevOps tools. It is to be used along with its   [Terraform_Repository](https://github.com/Devops-Accelerators/terraform-ami.git) to provision infrastructure with all the tools up and running.
If you wish to run individual tools just run the relevent script. It also contains Jenkinsfile to trigger your jenkins job. Do not
change the packer ami name in any of the scripts as terraform files query the ami's by their name. Below are the details of the tools
provisioned by the scripts.

**1. Jenkins**
```
- Version : Latest (apt-get package installer)
- JAVA : 8
- Port : 8080
```
**2. Jfrog Artifactory**
```
- Version : 6.9.1 (Binary From public S3 bucket)
- JAVA : 8
- Port : 8081
- Other Instalations : unzip
- Creds : (admin/admin)
```
**3. Locust**
```
- Version : Latest (pip instalation)
- Other Instalations : python-pip
```
**4. Selenium**
```
- Version : 3.13.0 (jar download)
- JAVA : 8
- Port : 4444
- Chrome driver : 2.41
- Other Instalations : unzip
```
**5. Sonarqube**
```
- Version : 7.7 (Binary from sonarsource.com)
- JAVA : 8
- MySQL : latest (root/root)
- Port : 80 (reverse proxy)
- Other Instalations : htop, nginx(latest), unzip
```
**6. Tomcat**
```
- Version : 8.5.40 (Binary From public S3 bucket)
- JAVA : 8
- Port : 8080
```
