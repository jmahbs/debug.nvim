print("plugin/example.lua is executed!")

if vim.fn.has("nvim-0.7.0") ~= 1 then
  vim.api.nvim_err_writeln("Example requires at least nvim-0.7.0")
end
