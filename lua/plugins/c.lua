-- C/C++ language configuration
return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      clangd = {},
    },
    setup = {
      clangd = function(_, opts)
        -- Set 4-space indentation for C/C++ files
        vim.api.nvim_create_autocmd("FileType", {
          pattern = { "c", "cpp", "h", "hpp" },
          callback = function()
            vim.opt_local.shiftwidth = 4
            vim.opt_local.tabstop = 4
            vim.opt_local.expandtab = true
            vim.opt_local.softtabstop = 4
          end,
        })
      end,
    },
  },
}
