#!/bin/bash

cd $tryz_tmp_dir

# download core4 from github
if [ ! -f "core4.zip" ]; then
    wget https://github.com/ryzom/ryzomcore/archive/refs/heads/core4.zip
fi

# extract core4
if [ ! -d "src" ]; then
    unzip core4.zip
    mv ryzomcore-core4 src
fi

cd $tryz_root_dir
