#!/bin/bash
# 2016-12-19 (cc) <paul4hough@gmail.com>
#

#set -x

dirs=${*:-.}
echo dirs:$dirs

tvar=abc
committed=0
uncommitted=0
#find $dirs -type d -name .git -print0 | xargs -0 echo
IFS=
while read path; do
  prjdir=$(dirname $path)
  pushd "$prjdir" > /dev/null
  branch=`git branch | grep '^\*' | sed 's~^\* ~~'`
  origin='origin'
  case $branch in
    *HEAD*)
      origin=
      #echo NOTBRANCH:$branch:$origin
      ;;
    *)
      origin="$origin/$branch"
      ;;
  esac

  if git diff --quiet $origin ; then
    let "committed+=1"
    #echo git:$prjdir:$origin
    #echo "  committed"
  else
    let "uncommitted+=1"
    echo git:$prjdir:$origin: UNcommitted
    git diff --name-status $origin
  fi
  if [ -f .gitignore ] ; then
    unlisted=`git ls-files -o -X .gitignore`
  else
    unlisted=`git ls-files -o`
  fi
  if [ -n "$unlisted" ] ; then
    let "uncommitted+=1"
    echo git:$prjdir:$origin: UNlisted
    echo '??' $unlisted
  fi
  popd > /dev/null
done <<< "$(find $dirs -type d -name .git)"


echo uncommitted: $uncommitted
echo committed:   $committed
exit $uncommitted
