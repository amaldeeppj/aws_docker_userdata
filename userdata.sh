#!/bin/bash

# Define hostname
HN=docker.amaldeep.tech

# Set hostname
hostnamectl set-hostname $HN

# Define username
USERNAME=ec2-user

# yum update
yum update -y

# Install and enable Docker 
yum install docker -y
systemctl enable docker
systemctl restart docker

# Add default user to docker group
usermod -aG docker $USERNAME

# docker info should we working fine if the installation was successful 
