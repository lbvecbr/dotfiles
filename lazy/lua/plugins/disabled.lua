-- ~/.config/nvim/lua/plugins/disabled.lua

-- Цей файл містить список плагінів, вимкнених за замовчуванням.
-- Щоб увімкнути плагін, зміни 'enabled = false' на 'enabled = true' для відповідного плагіна.
-- Або ж, ти можеш повністю видалити секцію плагіна з цього файлу
-- та додати її (без 'enabled = false') у твій кастомний файл (наприклад, 'lua/plugins/my_active_plugins.lua'),
-- щоб активувати його.

return {
  -- === Автозавершення та редагування ===
--  { "echasnovski/mini.pairs", enabled = false }, -- Автоматичне закриття дужок/лапок
  { "echasnovski/mini.ai", enabled = false },    -- Текстові об'єкти на базі AI

  -- === Плагіни для LSP та інструментів розробки ===
 -- { "nvim-lua/lazydev.nvim", enabled = false },   -- Допомога для розробників плагінів на Lua
  { "mbbill/grug-far.nvim", enabled = false },    -- Пошук та заміна по всьому проекту (як ack/grep)
  { "stevearc/conform.nvim", enabled = false },   -- Форматування коду
 -- { "williamboman/mason.nvim", enabled = false }, -- Менеджер для LSP-серверів, лінтерів, форматтерів
  { "mfussenegger/nvim-lint", enabled = false },  -- Лінтування коду
 -- { "neovim/nvim-lspconfig", enabled = false },   -- Конфігурації LSP-серверів
 -- { "williamboman/mason-lspconfig.nvim", enabled = false }, -- Інтеграція Mason з LSPConfig
  { "nvimtools/none-ls.nvim", enabled = false }, -- Якщо використовується замість nvim-lint/conform для деяких речей

  -- === Теми та візуальні покращення ===
--  { "folke/tokyonight.nvim", enabled = false }, -- Тема TokyoNight
--  { "catppuccin/nvim", enabled = false, name = "catppuccin" }, -- Тема Catppuccin
--  { "romgrk/barbar.nvim", enabled = false }, -- Якщо це bufferline.nvim - змінено на коректну назву
--  { "nvim-lualine/lualine.nvim", enabled = false }, -- Рядок стану
  { "folke/noice.nvim", enabled = false },      -- Покращені повідомлення Neovim
--  { "echasnovski/mini.icons", enabled = false }, -- Іконки для файлів/папок
--  { "rcarriga/nvim-dap-ui", enabled = false }, -- Зазвичай використовується з nvim-dap
  { "stevearc/aerial.nvim", enabled = false }, -- Навігація по структурі файлу

  -- === Git інтеграція ===
--  { "lewis6991/gitsigns.nvim", enabled = false }, -- Показ змін Git у стовпці
--  { "folke/which-key.nvim", enabled = false },   -- Підказки по хоткеях

  -- === Допоміжні інструменти ===
  { "folke/flash.nvim", enabled = false },      -- Швидкий рух по екрану
--  { "folke/trouble.nvim", enabled = false },    -- Зручний список діагностики, завдань тощо
  { "folke/todo-comments.nvim", enabled = false }, -- Виділення TODO, FIX та інших коментарів
--  { "nvim-treesitter/nvim-treesitter", enabled = false, build = ":TSUpdate" }, -- Покращена підсвітка синтаксису
--  { "nvim-treesitter/nvim-treesitter-textobjects", enabled = false }, -- Текстові об'єкти Treesitter
--  { "windwp/nvim-ts-autotag", enabled = false }, -- Автоматичне закриття/перейменування HTML/XML тегів
--  { "nvim-tree/nvim-tree.lua", enabled = false }, -- Якщо це bufferline.nvim - помилка у назві, але додано як nvim-tree
--  { "folke/ts-comments.nvim", enabled = false }, -- Інструменти для коментарів на базі Treesitter
--  { "MunifTanjim/nui.nvim", enabled = false },    -- UI-інструментарій для плагінів
--  { "nvim-telescope/telescope.nvim", enabled = false }, -- Якщо це snacks.nvim - помилка у назві, але додано як telescope
  { "olivercederborg/snazzy.nvim", enabled = false }, -- Якщо це snacks.nvim - помилка у назві, але додано як snazzy
  { "folke/twilight.nvim", enabled = false }, -- Для фокусування на поточному коді
  { "folke/zen-mode.nvim", enabled = false }, -- Для режиму "дзен"
--  { "nvim-telescope/telescope-fzf-native.nvim", enabled = false, build = "make" }, -- Швидший FZF для Telescope
--  { "nvim-treesitter/nvim-treesitter-context", enabled = false }, -- Контекст функцій/класів
--  { "nvim-tree/nvim-web-devicons", enabled = false }, -- Іконки для файлів у NvimTree
--  { "nvimdev/lspsaga.nvim", enabled = false }, -- UI для LSP
--  { "mhartington/oceanic-next", enabled = false }, -- Ще одна тема
--  { "folke/neodev.nvim", enabled = false }, -- Допомога для розробки плагінів
--  { "nvim-tree/nvim-tree-docs", enabled = false }, -- Документація для nvim-tree
--  { "nvim-telescope/telescope-ui-select.nvim", enabled = false }, -- Вибір елементів для Telescope
--  { "nvim-treesitter/nvim-treesitter-refactor", enabled = false }, -- Рефакторинг на базі Treesitter

  -- === Утиліти ===
  { "folke/persistence.nvim", enabled = false }, -- Зберігання сесій Neovim
--  { "nvim-lua/plenary.nvim", enabled = false },  -- Загальна бібліотека Lua-утиліт
}
