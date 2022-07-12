### My neovim editor in a docker container

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
