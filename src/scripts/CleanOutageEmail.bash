#!/bin/bash
#
# Title:        CleanOutageEmail.bash
# Project:	Login
# Desc:
# 
#   
# 
# Notes:
# 
# Author:	Paul A. Houghton - (paul.houghton@wcom.com)
# Created:	06/22/99 06:04
#
# Revision History: (See end of file for Revision Log)
#
#   Last Mod By:    $Author$
#   Last Mod:	    $Date$
#   Version:	    $Revision$
#
#   $Id$
# 

dir=`mhpath +wcom/outage`
lockfile=$dir/.lock

#
# Try 5 times to clean out the outage folder
for cnt in 1 2 3 4 5 ; do
  if [ -e $lockfile ] ; then
    sleep 60
  else
    touch $lockfile
    find `mhpath +wcom/outage` -mtime +30 -exec rm -f '{}' ';'
    folder +wcom/outage -pack
    rm -f $lockfile
    didit=true
    break
  fi
done

if [ "$didit" != "true" ] ; then
  echo "could not clean wcom/outage lockfile:"
  echo "  $lockfile"
  exit 1
else
  exit 0
fi



#
# $Log$
# Revision 1.1  2003/05/18 23:47:02  houghton
# *** empty log message ***
#
#

# Local Variables:
# mode:ksh
# End:
