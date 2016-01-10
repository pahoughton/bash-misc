for n in `perl -e 'for( my $i=1; $i < 100; ++$i ) { print "$i\n"; };'` ; do
 echo "-*-*-*-*- $n -*-*-*-*-";
 echo $n > FindTitle.num.txt
 mplayer -quiet -dvd-device "$1" dvd://$n;
done