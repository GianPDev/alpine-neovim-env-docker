FROM node:current-alpine

COPY ./neovim_settings.sh /
RUN apk add --no-cache neovim git fzf ripgrep

RUN chmod +x ./neovim_settings.sh && ./neovim_settings.sh && nvim --headless +PlugInstall +qa

#RUN nvim +CocInstall coc-tsserver coc-json coc-css coc-eslint coc-prettier coc-rust-analyzer coc-deno coc-go coc-godot coc-pyright coc-clangd coc-omnisharp coc-yaml coc-elixir coc-julia coc-tabnine +qa

#RUN mkdir -p "$HOME/.config/coc/extensions"
#WORKDIR "$HOME/.config/coc/extensions"

#RUN if [ ! -f package.json ] ; then echo '{"dependencies": {}}' > package.json ; fi && \
RUN mkdir -p "$HOME/.config/coc/extensions" && cd "$HOME/.config/coc/extensions" && echo '{"dependencies": {}}' > package.json && \
  npm install \
  coc-tsserver \ 
  coc-json \ 
  coc-css \ 
  coc-eslint \ 
  coc-prettier \ 
  coc-rust-analyzer \ 
  coc-deno \ 
  coc-go \ 
  coc-godot \ 
  coc-pyright \ 
  coc-clangd \ 
  coc-omnisharp \ 
  coc-yaml \ 
  coc-elixir \ 
  coc-julia \ 
  coc-tabnine \ 
  coc-prisma \
  --global-style --ignore-scripts --no-bin-links --no-package-lock --only=prod

WORKDIR "/workdir"
CMD ["/bin/sh", "-l"]
