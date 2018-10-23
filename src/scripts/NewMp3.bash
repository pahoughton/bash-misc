#!/bin/bash

bdir="/Users/paul/00-MediaWork/Audio/ForImport/Library"
# artist, alb, track, song, genere, year
mp3info2 -a "$1" -l "$2" -n "$3" -t "$4" -g "$5" -y "$6" "$7"
mkdir -p $bdir/"$1"/"$2"
mv "$7" $bdir/"$1"/"$2"/"$3 $4".mp3
ls -l $bdir/"$1"/"$2"/"$3 $4".mp3
mp3info2 $bdir/"$1"/"$2"/"$3 $4".mp3
