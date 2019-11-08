#!/bin/bash
#
# the command line argument is the mount point to be checked
#

if [ "$1" == "" ]; then
  echo "Unknown: mount point is not defined"
  exit 2
fi

#mounting point
mp="$1"

#mounting status
mountpoint -q ${mp}
ms="$?"

if [ "$ms" == "0" ]; then
  echo "OK: $mp is mounted"
  exit 0
fi

echo "CRITICAL: $mp is not mounted"
exit 1



