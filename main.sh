#!/bin/sh
ansible-playbook -i ./hosts ec2-provisioning.yml 
ansible-playbook -i ./hosts ec2-docker.yml 

while [ 1 ]
do
  ansible-playbook -i ./hosts ec2-watch.yml 
  sleep 10
done