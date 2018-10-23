#!/bin/bash
fnd=0
had=0
new=0
for fn in audio/*/Album/*/*/*; do
  aat=`echo $fn | sed 's~audio/.*/Album/~~'`
  dfn="/srv/media/audio/album/$aat"
  let fnd=fnd+1
  if [ ! -f "$dfn" ] ; then
    echo "NEED $dfn"
    true
    let new=new+1
    dfndir=`dirname "$dfn"`
    #mkdir -p "$dfndir"
    #cp "$fn" "$dfn"
  else
    #echo "     $dfn"
    true
    let had=had+1
  fi
done
echo $fnd $had $new
