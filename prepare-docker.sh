#!/bin/bash

apt-get -y update
apt-get -y upgrade

apt-get install -y docker.io && usermod -a -G docker vagrant
apt-get install -y docker-compose


## 
apt-get install -y pass gnupg2

