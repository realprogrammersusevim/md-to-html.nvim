local api = vim.api
local fn = vim.fn
local markdown = require('md-to-html.markdown')

local md_to_html = {}

-- Convert the file to html using markdown.lua
function md_to_html.new_md_to_html()
  local file_name = api.nvim_buf_get_name(0)
  local file_name_without_extension = fn.fnamemodify(file_name, ':r')
  local html_file_name = file_name_without_extension .. '.html'
  local markdown_content = io.open(file_name, 'r'):read('*a') -- Get the markdown content
  local html_file = io.open(html_file_name, 'w') -- Write the markdown content to an html file

  -- Check nil
  if html_file == nil then
    print('Error: Could not open file ' .. html_file_name)
    return
  end

  local html_content = markdown(markdown_content)
  local sanitized_html = ''
  for line in html_content:gmatch('[^\r\n]+') do
    if line ~= '' then
      sanitized_html = sanitized_html .. line .. '\n'
    end
  end

  html_file:write(sanitized_html)
  html_file:close()
end

function md_to_html.md_to_html()
  local file_name = api.nvim_buf_get_name(0)

  local html_content = markdown(io.open(file_name, 'r'):read('*a'))

  -- Wipe the current buffer
  api.nvim_buf_set_lines(0, 0, -1, false, {})

  -- Repeat over each line of the html content and write it to the buffer line by line
  for line in html_content:gmatch('[^\r\n]+') do
    api.nvim_buf_set_lines(0, -1, -1, false, { line })
  end

  -- Remove the first line
  api.nvim_buf_set_lines(0, 0, 1, false, {})
end

return md_to_html
