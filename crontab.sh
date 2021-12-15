#!/bin/sh
cd /root/silk/Crontab_test
git add .
git checkout -b master
echo $(date) >> test.txt
eval $(ssh-agent -s)
ssh-add ~/.ssh/silk

git commit -am "$(date) commit test"

git push --set-upstream origin master
