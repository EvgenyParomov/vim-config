---@type MappingsTable
local M = {}

M.general = {
  n = {
    ["[t"] = { ":tabprevious<CR>", "Previous tab" },
    ["]t"] = { ":tabnext<CR>", desc = "Next tab" },
    ["<leader>w"] = { "<cmd>w<CR>", "Save" },
    ["<leader>ll"] = { "<cmd>TroubleToggle<CR>", "Open Trouble" },
    ["<leader>lw"] = {
      function()
        require("trouble").toggle "document_diagnostics"
      end,
      "Open Trouble",
    },
    ["<leader>ft"] = { "<cmd>TodoTelescope<CR>", "Find Todo" },
    ["\\"] = { "<cmd>:vsplit <CR>", "Vertical split" },
    ["<leader>tt"] = {
      function()
        require("neotest").run.run()
      end,
      "Run nearest test",
    },
    ["<leader>tf"] = {
      function()
        require("neotest").run.run(vim.fn.expand "%")
      end,
      "Run file test",
    },
    ["<leader>to"] = {
      ":Neotest output<CR>",
      "Test output",
    },
    ["<leader>ts"] = {
      ":Neotest summary<CR>",
      "Test summary",
    },
    ["<leader>du"] = {
      function()
        require("dapui").toggle()
      end,
      "Dedug UI",
    },
    ["<leader>db"] = {
      function()
        require("dap").toggle_breakpoint()
      end,
      "Breakpoint",
    },
    ["<leader>ds"] = {
      function()
        require("dap").continue()
      end,
      "Start",
    },
    ["<leader>dn"] = {
      function()
        require("dap").step_over()
      end,
      "Step over",
    },
    ["<leader>cg"] = {
      ":ChatGPTCompleteCode<CR>",
      "Step over",
    },
    ["<leader>gl"] = {
      ":Flog<CR>",
      "Git Log",
    },
    ["<leader>gf"] = {
      ":DiffviewFileHistory<CR>",
      "Git File History",
    },
    ["<leader>gc"] = {
      ":DiffviewOpen HEAD~2<CR>",
      "Git Last Commit",
    },
    ["<leader>gt"] = {
      ":DiffviewToggleFile<CR>",
      "Git Last Commit",
    },
  },
}

-- more keybinds!

return M
