-- [[ Setting options ]]
-- See `:help vim.opt`
-- For more options, you can see `:help option-list`

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.g.markdown_fenced_languages = {
  "ts=typescript"
}
vim.opt.timeoutlen = 500 -- the delay before the leader kicks in

vim.opt.background="dark"
vim.opt.backup = true -- make backup files
vim.opt.backupdir= os.getenv("HOME") .. "/.vim/backup" -- where to put backup files
vim.opt.directory= os.getenv("HOME") .. "/.vim/swap" -- where to put swap files
vim.opt.cmdheight=2 -- Make room for larger commands without Enter
vim.schedule(function()
  vim.opt.clipboard = 'unnamedplus'
end)

vim.opt.cursorline = true
vim.opt.enc="utf-8"
vim.opt.expandtab = true
vim.opt.foldenable = true
vim.opt.foldlevelstart=20
vim.opt.foldmethod="syntax"
vim.opt.formatoptions="qrn1"
vim.opt.gdefault = true
vim.opt.grepprg="ack"
vim.opt.hidden = true -- you can change buffers without saving
vim.opt.hlsearch = true --Highlight search"
vim.opt.history=400 --Larger history
vim.opt.ignorecase = true -- case insensitive by default
vim.opt.lbr =true
vim.opt.list =true
vim.opt.compatible = false -- explicitly get out of vi-compatible mode
vim.opt.exrc = false -- don't use local version of .(g)vimrc, .exrc
vim.opt.number = true -- enable line numbers
vim.opt.colorcolumn= "85"
vim.opt.undofile = true
vim.opt.undodir=os.getenv("HOME") .. "/.vim/undo" -- where to put backup files
vim.opt.shell="bash"
vim.opt.splitbelow=true
vim.opt.splitright=true
vim.opt.textwidth=79
vim.opt.tabstop=4
vim.opt.softtabstop=4
vim.opt.smarttab=true
vim.opt.shiftwidth=4
vim.opt.shortmess="atI" -- Use short messages to prevent press enter...
vim.opt.smartcase=true -- Smart searching for capitalized words
vim.opt.spell=true
vim.opt.statusline="%<%f %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%) %P"
vim.opt.visualbell=true
vim.opt.wildmode="list:longest,full" --Magic completion menu--
vim.opt.wrap=true
vim.opt.autowrite=true
vim.g.solarized_termcolors=256
vim.g.neoformat_try_node_exe = 1

vim.g.python3_host_prog = '/Users/andersjanmyr/.pyenv/versions/neovim3/bin/python'

vim.opt.scrolloff = 5
vim.opt.breakindent = true
vim.opt.updatetime = 250

-- Decrease mapped sequence wait time
vim.opt.timeoutlen = 300

-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Sets how neovim will display certain whitespace characters in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Preview substitutions live, as you type!
vim.opt.inccommand = 'split'

-- vim: ts=2 sts=2 sw=2 et
