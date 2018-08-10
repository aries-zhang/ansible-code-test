#!/bin/sh



while [ 1 ]
do
  ansible-playbook -i ./hosts ec2-watch.yml 
  sleep 10
done