#!/bin/bash

yum install -y git

# clone submodules
cd /opt/codedeploy-agent/deployment-root/$DEPLOYMENT_GROUP_ID/$DEPLOYMENT_ID
git submodule init
git submodule update

yum groupinstall -y "Web Server" "MySQL Database" "PHP Support"
yum install -y php-mysql
