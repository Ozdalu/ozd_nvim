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
- Harpoon
- Treesitter (+ playground)
- GitSigns
- Nvim Tree
- Floating Terminal
- CCC (to highlight colors, such as #c8102e)
- LSP Zero
- LUA Line
- LSP Lines

<br>

## Custom remaps

Function | Remap | Mode | Comment
---------|:------|:-----|:-------|
Leader key | `<Spacebar>` |   |   |
Fusy find file | `<Space>ff`| Normal | **f**ind **f**ile
Fusy Grep | `<Space>ps`| Normal | gre**p** **s**search
PageUp | `<Ctrl-k>` | Normal | **k** is the default keybind to navigate up
PageDown | `<Ctrl-j>` | Normal | **j** is the default keybind to navigate down
Go to beginning of line | `<Ctrl-h>` | Normal<br>Visual | **h** is the default keybind to navigate left
Go to end of line | `<Ctrl-l>` | Normal<br>Visual | **l** is the default keybind to navigate right
Clear search highlight | `<Space>l` | Normal | \<Ctrl-**l**\> is the default keybind to clear search highlight, but it is now used to go to the end of the line
Open file from window to NvimTree | `<Space>fo`| Normal | **fo**cus
Toggle NvimTree | `<Ctrl-b>` | Normal | VisualSCode/VSCodium shortcut
Git Blame | `<Space>pb`| Normal | **p**roject **b**lame
Display errors and warnings in place | `<Space>pe` | Normal | **p**roject **e**rrors
Open/Close the floating terminal | `<Alt-ù>` | Normal<br>Terminal |  |
Show #C0L0R with its background as color (toggle) | `<Space>hc` | Normal | **h**ighlight **c**olors
Add to Harpoon | `<Space>ha` | Normal | **h**arpoon **a**dd
List Harpooned files | `<Space>hh` | Normal | **h**arpoon **h**arpoon
Show Harpooned 1 | `<Space>hy` | Normal | **h**arpoon **y**uio
Show Harpooned 2 | `<Space>hu` | Normal | **h**arpoon y**u**io
Show Harpooned 3 | `<Space>hi` | Normal | **h**arpoon yu**i**o
Show Harpooned 4 | `<Space>ho` | Normal | **h**arpoon yui**o**
Go to next ([{}]) | `&` | Normal<br>Visual | Feels better + symmetrical to `=` to indent
Move the selected text one line up (and vertically center it) | `<Alt-k>` | Visual | **k** is the default keybind to navigate up
Move the selected text one line down (and vertically center it) | `<Alt-j>` | Visual | **j** is the default keybind to navigate up
Replace selected text without losing buffer | `<Space>p` | Visual | **p** is the default keybind to **p**aste
Copy (selection if visual mode) to system clipboard | `<Space>y` | Normal<br>Visual | **y** is the default keybind to **y**ank
