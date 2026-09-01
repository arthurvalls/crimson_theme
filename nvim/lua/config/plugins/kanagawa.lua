return {
	"rebelot/kanagawa.nvim",
	-- Ensure it loads first so your UI doesn't flash unstyled text
	lazy = false,
	priority = 1000,
	config = function()
		-- Optional: You can customize the theme here before loading it
		require("kanagawa").setup({
			compile = false, -- enable compiling the colorscheme
			undercurl = true, -- enable undercurls
			commentStyle = { italic = true },
			keywordStyle = { italic = true },
			statementStyle = { bold = true },
			transparent = false, -- set to true if you want a transparent background
			dimInactive = false, -- dim inactive windows
			terminalColors = true, -- define vim.g.terminal_color_{0,17}

			-- Kanagawa has three included themes: "wave", "dragon", and "lotus"
			theme = "wave",
			background = {
				dark = "wave", -- try "dragon" for a slightly darker/flatter look!
				light = "lotus",
			},
		})

		-- Tell Neovim to use the colorscheme
		vim.cmd("colorscheme kanagawa")
	end,
}
