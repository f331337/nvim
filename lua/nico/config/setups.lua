-- ts autotag setup
require('nvim-ts-autotag').setup({
  opts = {
    -- Defaults
    enable_close = true,          -- Auto close tags
    enable_rename = true,         -- Auto rename pairs of tags
    enable_close_on_slash = false -- Auto close on trailing </
  },
  -- Also override individual filetype configs, these take priority.
  -- Empty by default, useful if one of the "opts" global settings
  -- doesn't work well in a specific filetype
  per_filetype = {
    ["html"] = {
      enable_close = true
    }
  }
})

-- blackline indent

require("ibl").setup()


require('bookmarks').setup {
  -- sign_priority = 8,  --set bookmark sign priority to cover other sign
  save_file = vim.fn.expand "$HOME/.bookmarks", -- bookmarks save file path
  keywords = {
    ["@t"] = "☑️ ", -- mark annotation startswith @t ,signs this icon as `Todo`
    ["@w"] = "⚠️ ", -- mark annotation startswith @w ,signs this icon as `Warn`
    ["@f"] = "⛏ ", -- mark annotation startswith @f ,signs this icon as `Fix`
    ["@n"] = " ", -- mark annotation startswith @n ,signs this icon as `Note`
  },
  on_attach = function(bufnr)
    local bm = require "bookmarks"
    local map = vim.keymap.set
    map("n", "<leader>mm", bm.bookmark_toggle)    -- add or remove bookmark at current line
    map("n", "<leader>mi", bm.bookmark_ann)       -- add or edit mark annotation at current line
    map("n", "<leader>mc", bm.bookmark_clean)     -- clean all marks in local buffer
    map("n", "<leader>mn", bm.bookmark_next)      -- jump to next mark in local buffer
    map("n", "<leader>mp", bm.bookmark_prev)      -- jump to previous mark in local buffer
    map("n", "<leader>ml", bm.bookmark_list)      -- show marked file list in quickfix window
    map("n", "<leader>mx", bm.bookmark_clear_all) -- removes all bookmarks
  end
}

require('telescope').load_extension('bookmarks')
-- require('telescope').load_extension('lsp_handlers') 

require("catppuccin").setup({
  flavour = "mocha", -- latte, frappe, macchiato, mocha
  background = {     -- :h background
    light = "latte",
    dark = "mocha",
  },
  transparent_background = true, -- disables setting the background color.
  show_end_of_buffer = false,    -- shows the '~' characters after the end of buffers
  term_colors = false,           -- sets terminal colors (e.g. `g:terminal_color_0`)
  dim_inactive = {
    enabled = false,             -- dims the background color of inactive window
    shade = "dark",
    percentage = 0.15,           -- percentage of the shade to apply to the inactive window
  },
  no_italic = false,             -- Force no italic
  no_bold = false,               -- Force no bold
  no_underline = false,          -- Force no underline
  styles = {                     -- Handles the styles of general hi groups (see `:h highlight-args`):
    comments = { "italic" },     -- Change the style of comments
    conditionals = { "italic" },
    loops = {},
    functions = {},
    keywords = {},
    strings = {},
    variables = {},
    numbers = {},
    booleans = {},
    properties = {},
    types = {},
    operators = {},
    -- miscs = {}, -- Uncomment to turn off hard-coded styles
  },
  color_overrides = {},
  custom_highlights = {},
  default_integrations = true,
  integrations = {
    cmp = true,
    gitsigns = true,
    nvimtree = true,
    treesitter = true,
    notify = false,
    mini = {
      enabled = true,
      indentscope_color = "",
    },
    -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
  },
})

-- setup must be called before loading
--
--
-- vim.cmd.colorscheme "catppuccin"
vim.cmd.colorscheme "tokyodark"
