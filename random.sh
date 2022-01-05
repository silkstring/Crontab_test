#!/bin/bash

random_num="$(($RANDOM% 10))"
echo "$(date) num: $random_num" >> /root/silk/Crontab_test/today_num.log

if [ "$random_num" == "0" ];then
	 sh /root/silk/Crontab_test/crontab.sh
fi
	
for (( n=1; n<=$random_num; n++))
do
	sh /root/silk/Crontab_test/crontab.sh
done


