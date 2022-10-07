#!/bin/bash

if [ -d ./ANNarchy ]; then
  rm -rf ./ANNarchy
fi
git clone --recursive https://github.com/ANNarchy/ANNarchy -b 4.7.1.5
