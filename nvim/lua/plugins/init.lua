local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
local v = vim
if not v.loop.fs_stat(lazypath) then
    v.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
v.opt.rtp:prepend(lazypath)
require("lazy").setup({
    -- Colorschemes --
    {
        "cocopon/iceberg.vim",
        lazy = false,
        priority = 1000,
        config = function()
            v.cmd([[colorscheme iceberg]])
        end,
    },
    -- Status and buffer lines --
    {
        "nvim-lualine/lualine.nvim",
        lazy = false,
        config = function()
            require("lualine").setup({
                enable = true,
                options = {
                    section_separators = "",
                    component_separators = "",
                },
            })
        end,
        dependencies = { "nvim-tree/nvim-web-devicons", opt = true },
    },
    {
        "akinsho/bufferline.nvim",
        config = function()
            require("bufferline").setup({})
        end,
    },
    -- Whichkey --
    {
        "folke/which-key.nvim",
        config = function()
            v.o.timeout = true
            v.o.timeoutlen = 300
            local wk = require("which-key")
            wk.setup({
                triggers_blacklist = {
                    i = { "j" },
                    n = { "<C-d>", "<C-u>" },
                },
            })
            local mappings = require("mappings")
            wk.register(mappings.n, { mode = "n" })
            wk.register(mappings.i, { mode = "i" })
            wk.register(mappings.v, { mode = "v" })
            wk.register(mappings.t, { mode = "t" })
        end,
    },
    {"mbbill/undotree"},
    -- Autopairs --
    {
        "windwp/nvim-autopairs",
        config = function()
            require("nvim-autopairs").setup({})
        end,
    },
    -- Fzf --
    {
        "ibhagwan/fzf-lua",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        config = function()
            require("fzf-lua").register_ui_select() -- Set fzf-lua as the default picker
            -- Register whichkey mappings
            local mappings = require("mappings")
            local wk = require("which-key")
            wk.register(mappings.fzf_lua, { mode = "n" })
        end,
    },
    -- Nvim tree --
    {
        "nvim-tree/nvim-tree.lua",
        version = "*",
        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },
        config = function()
            require("nvim-tree").setup({})
        end,
    },
    -- Ultisnips
    { "SirVer/ultisnips" },
    -- Nvim Surround --
    {
        "kylechui/nvim-surround",
        config = function()
            require("nvim-surround").setup({})
        end,
    },
    -- Comments --
    {
        "numToStr/Comment.nvim",
        config = function()
            require("Comment").setup({})
        end,
    },
    -- Colorizer --
    {
        "norcalli/nvim-colorizer.lua",
        config = function()
            require("colorizer").setup()
        end,
    },
    -- Vimtex -- 
	{ "lervag/vimtex" },
})
