#!/bin/bash

module load local/local
module load singularity
APPTAINER_BASEDIR=/home/landauer_containers/containers
export CON_SRC=/home/softwareinstall/container_recipes
export CON_GEN_SRC=${CON_SRC}/general/singularity
export CON_UBUNTU_SRC=${CON_SRC}/ubuntu/18/singularity
export APPTAINER_BUILDDIR=${APPTAINER_BASEDIR}/builddir
export APPTAINER_CACHEDIR=${APPTAINER_BASEDIR}/cachedir
export APPTAINER_TMPDIR=${APPTAINER_BASEDIR}/tmpdir
export SINGULARITY_BUILDDIR=$APPTAINER_BUILDDIR
export SINGULARITY_CACHEDIR=$APPTAINER_CACHEDIR
export SINGULARITY_TMPDIR=$APPTAINER_TMPDIR
