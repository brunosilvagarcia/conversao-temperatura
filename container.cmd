cd src
docker system prune --force
docker container rm -f conversao-temperatura
docker image build -t brunosilvagarciadocker/conversao-temperatura:latest .
REM docker login docker login -u brunosilvagarciadocker
docker image push brunosilvagarciadocker/conversao-temperatura:latest
docker container run -d -p 8282:8080 --name conversao-temperatura brunosilvagarciadocker/conversao-temperatura:latest
cd ..
