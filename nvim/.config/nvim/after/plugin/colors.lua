function ColorVim(color)
    color = color or "base16-horizon-dark"
    vim.cmd.colorscheme(color)
end

ColorVim()
