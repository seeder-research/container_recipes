#!/bin/bash

if [ -d ./nengo ]; then
  rm -rf ./nengo
fi

mkdir -p nengo || exit 1
cd nengo || exit 1
git clone --recursive https://github.com/nengo/nengo -b v3.2.0
git clone --recursive https://github.com/nengo/nengo-dl -b v3.5.0
git clone --recursive https://github.com/nengo/nengo-extras -b v0.5.0
git clone --recursive https://github.com/nengo/nengo-gui -b v0.4.9
git clone --recursive https://github.com/nengo/nengo-loihi -b v1.1.0
git clone --recursive https://github.com/nengo-labs/nengo-ocl -b v2.1.0
git clone --recursive https://github.com/nengo/nengo-spa -b v1.3.0
git clone --recursive https://github.com/project-rig/nengo_spinnaker -b v0.4.0
git clone --recursive https://github.com/nengo/keras-spiking -b v0.3.0
git clone --recursive https://github.com/nengo/pytorch-spiking -b v0.1.0
