-- [[ Setting options ]]
-- See `:help vim.o`
-- NOTE: You can change these options as you wish!
--  For more options, you can see `:help option-list`

-- Make line numbers default
vim.o.number = true
-- You can also add relative line numbers, to help with jumping.
--  Experiment for yourself to see if you like it!
-- vim.o.relativenumber = true
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Enable mouse mode, can be useful for resizing splits for example!
vim.o.mouse = 'a'
vim.g.markdown_fenced_languages = {
  'ts=typescript',
}

-- Don't show the mode, since it's already in the status line
vim.o.showmode = false

-- Sync clipboard between OS and Neovim.
--  Schedule the setting after `UiEnter` because it can increase startup-time.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
vim.o.background = 'dark'
vim.o.backup = true -- make backup files
vim.o.backupdir = os.getenv('HOME') .. '/.vim/backup' -- where to put backup files
vim.o.directory = os.getenv('HOME') .. '/.vim/swap' -- where to put swap files
vim.o.cmdheight = 2 -- Make room for larger commands without Enter
vim.schedule(function()
  vim.o.clipboard = 'unnamedplus'
end)

-- Enable break indent
vim.o.breakindent = true

-- Save undo history
vim.o.undofile = true
vim.o.cursorline = true
vim.o.enc = 'utf-8'
vim.o.expandtab = true
vim.o.foldenable = true
vim.o.foldlevelstart = 20
vim.o.foldmethod = 'syntax'
vim.o.formatoptions = 'qrn1'
vim.o.gdefault = true
vim.o.grepprg = 'ack'
vim.o.hidden = true -- you can change buffers without saving
vim.o.hlsearch = true --Highlight search"
vim.o.history = 400 --Larger history
vim.o.ignorecase = true -- case insensitive by default
vim.o.lbr = true
vim.o.compatible = false -- explicitly get out of vi-compatible mode
vim.o.exrc = false -- don't use local version of .(g)vimrc, .exrc
vim.o.colorcolumn = '85'
vim.o.undodir = os.getenv('HOME') .. '/.vim/undo' -- where to put backup files
vim.o.shell = 'bash'
vim.o.textwidth = 79
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.smarttab = true
vim.o.shiftwidth = 4
vim.o.shortmess = 'atI' -- Use short messages to prevent press enter...
vim.o.smartcase = true -- Smart searching for capitalized words
vim.o.spell = true
vim.o.statusline = '%<%f %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%) %P'
vim.o.visualbell = true
vim.o.wildmode = 'list:longest,full' --Magic completion menu--
vim.o.wrap = true
vim.o.autowrite = true
vim.g.solarized_termcolors = 256
vim.g.neoformat_try_node_exe = 1

vim.g.python3_host_prog = '/Users/andersjanmyr/.pyenv/versions/neovim3/bin/python'

-- Keep signcolumn on by default
vim.o.signcolumn = 'yes'

-- Decrease update time
vim.o.updatetime = 250

-- Decrease mapped sequence wait time
vim.o.timeoutlen = 300

-- Configure how new splits should be opened
vim.o.splitright = true
vim.o.splitbelow = true

-- Sets how neovim will display certain whitespace characters in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
--
--  Notice listchars is set using `vim.o` instead of `vim.o`.
--  It is very similar to `vim.o` but offers an interface for conveniently interacting with tables.
--   See `:help lua-options`
--   and `:help lua-options-guide`
vim.o.list = true
vim.o.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Preview substitutions live, as you type!
vim.o.inccommand = 'split'

-- Show which line your cursor is on
vim.o.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor.
vim.o.scrolloff = 10

-- if performing an operation that would fail due to unsaved changes in the buffer (like `:q`),
-- instead raise a dialog asking if you wish to save the current file(s)
-- See `:help 'confirm'`
vim.o.confirm = true

-- vim: ts=2 sts=2 sw=2 et
vim.g.go_def_mode = 'gopls'
vim.g.go_info_mode = 'gopls'
