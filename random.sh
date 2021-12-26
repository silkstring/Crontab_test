#!/bin/bash

random_num="$(($RANDOM% 10))"

for (( n=1; n<=$random_num; n++))
do
#	echo "hi"
	sh /root/silk/Crontab_test/crontab.sh
done


