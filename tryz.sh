#!/bin/sh

# ----------------------------
# Variables
# ----------------------------

ip_address="127.0.0.1"
host_name="shard01.ryzomcore.local"
host_file="/etc/hosts"

# ----------------------------
# Computed
# ----------------------------

user_name=$(whoami)

# ----------------------------
# Computed
# ----------------------------

ttyprim="\e[1;34m"
ttywarn="\e[1;33m"
ttyreset="\e[0m"

# ----------------------------
# Functions
# ----------------------------

writeLog()
{
    echo "$ttyprim$@$ttyreset"
}

writeLogSU()
{
    echo "$ttywarn[SUDO REQUIRED] $@$ttyreset"
}

# ############################
# * START PROCESS *
# ############################

# ----------------------------
# Prepare
# ----------------------------

writeLogSU "Prepare docker install"
sudo apt-get install -y apt-transport-https ca-certificates curl gnupg lsb-release

# ----------------------------
# Docker Installation
# ----------------------------

install_docker=$(whereis docker)
if [ -z "$install_docker"  ]
then
    writeLog "Download get-docker script and execute"
    curl -fsSL https://get.docker.com -o /tmp/get-docker.sh
    sh /tmp/get-docker.sh
    # sh usermod -aG docker $user_name
else
    writeLog "Docker installation skipped ($install_docker)."
fi

# Remove Docker installation tmp file
rm -f /tmp/get-docker.sh

writeLogSU "Docker-compose installation."
sudo apt install docker-compose

# ----------------------------
# HOST
# ----------------------------

writeLog "Check for host '$host_name' in '$host_file'."
if [ -z "$(grep -n $host_name $host_file | cut -f1 -d:)" ]
then
    writeLogSU "Add new host '$host_name' in '$host_file'."
    echo "$ip_address $host_name" | sudo tee -a $host_file > /dev/null
else
    writeLog "Host '$host_name' already exists in '$host_file'."
fi

# ----------------------------
# Install Nimetu's Docky
# ----------------------------

if [ ! -d "docky" ]
then
    writeLog "Clone nimetu/docky..."
    git clone git@github.com:nimetu/docky.git
    writeLog "Done."
fi

# ----------------------------
# Prepare/Build Docker
# ----------------------------
cd docky

writeLog "Copy shard data."
rsync -av template/ shard-data/

writeLogSU "Build Docky..."
sudo docker-compose --no-cache build
writeLog "Done."

# ----------------------------
# Run
# ----------------------------
writeLogSU "First run Docky."
sudo docker-compose up
