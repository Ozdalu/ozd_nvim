# Ormazd Neovim Config

Ok so I decided to start using nvim because I've heard that it could make me more efficient in my work. We'll see how it will work out for me !

Inspired(/bootstraped) by @ThePrimeAgent video [0 to LSP : Neovim RC From Scratch](https://www.youtube.com/watch?v=w7i4amO\_zaE)

## Prerequisite

- [neovim](https://github.com/neovim/neovim)
- [packer](https://github.com/wbthomason/packer.nvim)
- [ripgrep](https://github.com/BurntSushi/ripgrep)
- A [nerdfont](https://www.nerdfonts.com/font-downloads), I personnaly use [Hack Nerd Font](https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/Hack.zip).

<br>

## Installed plug-ins

(list of plugins in lua/ormaazd/packer) :
- Packer
- Dracula Theme (not used)
- Mason
- Mason Lsp Config
- Telescope
- Treesitter
- Nvim Tree
- CCC (to highlight colors, such as #c8102e)
- LSP Zero
- LUA Line

<br>

## Custom remaps

Function | Remap | Comment
---------|:------|:-------|
Leader key | `<Spacebar>` |   |
Open file from window to NvimTree | `<Space>fo` | (**fo**cus)
Show #C0L0R with its background as color (toggle) | `<Space>hc` | (**h**ighlight **c**olors)
Add to Harpoon | `<Space>ha` | (**h**arpoon **a**dd)
List Harpooned files | `<Space>hh` | (**h**arpoon **h**arpoon)
Show Harpooned 1 | `<Space>hy` | (**h**arpoon **y**uio)
Show Harpooned 2 | `<Space>hu` | (**h**arpoon y**u**io)
Show Harpooned 3 | `<Space>hi` | (**h**arpoon yu**i**o)
Show Harpooned 4 | `<Space>ho` | (**h**arpoon yui**o**)
Toggle NvimTree | `<Ctrl-b>` | (VSCode/VSCodium shortcut)
PageUp | `<Ctrl-k>` | (uses **k** because it's the default keybind to navigate up)
PageDown | `<Ctrl-j>` | (uses **j** because it's the default keybind to navigate down)
Open/Close the floating terminal | `<Alt-ù>` |  |
