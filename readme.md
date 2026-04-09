```
░▒▓███████▓▒░░▒▓████████▓▒░▒▓██████▓▒░░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░▒▓██████████████▓▒░  
░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░     ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░ 
░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░     ░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░ 
░▒▓█▓▒░░▒▓█▓▒░▒▓██████▓▒░░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░ 
░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░     ░▒▓█▓▒░░▒▓█▓▒░ ░▒▓█▓▓█▓▒░ ░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░ 
░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░     ░▒▓█▓▒░░▒▓█▓▒░ ░▒▓█▓▓█▓▒░ ░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░ 
░▒▓█▓▒░░▒▓█▓▒░▒▓████████▓▒░▒▓██████▓▒░   ░▒▓██▓▒░  ░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░ 
```

<img src="../assets/inspiration/insp-nvim.png"/></td>
<p align="center">
  <em>neovim ↗ (left: lazyvim dashboard; right top: recent files; right bottom: file)</em>
</p>

> [!WARNING]
> **Alpha version** - Non-standard structure. Proper lazy.nvim plugin coming in v1.5.  
>  
> This will **merge** files into your existing Neovim config. Backup first!  
> `cp -r ~/.config/nvim ~/.config/nvim.backup`

# Steps
## 0. Before you start
- Make sure [Geist Mono Nerd Font](https://www.nerdfonts.com/font-downloads) is installed, you can do that from terminal with:
```bash
curl -L https://github.com/ryanoasis/nerd-fonts/releases/latest/download/GeistMono.zip -o GeistMono.zip
mkdir -p ~/.local/share/fonts
unzip GeistMono.zip -d ~/.local/share/fonts/GeistMono
fc-cache -fv
```
- Make sure either 1) neovim is installed: `sudo pacman -S nvim`, or 2) lazyvim is installed: `git clone https://github.com/LazyVim/starter ~/.config/nvim`
- See [Installation Guide](../INSTALL.md) if you haven't set up prerequisites yet
- [Nvim Github](https://github.com/neovim/neovim) | [Nvim Arch Wiki](https://wiki.archlinux.org/title/Neovim)
- [Lazyvim Github](https://github.com/LazyVim/LazyVim)

## 1. Instalation
### Automated
```sh
git clone --depth=1 --filter=blob:none --no-checkout https://github.com/cybrcore/cybr-nvim.git && cd cd cybr-nvim && git sparse-checkout init --cone && git sparse-checkout set nvim && git checkout main && mv nvim ~/.config/ && cd ~ && rm -rf cd cybr-nvim
```
↑ Unsure what this does? [Explanation](https://github.com/cybrcore/cybrdots/blob/main/INSTALL.md#How-sparse-checkout-works)  

### Expected file structure
```
~/.config/nvim/
├── colors/
│   └── cybrcore.lua
├── lua/
│    ├── cybrcore/
│    │    ├── groups.lua
│    │    ├── init.lua
│    │    └── palette.lua
│    ├── plugins/
│    │    ├── cybrcore.lua
│    │    └── dashboard.lua
│    └── ...
```

## 2. Apply theme
```sh
nvim
:colorscheme cybrcore
```
