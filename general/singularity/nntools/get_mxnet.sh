#!/bin/bash

if [ -d ./mxnet ]; then
  rm -rf ./mxnet
fi
git clone --recursive https://github.com/apache/incubator-mxnet -b 1.9.1
