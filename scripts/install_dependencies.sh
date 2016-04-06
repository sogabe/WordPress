#!/bin/bash

yum install -y git

# clone submodules
echo /opt/codedeploy-agent/deployment-root/$DEPLOYMENT_GROUP_ID/$DEPLOYMENT_ID/deployment-archive
cd /opt/codedeploy-agent/deployment-root/$DEPLOYMENT_GROUP_ID/$DEPLOYMENT_ID/deployment-archive
git submodule init
git submodule update

yum groupinstall -y "Web Server" "MySQL Database" "PHP Support"
yum install -y php-mysql
