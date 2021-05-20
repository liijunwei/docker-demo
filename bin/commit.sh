git add .;
git commit -m 'Added note.';
git push;
ssh udesk "cd /root/app && git fetch && git reset --hard origin/master"