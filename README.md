# learn

http://172.16.210.142/tutorial/persisting-our-data/

# on 172.16.210.142:/root/
git init --bare app.git

# on local git repo
git remote add origin git@172.16.210.142:/root/app.git

# on server

cd /root
git clone file:///root/app.git

# sample workflow

gaa;gcmsg 'Added tmp message';gp; ssh udesk "cd /root/app && git pull"

# run

docker run --rm -dp 3000:3000 getting-started

visit http://172.16.210.142:3000/

# push

create image on dockerhub

docker login -u leejunwei
docker tag getting-started leejunwei/getting-started
docker push leejunwei/getting-started

