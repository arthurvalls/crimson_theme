return {
	"craftzdog/solarized-osaka.nvim",
	lazy = false,
	priority = 1000, -- Load before all other plugins
	opts = {
		-- Set to true if you want your terminal wallpaper/background to show through
		transparent = false,
		terminal_colors = true,
		styles = {
			-- Enhance readability with subtle typography styling
			comments = { italic = true },
			keywords = { italic = true },
			functions = {},
			variables = {},
			-- Give floating windows and sidebars a distinct, darker background
			sidebars = "dark",
			floats = "dark",
		},
		-- Apply darker background to specific sidebar plugins
		sidebars = { "qf", "help", "neo-tree", "nvim-tree", "terminal" },
		day_brightness = 0.3,
		hide_inactive_statusline = false,
		dim_inactive = false,
		lualine_bold = true,

		-- Custom highlight overrides for a seamless UI
		on_highlights = function(hl, c)
			local prompt = "#2d3149"

			-- Create a seamless, borderless UI for Telescope
			hl.TelescopeNormal = { bg = c.bg_dark, fg = c.fg_dark }
			hl.TelescopeBorder = { bg = c.bg_dark, fg = c.bg_dark }
			hl.TelescopePromptNormal = { bg = prompt }
			hl.TelescopePromptBorder = { bg = prompt, fg = prompt }
			hl.TelescopePromptTitle = { bg = prompt, fg = prompt }
			hl.TelescopePreviewTitle = { bg = c.bg_dark, fg = c.bg_dark }
			hl.TelescopeResultsTitle = { bg = c.bg_dark, fg = c.bg_dark }
		end,
	},
	config = function(_, opts)
		require("solarized-osaka").setup(opts)
		vim.cmd.colorscheme("solarized-osaka")
	end,
}
