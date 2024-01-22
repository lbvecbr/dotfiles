require('core.aliases_map')

vim.g.mapleader = ' '

imap('jk', '<esc>')
imap('<Leader>f', '<C-x><C-f>')
imap('jj', '<C-o>A')

vmap('<Leader> ', '<esc>')

nmap('<Leader> ', ':nohl<cr>')
nmap('<Leader>so', ':so %<cr>')
nmap('<Leader>w', ':w<cr>')
nmap('<Leader>me', ':e ~/.config/nvim/lua/core/mappings.lua<cr>')
nmap('<Leader>e', ':NeoTreeFloat<cr>')
nmap('<Leader>ee', ':NeoTreeShowToggle<cr>')
nmap('<Leader>h', '<C-w><C-w>')
nmap('<Leader>m', ':bn<cr>')
nmap('<Leader>n', ':bp<cr>')


local function Trimslashes()
  vim.cmd([[
   keeppatterns%s/\s\+$//e
  ]])
end

vim.api.nvim_create_user_command("Trimslashes", Trimslashes, {})
vim.api.nvim_create_autocmd("BufWritePre", {
   callback = function()
       vim.cmd([[
       keeppatterns %s/\s\+$//e
       ]])
       end,
})

vim.api.nvim_create_autocmd("InsertEnter", {
    callback = function()
	vim.opt.number = true
        vim.opt.relativenumber = false
    end })

vim.api.nvim_create_autocmd("InsertLeave", {
    callback = function()
        vim.opt.relativenumber = true
    end })
