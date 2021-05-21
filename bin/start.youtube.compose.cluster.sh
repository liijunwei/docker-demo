cd /root/youtube/066/ex3;

docker-compose up --scale app=8 -d --remove-orphans;

echo;
echo;

docker ps;

watch -d -n.2 "curl -s http://172.16.210.142:1313/";
