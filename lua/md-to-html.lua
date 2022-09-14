local api = vim.api
local fn = vim.fn
local markdown = require('markdown')

-- Loggin function
local log = function(message)
  api.nvim_echo({ { message } }, true, {})
end

-- Convert the file to html using Markdown.pl
local function convert_to_html()
  local file_name = api.nvim_buf_get_name(0)
  log('Converting ' .. file_name .. ' to html')
  local file_name_without_extension = fn.fnamemodify(file_name, ':r')

  -- Get the markdown content
  local markdown_content = io.open(file_name, 'r'):read("*a")

  -- HTML file name
  local html_file_name = file_name_without_extension .. '.html'


  -- Write the markdown content to an html file
  local html_file = io.open(html_file_name, 'w')

  -- Check nil
  if html_file == nil then
    log('Error: Could not open file ' .. html_file_name)
    return
  end

  html_file:write(markdown(markdown_content))
  html_file:close()

  markdown(html_file_name)
end

local function md_to_html()
  convert_to_html()
end

return {
  md_to_html = md_to_html,
  convert_to_html = convert_to_html
}
