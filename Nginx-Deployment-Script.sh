#!/bin/bash

yum install -y epel-release
yum install -y nginx
systemctl start nginx
systemctl enable nginx

echo "<h1>Nginx Deployed Successfully</h1>" > /usr/share/nginx/html/index.html