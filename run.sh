docker-compose up -d
docker-compose scale worker=3 & 
docker-compose logs -f -t worker app

docker-compose ps
echo "Aguardando a carga do postgres"
sleep 5
docker-compose exec db psql -U postgres -f /scripts/check.sql

docker-compose down
