#!/bin/sh
# -*- ksh -*-
# 
# Title:            bcp.in.sh
# 
# Description:
# 
#	$1 is databasename,		
#	$2 is tablename
# 
# Notes:
# 
# Programmer:	    Paul Houghton - (paul_houghton@wiltel.com)
# 
# Start Date:	    11/16/95 08:12
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

bcp $1..$2 in $2.data -c -t \\t -r \\n -Usa -P
