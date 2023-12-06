local M = {}

M.dap = {
  plugin = true,
  n = {
    ["<leader>db"] = {"<cmd> DapToggleBreakpoint <CR>"}
  }
}

M.dap_python = {
  plugin = true,
  n = {
    ["<leader>dpr"] = {
      function()
        require('dap-python').test_method()
      end
    }
  }
}

M.msk = {
  n = {
    -- Resize with arrows
    ["<C-Up>"] = {"<cmd> resize +2 <CR>", "Resize with arrow"},
    ["<C-Down>"] = {"<cmd> resize -2 <CR>", "Resize with arrow"},
    ["<C-Left>"] = {"<cmd> vertical resize +2 <CR>", "Resize with arrow"},
    ["<C-Right>"] = {"<cmd> vertical resize +2 <CR>", "Resize with arrow"},
    -- Navigate buffers
    ["<S-l>"] = {"<cmd> bnext <CR>", "Jump to next buffer"},
    ["<S-h>"] = {"<cmd> bprevious <CR>", "Jump to previous buffer"},
  },
  i = {},
  v = {
    ["<"] = { "<gv"},
    [">"] = { ">gv"},
  },
  x = {},
  t = {},
}

return M
