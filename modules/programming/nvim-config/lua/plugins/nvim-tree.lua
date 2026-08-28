require("plugins.nvim-web-devicons")

require("nvim-tree").setup {
	view = {
		width = 45,
	},
	filters = {
		git_ignored = false,
		dotfiles = false,
	},
}

vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { silent = true })
vim.keymap.set("n", "<leader>F", ":NvimTreeFindFile<CR>", { silent = true })
