local system_name
if vim.fn.has("mac") == 1 then
  system_name = "macOS"
elseif vim.fn.has("unix") == 1 then
  system_name = "Linux"
elseif vim.fn.has("win32") == 1 then
  system_name = "Windows"
else
  print("Unsupported system for sumneko")
end

local sumneko_root_path = vim.fn.fnamemodify(sumneko_binary_path, ":h:h:h")
local sumneko_binary_path = vim.fn.exepath("lua-language-server")

local runtime_path = vim.split(package.path, ";")
table.insert(runtime_path, "lua/?.lua")
table.insert(runtime_path, "lua/?/init.lua")

return {
  cmd = {sumneko_binary_path, "-E", sumneko_root_path .. "/main.lua"};
  settings = {
    Lua = {
      runtime = {
          version = "LuaJIT",
          path = runtime_path,
      },
      diagnostics = {
          globals = {"vim"},
      },
      workspace = {
          library = vim.api.nvim_get_runtime_file("", true),
      },
    },
  },
}
