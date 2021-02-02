FROM ubuntu:bionic

RUN apt-get update -y

RUN apt-get upgrade -y

RUN apt-get install -y build-essential libtool autotools-dev automake pkg-config bsdmainutils curl git

RUN apt-get install -y nsis

RUN apt-get install -y g++-mingw-w64-x86-64

RUN update-alternatives --config x86_64-w64-mingw32-g++
