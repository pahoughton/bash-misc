# 1999-06-22 (cc) paul4hough@gmail.com
#

DEST_DIR     = $(HOME)/bin

BASH_SCRIPTS =				\
	gen-yum-repo-file.bash		\
	git-uncommited.bash		\



SCRIPTS	= $(BASH_SCRIPTS:%.bash=%)
TARGETS = $(SCRIPTS:%=$(DEST_DIR)/%)

$(DEST_DIR):
	mkdir -p $(DEST_DIR)

$(DEST_DIR)/%: %.bash
	install $< $@

install: $(DEST_DIR) $(TARGETS)
	echo done
