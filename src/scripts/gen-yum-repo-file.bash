#!/bin/bash
# 2016-08-14 (cc) <paul4hough@gmail.com>
# generate yum repo file for directories

[ -n "$1" ] || echo "usage: $0 repodir ..."

for dir in $* ; do
  if [ -f "$dir/repodata/repomd.xml" ] ; then
    cat <<EOF
[mirror-$dir]
name="mirror of $dir"
baseurl=http://localhost/mirrors/repos/rpm/$dir
enabled=1
gpgcheck=0

EOF
  else
    echo "# no repomd.xml $dir"
  fi
done
