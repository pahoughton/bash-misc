#!/bin/bash
#set -x
for fn in */*/*_mp3; do
  bfn=$fn
  gfn="`echo $fn | sed -e 's~_mp3~.mp3~'`"
  if [ -f "$gfn" ] ; then
    if ! cmp "$bfn" "$gfn" ; then
      ls -l "$bfn" "$gfn"
      exit 1
    else
      rm "$bfn"
    fi
  else
    echo $fn
    dir=`dirname "$fn"`
    ls -1l "$dir"
    echo  \"~/Public/media/audio/album/$dir/\"
    ls -l ~/Public/media/audio/album/"$dir"
    #echo ls "`dirname '$fn'`"
    echo
    exit
  fi
done
