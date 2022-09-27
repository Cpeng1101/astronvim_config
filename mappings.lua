return {
  -- Mapping data with "desc" stored directly by vim.keymap.set().
  --
  -- Please use this mappings table to set keyboard mapping since this is the
  -- lower level configuration and more robust one. (which-key will
  -- automatically pick-up stored data by this setting.)
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>bb"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bc"] = { "<cmd>BufferLinePickClose<cr>", desc = "Pick to close" },
    ["<leader>bj"] = { "<cmd>BufferLinePick<cr>", desc = "Pick to jump" },
    ["<leader>bt"] = { "<cmd>BufferLineSortByTabs<cr>", desc = "Sort by tabs" },
    ["<leader>db"] = {
      "<cmd>lua require'dap'.toggle_breakpoint()<cr>",
    },
    ["<leader>xu"] = {
      function() require("dapui").toggle() end,
      desc = "Toggle Debugger UI",
    },
    ["<leader>xb"] = {
      function() require("dap").set_breakpoint(vim.fn.input "Breakpoints condition: ") end,
      desc = "Breakpoint with condition",
    },
    ["<leader>xr"] = {
      function() require("dap").continue() end,
      desc = "Continue",
    },
    ["<leader>xc"] = {
      function() require("dap").clear_breakpoints() end,
      desc = "Clear Breakpoints",
    },
    ["<leader>xq"] = {
      function()
        require("dap").close()
        require("dapui").close()
      end,
      desc = "Close Session",
    },
    ["<leader>Q"] = {
      function()
        require("dap").terminate()
        require("dapui").close()
      end,
    },
    ["<F5>"] = {
      function() require("dap").step_into() end,
      desc = "Toggle Breakpoint",
    },
    ["<F6>"] = {
      function() require("dap").step_over() end,
      desc = "Continue",
    },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
