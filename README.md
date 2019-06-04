# DevOps Accelerators Packer-AMI
```
This repository contains packer scripts to create aws ami's for diffrent DevOps tools. It is to be used along with its terraform
repository **https://github.com/Devops-Accelerators/terraform-ami.git** to provision infrastructure with all the tools up and running.
If you wish to run individual tools just run the relevent script. It also contains Jenkinsfile to trigger your jenkins job. Do not
change the packer ami name in any of the scripts as terraform files query the ami's by their name. Below are the details of the tools
provisioned by the scripts.
```
