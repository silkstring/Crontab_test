#!/bin/sh
cd /home/youngtec/git/Crontab_test

/usr/local/cpanel/3rdparty/lib/path-bin/git config --global user.name silkstring
/usr/local/cpanel/3rdparty/lib/path-bin/git config --global user.mail why612@naver.com
/usr/local/cpanel/3rdparty/lib/path-bin/git config --global user.email why612@naver.com
/usr/local/cpanel/3rdparty/lib/path-bin/git config --list > /root/silk/Crontab_test/git_id_check

cd /home/youngtec/git/Crontab_test

/usr/local/cpanel/3rdparty/lib/path-bin/git add .

/usr/local/cpanel/3rdparty/lib/path-bin/git checkout -b main

if [ "$(cat /home/youngtec/git/Crontab_test/test.txt | wc -l)" -gt 30 ]; then
	sed -i '1,30d' /home/youngtec/git/Crontab_test/test.txt
fi

echo $(date) >> test.txt

/usr/local/cpanel/3rdparty/lib/path-bin/git add .

eval $(ssh-agent -s)

ssh-add /home/youngtec/git/silkstring

/usr/local/cpanel/3rdparty/lib/path-bin/git commit -am "$(date) commit test" 

/usr/local/cpanel/3rdparty/lib/path-bin/git push --set-upstream origin main

sh /home/youngtec/git/Crontab_test_push/crontab.sh
