# on 172.16.210.142:/root/
git init --bare app.git

# on local git repo
git remote add origin git@172.16.210.142:/root/app.git

# on server

cd /root
git clone file:///root/app.git

# sample workflow

gaa;gcmsg 'Added tmp message';gp; ssh udesk "cd /root/app && git pull"