return {
  {
    "Shatur/neovim-ayu",
    init = function ()
      require("plugins-configs.neovimAyu")
    end,
    event = "BufWinEnter"
  },

  { "folke/todo-comments.nvim", opts = {} },

  {
    "phaazon/hop.nvim",
    config = function () 
      require("hop").setup()
    end,
    cmd = {"HopWord", "HopChar2"},  -- Carga solo cuando se llama al comando HopWord
  },

  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup()
    end
  },

  {
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    config = true
  },

  {
    "lukas-reineke/indent-blankline.nvim",
    init = function()
      require("plugins-configs.blankLine")
    end,
    event = "BufRead",  -- Carga al leer un buffer
  },

  {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    init = function ()
      require("plugins-configs.nvimTree")
    end,
  },

  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    init = function ()
      require("plugins-configs.lualine")
    end,
    event = "BufWinEnter",  -- Carga al abrir un buffer
  },

  {
    "akinsho/bufferline.nvim",
    requires = "kyazdani42/nvim-web-devicons",
    init = function ()
      require("plugins-configs.bufferLine")
    end,
    event = "BufWinEnter"
  },

  {
    "dstein64/vim-startuptime",
    -- lazy-load on a command
    cmd = "StartupTime",
    -- init is called during startup. Configuration for vim plugins typically should be set in an init function
    init = function ()
      vim.g.startuptime_tries = 10
    end,
  }
}

