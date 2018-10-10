#!/bin/bash
# 2018-10-10 (cc) <paul4hough@gmail.com>
# swiped from https://stackoverflow.com/questions/6534556/how-to-remove-and-all-of-the-escape-sequences-in-a-file-using-linux-shell-sc
#

sed "s,\x1B\[[0-9;]*[a-zA-Z],,g"
