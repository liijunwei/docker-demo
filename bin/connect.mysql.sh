echo "Usage:"
echo "docker exec -it $(docker ps|egrep 'mysql5.7.todo|mysql:5.7.34' | awk '{print $1}') mysql -uroot -p123456 -Dtodos"

docker exec -it $(docker ps|egrep 'mysql5.7.todo|mysql:5.7.34' | awk '{print $1}') mysql -uroot -p123456 -Dtodos -e "select * from todo_items;"