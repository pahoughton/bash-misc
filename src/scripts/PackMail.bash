#!/bin/bash
#
# Title:        PackMail.bash
# Project:	Mail
# Desc:
# 
#   
# 
# Notes:
# 
# Author:	Paul A. Houghton - (paul.houghton@wcom.com)
# Created:	05/11/99 05:56
#
# Revision History: (See end of file for Revision Log)
#
#   Last Mod By:    $Author$
#   Last Mod:	    $Date$
#   Version:	    $Revision$
#
#   $Id$
# 

set -x
if [ -z "$1" ] ; then
  echo "Need the year."
  exit 1
fi

year=$1
pick +wcom/inbox -before '01 Jan $year' -sequence wcom$year
packf +wcom/inbox wcom$year -f /home/Mail/MH/wcom/00-History/inbox-$year


#
# $Log$
# Revision 1.1  2003/05/18 23:47:02  houghton
# *** empty log message ***
#
#

# Local Variables:
# mode:ksh
# End:
