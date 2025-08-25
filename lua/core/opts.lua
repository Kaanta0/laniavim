local vim = vim
local opt = vim.opt
local cmd = vim.cmd
--| GLOBAL STATUS |--
opt.laststatus = 3
opt.fillchars:append({
    horiz = '━',
    horizup = '┻',
    horizdown = '┳',
    vert = '┃',
    vertleft = '┨',
    vertright = '┣',
    verthoriz = '╋',
})

--| FOLDING |--
cmd 'set foldexpr=nvim_treesitter#foldexpr()'
opt.foldenable = false
opt.foldmethod = 'expr'
opt.foldminlines = 99
--| NUMBERS |--
opt.number = true
opt.relativenumber = true
opt.signcolumn = 'yes'
--| CMD |--
opt.cmdheight = 0
opt.showcmd = false
--| COLORS |--
opt.background = "dark"
opt.termguicolors = true
--| MOUSE |--
opt.mousemodel = 'extend'
--| CURSOR |--
cmd 'au VimLeave * set guicursor=a:ver100'
opt.cursorline = true
opt.cursorlineopt = 'number'
opt.scrollopt = 'ver,hor,jump'
opt.virtualedit = 'block'
--| CASE |--
opt.ignorecase = true
opt.infercase = true
opt.smartcase = true
opt.wildignorecase = true
-- use rg in vim grep
if vim.fn.executable('rg') == 1 then
  opt.grepformat = '%f:%l:%c:%m,%f:%l:%m'
  opt.grepprg = 'rg --vimgrep --no-heading --smart-case'
end
--| COMPLETION |--
opt.completeopt = {'menuone', 'noselect', 'noinsert'}
opt.shortmess = vim.opt.shortmess + { c = true}
vim.api.nvim_set_option('updatetime', 300)
--| TAB |--
opt.autoindent = true
opt.expandtab = true
opt.shiftwidth = 2
opt.smarttab = true
opt.tabstop = 2
--| UI |--
-- opt.colorcolumn = '113'
opt.linebreak = true
opt.ruler = false
opt.showbreak = '↳  '
opt.showmode = false
opt.showtabline = 0
opt.textwidth = 112
opt.whichwrap = 'h,l,<,>,[,],~'
--| OTHERS |--
opt.hidden = true
opt.magic = true
opt.syntax = 'enable'
opt.undofile = true
--| KEYBIND FONDATION |--
vim.g.mapleader = ' '
