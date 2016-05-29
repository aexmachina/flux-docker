FROM ubuntu:14.04

# make sure the package repository is up to date
RUN apt-get update

# install python3 and pip for python3
RUN apt-get install -y python3.4 python3-pip git-core libffi-dev libssl-dev build-essential

ENV dir flux-docker/src
WORKDIR $dir
RUN git clone https://github.com/XertroV/nvblib
WORKDIR nvblib
RUN python3 setup.py install

WORKDIR ..
RUN git clone https://github.com/richardkiss/pycoin
WORKDIR pycoin
RUN python3 setup.py install

WORKDIR ..
RUN git clone https://github.com/aexmachina/nvbclient
WORKDIR nvbclient
RUN python3 setup.py develop

# RUN echo "Hello"

RUN initialize_nvb_client_db development.ini
RUN pserve development.ini
