#!/bin/bash

apt-get update -y && apt-get upgrade -y

apt-get install docker.io -y && usermod -a -G docker vagrant
apt-get install docker-compose -y

# apt-get install pass gnupg2

