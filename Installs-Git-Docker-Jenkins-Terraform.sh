#!/bin/bash
# Author: Safiatu Seidu
# Date: 2026-02-06
# Description: This script installs Git, Java 11, Docker, Terraform, and Jenkins
#              on a CentOS (AWS Lightsail) server and starts/enables required services.

# Install basic packages
yum install -y git java-11-openjdk yum-utils

# Install Docker
yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
yum install -y docker-ce docker-ce-cli containerd.io
systemctl start docker
systemctl enable docker

# Install Terraform
yum-config-manager --add-repo https://rpm.releases.hashicorp.com/RHEL/hashicorp.repo
yum install -y terraform

# Install Jenkins
wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
yum install -y jenkins
systemctl start jenkins
systemctl enable jenkins