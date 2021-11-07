#!/bin/bash

if [ -z "$tryz_root_dir" ]; then
    echo "Should be run via tryz.sh"
    exit
fi

mkdir -p "$tryz_tmp_dir"
mkdir -p "$tryz_data_dir"
mkdir -p "$tryz_data_dir/db"
mkdir -p "$tryz_data_dir/db/lib"
mkdir -p "$tryz_data_dir/db/log"
mkdir -p "$tryz_data_dir/php/public"

# Download and extract Ryzom core sources.
. scripts/getsources.sh

# Copy PHP files
rsync -a "$tryz_src_dir/web/public_php/" "$tryz_data_dir/php/public/"
rsync -a "$tryz_src_dir/web/private_php/" "$tryz_data_dir/php/private/"

cd docker
sudo docker-compose build