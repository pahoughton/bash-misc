#!/bin/bash
# 2015-09-22 (cc) <paul4hough@gmail.com>
#
#set -x
dir=$1
repodir=`pwd | sed 's/.*mirrors/mirrors/'`

[ -d $dir ] || exit 1;
for d in $dir/rpm/*; do
    name=`basename $d`

    cat << EOI
[$dir-$name]
name="$dir mirror of $name"
baseurl=http://192.168.122.1/$repodir/$d
enabled=1
gpgcheck=0

EOI
done
