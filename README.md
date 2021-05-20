# localhost

SQLITE_DB_LOCATION=/Users/lijunwei/Desktop/todo.db node src/index.js

# GO read bin/\*.sh

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

# push

create image on dockerhub

docker login -u leejunwei
docker tag getting-started leejunwei/getting-started
docker push leejunwei/getting-started

# volume

docker volume ls
docker volume inspcet id
docker volume create todo-db
docker run --rm -dp 3000:3000 -v todo-db:/etc/todos getting-started

# docker-compose

docker-compose version
touch docker-compose.yml

docker-compose up
docker-compose up -d
docker-compose logs -f
docker-compose down


cd /root/youtube/066/ex3
docker-compose up --scale app=8 -d
watch -d -n.2 "curl -s http://172.16.210.142:1313/"

