#!/bin/sh

cd /root/silk/Crontab_test/

git add .

git checkout -b testbranch

echo $(date) >> /root/silk/Crontab_test/test.txt

eval $(ssh-agent -s)

ssh-add /root/.ssh/silk

git commit -am "$(date) commit test" >> /root/silk/Crontab_test/result.txt

git push --set-upstream origin testbranch >> /root/silk/Crontab_test/result.txt



