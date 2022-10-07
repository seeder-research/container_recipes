#!/bin/bash

if [ -d ./chainer ]; then
  rm -rf ./chainer
fi
mkdir chainer || exit 1
cd chainer || exit 1
git clone --recursive https://github.com/chainer/chainercv -b v0.13.1
git clone --recursive https://github.com/chainer/chainerrl -b v0.8.0
git clone --recursive https://github.com/chainer/chainer -b v7.8.1.post1
