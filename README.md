[![build](https://github.com/mathisve/aiosre/actions/workflows/build-docker.yaml/badge.svg)](https://github.com/mathisve/aiosre/actions/workflows/build-docker.yaml)
[![publish docker-hub](https://github.com/mathisve/aiosre/actions/workflows/publish-docker-hub.yaml/badge.svg)](https://github.com/mathisve/aiosre/actions/workflows/publish-docker-hub.yaml)
[![publish ghcr](https://github.com/mathisve/aiosre/actions/workflows/publish-ghcr.yaml/badge.svg)](https://github.com/mathisve/aiosre/actions/workflows/publish-ghcr.yaml)

# aiosre
## All In One SRE Docker Container.
Now for **amd64** and **arm64**!

For all my SRE needs, neatly packaged in a Docker container.
### Comes with:
- aws-cli
- terraform
- kubectl
- make
- git
- ...

## build:
```bash
docker build -t aiosre .
```

## run:
```bash
docker run -it mathisve/aiosre
```
or
```bash
docker run -it ghcr.io/mathisve/aiosre
```

## with AWS Credentials

```bash
docker run -it \
    -v "$HOME"/.aws:/root/.aws \
    mathisve/aiosre
```

## with kubeconfig
```bash
docker run -it \
    -v "$HOME"/.kube:/root/.kube \
    mathisve/aiosre
```

## with AWS Credentials and kubeconfig
```bash
docker run -it \
    -v "$HOME"/.aws:/root/.aws \
    -v "$HOME"/.kube:/root/.kube \
    mathisve/aiosre
```