#!/bin/bash

if [ -d ./onnx ]; then
  rm -rf ./onnx
fi
git clone --recursive https://github.com/onnx/onnx -b v1.12.0
