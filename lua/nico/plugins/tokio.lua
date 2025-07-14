return {
    "tiagovla/tokyodark.nvim",
    opts = {
        -- custom options here
        transparent_background = true
    },
    config = function(_, opts)
        require("tokyodark").setup(opts) 

    end,
}
