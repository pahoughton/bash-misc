# only echos arg 2 if not found under arg 1
dir="$1"
fn="$2"
if [ ! -f "$dir/$fn" ] ; then
  echo $fn
elif [ "$fn" -nt "$dir/$fn" ] ; then
  echo $fn
fi;
