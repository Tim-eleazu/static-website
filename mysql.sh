#!/bin/bash
sudo apt update -y
sudo apt upgrade -y
sudo apt install mysql-server -y



# Frontend Server
sudo rpm --import https://repo.mysql.com/RPM-GPG-KEY-mysql-2023
sudo dnf install -y https://dev.mysql.com/get/mysql84-community-release-el9-1.noarch.rpm
sudo dnf install -y mysql mysql-server
sudo systemctl start mysqld
sudo systemctl enable mysqld