#!/bin/sh
# -*- ksh -*-
# 
# Title:            termtype.sh
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



set noglob; eval `tset -s -m ':?aixterm'`; unset noglob
