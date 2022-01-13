#!/bin/bash

random_num="$(($RANDOM% 10))"
echo "$(date) num: $random_num" >> /home/youngtec/git/Crontab_test/today_num.log

if [ "$random_num" == "0" ];then
	sh /home/youngtec/git/Crontab_test/crontab.sh
fi
	
for (( n=1; n<=$random_num; n++))
do
	sh /home/youngtec/git/Crontab_test/crontab.sh
done


