#!/bin/sh
# This install requires MSYS Base System.
# I prefer this over installing MinGW Developer Toolkit.
PATH=/bin:/mingw/bin:/c/Git/bin

# Install dependencies
mingw-get install libz
mingw-get install msys-wget

# Install PolarSSL
wget polarssl.org/code/releases/polarssl-1.0.0-gpl.tgz
tar xf polarssl*
cd polarssl*
# SYS_LDFLAGS=-lws2_32 is only needed for APPS, which we are not using.
make CC=gcc APPS=
make DESTDIR=/mingw install
cd -

# Install RtmpDump
git clone git://git.ffmpeg.org/rtmpdump
cd rtmpdump
# Add tag
git tag 'v2.4' '3121324'
# Build
make SHARED= SYS=mingw CRYPTO=POLARSSL XLDFLAGS=-static \
VERSION=$(git describe --tags)
# Build librtmp.dll
make SYS=mingw CRYPTO=POLARSSL