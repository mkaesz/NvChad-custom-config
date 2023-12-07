local plugins = {
  {
    "rcarriga/nvim-dap-ui",
    dependencies = "mfussenegger/nvim-dap",
    config = function()
      local dap = require("dap")
      local dapui = require("dapui")
      dapui.setup()
      dap.listeners.after.event_initialized["dapui_config"] = function()
        dapui.open()
      end
      dap.listeners.before.event_terminated["dapui_config"] = function()
        dapui.close()
      end
      dap.listeners.before.event_exited["dapui_config"] = function()
        dapui.close()
      end
    end
  },
  {
    "mfussenegger/nvim-dap",
    config = function(_, opts)
      require("core.utils").load_mappings("dap")
    end
  },
  {
    "mfussenegger/nvim-dap-python",
    ft = "python",
    dependencies = {
      "mfussenegger/nvim-dap",
      "rcarriga/nvim-dap-ui",
    },
    config = function(_, opts)
      local path = "~/.local/share/nvim/mason/packages/debugpy/venv/bin/python"
      require("dap-python").setup(path)
      require("core.utils").load_mappings("dap_python")
    end,
  },
  {
    "jose-elias-alvarez/null-ls.nvim",
    ft = {"python"},
    opts = function ()
      return require "custom.configs.null-ls"
    end,
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed =  {
        "black",
        "pyright",
        "mypy",
        "ruff",
        "debugpy",
      }
    }
  },
  {
    "neovim/nvim-lspconfig",
    config = function ()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  {
    "max397574/better-escape.nvim",
    event = "InsertEnter",
    config = function()
      require("better_escape").setup()
    end,
  },
  {
    "christoomey/vim-tmux-navigator",
    lazy=false,
  },
  {
    "szw/vim-maximizer",
    lazy=false,
  },
  {
    "kylechui/nvim-surround",
    version = "*",
    event = "VeryLazy",
    config = function()
        require("nvim-surround").setup({
        })
    end
  },
  {
    "inkarkat/vim-ReplaceWithRegister",
  },
  {
    "lewis6991/gitsigns.nvim",
    config = function ()
      require('gitsigns').setup()
    end
  },
  {
    "ThePrimeagen/harpoon",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    config = function()
      -- set keymaps
      local keymap = vim.keymap -- for conciseness

      keymap.set(
        "n",
        "<leader>hm",
        "<cmd>lua require('harpoon.mark').add_file()<cr>",
        { desc = "Mark file with harpoon" }
      )
      keymap.set("n", "<leader>hn", "<cmd>lua require('harpoon.ui').nav_next()<cr>", { desc = "Go to next harpoon mark" })
      keymap.set(
        "n",
        "<leader>hp",
        "<cmd>lua require('harpoon.ui').nav_prev()<cr>",
        { desc = "Go to previous harpoon mark" }
      )
    end,
  },
  {
    "ptzz/lf.vim",
    dependencies = {
      "voldikss/vim-floaterm"
    },
    lazy = false
  },
  {
    'numToStr/Navigator.nvim',
    config = function ()
      require("Navigator").setup()

    end,
    lazy = false,
  }
}
return plugins

