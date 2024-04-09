return {
	"akinsho/bufferline.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons", "tiagovla/scope.nvim" },
	version = "*",
	-- tag = "v4.*",
	opts = {
		options = {
			mode = 'buffers',
			diagnostics = 'nvim_lsp',
			offsets = { {
				filetype = "NvimTree",
				text = "Files",
				highlight = "Directory",
				separator = true
			} }
		}
	}
}
