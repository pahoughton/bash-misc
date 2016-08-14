# set -x
dest_base="/Users/paul/Public/Music"
fn=$1
if [ -f "$dest_base/$fn" ] ; then
  true
else
  echo $fn
fi

# Local Variables:
# mode: ksh
# End:
