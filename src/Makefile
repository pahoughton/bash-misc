#
# File:         Makefile
# Project:	KshUtils  
# Item:   	=VER_ITEM=
# Desc:
#
#   This Makefile builds the targets in all the source subdirectories.
#
# Notes:
#
# Author:	Paul Houghton 719-527-7834 <paul.houghton@mci.com>
# Created:	06/03/03 using GenProject 6.01.02
#
# Revision History: (See end of file for Revision Log)
#
#   Last Mod By:    $Author$
#   Last Mod:	    $Date$
#   Version:	    $Revision$
#   Status:	    =VER_STATUS=
#
#   $Id$
#

show_commands 	= # true
check_install	= true

PRJ_TOPDIR	= ..
config_dir	= $(PRJ_TOPDIR)/src/config

include $(config_dir)/00-Makefile.cfg
include Make/make.cfg.$(make_cfg_ver)

LIB_SUBDIRS	=	\

SUBDIRS		=	\
	$(LIB_SUBDIRS)

TARGETS		= $(standard_targets)	\
	debug				\
	test				\
	depend				\
	depend_all			\
	depend_default			\
	depend_debug depend_test

HELP_TARGETS	= $(TARGETS)
PHONY_TARGETS	= $(TARGETS)

include Make/make.cfg.targets.common.$(make_cfg_ver)

$(TARGETS)::
	$(call make_subdirs,$@,$(SUBDIRS),$($(@)_exports) $(exports))

install_lib_all:
	$(call make_subdirs,install_all,$(LIB_SUBDIRS),$($(@)_exports) $(exports))

install install_all::

check:: test
	$(call make_subdirs,$@,$(PRJ_TOPDIR)/test,$($(@)_exports) $(exports))


#
# Revision Log:
#
#
# $Log$
# Revision 1.1  2003/07/20 14:15:24  houghton
# Initial Version.
#
#
#

# Set XEmacs mode
#
# Local Variables:
# mode:makefile
# End:
