# 1999-06-22 (cc) paul4hough@gmail.com
#

DEST_DIR     = $(HOME)/scripts

BASH_SCRIPTS =				\
	gen-yum-repo-file.bash		\


SCRIPTS	= $(BASH_SCRIPTS:%.bash=%)
TARGETS = $(SCRIPTS:%=$(DEST_DIR)/%)

$(DEST_DIR)/%: %.bash
	install $< $@

install: $(TARGETS)
	echo done
