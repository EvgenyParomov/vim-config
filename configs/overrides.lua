local M = {}

M.treesitter = {
  ensure_installed = {
    "vim",
    "lua",
    "html",
    "css",
    "javascript",
    "typescript",
    "tsx",
    "c",
    "markdown",
    "markdown_inline",
    "prisma",
    "go",
  },
  indent = {
    enable = true,
    -- disable = {
    --   "python"
    -- },
  },
}

M.mason = {
  ensure_installed = {
    "lua-language-server",
    "css-lsp",
    "html-lsp",
    "typescript-language-server",
    "deno",
    "prettier",
    "eslint_d",
    "node-debug2-adapter",
    "gopls",
    "gradle_ls",
  },
}

local function custom_sort(item)
  local directory_order = {
    ["app"] = 1,
    ["pages"] = 2,
    ["widgets"] = 3,
    ["features"] = 4,
    ["entities"] = 5,
    ["shared"] = 6,
    -- Add more directories and their order if needed
  }

  if item["type"] == "directory" then
    return directory_order[item.name] or 7, item.name
  elseif item["type"] == "file" then
    return 8, item.name
  else
    return 9, item.name
  end
end

-- git support in nvimtree
M.nvimtree = {
  git = {
    enable = true,
  },
  view = {
    width = 50,
  },

  sort = {
    -- sorter = function(files)
    --   table.sort(files, function(a, b)
    --     return custom_sort(a) < custom_sort(b)
    --   end)
    -- end,
  },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = false,
      },
    },
  },
}

return M
