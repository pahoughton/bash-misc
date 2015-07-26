#!/bin/bash
# 2015-07-13 (cc) <paul4hough@gmail.com>
#
# QuickRemoteCopyDest
#

function Usage {
  echo $1 host [dir] '# QuickRemoteCopyDest'
  exit 2
}

if [ -z "$1" -o ! -d "$1" ] ; then
  Usage $0
fi

dir=${2:-.}

nc "$1" 8585 | gzip -d | tar xf - -C "$dir"
