#!/bin/bash
# 2015-07-24 (cc) <paul4hough@gmail.com>
#

from=$1

if [ ! -d "$from" ] ; then
  if [ -d "$from.dvdmedia" ] ; then
    from="$from.dvdmedia";
  fi
fi
if [ ! -d "$from" ] ; then
  echo not dir $from
  exit 2;
fi

fname=`echo $from | sed 's/.dvdmedia$//'`

to=${2:-$fname}
to=`echo $to | sed 's/.mp4$//'`

for t in {1..50}; do /Applications/HandBrakeCLI --preset Normal -t $t -i "$from/VIDEO_TS" -o "$to.t-$t.mp4"; done
