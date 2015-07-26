#!/bin/bash
# 2015-07-13 (cc) <paul4hough@gmail.com>
#
# QuickRemoteCopySource
#

function Usage {
  echo $1 directory '# QuickRemoteCopySource'
  exit 2
}

if [ -z "$1" -o ! -d "$1" ] ; then
  Usage $0
fi
tar -cf - "$1" | gzip -1 | nc -l 8585
