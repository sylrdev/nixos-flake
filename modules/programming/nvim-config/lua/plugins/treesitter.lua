local languages = {
	"nix",
	"lua",
	"luau",
}

require("nvim-treesitter").setup()

vim.api.nvim_create_autocmd("FileType", {
	pattern = languages,
	callback = function()
		vim.treesitter.start()
	end,
})
