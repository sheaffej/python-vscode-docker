#!/usr/bin/env bash

# Change rw/ro in 2nd --opt as needed
# Change vol name in last line as needed
docker volume create --driver local \
--opt type=nfs \
--opt o=addr=192.168.1.120,nfsvers=4,rw \
--opt device=:/Media \
somename-nfs-rw
