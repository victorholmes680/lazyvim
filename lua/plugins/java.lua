-- Java 配置
return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        jdtls = {},
      },
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      -- Java 语言特定选项
      autocmds = {
        -- 设置 Java 文件缩进为 4 个空格
        java_settings = {
          event = "FileType",
          pattern = "java",
          callback = function()
            vim.opt_local.shiftwidth = 4
            vim.opt_local.tabstop = 4
            vim.opt_local.expandtab = true
            vim.opt_local.softtabstop = 4
          end,
        },
      },
    },
  },
}
