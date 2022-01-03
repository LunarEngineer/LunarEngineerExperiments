FROM python:3.9-slim-buster

# This expects a folder for experimental results at /experiments.
# Mount your own folder here.

RUN apt-get update && apt-get install -y \
    git\
 && rm -rf /var/lib/apt/lists/*
RUN pip3 install ipykernel -U --user --force-reinstall
ENTRYPOINT /bin/bash