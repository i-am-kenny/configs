-- local colorscheme = "tokyonight"
local colorscheme = "lunarvim/darkplus"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  return
end
