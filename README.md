## Dorol Chain

### Build docker image

```shell
docker build -t dorol-chain .
```

### Run container and build package

```shell
docker run --rm -v $(pwd):/app/dist dorol-chain
```