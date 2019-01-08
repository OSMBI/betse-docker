# Dockerfile

# Ubuntu base
FROM ubuntu:xenial

# Update and install python, pip and git
RUN apt-get update
RUN apt-get install -y git python3 python3-pip

# Add reqs - get pip to install them
ADD requirements.txt ./requirements.txt
WORKDIR .
RUN pip3 install -r requirements.txt

# Download and build BETSE

RUN git clone https://gitlab.com/betse/betse.git 
RUN python3 betse/setup.py develop
