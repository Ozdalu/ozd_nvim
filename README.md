# Ozdalu Neovim Config

Ok so I decided to start using nvim because I've heard that it could make me more efficient in my work. We'll see how it will work out for me !

Inspired(/bootstraped) by @ThePrimeAgent video [0 to LSP : Neovim RC From Scratch](https://www.youtube.com/watch?v=w7i4amO\_zaE)

## Prerequisite

- [neovim](https://github.com/neovim/neovim)
- [ripgrep](https://github.com/BurntSushi/ripgrep)
- A [nerdfont](https://www.nerdfonts.com/font-downloads), I personnaly use [Hack Nerd Font](https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/Hack.zip).

<br>

## Installed plug-ins

(list of plugins in lua/ozdalu/lazy.lua) :
- [Lazy](https://github.com/folke/lazy.nvim)
- [Cmp-Nvim-LSP](https://github.com/hrsh7th/cmp-nvim-lsp), [Nvim-Cmp](https://github.com/hrsh7th/nvim-cmp)
- [Mason](https://github.com/mason-org/mason.nvim), [Mason-lspconfig](https://github.com/mason-org/mason-lspconfig.nvim), [Mason-tool-installer](https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim)
- [Telescope](https://github.com/nvim-telescope/telescope.nvim)
- [Harpoon](https://github.com/ThePrimeagen/harpoon/tree/harpoon2)
- [Treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [GitSigns](https://github.com/lewis6991/gitsigns.nvim)
- [Nvim Tree](https://github.com/nvim-tree/nvim-tree.lua) (+ [web dev icons](https://github.com/nvim-tree/nvim-web-devicons))
- [Floating Terminal](https://github.com/numToStr/FTerm.nvim)
- [CCC](https://github.com/uga-rosa/ccc.nvim) (to highlight colors, such as #b47eff)
- [LUA Line](https://github.com/nvim-lualine/lualine.nvim)
- [LSP Lines](https://git.sr.ht/~whynothugo/lsp_lines.nvim)

<br>

## Custom remaps

Function | Remap | Mode | Comment
---------|:------|:-----|:-------|
Leader key | `<Spacebar>` |   |   |
Fusy find file | `<Space>ff`| Normal | **f**ind **f**ile
Fusy Grep | `<Space>ps`| Normal | gre**p** **s**earch
Grep word | `<Space>pu`| Normal | gre**p** **u**nder cursor
Find references | `<Space>fr`| Normal | **f**ind **r**eferences
Find definition | `<Space>fd` | Normal | **f**ind **d**efinition
Find definition | `<Space>fD` | Normal | **f**ind **D**eclaration (less implemented than definition)
Rename references | `<Space>pr`| Normal | **p**roject **r**ename
PageUp | `<Ctrl-k>` | Normal<br>Visual | **k** is the default keybind to navigate up
PageDown | `<Ctrl-j>` | Normal<br>Visual | **j** is the default keybind to navigate down
Go to beginning of line | `<Ctrl-h>` | Normal<br>Visual | **h** is the default keybind to navigate left
Go to end of line | `<Ctrl-l>` | Normal<br>Visual | **l** is the default keybind to navigate right
Clear search highlight | `<Space>l` | Normal | \<Ctrl-**l**\> is the default keybind to clear search highlight, but it is now used to go to the end of the line
Delete word under cursor | `<Ctrl-w>` | Normal | Ctrl-**w**ord
Copy word under cursor | `<Ctrl-y>` | Normal | Ctrl-**y**ank
Open file from window to NvimTree | `<Space>fo`| Normal | **fo**cus
Toggle NvimTree | `<Ctrl-b>` | Normal | VisualSCode/VSCodium shortcut
Git Blame | `<Space>pb`| Normal | **p**roject **b**lame
Git Line Blame | `<Space>pB`| Normal | **p**roject (line) **B**lame
Git Word diff | `<Space>pd`| Normal | **p**roject (word) **d**iff
Git Diff file | `<Space>pD`| Normal | **p**roject **D**iff file
Git Diff file | `<Space>pS`| Normal | **p**roject Tree**S**itter
Display errors and warnings in place | `<Space>pe` | Normal | **p**roject **e**rrors
Go to next error | `<Space>ge` | Normal | **g**oto **e**rror
Go to previous error | `<Space>gE` | Normal | **g**oto **E**rror
Open/Close the floating terminal | `<Alt-ù>` | Normal<br>Terminal |  |
CD in NvimTree | `<Ctrl-)>` | Normal | Better suited for AZERTY keyboard (original was `<Ctrl-]>`) |
Show #C0L0R with its background as color (toggle) | `<Space>hc` | Normal | **h**ighlight **c**olors
Add to Harpoon | `<Space>ha` | Normal | **h**arpoon **a**dd
List Harpooned files | `<Space>hh` | Normal | **h**arpoon **h**arpoon
Show Harpooned 1 | `<Space>hy` | Normal | **h**arpoon **y**uio
Show Harpooned 2 | `<Space>hu` | Normal | **h**arpoon y**u**io
Show Harpooned 3 | `<Space>hi` | Normal | **h**arpoon yu**i**o
Show Harpooned 4 | `<Space>ho` | Normal | **h**arpoon yui**o**
Show Harpooned 5 | `<Space>hj` | Normal | **h**arpoon **j**kl (row order)
Show Harpooned 6 | `<Space>hk` | Normal | **h**arpoon j**k**l (row order)
Show Harpooned 7 | `<Space>hl` | Normal | **h**arpoon jk**l** (row order)
Go to next ([{}]) | `&` | Normal<br>Visual | Feels better + symmetrical to `=` to indent
Go to mark | `²` | Normal | Better suited for AZERTY keyboard
Move the selected text one line up (and vertically center it) | `<Alt-k>` | Visual | **k** is the default keybind to navigate up
Move the selected text one line down (and vertically center it) | `<Alt-j>` | Visual | **j** is the default keybind to navigate up
Replace selected text without losing buffer | `<Space>p` | Visual | **p** is the default keybind to **p**aste
Copy (selection if visual mode) to system clipboard | `<Space>y` | Normal<br>Visual | **y** is the default keybind to **y**ank
Put double quotes around selection | `<Space>a"` | Visual | **a**dd **"**
Put single quotes around selection | `<Space>a'` | Visual | **a**dd **'**
Put back quotes around selection | `<Space>a\`` | Visual | **a**dd **`**
