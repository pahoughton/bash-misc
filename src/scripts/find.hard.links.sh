#!/bin/sh
# -*- ksh -*-
# 
# Title:            find.hard.links.sh
# 
# Description:
#
# find and report hard linked files
#
# 
# Notes:
# 
# Programmer:	    Paul Houghton - (paul_houghton@wiltel.com)
# 
# Start Date:	    11/16/95 08:39
# 
# Modification History:
#
# $Id$
#
# $Log$
# Revision 1.1  1995/11/16 16:05:19  houghton
# Initial Version.
#
# 

echo -n 'Searhing for inodes ... '
inodeList=`find $* -printf "%i\n" | \
 sort -n | uniq -c | \
 sed '/^[ 	]*1[ 	]/d' | \
 sed 's/^[ 	]*[0-9]*[ 	][ 	]*//'`

echo done.

for inode in $inodeList ; do  
  find $* -inum $inode -printf "%i %p\n"
  echo
done
 
