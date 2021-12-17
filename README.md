![Build](https://github.com/mathisve/aiosre-docker/actions/workflows/build-docker.yaml/badge.svg)
![Publish](https://github.com/mathisve/aiosre-docker/actions/workflows/publish-docker.yaml/badge.svg)

# aiosre-docker
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