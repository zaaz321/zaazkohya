#!/bin/bash

git clone https://github.com/bmaltais/kohya_ss.git

cd kohya_ss

git reset --hard ffd6179c5cbdf8a7955e5c5ee2b7b9fc2ab93eb7

python3 -m venv venv

source venv/bin/activate

./setup.sh -n

./setup.sh -n

apt update

apt-get install python3.10-tk

pip3 install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cu118

yes | python3.10 -m pip uninstall xformers

yes | python3.10 -m pip install xformers

yes | pip3 uninstall torch torchvision torchaudio

pip3 install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cu118
