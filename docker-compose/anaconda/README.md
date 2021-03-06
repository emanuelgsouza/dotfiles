# anaconda

O objetivo deste Dockerfile é disponibilizar uma imagem com algumas pré-configurações e ou bibliotecas já instaladas

## Bibliotecas

* Bibliotecas padrão no pacote anaconda
* plotly
* psycopg2-binary
* click (linha de comando)
* redis

## Instruções para montar a imagem e executar de dentro de um repositorio

1. Criar a imagem:

```sh
docker build . -t anaconda_local:latest
```

2. Executar um comando do container:

```sh
docker run --name anaconda_bash -v '/path/to/you/want':'/home/workspace/notebooks' --network=host --rm -i -t anaconda_local:latest
```

## Considerações importantes

* Se estiver usando um shell como fish, é possivel passar dinâmicamente o caminho do seu repositorio na montagem do volume, usando `(pwd)`. Exemplo: `docker run --name anaconda_bash -v (pwd):'/home/workspace/notebooks' --network=host --rm -i -t anaconda_base`
