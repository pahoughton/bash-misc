#!/bin/sh
# -*- ksh -*-
# 
# Title:            wbin.sh
# 
# Description:
# 
# 	
# 
# Notes:
# 
# Programmer:	    Paul Houghton - (paul_houghton@wiltel.com)
# 
# Start Date:	    11/16/95 08:17
# 
# Modification History:
#
# $Id$
#
# $Log$
# Revision 1.1  1995/11/16 15:18:03  houghton
# Initial Version.
#
# 

PATH=/etc:/sbin:/usr/sbin:$PATH
for fn in $*; do 
  found=0
  for path in `echo $PATH | sed -e "s/:/ /g"`; do
    if [ -x $path/$fn ]; then
      found=1
      ls -l $path/$fn
    fi
  done
  if [ $found != 1 ]; then
    echo $fn not found
  fi
done
