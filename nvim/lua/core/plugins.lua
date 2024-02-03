local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git", "clone", "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git", "--branch=stable", -- latest stable release
        lazypath
    })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	{"nvim-treesitter/nvim-treesitter"},
	{"neovim/nvim-lspconfig"},
	{"hrsh7th/cmp-nvim-lsp"},
	{"hrsh7th/cmp-buffer"},
	{"hrsh7th/cmp-path"},
	{"hrsh7th/cmp-cmdline"},
	{"hrsh7th/nvim-cmp"},
	{"IlyasYOY/obs.nvim"},
	{"ellisonleao/gruvbox.nvim", priority = 1000 , config = true, opts = ...},
	{"williamboman/mason.nvim", build = ":MasonUpdate"},
	{"folke/neodev.nvim", opts = {} },
    {'akinsho/toggleterm.nvim', version = "*", config = true},
    {'windwp/nvim-autopairs'},
    {'windwp/nvim-ts-autotag'},
    {'nvim-telescope/telescope.nvim',tag = '0.1.5',dependencies = {'nvim-lua/plenary.nvim'}},
    {"akinsho/bufferline.nvim", dependencies = {'nvim-tree/nvim-web-devicons'}},
	{"nvim-neo-tree/neo-tree.nvim",
        branch = "v2.x",
        dependencies = {
            "nvim-lua/plenary.nvim", "nvim-tree/nvim-web-devicons",
            "MunifTanjim/nui.nvim", "s1n7ax/nvim-window-picker"
        }},
	})

