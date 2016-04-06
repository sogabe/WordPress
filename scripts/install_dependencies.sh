#!/bin/bash

BUNDLE_ROOT=/opt/codedeploy-agent/deployment-root/$DEPLOYMENT_GROUP_ID/$DEPLOYMENT_ID/deployment-archive

yum install -y git

# clone submodules
rm -rf /tmp/WordPress
cd /tmp
git clone --recursive https://github.com/sogabe/WordPress.git
cp -R /tmp/WordPress/bootstrap/* $BUNDLE_ROOT/bootstrap/

yum groupinstall -y "Web Server" "MySQL Database" "PHP Support"
yum install -y php-mysql
