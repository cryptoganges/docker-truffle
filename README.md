# docker-truffle
Docker images for truffle solidity development tools

## Supported tags

- 15-alpine-5.1.62
- 15-buster-5.1.62

## Building

To build all tags, run the build-all-tags.sh script.

## Why use this image?

This allows truffle developers to use the truffle solidity build tools and workflow without having to install truffle or its dependencies on the host machine.  This makes it easier to upgrade between Node and truffle versions as well.

## How to use this image

To use this image use the docker run command and map a volume to your project's root directory and specify the directory as the docker working directory.  At the end of the docker run command include the truffle command and arguments you want to use.  

```
docker run -it -v [truffle-project-root]:/code -w /code cryptoganges/truffle:[tag] [truffle-cmd]
```

### Examples

To initialize a new truffle project:

```
docker run -it -v $(pwd)/project-repo:/code -w /code cryptoganges/truffle:15-alpine-5.1.62 truffle init
```

To compile a truffle project:

```
docker run -it -v $(pwd)/project-repo:/code -w /code cryptoganges/truffle:15-alpine-5.1.62 truffle compile --all
```

To run truffle migrations to deploy to mainnet:

```
docker run -it -v $(pwd)/project-repo:/code -w /code cryptoganges/truffle:15-alpine-5.1.62 truffle migrate --network mainnet
```

## Updates

This project will be kept up to date as new versions of Node and Truffle are released.