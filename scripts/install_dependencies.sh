#!/bin/bash

yum install -y git

# clone submodules
git submodule init
git submodule update

yum groupinstall -y "Web Server" "MySQL Database" "PHP Support"
yum install -y php-mysql
