#!/bin/bash

tryz_root_dir=$(pwd)
tryz_tmp_dir="$tryz_root_dir/tmp"
tryz_src_dir="$tryz_tmp_dir/src"
tryz_data_dir="$tryz_root_dir/data"


case $1 in

  install)
    echo "Installation..."
    . scripts/install.sh
    ;;

  run)
    echo "Run..."
    cd docker
    sudo docker-compose up
    ;;

  *)
    echo "Unknown paramater"
    ;;
esac
exit



