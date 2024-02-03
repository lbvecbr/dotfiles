-- Алиас для быстрого доступа к методу установки горячих клавиш
local map = vim.api.nvim_set_keymap 

--[[
Метод для установки горячих клавиш (normal)
key - {string} Строка с горячей клавишей
command - {string} Команда
]]--
function nmap(key, command) 
	vim.api.nvim_set_keymap('n', key, command, {noremap = true})
end

--[[
Метод для установки горячих клавиш (input)
key - {string} Строка с горячей клавишей
command - {string} Команда
]]--
function imap(key, command)
	vim.api.nvim_set_keymap('i', key, command, {noremap = true})
end

--[[
Метод для установки горячих клавиш (visual)
key - {string} Строка с горячей клавишей
command - {string} Команда
]]--
function vmap(key, command)
	vim.api.nvim_set_keymap('v', key, command, {noremap = true})
end

--[[
Метод для установки горячих клавиш (terminal)
key - {string} Строка с горячей клавишей
command - {string} Команда
]]--
function tmap(key, command)
	vim.api.nvim_set_keymap('t', key, command, {noremap = true})
end
