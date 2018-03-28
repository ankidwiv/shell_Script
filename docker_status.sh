#!/bin/bash
docker=`systemctl status docker| grep -i running`
exitcode=`echo $?`

if [ $exitcode -eq 0 ];
 then
echo " Dosker is running"
else
systemctl start docker
echo " Starting docker"
sleep 10
systemctl status docker| grep -i running
fi
exit1=`echo $?`
if [$exit1 -eq 0] then;
echo "docker is started"
fi
