return { -- Lazy
  {
    "olimorris/onedarkpro.nvim",
    priority = 1000,
    config = function()
      require("onedarkpro").setup({
        colors = {
          red = "#ff1E23",
          orange = "#ff9933",
          yellow = "#ffeb3b",
          green = "#4caf50",
          cyan = "#26c6da",
          blue = "#42a5f5",
          purple = "#ab47bc",
          highlight = "#ffd54f",
        },
      })
    end,
  },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "onedark_dark",
      transparent = true,
    },
  },
}
