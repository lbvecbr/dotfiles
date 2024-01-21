require('core.aliases_map')

vim.g.mapleader = ' '

imap('jk', '<esc>:w<cr>')
vmap('<Leader> ', '<esc>')
nmap('<Leader> ', ':nohl<cr>')
nmap('<Leader>so', ':so %<cr>')
nmap('<Leader>w', ':w<cr>')
nmap(',cg', ':colorscheme gruvbox<cr>')
nmap(',ch', ':colorscheme habamax<cr>')
imap('jj', '<C-o>A')
nmap(',ve', ':vs<cr>:E<cr>')
nmap('<Leader>e', ':NeoTreeFloat<cr>')
nmap('<Leader>cg', ':[[lua SetColor("gruvbox")<cr>]]')


local function RelativeNumberToggle()
  if vim.wo.relativenumber == true
      then vim.wo.relativenumber = false
  elseif vim.wo.relativenumber == false
      then vim.wo.relativenumber = true
  end
end


nmap('<Leader>n', ':lua RelativeNumberToggle()<cr>')

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
