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

# volume

docker volume ls
docker volume inspcet id
docker volume create todo-db
docker run --rm -dp 3000:3000 -v todo-db:/etc/todos getting-started

# network

docker run --rm --network todo-app --network-alias mysql --name mysql5.7.todo -p 33061:3306 -v todo-db-mysql:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=123456 -e MYSQL_DATABASE=todos -d mysql:5.7.34

docker exec -it 38dbdf6fe340 mysql -uroot -p123456

docker run -it --network todo-app nicolaka/netshoot
dig mysql

docker run -dp 3000:3000 \
  -w /app -v "$(pwd):/app" \
  --network todo-app \
  -e MYSQL_HOST=mysql \
  -e MYSQL_USER=root \
  -e MYSQL_PASSWORD=123456 \
  -e MYSQL_DB=todos \
  node:12-alpine \
  sh -c "yarn install && yarn run dev"