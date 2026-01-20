return {
  {
    "sainnhe/gruvbox-material",
    lazy = false,
    priority = 1000,
    config = function()
      vim.g.gruvbox_material_background = "hard"
      vim.g.gruvbox_material_better_performance = 1

      vim.api.nvim_create_autocmd("ColorScheme", {
        pattern = "gruvbox-material",
        callback = function()
          local bg = "#1c1e21"
          local highlights = {
            Normal = { bg = bg },
            NormalNC = { bg = bg },
            SignColumn = { bg = bg },
            NormalFloat = { bg = bg },
            FloatBorder = { bg = bg },
          }

          for group, colors in pairs(highlights) do
            vim.api.nvim_set_hl(0, group, colors)
          end
        end,
      })
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox-material",
    },
  },
}
