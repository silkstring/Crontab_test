#!/bin/sh
cd /root/silk/Crontab_test/

/root/bin/git config --global user.name silkstring
/root/bin/git config --global user.mail why612@naver.com
/root/bin/git config --global user.email why612@naver.com
/root/bin/git config --list > /root/silk/Crontab_test/git_id_check

cd /root/silk/Crontab_test/

/root/bin/git add .

/root/bin/git checkout -b main

echo $(date) >> test.txt

/root/bin/git add .

eval $(ssh-agent -s)

ssh-add ~/.ssh/silk

/root/bin/git commit -am "$(date) commit test" 

/root/bin/git push --set-upstream origin main

sh /root/silk/Crontab_git_push/crontab.sh
