# localhost

SQLITE_DB_LOCATION=/Users/lijunwei/Desktop/todo.db node src/index.js

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

docker run --rm -d \
    --network todo-app --network-alias mysql \
    --name mysql5.7.todo \
    -v todo-db-mysql:/var/lib/mysql \
    -e MYSQL_ROOT_PASSWORD=123456 \
    -e MYSQL_DATABASE=todos \
    mysql:5.7.34

docker exec -it $(docker ps|grep mysql5.7.todo | awk '{print $1}') mysql -uroot -p123456 -Dtodos

docker run --rm -it --network todo-app nicolaka/netshoot
dig mysql

OK
docker run --rm -dp 3000:3000 \
  -w /app -v "$(pwd):/app" \
  --network todo-app \
  -e MYSQL_HOST=mysql \
  -e MYSQL_USER=root \
  -e MYSQL_PASSWORD=123456 \
  -e MYSQL_DB=todos \
  node:12-alpine \
  sh -c "yarn install && yarn run dev"

docker exec -it 38dbdf6fe340 mysql -p123456 todos

+ TODO 插入数据有问题
    + 可能是网络问题, 过会儿就又好了
    + 按回车键好像又会触发问题, 重启容器不好使
