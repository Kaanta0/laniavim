local autoclose = require("plugins.autoclose")
local barbecue = require("plugins.barbecue")
local crates = require("plugins.crates")
local diffview = require("plugins.diffview")
local distant = require("plugins.distant")
local everblush = require("plugins.everblush")
local git_blame = require("plugins.git_blame")
local gitsigns = require("plugins.gitsigns")
local gruvbox = require("plugins.gruvbox")
local halcyon = require("plugins.halcyon")
local hop = require("plugins.hop")
local indent_blankline = require("plugins.indent_blankline")
local kanagawa = require("plugins.kanagawa")
local markdown_preview = require("plugins.markdown_preview")
local mason_lspconfig = require("plugins.mason_lspconfig")
local mini = require("plugins.mini")
local neotree = require("plugins.neotree")
local nvim_cmp = require("plugins.nvim_cmp")
local nvim_cokeline = require("plugins.nvim_cokeline")
local nvim_dap = require("plugins.nvim_dap")
local nvim_highlight_colors = require("plugins.nvim_highlight_colors")
-- local pretty_fold = require("plugins.pretty_fold")
local pywal = require("plugins.pywal")
local symbols_outline = require("plugins.symbols_outline")
local remote_sshfs = require("plugins.sshfs")
local telescope = require("plugins.telescope")
local toggleterm = require("plugins.toggleterm")
local tokyonight = require("plugins.tokyonight")
local treesitter = require("plugins.treesitter")
local trouble = require("plugins.trouble")
local cyberdream = require("plugins.cyberdream")
local plugins = require("lazy").setup
plugins {
  autoclose,
  barbecue,
  crates,
  diffview,
  distant,
  everblush,
  git_blame,
  gitsigns,
  gruvbox,
  halcyon,
  hop,
  indent_blankline,
  kanagawa,
  markdown_preview,
  mason_lspconfig,
  mini,
  neotree,
  nvim_cmp,
  nvim_cokeline,
  nvim_dap,
  nvim_highlight_colors,
--  pretty_fold,
  pywal,
  symbols_outline,
  remote_sshfs,
  telescope,
  toggleterm,
  tokyonight,
  treesitter,
  trouble,
  cyberdream,
}
vim.cmd("colorscheme cyberdream")
