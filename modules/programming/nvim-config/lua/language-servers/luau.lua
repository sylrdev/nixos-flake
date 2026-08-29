vim.lsp.config("luau-lsp", {
	settings = {
		["luau-lsp"] = {
			completion = {
				autocompleteEnd = true,
				imports = {
					separateGroupsWithLine = true,
					stringRequires = {
						enabled = true,
					},
					useConst = false,
				},
				showDeprecatedItems = false,
				addParentheses = false,
				fillCallArguments = false,
			},
			hover = {
				multilineFunctionDefinitions = true,
				showTableKinds = true,
			},
			inlayHints = {
				functionReturnTypes = true,
				parameterTypes = true,
      		},
		},
	},
})

local function getProjectType()
	local rojoProject = vim.fs.root(0, function(name)
		return name:match ".+%.project%.json$"
	end)

	if rojoProject == true then
		return "roblox"
	else
		return "standard"
	end
end

require("luau-lsp").setup {
	platform = {
		type = getProjectType(),
	},
	fflags = {
		enable_new_solver = true,
	},
	plugin = {
		enabled = false,
	},
}
