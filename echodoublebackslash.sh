#!/bin/bash -x
kill=`ps aux | grep "[c]fs-downloader-18.4.3.jar" | awk '{print $2}'`
string2="\"MyCFSPass\""
string3="\"MyPromAppUser\""
#cfs = Cloud File System

if [ -z "$kill" ]
   then
     mkdir -p Jencomart
     cd Jencomart/
     mkdir -p pass
     cd pass/
     rm -f prod-pass.conf
     touch prod-pass.conf
     echo -e 'secured {\ncfs-pass = '$string2'\nPromApp-user = '$string3'\nPromApp-pass = $string4\n}' > prod-pass.conf
     cat prod-pass.conf | sed -i '/secured {/a cfs-user = "production\\\\frontend"' prod-pass.conf | /cinder/app1/scripts/jq .
     cat prod-pass.conf | sed -i '/PromApp-user = "MyPromAppUser"/a PromApp-pass = "MyPromAppPass!"' prod-pass.conf | /cinder/app1/scripts/jq .
     cd /app/cfs_downloader/current
     nohup java -Dconfig.resource=/prod-pass.conf -cp /app/Jencomart/pass:./cfs-downloader-18.4.3.jar ca.Jencomart.downloader.CfsDownloader flush > foo.out 2> foo.err < /dev/null &
   else
       echo "CFS is running with PID '$kill'"
fi
