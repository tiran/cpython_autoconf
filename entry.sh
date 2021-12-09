#!/bin/sh
set -e

SRC=/src
SENTINEL=${SRC}/pyconfig.h.in

if [ ! -e ${SENTINEL} ]; then
    echo "ERROR: ${SENTINEL} not found "
    echo "Did you forget to mount Python work directory with '-v.:/src'?"
    echo
    echo "  docker run -v.:/src tiran/cpython_autoconf"
    echo "  podman run -v.:/src:Z tiran/cpython_autoconf"
    exit 2
fi

echo "Rebuilding configure script"
cd $SRC
autoreconf -ivf -Werror $@
echo "Done"
