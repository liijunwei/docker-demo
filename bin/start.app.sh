cd /root/app;

docker run --rm -dp 3000:3000 \
  -w /app -v "$(pwd):/app" \
  --name todo-app \
  --network todo-app \
  -e MYSQL_HOST=mysql \
  -e MYSQL_USER=root \
  -e MYSQL_PASSWORD=123456 \
  -e MYSQL_DB=todos \
  node:12-alpine \
  sh -c "yarn install && yarn run dev";

docker ps;