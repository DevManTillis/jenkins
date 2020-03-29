#!/bin/bash
apt install openjdk-8-jre-headless -y
wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -
sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
apt update -y
apt install jenkins -y
systemctl start jenkins 
systemctl enable jenkins 
systemctl status jenkins 
ufw allow 8080 
cat /var/lib/jenkins/secrets/initialAdminPassword 

