#!/bin/bash

echo "Baixando repositório..."
git clone https://github.com/MSantayana/quero-testes.git && cd quero-testes;
echo "Populando banco de dados..."
docker-compose up;
docker exec -i database-node mysql -uroot -proot music_artists < ~/quero-testes/musical.dump;
