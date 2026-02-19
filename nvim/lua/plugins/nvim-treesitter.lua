return {
  "nvim-treesitter/nvim-treesitter",
  lazy = false,
  build = ":TSUpdate",
  config = function()
	local configs = require("nvim-treesitter.config")

	configs.setup({
		ensure_installed = {
			  "c", "lua", "vim", "vimdoc", "query", "elixr", "heex", "javascript", "html" 
	        },
		auto_install = true,
		sync_install = false,
		highlight = {enable = true},
		indent = {enable = true},
  	})
	end
}
