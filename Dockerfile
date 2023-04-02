# Dockerfile

# Script       : CamHacker
# Author       : Mr-RDX-GUJJAR
# Github       : https://github.com/Mr-RDX-GUJJAR
# Messenger    : https://m.me/Mr-RDX-GUJJAR
# Email        : devil.baker01@my.com
# Date         : 05-09-2021
# Main Language: Shell

# Download and import main images

# Operating system
FROM debian:latest

# Author info
LABEL MAINTAINER="https://github.com/Mr-RDX-GUJJAR/Camhacker"

# Working directory
WORKDIR /Camhacker/
# Add files 
ADD . /Camhacker

# Installing other packages
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install curl unzip wget -y
RUN apt-get install --no-install-recommends php -y
RUN apt-get clean

# Main command
CMD ["./ch.sh", "--no-update"]

## Wanna run it own? Try following commnads:

## "sudo docker build . -t Mr-RDX-GUJJAR/camhacker:latest", "sudo docker run --rm -it Mr-RDX-GUJJAR/pyphisher:latest"

## "sudo docker pull Mr-RDX-GUJJAR/camhacker", "sudo docker run --rm -it Mr-RDX-GUJJAR/camhacker"
