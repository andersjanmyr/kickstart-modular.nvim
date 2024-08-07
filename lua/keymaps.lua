-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`
vim.keymap.set("i", "<M-o>", "<Esc>o")
vim.keymap.set("i", "<C-j>", "<Down>")
vim.keymap.set("i", "jj", "<Esc>")
vim.keymap.set("i", ":w", "<Esc>:w<cr>")
vim.keymap.set("c", "<C-A>", "<Home>")
vim.keymap.set("c", "<C-E>", "<End>")
vim.keymap.set("c", "<C-L>", "<Right>")
vim.keymap.set("c", "<C-H>", "<Left>")
vim.keymap.set("c", "<C-B>", "<S-Left>")
vim.keymap.set("c", "<C-W>", "<S-Right>")
vim.keymap.set("c", "<C-p>", "<Up>")
vim.keymap.set("c", "<C-n>", "<Down>")
vim.keymap.set("n", "/", "/\\v")
vim.keymap.set("v", "/", "/\\v")
vim.keymap.set("n", "j", "gj")
vim.keymap.set("n", "k", "gk")

vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")


vim.keymap.set("n", "<leader><space>", ":noh<cr>")
vim.keymap.set("n", "<leader>v", "V`]")
vim.keymap.set("n", "<leader>ev", "<C-w><C-v><C-l>:e ~/.vimrc<cr>")
vim.keymap.set("n", "<Leader>e",  ":e <C-R>=expand('%:p:h') . '/' <cr>")
vim.keymap.set("c", "%%", "<C-R>=expand('%:h').'/'<cr>")
vim.keymap.set("n", "<leader>p", ":bufdo set ei-=Syntax | do Syntax | hardcopy! >%:t.ps")

-- Git
vim.keymap.set("n", "<leader>gs", "Git status<cr>")
vim.keymap.set("n", "<leader>gd", ":Gdiff<cr>")
vim.keymap.set("n", "<leader>gb", ":Git blame<cr>")
vim.keymap.set("n", "<leader>gl", ":Glog<cr>")
vim.keymap.set("n", "<leader>gp", ":Git push<cr>")
vim.keymap.set("n", "<leader>gg", ":Ggrep <C-R><C-W>")
vim.keymap.set("n", "<leader>i", ":sp ~/bin/dotfiles/vim/vim-quick.md<cr>")
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Replace repeat last substitution to include flags
vim.keymap.set("n", "&", ":&&<cr>")
vim.keymap.set("x", "&", ":&&<cr>")

-- TComment Options
vim.keymap.set("n",  "<Leader>c", ":TComment<cr>")
vim.keymap.set("v",  "<Leader>c", ":TComment<cr>")

vim.keymap.set("n", "<leader>u", ":UndotreeToggle<cr>")
vim.keymap.set("n", "<leader>w", ":StripTrailingWhitespace<cr>")

-- Visual tabbing should stay in visual
vim.keymap.set("v", ">", ">gv")
vim.keymap.set("v", "<", "<gv")

-- Copy filename to clipboard
vim.keymap.set("n", "<leader>g", ':let @+=expand("%")<cr>')

-- NOTE: Some terminals have colliding keymaps or are not able to send distinct keycodes
-- vim.keymap.set("n", "<C-S-h>", "<C-w>H", { desc = "Move window to the left" })
-- vim.keymap.set("n", "<C-S-l>", "<C-w>L", { desc = "Move window to the right" })
-- vim.keymap.set("n", "<C-S-j>", "<C-w>J", { desc = "Move window to the lower" })
-- vim.keymap.set("n", "<C-S-k>", "<C-w>K", { desc = "Move window to the upper" })

-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.hl.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.hl.on_yank()
  end,
})

-- vim: ts=2 sts=2 sw=2 et
