#!/usr/bin/bash

# installing Bareos on CentOS 7.

set -eux

# required packages
yum -y install postgresql-server

# define parameter
DIST=CentOS_7
VER=17.2
RELEASE=release/${VER}

# add the Bareos repository
URL=http://download.bareos.org/bareos/${RELEASE}/${DIST}
curl -L -o /etc/yum.repos.d/bareos.repo ${URL}/bareos.repo

# install Bareos packages
yum install -y bareos bareos-database-postgresql

