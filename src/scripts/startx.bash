#
# Title:        startx.bash
# Project:	Scripts
# Desc:
# 
#   Start the X server and redirect output to $(HOME)/.startx.out
# 
# Notes:
# 
# Author:	Paul A. Houghton - (paul.houghton@wcom.com)
# Created:	05/02/99 10:05
#
# Revision History: (See end of file for Revision Log)
#
#   Last Mod By:    $Author$
#   Last Mod:	    $Date$
#   Version:	    $Revision$
#
#   $Id$
# 

for sx in `type -a -p startx` ; do
  if [ "$sx" != "$0" ] && [ -x "$sx" ] ; then
    real_startx=$sx
    break
  fi
done

$real_startx > $HOME/.startx.out 2>&1

echo "Look in ~/.startx.out for output."


#
# $Log$
# Revision 1.1  1999/05/03 14:28:55  houghton
# Initial Version.
#
#

# Local Variables:
# mode:ksh
# End:
