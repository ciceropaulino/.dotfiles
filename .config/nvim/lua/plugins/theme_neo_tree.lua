return {
  "nvim-neo-tree/neo-tree.nvim",
  config = function()
    vim.api.nvim_set_hl(0, "NeoTreeCursorLine", { bg = "#000000" })
    vim.api.nvim_set_hl(0, "NeoTreeDirectoryName", { fg = "#ABB2BF" })
    vim.api.nvim_set_hl(0, "NeoTreeDirectoryIcon", { fg = "#FF1E23" })
    vim.api.nvim_set_hl(0, "NeoTreeRootName", { fg = "#FF1E23", bold = true })
  end,
}
