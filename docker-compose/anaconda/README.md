# anaconda

O objetivo deste Dockerfile é disponibilizar uma imagem com algumas pré-configurações e ou bibliotecas já instaladas

## Bibliotecas

* plotly
* psycopg2

## Instruções para montar a imagem e executar de dentro de um repositorio

1. Criar a imagem:

```sh
docker build . -t nome_imagem:tag
```

2. Executar um comando do container:

```sh
docker run --name anaconda_bash -v '/path/to/you/want':'/home/workspace/notebooks' --network=host --rm -i -t nome_imagem
```

## Considerações importantes

* Senão for passado nenhuma instrução para o comando `docker exec`, ele vai executar o comando final do Dockerfile, que irá subir o servidor local do jupyter notebook na porta 8888, acessivel via localhost
* Se estiver usando um shell como fish, é possivel passar dinâmicamente o caminho do seu repositorio na montagem do volume, usando `(pwd)`. Exemplo: `docker run --name anaconda_bash -v (pwd):'/home/workspace/notebooks' --network=host --rm -i -t anaconda_base`
