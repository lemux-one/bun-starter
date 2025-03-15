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

2. Open folder with VSCode

3. Search and replace "bun-starter" with `<new-repo-name>`

4. Copy `.devcontainer/example.env` to `.devcontainer/.env` and edit it accordingly

5. Tweak `.devcontainer/devcontainer.json` to fit specific use case if defaults make no sense

6. Reopen in container [Dev Containers: Reopen in Container] VSCode command

7. Run `bun dev` in a console

8. Edit/Code at will ...
