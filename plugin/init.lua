vim.filetype.add({ extension = { fcp = "fcp" }, filename = { ["fcp"] = "fcp" } })

local parser_config = require("nvim-treesitter.parsers").get_parser_configs()
parser_config.fcp = {
	install_info = {
		url = "https://github.com/joajfreitas/fcp-core",
		files = { "src/parser.c" },
		location = "tree-sitter-fcp",
		generate_requires_npm = false,
		requires_generate_from_grammar = false,
	},
	filetype = "fcp",
}

require("nvim-treesitter.configs").setup({
	highlight = {
		enable = true,
	},
})
