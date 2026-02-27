require("lazy").setup({
	{"saghen/blink.cmp"},
	{"EdenEast/nightfox.nvim"},
	{"olimorris/onedarkpro.nvim"},
	{"neovim/nvim-lspconfig"},
	{"nvim-neo-tree/neo-tree.nvim"},
	{"nvim-lua/plenary.nvim"},
	{"MunifTanjim/nui.nvim"},
	{"nvim-telescope/telescope.nvim"},
	{"s1n7ax/nvim-terminal"},
	{"m4xshen/autoclose.nvim"},
	{"pocco81/auto-save.nvim"},
	{"nvim-lualine/lualine.nvim"},
},{})

require('lualine').setup()
require('nvim-terminal').setup()
require("autoclose").setup()

cmp = require("blink.cmp")
cmp.setup({
	fuzzy = {
		implementation = "lua"
	},
	keymap = {
		preset = "super-tab"
	},
	signature = {
		enabled = true
	}
})
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true

vim.diagnostic.config({
	update_in_insert = true,
	virtual_text = true,
	underline = true,
})

vim.keymap.set("n","<C-S>",":w <CR>",{silent=true})
vim.keymap.set("n","<C-C>",":q! <CR>",{silent=true})
vim.keymap.set("n","<C-Q>",":wq <CR>",{silent=true})
vim.keymap.set("n","<C-X>",":quitall! <CR>",{silent=true})
vim.keymap.set("n","<C-B>",":Neotree toggle <CR>",{silent=true})
vim.keymap.set("n","<C-F>",":Telescope find_files<CR>",{silent=true})
vim.keymap.set("t","<Esc>","<C-\\><C-O><C-w><up>",{silent=true})


vim.lsp.config("clangd",{
	cmd = {
		"clangd",
		"--function-arg-placeholders=0",
		"--header-insertion=never",
	}
})
vim.lsp.enable("clangd")
vim.lsp.enable("ts_ls")
vim.lsp.enable("gopls")
vim.lsp.enable("rust_analyzer")
vim.cmd("colorscheme onedark")
vim.wo.number = true