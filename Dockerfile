FROM debian:latest AS base

RUN apt update
RUN apt upgrade -y
RUN apt install python3 -y
RUN apt install python3-pip -y

RUN mkdir /src
WORKDIR /src
COPY . .

# Build from source
RUN python3 -m pip install . --break-system-packages
