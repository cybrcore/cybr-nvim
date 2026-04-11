<img src="https://raw.githubusercontent.com/cybrcore/cybrcore/refs/heads/main/assets/repo-banners/cybr-rofi-banner-top.png"/>

# Showcase
<img src="https://raw.githubusercontent.com/cybrcore/cybrcore/refs/heads/main/assets/showcase/cybr-nvim.png"/>
<p align="center">
  <em>neovim ↗ (left: lazyvim dashboard; right: sample rust code)</em>
</p>
<img src="https://raw.githubusercontent.com/cybrcore/cybrcore/refs/heads/main/assets/showcase/cybr-nvim-all.png"/>
<p align="center">
  <em>neovim ↗ (top row, left-to-right: rust code, python code, css code; bottom row, l-t-r: bash code, C++ code, typescript code)</em>
</p>

> [!CAUTION]
> Theme is **work in progress**. Major refactor is in pipeline. Use at your own risk.  
>  
> This installaction will **merge** files into your existing Neovim config. Backup first!  
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
- Make sure kitty is installed: `sudo pacman -S kitty` and [cybrcore theme](https://github.com/cybrcore/cybr-kitty) is applied
- Make sure either 1) neovim is installed: `sudo pacman -S nvim`, or 2) lazyvim is installed: `git clone https://github.com/LazyVim/starter ~/.config/nvim`
- See [Installation Guide](https://github.com/cybrcore/cybrdots/blob/main/INSTALL.md) if you're coming from [cybrdots](https://github.com/cybrcore/cybrdots) and haven't set up prerequisites yet
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
