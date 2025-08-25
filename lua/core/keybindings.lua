-- Modern keymapping helpers using `vim.keymap.set`
-- This replaces the previous custom wrapper and ensures all mappings
-- are non-recursive and silent by default.

local function map(mode, lhs, rhs, opts)
  opts = vim.tbl_deep_extend("force", { noremap = true, silent = true }, opts or {})
  vim.keymap.set(mode, lhs, rhs, opts)
end

-- [LAZY]
map("n", "<Leader>ls", ":Lazy sync<CR>")

-- [UI]
map("n", "<Leader>un", ":NeoTreeFocusToggle<CR>")
map("n", "<Leader>us", ":SymbolsOutline<CR>")

-- [SPLIT]
map("n", "<Leader>sv", ":vertical split<CR>")
map("n", "<Leader>sh", ":horizontal split<CR>")

-- [HOP]
map("n", "<Leader>hp", ":HopPattern<CR>")
map("n", "<Leader>hw", ":HopWord<CR>")

-- [GIT]
map("n", "<Leader>gv", ":DiffviewOpen<CR>")

-- [DIAGNOSTIC]
map("n", "<Leader>dt", ":TroubleToggle<CR>")

-- [TELESCOPE]
map("n", "<Leader>tc", ":Telescope colorscheme<CR>")
map("n", "<Leader>tb", ":Telescope buffers<CR>")
map("n", "<Leader>tf", ":Telescope find_files<CR>")

-- [TERMINAL]
map("n", "<Leader>ut", ":ToggleTerm<CR>")

