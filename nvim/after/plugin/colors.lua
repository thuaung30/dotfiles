function ColorVim(color)
    color = color or "base16-gruvbox-dark-hard"
    vim.cmd.colorscheme(color)
end

ColorVim()
