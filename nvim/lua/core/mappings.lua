require('core.aliases_map')

vim.g.mapleader = ' '

imap('jk', '<esc>')
imap(',f', '<C-x><C-f>')
imap('jj', '<C-o>A')

vmap('<Leader> ', '<esc>')

tmap('<Leader>h', '<C-w><C-w>')

nmap('<Leader> ', ':nohl<cr>')
nmap('<Leader>so', ':so %<cr>')
nmap('<Leader>s', ':w<cr>')
nmap('<Leader>sa', ':wall<cr>')
nmap('<Leader>me', ':e ~/.config/nvim/lua/core/mappings.lua<cr>')
nmap('<Leader>ne', ':E ~/.config/nvim/lua/<cr>')
nmap('<Leader>e', ':NeoTreeFloat<cr>')
nmap('<Leader>ee', ':NeoTreeFocusToggle<cr>')
nmap('<Leader>;', ':E~<cr>')
nmap('<Leader>h', '<C-w><C-w>')
nmap('J', ':BufferLineCyclePrev<cr>')
nmap('L', ':BufferLineCycleNext<cr>')
nmap('H', ':BufferLineMovePrev<cr>')
nmap('<Leader>x', ':bd<cr>')
nmap('<Leader>b', ':BufferLinePick<cr>')
nmap('<Leader>rx', ':BufferLineCloseRight<cr>')
nmap('<Leader>ox', ':BufferLineCloseOthers<cr>')
nmap('<Leader>t', ':ToggleTerm<cr>')


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
