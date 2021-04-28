#!/bin/bash

echo "Este escript vai popular o banco de dados e subir a aplicação."
sleep 3
echo "Subindo containers..."
docker-compose up;
sleep 2
echo
echo "Ok, agora importando dump..."
docker exec -i database-node mysql -uroot -proot music_artists < ~/quero-testes/musical.dump;
echo "Dump importado."

