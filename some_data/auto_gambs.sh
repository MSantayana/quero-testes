#!/bin/bash
# Isso é apenas para popular o banco de dados. Ainda aprenderei uma forma melhor de executar isso, mas por enquanto, acredito essa 'gambiarra' dá conta.
docker exec -it database-bands-node mysql --batch -uroot -proot -e "CREATE DATABASE IF NOT EXISTS bands;" && echo "Database criada...";
docker exec -i database-bands-node mysql --batch --force -uroot -proot bands < some_data/musical.dump && echo "Dump importado...";
echo "Tudo certo, acesse 'localhost/3000/bands'"