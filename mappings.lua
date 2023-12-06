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
    ["<C-Up>"] = {"<cmd> resize +2 <CR>", "Resize with arrow"},
    ["<C-Down>"] = {"<cmd> resize -2 <CR>", "Resize with arrow"},
    ["<C-Left>"] = {"<cmd> vertical resize +2 <CR>", "Resize with arrow"},
    ["<C-Right>"] = {"<cmd> vertical resize +2 <CR>", "Resize with arrow"},
    ["<S-l>"] = {"<cmd> bnext <CR>", "Jump to next buffer"},
    ["<S-h>"] = {"<cmd> bprevious <CR>", "Jump to previous buffer"},
  },
  i = {},
  v = {
    ["<"] = { "<gv", "Indent out"},
    [">"] = { ">gv", "Indent in"},
    ["A-j"] = { "<cmd> m .+1 <CR> ==", "Move text up"},
    ["A-k"] = { "<cmd> m .+-2 <CR> ==", "Move text down"},
    ["p"] = { "_dP"},
  },
  x = {},
  t = {

    ["<C-h>"] = {"<C-\\><C-N><C-w>h", "Move in terminal"},
    ["<C-j>"] = {"<C-\\><C-N><C-w>j", "Move in terminal"},
    ["<C-k>"] = {"<C-\\><C-N><C-w>k", "Move in terminal"},
    ["<C-l>"] = {"<C-\\><C-N><C-w>l", "Move in terminal"},
  },
}

return M
