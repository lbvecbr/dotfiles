" === Установка плагинов ===
call plug#begin('~/.config/nvim/plugged')

" Плагин для работы с LSP
Plug 'neovim/nvim-lspconfig'

" Автодополнение
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'

" Сниппеты
Plug 'L3MON4D3/LuaSnip'

" Подсветка синтаксиса с Treesitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" Темы оформления
Plug 'morhetz/gruvbox'         " Gruvbox — классическая тема
Plug 'joshdick/onedark.vim'    " One Dark
Plug 'dracula/vim'             " Dracula
Plug 'sainnhe/everforest'      " Everforest

" Иконки
Plug 'nvim-tree/nvim-web-devicons'

" Bufferline для работы с буферами
Plug 'akinsho/bufferline.nvim'

" Neo-Treee
Plug 'nvim-lua/plenary.nvim'
Plug 'MunifTanjim/nui.nvim'  " Добавляем зависимость nui
Plug 'nvim-neo-tree/neo-tree.nvim', {'branch': 'v3.x'}

"Коментарии
Plug 'tpope/vim-commentary'

"Терминал
Plug 'akinsho/toggleterm.nvim'

call plug#end()

" === Основные настройки ===
set number               " Нумерация строк
set relativenumber       " Относительная нумерация строк
set tabstop=4            " Размер табуляции - 4 пробела
set shiftwidth=4         " Размер отступа при автоформатировании
set expandtab            " Преобразование табов в пробелы
set autoindent           " Автоматическое выравнивание
set smartindent          " Умное выравнивание
set cursorline           " Подсветка текущей строки
set ignorecase           " Поиск без учета регистра
set smartcase            " Учет регистра, если есть заглавные буквы
set wrap                 " Перенос длинных строк
set clipboard=unnamedplus " Общий буфер обмена с системой
set termguicolors        " Включение поддержки TrueColor
set scrolloff=8          " Минимум 8 строк вокруг курсора при прокрутке
set signcolumn=yes       " Всегда показывать колонку для диагностик
set splitbelow           " Горизонтальные сплиты открываются снизу
set splitright           " Вертикальные сплиты открываются справа
set updatetime=300       " Быстрое обновление для автокоманд
set timeoutlen=500       " Задержка для ввода последовательностей клавиш
filetype plugin indent on " Включение плагинов и индентов для файлов

" === Настройка темы ===
colorscheme gruvbox        " Установка Gruvbox по умолчанию
set background=dark        " Темная версия темы

" === Настройки LSP ===
lua << EOF
local lspconfig = require('lspconfig')
local cmp = require('cmp')

-- Настройка pyright
lspconfig.pyright.setup{}

-- Настройка автодополнения
cmp.setup({
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end,
  },
  mapping = cmp.mapping.preset.insert({
    ['<C-n>'] = cmp.mapping.select_next_item(),  -- Перемещение вниз
    ['<C-p>'] = cmp.mapping.select_prev_item(),  -- Перемещение вверх
    ['<Tab>'] = cmp.mapping.confirm({ select = true }),  -- Подтверждение выбора
    ['<CR>'] = cmp.mapping.confirm({ select = false }),  -- Выбор по Enter
    ['<C-Space>'] = cmp.mapping.complete(),  -- Вызов автодополнения вручную
  }),
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'buffer' },
    { name = 'path' },
  }),
  -- completion = {
  --   autocomplete = false,  -- Отключение автоматического появления меню автодополнения
  -- },
})
EOF

" === Настройки Treesitter ===
lua << EOF
require('nvim-treesitter.configs').setup({
  ensure_installed = { "python", "lua", "vim" },  -- Устанавливаем парсеры
  highlight = {
    enable = true,  -- Включаем подсветку синтаксиса
  },
})
EOF

" === Настройки Bufferline ===
lua << EOF
require("bufferline").setup({
  options = {
    numbers = "buffer_id",
    diagnostics = "nvim_lsp",
    separator_style = "slant",
    show_buffer_close_icons = false,
    show_close_icon = false,
    offsets = {
      { filetype = "NvimTree", text = "File Explorer", text_align = "left" },
    },
  }
})
EOF

" Настройка neo-tree
lua << EOF
require("neo-tree").setup({
  filesystem = {
    hijack_netrw = true,  -- Отключает netrw
    follow_current_file = true,  -- Следить за текущим файлом
    group_empty_dirs = true,  -- Группировать пустые директории
    use_libuv_file_watcher = true,  -- Использовать libuv для наблюдения за файлами
  },
  window = {
    position = "left",  -- Размещение дерева файлов слева
    width = 30,  -- Ширина панели
    mappings = {
      ["o"] = "open",  -- Открытие файла по нажатию Enter
      ["<CR>"] = "open",  -- Открытие файла по нажатию Enter
    },
  },
})
EOF

lua << EOF
require("toggleterm").setup{
  size = 12,
  direction = "horizontal",
}
EOF


" === Горячие клавиши ===
" <leader> — пробел
let mapleader = " "

" Переключение в нормальный режим через jk во всех режимах
inoremap jk <Esc>:w<CR>
vnoremap jk <Esc>
cnoremap jk <Esc>
tnoremap jk <C-\><C-n> "выход из режима редактирования в TooggleTerm

" Запуск текущего файла через <leader>r
nnoremap <leader>r :w<CR>:!python3 %<CR>

" Основные горячие клавиши для LSP
nnoremap gd <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap K <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <leader>rn <cmd>lua vim.lsp.buf.rename()<CR>
nnoremap <leader>ca <cmd>lua vim.lsp.buf.code_action()<CR>
nnoremap <leader>f <cmd>lua vim.lsp.buf.formatting()<CR>

" Горячие клавиши для работы с буферами
nnoremap nn :BufferLineCycleNext<CR>
nnoremap <leader>bd :bdelete<CR>  " Закрытие буфера
nnoremap bb :lua require('bufferline').pick_buffer()<CR>
nnoremap <leader>e :Neotree float toggle<CR>
nnoremap <leader><Space> :nohl<CR>
inoremap ;; <Right>
nnoremap <leader>t :ToggleTerm<CR>
nnoremap ww <C-w>w
tnoremap ZZ :ToggleTerm<CR>


