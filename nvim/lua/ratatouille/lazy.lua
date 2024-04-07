local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    vim.fn.system(
        {"git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", "--branch=stable", -- latest stable release
         lazypath})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({{
    import = "ratatouille.plugins"
}})

require("scope").setup({})

local lspconfig = require('lspconfig')
lspconfig.pyright.setup {}
lspconfig.rust_analyzer.setup {}
lspconfig.bashls.setup {}
lspconfig.jsonls.setup {}
lspconfig.sqls.setup {}
lspconfig.docker_compose_language_service.setup {}
lspconfig.dockerls.setup {}
lspconfig.yamlls.setup {}
lspconfig.markdown_oxide.setup {}
lspconfig.bufls.setup {}

-- set keymaps

local function map(mode, lhs, rhs, opts)
    local options = {
        noremap = true,
        silent = true
    }
    if opts then
        options = vim.tbl_extend('force', options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

map('n', '<leader>ee', ':NvimTreeToggle<CR>') -- open/close
map('n', '<leader>er', ':NvimTreeRefresh<CR>') -- refresh
map('n', '<leader>ef', ':NvimTreeFindFileToggle<CR>')
map('n', '<ESC>', '<cmd>noh<CR>')
map('n', '[[<leader>bl]]', ':BufferLinePick<CR>')

-- , {
--     import = "ratatouille.plugins.lsp"
-- }

-- local lspconfig = require 'lspconfig'
-- local configs = require 'lspconfig/configs'

-- if not configs.golangcilsp then
--     configs.golangcilsp = {
--         default_config = {
--             cmd = {'golangci-lint-langserver'},
--             root_dir = lspconfig.util.root_pattern('.git', 'go.mod'),
--             init_options = {
--                 command = {"golangci-lint", "run", "--enable-all", "--disable", "lll", "--out-format", "json",
--                            "--issues-exit-code=1"}
--             }
--         }
--     }
-- end

-- lspconfig.golangci_lint_ls.setup {
--     filetypes = {'go', 'gomod'}
-- }

-- Run gofmt + goimports on save