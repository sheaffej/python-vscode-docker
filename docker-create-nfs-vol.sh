#!/usr/bin/env bash

# 1. Change vol name in last line as needed
# 2. Control read write/only at the NFS server. Setting ro here causes
# the container to fail to start

docker volume create --driver local \
--opt type=nfs \
--opt o=addr=192.168.1.120,nfsvers=4 \
--opt device=:/Media \
somename-nfs
