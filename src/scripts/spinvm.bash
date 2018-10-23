#!/bin/bash
# 2015-05-20 paul.houghton@aexp.com
set -x
env
pwd
id
ls -al

name="r7j-$BUILD_TAG"
img=`pwd`/"$node.qcow2"

echo find a mac

for n in {01..99} ; do
  tmac="52:54:00:aa:aa:$n"
  if ! grep "mac address.*$mac" /etc/libvirt/qemu/*xml ; then
    mac=$tmac
    break;
  fi
done

if [ -z "$mac" ] ; then
  echo "no mac addr available:$tmac"
  exit 2;
fi

sed -e "s/%name%/$name/g"
-e "s/%img%/$img/g"
-e "s/%num%/$num/g"
"$VMXML" > $name.xml

cp /var/lib/libvirt/images/r7jt00.qcow2 "$img" || exit 2;

virsh create r7jt$num.xml || exit 2
for c in {1..4} ; do
  sleep 10
  ip=`grep "$mac" /var/lib/libvirt/dnsmasq/default.leases | cut -d' ' -f3`
  if [ -n $ip ] ; then
    break;
  fi
done
if [ -z "$ip" ] ; then
  echo "ip could not be determined"
  exit 2;
fi

ssh $ip ls
