# Openfire
## Arquivos para usar com o Docker
- conf.sh
- docker-compose.yaml

### Caso queira baixar a imagem acesse o DockerHub, segue o link:

[DockerHub](https://hub.docker.com/repository/docker/sir0liveira/openfire)

#### Use o comando:
docker pull sir0liveira/openfire:latest

### A imagem do openfire foi feita com a imagem oficial do Debian, somente acrescentei (java, wget e o sudo).

#### Como utilizar, com os arquivos baixados no seu computador use o seguinte comando:
sudo docker-compose up

#### O docker-compose vai subir 2 containers, openfire e mysql

Lembrando que o openfire e também o mysql vão persistir os dados na pasta "openfire" criada no diretório onde o comando foi executado.

### O banco criado é o openfire, seguem os dados:

MYSQL_ROOT_PASSWORD: 123@mudar (senha do root no MYSQL)

MYSQL_DATABASE: openfire (nome do banco)

MYSQL_USER: openfire (usuário do banco)

MYSQL_PASSWORD: openfire (senha do usuário)

#### Obs. Modifique as senhas conforme sua necessidade.

Ex. DB Connection URL: jdbc:mysql://172.20.0.3:3306/openfire?rewriteBatchedStatements=true&characterEncoding=UTF-8&characterSetResults=UTF-8&serverTimezone=UTC

### Acesse o openfire:

localhost:9090
