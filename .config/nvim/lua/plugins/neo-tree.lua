return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
  opts = {
    filesystem = {
      filtered_items = {
        --visible = true,
        show_hidden_count = true,
        },
      },
    },
	config = function()
		vim.keymap.set("n", "<C-n>", ":Neotree filesystem reveal left<CR>", {})
		vim.keymap.set("n", "<leader>nb", ":Neotree buffers reveal float<CR>", {})
	end
}
