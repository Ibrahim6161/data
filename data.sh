#!/bin/bash
sudo yum install -y yum-utils device-mapper-persistent-data lvm2
sudo yum-config-manager -y --add-repo "https://download.docker.com/linux/centos/docker-ce.repo"
sudo yum install -y docker-ce docker-ce-cli containerd.io
cat >/etc/yum.repos.d/mongodb-org-4.2.repo <<EOL
[mongodb-org-4.2]
name=MongoDB Repository
baseurl=https://repo.mongodb.org/yum/redhat/'\$releasever'/mongodb-org/4.2/x86_64/
gpgcheck=1
enabled=1
gpgkey=https://www.mongodb.org/static/pgp/server-4.2.asc
EOL
sudo yum install -y mongodb-org
sudo systemctl start mongod
sudo systemctl start docker
