#!/bin/bash

sudo yum install wget -y
wait
sudo dnf update -y
sudo dnf install java-1.8.0-openjdk-devel -y

wait
sudo wget --directory-prefix=/etc/yum.repos.d/ http://pkg.jenkins-ci.org/redhat-stable/jenkins.repo

wait

sudo wget --directory-prefix=/tmp/ https://pkg.jenkins.io/redhat/jenkins.io.key
wait
sudo rpm –-import /tmp/jenkins.io.key


sudo dnf install jenkins -y

wait

sudo systemctl start jenkins
sudo systemctl enable jenkins
