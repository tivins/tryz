#!/bin/bash

tryz_root_dir=$(pwd)
tryz_tmp_dir="$tryz_root_dir/tmp"
tryz_src_dir="$tryz_tmp_dir/src"
tryz_data_dir="$tryz_root_dir/data"


case $1 in

  build-server)
    echo "Installation..."
    . scripts/install.sh
    ;;

  run)
    echo "Run..."
    cd docker
    sudo docker-compose up
    ;;

  build-client)
    echo "Building client..."

    echo "Not yet ready. exit."
    exit

    # todo move in a separated script
    cd docker/client
    sudo docker build $nocache -t $imageName .
    sudo docker run --rm -it \
        --env-file ../assets/envfile \
        -v $sharedDir:/data \
        $imageName
    ;;

  *)
    echo "Unknown paramater"
    ;;
esac
exit
