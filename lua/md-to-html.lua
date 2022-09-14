local api = vim.api
local fn = vim.fn

-- Credit to https://www.reddit.com/r/neovim/comments/tk1hby/get_the_path_to_the_current_lua_script_in_neovim/
local function is_win()
  return package.config:sub(1, 1) == '\\'
end

local function get_path_separator()
  if is_win() then
    return '\\'
  end
  return '/'
end

local function script_path()
  local str = debug.getinfo(2, 'S').source:sub(2)
  if is_win() then
    str = str:gsub('/', '\\')
  end
  return str:match('(.*' .. get_path_separator() .. ')')
end

-- Convert the file to html using Markdown.pl
local function convert_to_html()
  -- Location of this script
  local script_dir = script_path()
  local filename = api.nvim_buf_get_name(0)
  local html_filename = fn.fnamemodify(filename, ':r') .. '.html'
  vim.cmd('silent !perl ' .. script_dir .. 'Markdown.pl ' ..
    filename .. ' > ' .. html_filename .. ' --html4tags')
end

local function md_to_html()
  convert_to_html()
end

return {
  md_to_html = md_to_html,
  convert_to_html = convert_to_html
}
