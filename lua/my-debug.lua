local augroup = vim.api.nvim_create_augroup("debug", { clear = true })

local function hello_world()
  print("Hello, World!")
end

vim.api.nvim_create_user_command(
  'HelloWorld',
  hello_world,
  {}
)

local function setup()
  vim.api.nvim_create_autocmd("VimEnter",
    { group = augroup, desc = "Set a fennel scratch buffer on load", once = true, callback = main })
end

return { setup = setup }
