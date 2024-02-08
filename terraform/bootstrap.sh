#!/bin/bash
component=$1
environment=$2 # dont use env here, it is reserved in linux
yum install python3.11-devel python3.11-pip -y
#f from pip3.11 we can install ansible
# if ansible want to connect aws then we need packages like boto3 and botocore, botocore and boto3 are aws pyhton packages
pip3.11 install ansible botocore boto3
# ansible-pull {pulls playbooks from a VCS repo and execute them on target host}
ansible-pull -U https://github.com/sridevi2009/roboshop-ansible-roles-tf.git -e component=$component -e env=$environment main-tf.yaml
