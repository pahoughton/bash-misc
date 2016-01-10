#
# File:		ConvDvdmedia.bash
# Project:	VidRip
# Desc:
#
#   
#
# Notes:
#
# Author(s):   Paul Houghton <Paul.Houghton@SecureMediaKeepers.com>
# Created:     03/23/2013 01:57
# Copyright:   Copyright (c) 2013 Secure Media Keepers (www.SecureMediaKeepers.com)
#
# Revision Info: (See ChangeLog or cvs log for revision history)
#
#	$Author: $
#	$Date: $
#	$Name:$
#	$Revision: $
#	$State: $
#
# $Id: $
#
dvd="$1"
vid="$2"

echo $dvd 

		
for t in 1 ; do
	echo '******' $vid $t 
	if /Support/bin/HandBrakeCLI \
	    --preset Normal \
	    -i $dvd/VIDEO_TS -o $vid.t$t.mp4 -t $t ; then
	    echo converted
	else
	    break;
	fi
done
