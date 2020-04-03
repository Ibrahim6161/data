

#!/bin/bash

yum install -y yum-utils device-mapper-persistent-data lvm2
yum-config-manager -y --add-repo https://download.docker.com/linux/centos/docker-ce.repo
yum install -y docker-ce docker-ce-cli containerd.io

cat >/etc/yum.repos.d/mongodb-org-4.2.repo <<EOL
[mongodb-org-4.2]
name=MongoDB Repository
baseurl=https://repo.mongodb.org/yum/redhat/'\$releasever'/mongodb-org/4.2/x86_64/
gpgcheck=1
enabled=1
gpgkey=https://www.mongodb.org/static/pgp/server-4.2.asc
EOL

yum install -y mongodb-org
systemctl start mongod


subscription_id = "73f8dee0-ba59-4d2c-acee-f18cb9de4277"
client_id = "ca12e1a5-7bcb-4842-aa8c-7a433ef70774"
client_secret = "j9v-JFI-Q@e01n@ePbczoCcsVb9aJeoG"
tenant_id = "98932909-9a5a-4d18-ace4-7236b5b5e11d"



