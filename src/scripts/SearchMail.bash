#!/bin/bash
#
# Title:        SearchMail.bash
# Project:	Linux
# Desc:
# 
#   
# 
# Notes:
# 
# Author:	Paul A. Houghton - (paul.houghton@wcom.com)
# Created:	05/11/99 05:41
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
glimpse -y -H /home/houghton/Mail/MH/wcom/00-History -z -d '^$' $*



#
# $Log$
# Revision 1.1  2003/05/18 23:47:02  houghton
# *** empty log message ***
#
#

# Local Variables:
# mode:ksh
# End:
