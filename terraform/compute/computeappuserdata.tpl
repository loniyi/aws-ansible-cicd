#!/bin/bash
yum update -y
yum install httpd -y
echo "Welcome to DRAMATAZZ: ${message}" >> /var/www/html/index.html
service httpd start
chkconfig httpd on