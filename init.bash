git submodule init
git submodule update
cp db-seeder/.env.example db-seeder/.env
cp test-api/.env.example test-api/.env
sudo docker-compose up -d --build
docker exec seeder-cli python seeder seeddb
docker exec -it seeder-cli python seeder createadmin