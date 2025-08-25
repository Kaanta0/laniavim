local KEYS = {}

function KEYS.map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

--[ LAZY ]--
KEYS.map("n", "<Leader>ls", ":Lazy sync<CR>", { silent = true })

--[ UI ]--
KEYS.map("n", "<Leader>un", ":NeoTreeFocusToggle<CR>", { silent = true })
KEYS.map("n", "<Leader>us", ":SymbolsOutline<CR>", { silent = true })

--[ SPLIT ]--
KEYS.map("n", "<Leader>sv", ":vertical split<CR>", { silent = true })
KEYS.map("n", "<Leader>sh", ":horizontal split<CR>", { silent = true })

--[ HOP ]--
KEYS.map("n", "<Leader>hp", ":HopPattern<CR>", { silent = true })
KEYS.map("n", "<Leader>hw", ":HopWord<CR>", { silent = true })

--[ GIT ]--
KEYS.map("n", "<Leader>gv", ":DiffviewOpen<CR>", { silent = true })

--[ DIAGNOSTIC ]--
KEYS.map("n", "<Leader>dt", ":TroubleToggle<CR>", { silent = true })

--[ TELESCOPE ]--
KEYS.map("n", "<Leader>tc", ":Telescope colorscheme<CR>", {silent = true})
KEYS.map("n", "<Leader>tb", ":Telescope buffers<CR>", {silent = true})
KEYS.map("n", "<Leader>tf", ":Telescope find_files<CR>", {silent = true})


KEYS.map("n", "<Leader>ut", ":ToggleTerm<CR>", {silent = true})

return KEYS
