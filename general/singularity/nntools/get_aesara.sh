#!/bin/bash

if [ -d ./aesara ]; then
  rm -rf ./aesara
fi
git clone --recursive https://github.com/aesara-devs/aesara -b rel-2.8.7
