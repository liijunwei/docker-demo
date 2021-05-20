docker run --rm -d \
  --network todo-app --network-alias mysql \
  --name mysql5.7.todo \
  -v todo-db-mysql:/var/lib/mysql \
  -e MYSQL_ROOT_PASSWORD=123456 \
  -e MYSQL_DATABASE=todos \
  mysql:5.7.34
