#!/bin/sh
cd /root/silk/Crontab_test
git add .
git checkout -b master
echo $(date) >> test.txt
eval $(ssh-agent -s)
ssh-add ~/.ssh/silk

git commit -am "$(date) commit test" >> result.txt

git push --set-upstream origin master >> result.txt

cat result.txt | mail -s "[git plan] crontab auto" dldudgjs31@naver.com

cat /dev/null > result.txt

