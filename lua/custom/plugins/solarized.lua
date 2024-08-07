return {
    'lifepillar/vim-solarized8',
    config = function()
        vim.cmd('colorscheme solarized8')
        vim.g.solarized_termcolors = 256
    end
}
