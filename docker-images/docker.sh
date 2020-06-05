cd /root/docker/uvicorn/docker-images
docker build --tag fastapi .
sleep 5
docker run -e TZ=Asia/Jakarta -it -d --restart always --network host -p 80:80 --memory="512m" --name fastapi fastapi