#!/bin/sh
# -*- ksh -*-
# 
# Title:            unix2mac.sh
# 
# Description:
# 
#   convert unix text file to mac text file	
# 
# Notes:
# 
# Programmer:	    Paul Houghton - (paul_houghton@wiltel.com)
# 
# Start Date:	    11/16/95 08:42
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

if [ -z "$1" -o -z "$2" -o ! -f "$1" -o -f "$2" ] ; then
  echo " "
  echo " mac2unix command syntax is:"
  echo " "
  echo "      mac2unix from to"
  echo " "
  echo " where 'from' is the name of an existing file to be converted. "
  echo " and 'to' is name of the translated output file."
  echo " "
else
  cat $1 | tr '\015' '\012' >$2
fi

