#!/bin/bash

if [ -d ./bindsnet ]; then
  rm -rf ./bindsnet
fi
git clone --recursive https://github.com/bindsnet/bindsnet -b 0.3.1
