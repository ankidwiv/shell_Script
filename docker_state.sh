#!/bin/bash
docker=`systemctl status docker| grep -i running| echo $?`
#exitcode=`echo $?`

#if [ $exitcode -eq 0 ];
if [ $docker -eq 0 ];
 then
echo " Dosker is running"
else
systemctl start docker
echo " Starting docker"
sleep 10
systemctl status docker| grep -i running
fi
docker2=`systemctl status docker| grep -i running| echo $?`
if [ $docker2 -eq 0 ];
then
echo "docker is started"
else 
echo " docker is not present"
fi

