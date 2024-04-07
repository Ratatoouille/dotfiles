return {
    "akinsho/bufferline.nvim",
    dependencies = {"nvim-tree/nvim-web-devicons", "tiagovla/scope.nvim"},
    version = "*",
    opts = {
        options = {
            mode = 'buffers',
            -- diagnostics = 'coc',
            offsets = {{
                filetype = "NvimTree",
                text = "File Explorer",
                highlight = "Directory",
                separator = true
            }}
        }
    }
}
