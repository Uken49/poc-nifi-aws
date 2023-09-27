#!/bin/bash

sudo apt update -y && sudo apt upgrade -y

sudo apt install docker.io -y
sudo apt install docker-compose -y

sudo systemctl start docker
sudo systemctl enable docker

git clone https://github.com/Uken49/poc-nifi-aws.git
cd poc-nifi-aws/nifi-eventify-adapter

sudo docker-compose up

cd ../..
