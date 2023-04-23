#!/bin/bash

sudo yum update -y
sudo yum install unzip wget httpd -y
sudo wget https://github.com/CHOUPAGUY/Static-resume/archive/refs/heads/master.zip
sudo unzip master.zip -d /var/www/html
sudo cp -r /var/www/html/Static-resume-master/* /var/www/html
sudo systemctl start httpd
sudo systemctl enable httpd
