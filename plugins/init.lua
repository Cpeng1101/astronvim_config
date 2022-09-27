return {
  ["p00f/nvim-ts-rainbow"] = {},
  ["ethanholz/nvim-lastplace"] = {
    event = "BufRead",
    config = function() require("nvim-lastplace").setup(require "user.plugins.nvim-lastplace") end,
  },
  ["michaelb/sniprun"] = {
    event = "BufRead",
    config = function() require("sniprun").setup(require "user.plugins.sniprun") end,
  },
  ["folke/trouble.nvim"] = {
    module = "trouble",
    config = function() require("trouble").setup(require "user.plugins.trouble") end,
  },
  ["rafamadriz/friendly-snippets"] = { event = { nil } },
  ["p00f/clangd_extensions.nvim"] = {
    module = "clangd_extensions",
    config = function() require("clangd_extensions").setup(require "user.plugins.clangd_extensions") end,
  },
  ["hrsh7th/cmp-cmdline"] = {
    event = "BufRead",
  },
  {
    "hrsh7th/cmp-emoji",
    after = "nvim-cmp",
    config = function() astronvim.add_user_cmp_source "emoji" end,
  },
  {
    "mehalter/cmp-pandoc-references",
    after = "nvim-cmp",
    config = function() astronvim.add_user_cmp_source "pandoc_references" end,
  },
  {
    "catppuccin/nvim",
    as = "catppuccin",
    config = function() require("catppuccin").setup {} end,
  },
  ["sainnhe/sonokai"] = {},
  ["mfussenegger/nvim-dap"] = {
    module = "dap",
    config = require "user.plugins.nvim-dap",
  },
  {
    "theHamsta/nvim-dap-virtual-text",
    after = "nvim-dap",
    config = function() require("nvim-dap-virtual-text").setup() end,
  },
  ["rcarriga/nvim-dap-ui"] = {
    after = "nvim-dap",
    config = require "user.plugins.nvim-dapui",
  },
  ["Civitasv/cmake-tools.nvim"] = {
    module = "cmake-tools",
    config = function() require("cmake-tools").setup(require "user.plugins.cmake-tools") end,
  },
  ["simrat39/symbols-outline.nvim"] = {
    event = "BufRead",
    module = "symbols-outline",
    config = function() require("symbols-outline").setup(require "user.plugins.symbols-outline") end,
  },
  ["iamcco/markdown-preview.nvim"] = {
    -- run = "cd app && npm install",
    -- setup = function() vim.g.mkdp_filetypes = { "markdown" } end,
    ft = { "markdown" },
    config = require "user.plugins.markdown-preview",
  },
}
