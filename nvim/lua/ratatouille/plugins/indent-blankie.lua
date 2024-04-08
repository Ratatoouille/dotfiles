return {
    "lukas-reineke/indent-blankline.nvim",
    event = {"BufReadPre", "BufNewFile"},
    main = "ibl",
    opts = {
        indent = {
            char = "|",
            highlight = { "Function", "Label" },
            smart_indent_cap = true,
        },
    }
}
