cd /root/docker/uvicorn/docker-images2
docker build --tag fastapi2 .
sleep 5
docker run -e TZ=Asia/Jakarta -it -d --restart always --network host -p 8080:8080 --memory="512m" --name fastapi2 fastapi2