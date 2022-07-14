### My neovim editor in a docker container

now on dockerhub!

Windows Powershell
```powershell
docker run -it --rm -v //d/dev/folder:/workdir gianpdev/alpine-neovim-env-docker
````

Linux Terminal
```bash
docker run -it --rm -v ~/dev/folder:/workdir gianpdev/alpine-neovim-env-docker
```


build dockerfile (requires docker installed)
```bash
docker build -t alpine_neovim .
```
Using on windows: 
```powershell
docker run -it --rm -v //d/dev/folder:/workdir alpine_neovim
```

Using on bash:
```bash
docker run -it --rm -v ~/dev/folder:/workdir alpine_neovim
```
