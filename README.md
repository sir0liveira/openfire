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

### Acesse o openfire:

localhost:9090
