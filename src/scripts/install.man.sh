#!/bin/sh
# -*- ksh -*-
# 
# Title:            install.man.sh
# 
# Description:
# 
# 	
# 
# Notes:
# 
# Programmer:	    Paul Houghton - (paul_houghton@wiltel.com)
# 
# Start Date:	    11/16/95 08:16
# 
# Modification History:
#
# $Id$
#
# $Log$
# Revision 1.1  1995/11/16 15:18:02  houghton
# Initial Version.
#
# 

install -m 664 -o man -g adm $*
