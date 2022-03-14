#!/bin/bash

apt update -y && apt upgrade -y

apt install docker.io -y
apt install docker-compose -y

usermod -a -G docker vagrant

