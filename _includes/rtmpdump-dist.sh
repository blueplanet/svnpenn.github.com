#!/bin/sh
# Create distribution!

# Install dependencies
mingw-get install msys-coreutils

# Install RtmpDump
cd rtmpdump
rtmpdump_version=$(git describe --tags)
# stackoverflow.com/questions/1253828
rtmpdump_timestamp=$(date -d "$(stat -c %z rtmpdump.exe)")
distdir="$OLDPWD/rtmpdump-$(git describe --tags)"
mkdir $distdir

cp rtmpdump.exe $distdir
cp rtmpgw.exe $distdir
cp rtmpsrv.exe $distdir
cp rtmpsuck.exe $distdir

cd librtmp
cp librtmp.dll $distdir

# Compress files
cd $distdir
# strip -R .tls -o test.exe rtmpdump.exe
strip *
# mpress -b rtmpdump.exe
upx -9 *

# CREATE README
gcc_version=$(gcc -dumpversion)

polarssl_version=$(cat <<EOF | gcc -E -xc - | tail -1 | tr -d \"
#include <polarssl/version.h>
POLARSSL_VERSION_STRING
EOF)

zlib_version=$(cat <<EOF | gcc -E -xc - | tail -1 | tr -d \"
#include <zlib.h>
ZLIB_VERSION
EOF)

cat > README.txt <<EOF
This is a RtmpDump Win32 static build by Steven Penny.

Steven's Home Page: http://svnpenn.github.com

Built on $rtmpdump_timestamp

RtmpDump version $rtmpdump_version

The source code for this RtmpDump build can be found at
	http://rtmpdump.mplayerhq.hu

This version of RtmpDump was built on
	Window 7 Ultimate Service Pack 1
	http://windows.microsoft.com/en-us/windows7/products/home

The toolchain used to compile this RtmpDump was
	MinGW: http://sourceforge.net/projects/mingw

The GCC version used to compile this RtmpDump was
	GCC $gcc_version: http://gcc.gnu.org

The external libraries compiled into this RtmpDump are
	Zlib $zlib_version http://zlib.net
	PolarSSL $polarssl_version http://polarssl.org
EOF