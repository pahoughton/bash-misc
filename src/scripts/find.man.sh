#!/bin/sh
# -*- ksh -*-
# 
# Title:            find.man.sh
# 
# Description:
# 
# 	
# 
# Notes:
# 
# Programmer:	    Paul Houghton - (paul_houghton@wiltel.com)
# 
# Start Date:	    5/8/94
# 
# Modification History:
#
# $Id$
#
# $Log$
# Revision 1.1  1995/11/16 16:05:20  houghton
# Initial Version.
#
# 

for fn in `find $* -printf "%f\n"` ; do
  if [ `find /usr/local/man -name "$fn.*" | wc -l` -eq 0 ] ; then
    echo No Man: $fn
  fi
done
