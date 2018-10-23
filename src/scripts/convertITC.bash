if [ -n "$1" ]
then
  isJPEG=`grep EExIf "$1"`
  isPNG=`grep PNG "$1"`

  if [ -n "$isJPEG" ]
  then
    EXT=jpg
  else
    if [ -n "$isPNG" ]
    then
      EXT=png
    fi
  fi

  echo "Converting "`basename "$1"` " to $EXT" 
  outname=`dirname "$1" | tr / _``basename "$1" .itc`

  if [ -n "$EXT" ]
  then
    tail -c+493 "$1" > "$1.$EXT"
  else
    echo "$1" >> convert.errors;
    echo Format not recognized.
    echo EXT- $EXT
    echo PNG- $isPNG
    echo JPEG- $isJPEG
  fi
else
  echo
  echo "USAGE: convertITC <FILE TO CONVERT.ITC>"
  echo
fi
