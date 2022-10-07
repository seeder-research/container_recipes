#!/bin/bash
export PYVER=3
export LANGUAGE=$LANG
export LC_ALL=C
export TORCHVER=1.12.1
conda create -y \
  --prefix=/usr/local/pytorch/ubuntu/20/py${PYVER}/${TORCHVER} \
  -c pytorch \
  -c conda-forge \
  ipython \
  jupyter \
  jupyterlab \
  numpy \
  protobuf \
  pytorch \
  torchvision \
  torchaudio \
  cudatoolkit=11.6 && \
pip install pysnn
