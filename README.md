# dotfiles

## Instruções Úteis

### Docker

Na pasta docker-compose estão algumas pastas com docker-compose ou Dockerfile para criar imagens ou disponibilizar serviços. Dentro de cada pasta pode haver um README com algumas instruções úteis

## Fish functions

Algumas funções do fish, como python e jupyter dependem da existência de uma imagem docker criada a partir de um Dockerfile em `docker-compose/anaconda`. É importante que tal imagem seja buildada, como segue:

```sh
# indo para a pasta onde está o Dockerfile
cd docker-compose/anaconda

docker build . -t anaconda_base:latest
```
