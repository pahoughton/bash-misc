#!/bin/sh
# -*- ksh -*-
# 
# Title:            recnews.sh
# 
# Description:
# 
# 	
# 
# Notes:
# 
# Programmer:	    Paul Houghton - (paul_houghton@wiltel.com)
# 
# Start Date:	    4/7/95
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

export DOTDIR=/home/houghton/News/rec
export NNTPSERVER=usenet.coe.montana.edu
trn -q $*

