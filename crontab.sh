#!/bin/sh
#!/bin/sh
DATE=$(date)
echo $DATE >> /root/silk/Crontab_test/test.txt
eval $(ssh-agent -s)
ssh-add ~/.ssh/silk
git commit -am "$DATE commit!"
git push -u

echo "git clear"
