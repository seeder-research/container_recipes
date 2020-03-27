#!/bin/bash
export PATH_ORIG=$PATH
export CONDA_DIR_ORIG=/opt/conda-keras
export CONDA_DIR=$CONDA_DIR_ORIG
export PATH=$CONDA_DIR_ORIG/bin:$PATH
export LANGUAGE=$LANG
export LC_ALL=C
cd /opt
if [ ! -e /opt/Miniconda2-latest-Linux-x86_64.sh ]; then
    wget --quiet --no-check-certificate https://repo.anaconda.com/miniconda/Miniconda2-latest-Linux-x86_64.sh
fi
/bin/bash /opt/Miniconda2-latest-Linux-x86_64.sh -f -b -p $CONDA_DIR && \
$CONDA_DIR/bin/conda config \
  --append channels \
  conda-forge && \
$CONDA_DIR/bin/conda install -y \
  python=2.7.16 && \
$CONDA_DIR/bin/pip install --upgrade pip && \
$CONDA_DIR/bin/pip install \
  sklearn_pandas \
  cntk-gpu && \
$CONDA_DIR/bin/conda install -y \
  bcolz \
  h5py \
  matplotlib \
  mkdocs \
  mkl \
  nose \
  notebook \
  numpy \
  Pillow \
  pandas \
  protobuf \
  pydot \
  pygpu \
  pyyaml \
  scikit-learn \
  six \
  tensorflow-gpu=1.13.1 \
  theano && \
$CONDA_DIR/bin/conda install -y \
  -c anaconda \
  keras-gpu && \
$CONDA_DIR/bin/conda install -y \
  ipython \
  jupyter \
  jupyterlab && \
$CONDA_DIR/bin/pip install onnx && \
$CONDA_DIR/bin/conda clean -yt
