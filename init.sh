#!/bin/bash

sudo apt update -y && sudo apt upgrade -y

sudo passwd ubuntu

sudo apt install docker.io -y

sudo systemctl start docker
sudo systemctl enable docker

git clone https://github.com/Uken49/poc-nifi-aws.git
cd poc-nifi-aws/nifi-eventify-adapter

docker-compose up

cd ../..