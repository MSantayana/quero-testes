# Quero Testes
Para rodar esta aplicação, é necessário ter Docker instalado.

Suba os containeres do NodeJS e MariaDB com:

`docker-compose up`


Libere o populamento do banco de dados com:

`chmod +x some_data/.auto_gambs.sh`running


Após o container do MariaDB subir (database-bands-node), popule o banco de dados com:

`./solve_gambs.sh`


Em seguida, acesse: `localhost/3000/bands`

![image](https://user-images.githubusercontent.com/33665633/116627831-3b13c400-a924-11eb-8b0d-793104372cf4.png)

