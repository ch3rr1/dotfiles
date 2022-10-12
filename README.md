# Dotfiles

> Note: New version of my dotfiles repo - still working on it.

## Includes

* Full lua neovim config
* tmux configuration
* zsh aliases
* i3 window manager config
* lsd config
* termite config
* polybar config

## Notes

### Neovim

* Use [packer.nvim](https://github.com/wbthomason/packer.nvim) to manage plugins

**Language servers**

* ESLint: `npm i -g vscode-langservers-extracted`
* Flow: [flow](https://flow.org/en/docs/install/)
* Go: `go install golang.org/x/tools/gopls@latest`
* Lua: [lua-language-server](https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#sumneko_lua)
* Python: [jedi-language-server](https://github.com/pappasam/jedi-language-server)
* Rust: [rust-analyzer](https://rust-analyzer.github.io/manual.html)
* TypeScript: `npm install -g typescript typescript-language-server`
