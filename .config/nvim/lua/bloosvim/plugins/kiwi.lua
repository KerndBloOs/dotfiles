return {
  "serenevoid/kiwi.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  opts = {
    {
      name = "notes",
      path = "/home/bloosmin/bloosnotes/",
    },
  },
  keys = {
    { "<leader>kw", ':lua require("kiwi").open_wiki_index("notes")<cr>', desc = "Open index of personal wiki" },
  },
  lazy = true,
}
