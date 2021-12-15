#!/bin/sh

cd /root/silk/Crontab_test/

/root/bin/git add .

/root/bin/git checkout -b main

echo $(date) >> test.txt

eval $(ssh-agent -s)

ssh-add ~/.ssh/silk

/root/bin/git commit -am "$(date) commit test" > result.txt

/root/bin/git push --set-upstream origin main >> result.txt


