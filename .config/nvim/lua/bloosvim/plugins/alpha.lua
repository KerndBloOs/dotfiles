return {
	"goolord/alpha-nvim",
	event = "VimEnter", -- load plugin after all configuration is set
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},

	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")

		dashboard.section.header.val = {
			[[                                                                       ]],
			[[                                                                       ]],
			[[                                                                       ]],
			[[                                                                       ]],
			[[                                                                       ]],
			[[                                                                       ]],
			[[                                                                       ]],
			[[                                                                     ]],
			[[       ████ ██████           █████      ██                     ]],
			[[      ███████████             █████                             ]],
			[[      █████████ ███████████████████ ███   ███████████   ]],
			[[     █████████  ███    █████████████ █████ ██████████████   ]],
			[[    █████████ ██████████ █████████ █████ █████ ████ █████   ]],
			[[  ███████████ ███    ███ █████████ █████ █████ ████ █████  ]],
			[[ ██████  █████████████████████ ████ █████ █████ ████ ██████ ]],
			[[                                                                       ]],
			[[                                                                       ]],
			[[                                                                       ]],
		}

		_Gopts = {
			position = "center",
			hl = "Type",
			-- wrap = "overflow";
		}

		-- Set menu
		dashboard.section.buttons.val = {
      dashboard.button("n", "   New File", "<cmd>ene<CR>"),
      dashboard.button("r", "󰄉   Recent files", ":Telescope oldfiles <CR>"),
      dashboard.button("e", "   Toggle file explorer", "<cmd>NvimTreeToggle<CR>"),
      dashboard.button("SPC ff", "󰱼   Find File", "<cmd>Telescope find_files<CR>"),
      dashboard.button("SPC fs", "   Find Word", "<cmd>Telescope live_grep<CR>"),
      dashboard.button("SPC wr", "󰁯   Restore Session For Current Directory", "<cmd>SessionRestore<CR>"),
      dashboard.button("m", "󱌣   Mason", "<cmd>Mason<CR>"),
      dashboard.button("l", "󰒲   Lazy", "<cmd>Lazy<CR>"),
      dashboard.button("u", "󰂖   Update plugins", "<cmd>lua require('lazy').sync()<CR>"),
      --dashboard.button("c", "   Config", "<cmd>NvimTree .config/nvim<CR>"),
      dashboard.button("q", "   Quit NVIM", "<cmd>qa<CR>"),
		}
    --dashboard.section.footer.val = footer()

		dashboard.opts.opts.noautocmd = true
		alpha.setup(dashboard.opts)

		require("alpha").setup(dashboard.opts)

		vim.api.nvim_create_autocmd("User", {
			pattern = "LazyVimStarted",
			callback = function()
				local stats = require("lazy").stats()
				local count = (math.floor(stats.startuptime * 100) / 100)
				dashboard.section.footer.val = {
					"󱐌 " .. stats.count .. " plugins loaded in " .. count .. " ms",
					" ",
					--"      bloos nvim",
				}
				pcall(vim.cmd.AlphaRedraw)
			end,
		})
	end,
}
