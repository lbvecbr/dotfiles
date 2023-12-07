require('core.aliases_map')

vim.g.mapleader = ' '

imap(',,', '<esc>:w<cr>')
vmap(',,', '<esc>')
nmap(',,', ':nohl<cr>')
nmap(',cg', ':colorscheme gruvbox<cr>')
nmap(',ch', ':colorscheme habamax<cr>')
imap(';;', '<C-o>A')
nmap(',ve', ':vs<cr>:E<cr>')
nmap('<Leader>e', ':NeoTreeFloat<cr>')
nmap('<Leader>cg', ':[[lua SetColor("gruvbox")<cr>]]')



