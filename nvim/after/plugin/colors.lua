function ColorVim(color)
    color = color or "base16-gruvbox-light-soft"
    vim.cmd.colorscheme(color)
end

ColorVim()
