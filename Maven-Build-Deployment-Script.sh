#!/bin/bash

yum install -y maven

cd /opt/myapp
mvn clean package