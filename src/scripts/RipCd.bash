echo $@
upc='';
if test -z $1 ; then
  read -p "Enter UPC: " upc
else 
  upc=$1
fi
echo UPC is $upc
if test -z "$upc" ; then
  echo "NO upc - aborting"
  diskutil eject /dev/disk2
  exit 1;
fi
#echo "`echo \'test upc $upc\'`"
meta_sel_id="`echo 'select meta_sel_id from media_meta_selection where search_upc = _UPC_;' | sed -e s/_UPC_/$upc/ | psql -h cmac.smk.private -U pahoughton -q -t  digitize`" 
echo meta sel .$meta_sel_id.
if test -z $meta_sel_id ; then
  echo unknown meta  - skip
  diskutil eject /dev/disk2
  exit 1
fi
#exit 1
cd /Volumes/Drobo/Media/Audio/Rip
if mkdir ${upc} ; then
  cd $upc
  echo $upc | ~/bin/CdInfo
  ~/bin/cdparanoia -f -B
  diskutil eject /dev/disk2
else 
  echo "try again with ${upc}-DISKNUM (i.e. ${upc}-2)"
fi

