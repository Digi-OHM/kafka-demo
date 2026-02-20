@echo off
echo Loading Docker images...

docker load -i kafka.tar
docker load -i mongo.tar
docker load -i kafka-ui.tar

echo All images loaded!
pause
