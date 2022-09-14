local api = vim.api
local fn = vim.fn


-- Convert the file to html using Markdown.pl
local function convert_to_html()
  -- Get the location of this script
  local filename = api.nvim_buf_get_name(0)
  local html_filename = fn.fnamemodify(filename, ':r') .. '.html'
  vim.cmd('silent !../Markdown.pl ' .. filename .. ' > ' .. html_filename .. ' --html4tags')
end

return {
  convert_to_html = convert_to_html
}
