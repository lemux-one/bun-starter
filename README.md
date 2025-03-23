# bun-starter

Opinionated starter boilerplate for Bun projects using VSCode and Docker for a fully local, containerized workspace

## Pre-requisites

1. Docker engine / Docker Desktop installed and running
2. VSCode with Dev Containers extension installed and enabled. [Link to extension](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers)
3. Git installed and properly configured (the dev container will use the credentials manager to forward git commands issued inside the container)
4. (Optional) GitHub CLI

## Getting started

1. Clone into new project

- Using plain git:

```sh
git clone --depth=1 https://github.com/lemux-one/bun-starter.git <new-repo-name>
cd <new-repo-name>
rm -rf .git
git init .
```

- Using GitHub CLI

```sh
gh repo create <new-repo-name> --template="https://github.com/lemux-one/bun-starter.git"
gh repo create <new-repo-name> --template="lemux-one/bun-starter"
```

2. Set proper Git settings to handle CRLF/LF conversion issues from Windows to Unix (this is important since the idea is to work inside a Linux-powered container):

```sh
git config core.autocrlf input
```

3. (Optional, but recommended) Convert all files from CRLF to LF before opening the project inside the container. Failing to do so might (and probably will) cause some initialization scripts to fail:

```sh
find . -type f -print0 | xargs -0 dos2unix -ic0 | xargs -0 dos2unix -b
```

4. Rename project (excluding README.md file if keeping original doc). Suggested methods to accomplish it:

- Search and replace "bun-starter" with `<new-repo-name>` using VSCode's Search & Replace features.

5. (Optional, but recommended) Copy `.devcontainer/.env.example` to `.devcontainer/.env` and edit it accordingly

6. Tweak `.devcontainer/devcontainer.json` to fit specific use case if defaults make no sense

7. Reopen in container [Dev Containers: Reopen in Container] VSCode command

8. Run `bun dev` in a console

9. Edit/Code at will ...
