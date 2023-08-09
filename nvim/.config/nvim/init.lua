if vim.g.vscode then
    -- VSCode extension
else
    -- ordinary Neovim
    require("plugins")
    require("settings")
    require("mappings")
end
