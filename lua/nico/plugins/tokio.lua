return {
  "tiagovla/tokyodark.nvim",
  opts = {
    -- custom options here
    transparent_background = true,
    gamma = 1.00
  },
  config = function(_, opts)
    require("tokyodark").setup(opts)
  end,
}
