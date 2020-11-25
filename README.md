# test-project

Run this project with docker and docker-compose:
```bash
git clone https://github.com/ElPapi42/test-project
cd test-project
git submodule init
git submodule update
cp db-seeder/.env.example db-seeder/.env
cp test-api/.env.example test-api/.env
sudo docker-compose up -d --build
docker exec seeder-cli python seeder seeddb
docker exec -it seeder-cli python seeder createadmin
```
Alternatively, you can execute `bash init.bash` AFTER CLONE this repository for a single command startup.

Then you can exec a login request for get credentials:
```bash
curl --request POST \
  --url http://localhost:8000/login/ \
  --header 'Content-Type: application/json' \
  --data '{
	"email": "<YOUR_ADMIN_EMAIL>",
	"password": "<YOUR_ADMIN_PASSWORD>"
}'
```
WARNING: Remember to replace the last command email and password with those setup previously during admin creation phase.

With the token returned in the last command, you can start issuing requests to the api. You can read the docs of the API at https://github.com/ElPapi42/test-api/blob/master/README.md

## Without Build

```bash
docker-compose -f remote-compose.yml up -d
docker exec seeder-cli python seeder seeddb
docker exec -it seeder-cli python seeder createadmin
curl --request POST \
  --url http://localhost:8000/login/ \
  --header 'Content-Type: application/json' \
  --data '{
	"email": "<YOUR_ADMIN_EMAIL>",
	"password": "<YOUR_ADMIN_PASSWORD>"
}'
```