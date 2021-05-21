cd /root/youtube/066/ex3;

docker-compose up --scale app=8 -d --remove-orphans;

echo;
echo;

docker ps;

echo;
echo;

for i in {1..10}; do
  curl -s http://172.16.210.142:1313/;
done
