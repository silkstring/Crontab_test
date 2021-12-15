#!/bin/sh

cd /root/silk/Crontab_test/

git add .

git checkout -b testbranch

echo $(date) >> test.txt

eval $(ssh-agent -s)

ssh-add ~/.ssh/silk

git commit -am "$(date) commit test" >> result.txt

git push --set-upstream origin testbranch >> result.txt



