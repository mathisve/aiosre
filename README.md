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
`docker build -t mathisve/aiosre .`

## run:
`docker run -it mathisve/aiosre`

<!-- ## with AWS Credentials

`docker run -it -V ~/.aws:/home/root/.aws mathisve/aiosre` -->

