return {
  "nvim-telescope/telescope.nvim",
  keys = {
    -- disable the keymap to grep files
    { "<leader>/",  false },
    -- change a keymap
    { "<leader>tf", "<cmd>Telescope find_files<cr>", desc = "Find Files" },
    { "<leader>tg", "<cmd>Telescope live_grep<cr>", desc = "Find Word" },
    { "<leader>tg", "<cmd>Telescope live_grep<cr>", desc = "Find Word" },
    { "<leader>ts", "<cmd>Telescope grep_string<cr>", desc = "Find word (buffer)" },
    {
      "<leader>tp",
      function() require("telescope.builtin").find_files({ cwd = require("lazy.core.config").options.root }) end,
      desc = "Find Plugin File",
    },
  },
}
