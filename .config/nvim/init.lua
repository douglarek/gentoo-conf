vim.cmd.colorscheme('vim')
vim.opt.termguicolors = false

-- Enable visual bell, disable error bells
vim.opt.errorbells = false
vim.opt.visualbell = true

-- Disable arrow keys in normal mode
local function nop() end
vim.keymap.set('n', '<Up>', nop, { noremap = true })
vim.keymap.set('n', '<Down>', nop, { noremap = true })
vim.keymap.set('n', '<Left>', nop, { noremap = true })
vim.keymap.set('n', '<Right>', nop, { noremap = true })

-- Function to trim trailing whitespace
local function trim_whitespace()
	local save = vim.fn.winsaveview()
	vim.cmd('keeppatterns %s/\\s\\+$//e')
	vim.fn.winrestview(save)
end

-- Auto-trim whitespace on save for non-binary files
vim.api.nvim_create_autocmd('BufWritePre', {
	callback = function()
		if not vim.bo.binary then
			trim_whitespace()
		end
	end,
})

-- Disable providers
vim.g.loaded_node_provider = 0
vim.g.loaded_perl_provider = 0
vim.g.loaded_python3_provider = 0
vim.g.loaded_ruby_provider = 0

-- Improve tmux status
if vim.env.TMUX then
	local tmux_group = vim.api.nvim_create_augroup('tmux_vim_status', { clear = true })
	vim.api.nvim_create_autocmd('VimResume', {
		group = tmux_group,
		callback = function()
			vim.fn.system('tmux set status off')
		end,
	})
	vim.api.nvim_create_autocmd('VimEnter', {
		group = tmux_group,
		callback = function()
			vim.fn.system('tmux set status off')
		end,
	})
	vim.api.nvim_create_autocmd('VimLeave', {
		group = tmux_group,
		callback = function()
			vim.fn.system('tmux set status on')
		end,
	})
	vim.api.nvim_create_autocmd('VimSuspend', {
		group = tmux_group,
		callback = function()
			vim.fn.system('tmux set status on')
		end,
	})
end

-- Init lazy.nvim
require("config.lazy")


