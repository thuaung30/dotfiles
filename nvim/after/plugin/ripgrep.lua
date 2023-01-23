if (vim.fn.executable("rg") == 1)
then
   vim.g.grepprg="rg --no-heading --vimgrep"
end
