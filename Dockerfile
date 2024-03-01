#controls how your server creates a virtual machine
FROM ubuntu:latest

RUN apt-get update && apt-get install -y \ 
    python3.10 \
    python3-pip \
    git 

RUN pip3 install PyYAML

COPY feed.py /usr/bin/feed.py
#copy from the repo to the virtual machine
COPY entrypoint.sh /entrypoint.sh 


ENTRYPOINT ["/entrypoint.sh"]
