function ColorVim(color)
    color = color or "base16-dracula"
    vim.cmd.colorscheme(color)
end

ColorVim()
