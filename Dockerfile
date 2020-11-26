# 1) choose base container
# generally use the most recent tag

# data science notebook
# https://hub.docker.com/repository/docker/ucsdets/datascience-notebook/tags
ARG BASE_CONTAINER=ucsdets/dsc170-notebook:latest

# scipy/machine learning (tensorflow)
# https://hub.docker.com/repository/docker/ucsdets/scipy-ml-notebook/tags
# ARG BASE_CONTAINER=ucsdets/scipy-ml-notebook:2020.2-stable

FROM $BASE_CONTAINER

LABEL maintainer="UC San Diego ITS/ETS <ets-consult@ucsd.edu>"

# 2) change to root to install packages
USER root

# 3) install other packages
RUN git clone https://github.com/Krganapa/c96b47cf2a9a644fcfa584a1a00637d2-cf9a1702cfba08948bc93b8d7e7993c5-c9df55acb0c88fcd67fb358c34159ea9-8.git
RUN cd c96b47cf2a9a644fcfa584a1a00637d2-cf9a1702cfba08948bc93b8d7e7993c5-c9df55acb0c88fcd67fb358c34159ea9-8/

# Override command to disable running jupyter notebook at launch
# CMD ["/bin/bash"]
