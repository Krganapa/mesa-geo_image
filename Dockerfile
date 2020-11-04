# 1) choose base container
# generally use the most recent tag

# data science notebook
# https://hub.docker.com/repository/docker/ucsdets/datascience-notebook/tags
ARG BASE_CONTAINER=ucsdets/datascience-notebook:2020.2-stable

# scipy/machine learning (tensorflow)
# https://hub.docker.com/repository/docker/ucsdets/scipy-ml-notebook/tags
# ARG BASE_CONTAINER=ucsdets/scipy-ml-notebook:2020.2-stable

FROM $BASE_CONTAINER

LABEL maintainer="UC San Diego ITS/ETS <ets-consult@ucsd.edu>"

# 2) change to root to install packages
USER root

RUN	apt-get -y install htop aria2 nmap traceroute libgdal-dev libgdal1h

# 3) install packages
RUN pip install --no-cache-dir networkx scipy python-louvain geopandas descartes 
RUN pip install --no-cache-dir fiona pyproj rtree shapely mesa mesa-geo

# Override command to disable running jupyter notebook at launch
CMD ["/bin/bash"]
