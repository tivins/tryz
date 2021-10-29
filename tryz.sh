#!/bin/sh

# -- Variables

UserName=`whoami`

# -- Prepare

apt-get install -y apt-transport-https ca-certificates curl gnupg lsb-release

# -- get and install Docker

curl -fsSL https://get.docker.com -o get-docker.sh
sh get-docker.sh
# usermod -aG docker admin

# -- Install Nimetu's Docky

git clone git@github.com:nimetu/docky.git && cd docky       # clone Docky
cp -R template shard-data                                   # copy shard data
sudo echo "127.0.0.1 shard01.ryzomcore.local" >> /etc/hosts # add access
docker-compose build                                        # build
docker-compose up -d                                        # run
