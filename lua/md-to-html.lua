local api = vim.api
local fn = vim.fn
local markdown = require('markdown')

-- Loggin function
local log = function(message)
  api.nvim_echo({ { message } }, true, {})
end

-- Convert the file to html using markdown.lua
local function new_md_to_html()
  local file_name = api.nvim_buf_get_name(0)
  log('Converting ' .. file_name .. ' to html')
  local file_name_without_extension = fn.fnamemodify(file_name, ':r')

  local html_file_name = file_name_without_extension .. '.html'

  -- Get the markdown content
  local markdown_content = io.open(file_name, 'r'):read("*a")

  -- Write the markdown content to an html file
  local html_file = io.open(html_file_name, 'w')

  -- Check nil
  if html_file == nil then
    log('Error: Could not open file ' .. html_file_name)
    return
  end

  html_file:write(markdown(markdown_content))
  html_file:close()
end

local function md_to_html()
  local file_name = api.nvim_buf_get_name(0)

  local html_content = markdown(io.open(file_name, 'r'):read("*a"))

  -- Wipe the current buffer
  api.nvim_buf_set_lines(0, 0, -1, false, {})

  -- Repeat over each line of the html content and write it to the buffer line by line
  for line in html_content:gmatch("[^\r\n]+") do
    api.nvim_buf_set_lines(0, -1, -1, false, { line })
  end

  -- Remove the first line
  api.nvim_buf_set_lines(0, 0, 1, false, {})
end

return {
  md_to_html = md_to_html,
  new_md_to_html = new_md_to_html
}
